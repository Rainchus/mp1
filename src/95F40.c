#include "common.h"

extern OSDevMgr __osPiDevMgr;

OSMesgQueue* osPiGetCmdQueue() {
    if (!__osPiDevMgr.active) {
        return NULL;
    } else {
        return __osPiDevMgr.cmdQueue;
    }
}

INCLUDE_ASM("asm/nonmatchings/95F40", bcmp);

INCLUDE_ASM("asm/nonmatchings/95F40", _Printf);

INCLUDE_ASM("asm/nonmatchings/95F40", func_800959E0_965E0);
