
import sys


ROM = {
"ROM" :
    [
        {
            "startAddr" : 0x0000,  "endAddr" : 0x07ff
        }, 
        {
            "startAddr" : 0x0800, "endAddr" : 0x0fff
        },
        {
            "startAddr" : 0x1000, "endAddr" : 0x17ff
        },  
        {
            "startAddr" : 0x1800, "endAddr" : 0x1fff
        },  
        {
            "startAddr" : 0x2000, "endAddr" : 0x27ff
        }, 
        {
            "startAddr" : 0x2800, "endAddr" : 0x2fff
        },  
        {
            "startAddr" : 0x3000, "endAddr" : 0x37ff
        }
    ],
"ROM_Debug":
    {
        "startAddr" : 0x3800, "endAddr" : 0x3fff
    },    
"RAM" :
    {
        "startAddr" : 0x4000, "endAddr" : 0x5fff
    }
}