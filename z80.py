import argparse
import json
import sys

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

def add_insn(tsc, name, data, dump):
    if tsc not in dump:
        dump[tsc] = {}
    dump[tsc][name] = data


def add_property(tsc, name, data, dump):
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
        else:
            if last != dump[rec]:
                last = dump[rec]
                compressed[rec] = last
    return compressed


def count_op(op):
    if not op:
        return 0
    val = 0
    for i in op:
        val += 2 if len(i)>2 else 1
    return val



stack_push = ['RST', 'CALL', 'PUSH']
stack_pop = ['RET', 'POP']

def print_stack(tsc:int, insn: str, addr: int, op: str):
    line = ""
    if 0x4000 <= addr <= 0x4040:
        if any(elem in insn for elem in stack_push):
            line += f"PUSH {op} -> {label(addr)} "
        if any(elem in insn for elem in stack_pop):
            line += f"POP {op} <- {label(addr)} "
    return line

class CallStack():
    def __init__(self):
        self.stack_ptr = []
        self.trace_events = []
        self.isr_ptr = []
        self.isr = False

    def push(self, tsc, call, isr = None):
        from_func = self.stack_ptr[-1] if self.stack_ptr else "Unknown"
        to_func = label(call)
        self.stack_ptr.append(to_func)
        self._isr(isr)
        self.add_event(tsc, to_func, "B")
        return  f"\nCall {to_func} | {from_func} -> Stack"

    def pop(self, tsc, call, isr = None):
        from_func = self.stack_ptr.pop() if self.stack_ptr else "Unknown"
        to_func = self.stack_ptr[-1] if self.stack_ptr else "Unknown"
        line = f"\nReturn from {from_func} | Stack -> {to_func}"        
        self.add_event(tsc, from_func, "E")
        self._isr(isr)
        return line

    def _isr(self, isr):
        if isr is None:
            return
        self.isr = isr

    def add_event(self, ts, name, phase, pid = None):
        event = {}
        event["name"] = name
        pidtid = pid or (pidNums["int"] if self.isr else pidNums["main"])
        event["pid"] = 0
        event["tid"] = pidtid
        event["ts"] = ts*400/1000
        event["cat"] = "flamechart"
        event["ph"] = phase
        self.trace_events.append(event)

    def dump(self, file):
        trace = {}
        trace["traceEvents"] = self.trace_events
        for name, tid in pidNums.items():
            event = {}
            event["name"] = "thread_name"
            event["ph"] = "M"
            event["pid"] = 0
            event["tid"] = tid
            _args = {}
            _args["name"] = name
            event["args"] = _args
            trace["traceEvents"].append(event)
        for tid, name in io_addr.items():
            event = {}
            event["name"] = "thread_name"
            event["ph"] = "M"
            event["pid"] = 0
            event["tid"] = tid
            _args = {}
            _args["name"] = name
            event["args"] = _args
            trace["traceEvents"].append(event)
        trace["displayTimeUnit"] = "ns"
        with open(f"{file}.json", "w", encoding="utf-8") as out_file:
            json.dump(trace, out_file, indent = 6)
            out_file.close()

call_stack = CallStack()

def print_call(tsc:int, insn: str, addr: int, op: str):
    line = print_stack(tsc, insn, addr, op)
    call = insn.split()[1]
    if ',' in call:
        call = insn.split(',')[-1]
    line += call_stack.push(tsc, call, True if ('ISR' in insn) else None)
    return line

def print_rst(tsc:int, insn: str, addr: int, op: str):
    line = print_stack(tsc, insn, addr, op)
    call = insn.split()[1]
    line += call_stack.push(tsc, call)
    return line

def print_ret(tsc:int, insn: str, addr: int, op: str):
    return call_stack.pop(tsc, addr, False if ('RETI' in insn) else None)

def print_out(tsc:int, insn: str, addr: int, op: str):
    line = ""
    addr = addr % 256
    if addr in io_addr:
        name = io_addr[addr]
        line += f"OUT {op} -> 0x{addr:04x}: {name}"
        call_stack.add_event(tsc, f"OUT_{name}({op})", "B", pid = addr)
        call_stack.add_event(tsc+10, f"OUT_{name}({op})", "E", pid = addr)
    return line


def print_in(tsc:int, insn: str, addr: int, op: str):
    line = ""
    addr = addr % 256
    name = "[INVALID]"
    if addr in io_addr:
        name = io_addr[addr]
        line += f"IN {op} <- 0x{addr:04x}: {name}"
        call_stack.add_event(tsc, f"IN_{name}({op})", "B", pid = addr)
        call_stack.add_event(tsc+10, f"IN_{name}({op})", "E", pid = addr)
    return line

def print_default_op(tsc:int, insn: str, addr: int, op: str):
    return f"op: 0x{addr:04X}({op}) "

op_decoders = {
    'RST' : print_call,
    'CALL' : print_call,
    'PUSH' : print_stack,
    'RET' : print_ret,
    'RETI' : print_ret,
    'POP' : print_stack,
    'OUT' : print_out,
    'OTIR' : print_out,
    'IN'  : print_in
}

def print_op(tsc:int, insn, addr, op):
    line = ""
    if op:
        l = 0
        for i in op:
            insn_l = insn.split()
            info = ""
            func = print_default_op
            if insn_l[0] in op_decoders:
                func = op_decoders[insn_l[0]]
            info = func(tsc, insn, addr[l], i)
            line += info if len(info) else print_default_op(tsc, insn, addr[l], i)
            l += 1
    return line

def print_isr(tsc, addr, data):
    int_vect = int(data[-5], 16)
    int_ret_s = f"{data[-4]}{data[-3]}"
    int_addr_s = f"{data[-1]}{data[-2]}"
    int_addr_ptr_s = f"{addr[-2]:02X}"
    line = f"\nISR_VECT({int_vect:02X})! {addr}, {data}, \
                {int_ret_s}, *({int_addr_ptr_s}) ->{int_addr_s}\n"
    line += print_call(tsc, f"ISR {int_addr_s}", int(int_addr_s, 16), int_vect)
    return line

def check_isr(addr, op_num):
    value = 1
    reg = addr[0]
    for item in addr[1:]:
        if item == reg + 1:
            value += 1
            reg = item
        else:
            break
    return True if (len(addr) - op_num - value) > 3 else False
    

def print_insn(tsc, value):
    insn = value.get("insn")
    addr = value.get("addr")
    data = value.get("data")
    op = value.get("op")
    tsc_s = str(tsc)
    pan = 10 - len(tsc_s)
    if not addr:
        return "decode fail"
    op_num = count_op(op)
    line = f"{tsc}:{' '*pan}{addr[0]:04X} "
    datalen = len(addr) - op_num
    interrupt = False
    if addr and data and len(addr) == len(data):
        data_count = len(data) - op_num
        if data_count > 4 and check_isr(addr, op_num):
            #we have 5 bytes of data for interrupt:
            data_count = data_count - 5
            interrupt = True
        for i in range(4):
            line += f"{data[i]} " if i < data_count else "   "
        line += f"{' ' * 10}"
        line += insn
        line += f"{' ' * (25-len(insn))}"
        line += print_op(tsc, insn, addr[datalen:], op)
        if interrupt:
            assert(data_count >= 0), f"{tsc}: {data_count}, {value}"
            line += print_isr(tsc, addr, data)
    return line

def load_addr_map(file):
    with open(file, encoding="utf-8") as f:
        for line in f:
            if 'ROM' not in line:
                continue
            p = line.split()
            name = p[0]
            addr = int(p[2], base = 16)
            funcNames[addr] = name

def load_raw_file(file, dump):
    with open(file, "r", encoding="utf-8") as f:
        # parse instructions
        for line in f:
            p = line.split()
            tsc_p = p[0]
            tsc_s = tsc_p.split('-')
            tsc_start = int(tsc_s[0])
            if "Instructions:" in line:
                insn = ' '.join(p[3:])
                add_insn(tsc_start, "insn", insn, dump)
        #dump = compress(dump)
        f.seek(0)
        # parse addresses
        for line in f:
            p = line.split()
            tsc_p = p[0]
            tsc_s = tsc_p.split('-')
            tsc_start = int(tsc_s[0])
            if "Address" in line:
                addr = p[-1]
                add_property(tsc_start+2, "addr", int(addr, base = 16), dump)
            elif "Data" in line:
                addr = p[-1]
                add_property(tsc_start, "data", addr, dump)
            elif "Operands" in line:
                data = p[-1]
                add_property(tsc_start, "op", data, dump)

def dump_trace(file, dump):
    with open(f"{file}.out", "w", encoding="utf-8") as fo:
        for line, item in dump.items():
            fo.write(f"{print_insn(line, item)}\n")

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', type=str)
    parser.add_argument('-a', '--addr', type=str, required=True)
    args = parser.parse_args()
    load_addr_map(args.addr)
    trace_dump = {}
    load_raw_file(args.file, trace_dump)
    dump_trace(args.file, trace_dump)
    call_stack.dump(args.file)
    sys.exit()
