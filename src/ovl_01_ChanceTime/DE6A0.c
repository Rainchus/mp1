#include "common.h"
#include "D51E0.h"

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DE6A0", func_800FFAA0_DE6A0);

s8 func_800FFF4C_DEB4C(s8 arg0, s8 arg1) {
    if (D_80101378 == 0) {
        D_8010183C = arg0;
        D_8010183D = arg1;
        D_801011F9 = 0;
        func_8005DC28(&func_800FFAA0_DE6A0, 0x300, 0x800, 0);
        D_80101378 = 1;
    }
    return D_80101370;
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DE6A0", func_800FFFB0_DEBB0);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DE6A0", func_80101180_DFD80);
