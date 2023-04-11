#include "common.h"
#include "lib/2.0I/io/piint.h"

extern OSDevMgr __osPiDevMgr;

OSMesgQueue* osPiGetCmdQueue(void) {
    if (!__osPiDevMgr.active) {
        return NULL;
    } else {
        return __osPiDevMgr.cmdQueue;
    }
}

INCLUDE_ASM(s32, "95F40", bcmp);

INCLUDE_ASM(s32, "95F40", _Printf);

INCLUDE_ASM(s32, "95F40", func_800959E0);
