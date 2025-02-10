import argparse
import json
from collections import OrderedDict


dump = {}

pidNums = {
    "int" : 40,
    "main" : 30,
}

funcNames = {
    0x0010 : 'j_SubWord_hl_de_',
    0x0018 : 'j_KeyboardReadColumn',
    0x0038 : 'RST 38h Check_debug',
    0x01FB: 'ISR_4E',
    0x0257 : 'IOnVarInit',
    0x28A : 'IO_WriteFromTable',
    0x0A8C : 'FBS_Clear',
    0x10C2 : 'KeyboardReadColumn',
    0x1067 : 'CheckKbRow_6times',
    0x10F7 : 'BV_A',
    0x1EE0 : 'Setup_all'
}

def label(addr):
    if isinstance(addr, str):
        addr = addr.replace('h', '')
        addr = int(addr, base = 16)
    if addr in funcNames:
        #We have a call!
        return f"{funcNames[addr]}@{addr:04X}"
    return f"0x{addr:04X}"

def addInsn(tsc, name, data, dump):
    if tsc not in dump:
        dump[tsc] = {}
    dump[tsc][name] = data


def addProp(tsc, name, data, dump):
    while tsc not in dump:
        tsc -= 1
        if not tsc:
            return
    if name not in dump[tsc]:
        dump[tsc][name] = []
    dump[tsc][name].append(data)

def compress(dump):
    compressed = {}
    empty = True
    last = None
    for rec in dump:
        if empty:
            last = dump[rec]
            compressed[rec] = last
            empty = False
            continue
        else:
            if last == dump[rec]:
                continue
            else:
                last = dump[rec]
                compressed[rec] = last
    return compressed


def countOp(op):
    if not op:
        return 0
    val = 0
    for i in op:
        val += 2 if len(i)>2 else 1
    return val



stack_push = ['RST', 'CALL', 'PUSH']
stack_pop = ['RET', 'POP']

def printStack(tsc:int, insn: str, addr: int, op: str):
    line = ""
    if addr <= 0x4040 and addr  >= 0x4000:
        if any(elem in insn for elem in stack_push):
            line += f"PUSH {op} -> {label(addr)} "
        if any(elem in insn for elem in stack_pop):
            line += f"POP {op} <- {label(addr)} "
    return line

stack_ptr = []

trace_events = []
isr = False
def addEvent(ts, name, phase, pid = None):
    global isr
    event = {}
    event["name"] = name
    pidtid = pid or (pidNums["int"] if isr else pidNums["main"])
    event["pid"] = 0
    event["tid"] = pidtid
    event["ts"] = ts*400/1000
    event["cat"] = "flamechart"
    event["ph"] = phase
    trace_events.append(event)

def pushCallStack(tsc, call, op):
    from_func = stack_ptr[-1] if len(stack_ptr) else (0, "ERROR")
    to_func = label(call)
    stack_ptr.append((tsc, to_func))
    return  f"\nCall {to_func} | {from_func[1]} -> Stack"


def popCallStack(tsc, call, op):
    from_func = stack_ptr.pop() if len(stack_ptr) else (0, "ERROR")
    to_func = stack_ptr[-1] if len(stack_ptr) else "ERROR"
    line = f"\nReturn from {from_func[1]} | Stack -> {to_func[1]}"
    addEvent(from_func[0], from_func[1], "B")
    addEvent(tsc, from_func[1], "E")
    return line

def printCall(tsc:int, insn: str, addr: int, op: str):
    line = printStack(tsc, insn, addr, op)
    call = insn.split()[1]
    if ',' in call:
        call = insn.split(',')[-1]
    line += pushCallStack(tsc, call, op)
    return line

def printRst(tsc:int, insn: str, addr: int, op: str):
    line = printStack(tsc, insn, addr, op)
    call = insn.split()[1]
    line += pushCallStack(tsc, call, op)
    return line

def printRet(tsc:int, insn: str, addr: int, op: str):
    line = popCallStack(tsc, addr, op)
    global isr
    if 'RETI' in insn:
        isr = False
    return line



io_addr = {
        0x0 : "Timer_Ch0          ",
        0x1 : "Timer_Ch1          ",
        0x2 : "Timer_Ch2          ",
        0x3 : "Timer_Ch3          ",
        0x4 : "Display_Data_A     ",
        0x5 : "Display_Data_B     ",
        0x6 : "Display_Ctrl_A     ",
        0x7 : "Display_Ctrl_B     ",
        0x8 : "Stepper_Data_A     ",
        0x9 : "Stepper_Data_B     ",
        0xA : "Stepper_Ctrl_A     ",
        0xB : "Stepper_Ctrl_B     ",
        0xC : "Keyboard_Col_Data_A",
        0xD : "Keyboard_Col_Data_B",
        0xE : "Keyboard_Col_Ctrl_A",
        0xF : "Keyboard_Col_Ctrl_B",
        0x10 : "Keyboard_Row_Data_A",
        0x11 : "Keyboard_Row_Data_B",
        0x12 : "Keyboard_Row_Ctrl_A",
        0x13 : "Keyboard_Row_Ctrl_B",
        0x14 : "Timer_USART_Ch0    ",
        0x15 : "Timer_USART_Ch1    ",
        0x16 : "Timer_USART_Ch2    ",
        0x17 : "Timer_USART_Ch3    ",
        0x18 : "USART_Data_A       ",
        0x19 : "USART_Data_B       ",
        0x1A : "USART_Ctrl_A       ",
        0x1B : "USART_Ctrl_B       "
}

def printOut(tsc:int, insn: str, addr: int, op: str):
    line = ""
    addr = addr % 256
    if addr in io_addr:
        name = io_addr[addr]
        line += f"OUT {op} -> 0x{addr:04x}: {name}"
        addEvent(tsc, f"OUT_{name}({op})", "B", pid = addr)
        addEvent(tsc+10, f"OUT_{name}({op})", "E", pid = addr)
    return line


def printIn(tsc:int, insn: str, addr: int, op: str):
    line = ""
    addr = addr % 256
    name = "[INVALID]"
    if addr in io_addr:
        name = io_addr[addr]
        line += f"IN {op} <- 0x{addr:04x}: {name}"
        addEvent(tsc, f"IN_{name}({op})", "B", pid = addr)
        addEvent(tsc+10, f"IN_{name}({op})", "E", pid = addr)
    return line



def printDefaultOp(tsc:int, insn: str, addr: int, op: str):
    return f"op: 0x{addr:04X}({op}) " 

insn_decoders = {
    'RST' : printCall,
    'CALL' : printCall,
    'PUSH' : printStack,
    'RET' : printRet,
    'RETI' : printRet,
    'POP' : printStack,
    'OUT' : printOut,
    'OTIR' : printOut,
    'IN'  : printIn,
    'RST' : printRst
}

def printOp(tsc:int, insn, addr, op):
    line = ""
    if op:
        l = 0
        for i in op:
            insn_l = insn.split()
            info = ""
            func = printDefaultOp
            if insn_l[0] in insn_decoders:
                func = insn_decoders[insn_l[0]]
            info = func(tsc, insn, addr[l], i)
            line += info if len(info) else printDefaultOp(tsc, insn, addr[l], i)
            l += 1
    return line

def printInsn(tsc, value):
    global isr
    insn = value.get("insn")
    addr = value.get("addr")
    data = value.get("data")
    op = value.get("op")
    tsc_s = str(tsc)
    pan = 10 - len(tsc_s)
    line = f"{tsc}:{' '*pan}{addr[0]:04X} "
    datalen = len(addr) - countOp(op)
    interrupt = False
    if addr and data and len(addr) == len(data):
        data_count = len(data) - countOp(op)
        if data_count > 4:
            #we have 5 bytes of data for interrupt:
            data_count = data_count - 5
            interrupt = True
            isr = True
        for i in range(4):
            line += f"{data[i]} " if i < data_count else "   "
        line += f"{' ' * 10}"
        line += insn
        line += f"{' ' * (25-len(insn))}"
        line += printOp(tsc, insn, addr[datalen:], op)
        if interrupt:
            assert(data_count >= 0), f"{tsc}: {data_count}, {data}"
            int_vect = int(data[-5], 16)
            int_ret_s = f"{data[-4]}{data[-3]}"
            int_addr_s = f"{data[-1]}{data[-2]}"
            int_addr_ptr_s = f"{addr[-2]:02X}"
            line += f"\nISR_VECT({int_vect:02X})! {data}, {int_ret_s}, *({int_addr_ptr_s}) ->{int_addr_s}\n"
            line += printCall(tsc, f"ISR {int_addr_s}", int(int_addr_s, 16), int_vect)
    return line

def loadAddrMap(file):
    with open(file) as f:
        for line in f:
            if 'ROM' not in line:
                continue
            p = line.split()
            name = p[0]
            addr = int(p[2], base = 16)
            funcNames[addr] = name




if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=str)
    parser.add_argument('-a', '--addr', type=str, required=True)
    args = parser.parse_args()
    loadAddrMap(args.addr)
    with open(args.file) as f:
        # parse instructions
        for line in f:
            p = line.split()
            tsc_p = p[0]
            tsc_s = tsc_p.split('-')
            tsc_start = int(tsc_s[0])
            tsc_end = int(tsc_s[1])
            if "Instructions:" in line:
                insn = ' '.join(p[3:])
                addInsn(tsc_start, "insn", insn, dump)
        #dump = compress(dump)
        f.seek(0)
        # parse addresses
        for line in f:
            p = line.split()
            tsc_p = p[0]
            tsc_s = tsc_p.split('-')
            tsc_start = int(tsc_s[0])
            tsc_end = int(tsc_s[1])
            if "Address" in line:
                addr = p[-1]
                addProp(tsc_start+2, "addr", int(addr, base = 16), dump)
            elif "Data" in line:
                addr = p[-1]
                addProp(tsc_start, "data", addr, dump)
            elif "Operands" in line:
                 data = p[-1]
                 addProp(tsc_start, "op", data, dump)

        # for line in dump:
        #     print(line, dump[line])

        with open(f"{args.file}.out", "w") as fo:
            for line in dump:
                fo.write(f"{printInsn(line, dump[line])}\n")

        out_file = open(f"{args.file}.json", "w")
        trace = {}
        trace["traceEvents"] = trace_events
        for item in pidNums:
            event = {}
            event["name"] = "thread_name"
            event["ph"] = "M"
            event["pid"] = 0
            event["tid"] = pidNums[item]
            args = {}
            args["name"] = item
            event["args"] = args
            trace["traceEvents"].append(event)
        for item in io_addr:
            event = {}
            event["name"] = "thread_name"
            event["ph"] = "M"
            event["pid"] = 0
            event["tid"] = f"IO_item"
            args = {}
            args["name"] = io_addr[item]
            event["args"] = args
            trace["traceEvents"].append(event)            
        trace["displayTimeUnit"] = "ns"
        json.dump(trace, out_file, indent = 6)
        out_file.close()
        exit()
