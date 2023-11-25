#include "common.h"
#include "ChanceTime.h"

INCLUDE_ASM("asm/nonmatchings/ovl_01_ChanceTime/DE6A0", func_800FFAA0_DE6A0);

s8 func_800FFF4C_DEB4C(s8 arg0, s8 arg1) {
    if (D_80101378_DFF78 == 0) {
        D_8010183C_E02F0 = arg0;
        D_8010183D_E02F0 = arg1;
        D_801011F9_DFDF9 = 0;
        InitProcess(&func_800FFAA0_DE6A0, 0x300, 0x800, 0);
        D_80101378_DFF78 = 1;
    }
    return D_80101370_DFF70;
}

INCLUDE_ASM("asm/nonmatchings/ovl_01_ChanceTime/DE6A0", func_800FFFB0_DEBB0);

INCLUDE_ASM("asm/nonmatchings/ovl_01_ChanceTime/DE6A0", func_80101180_DFD80);
