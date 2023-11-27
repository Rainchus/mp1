#include "common.h"
#include "GhostGuess.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/11BFE0", func_800FB3B0_11BFE0);

void func_800FB448_11C078(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, u16 arg7) {
    D_800FC324_11C810 = arg0;
    D_800FC2FC_11C810.x = arg1;
    D_800FC2FC_11C810.y = arg2;
    D_800FC2FC_11C810.z = arg3;
    D_800FC314_11C810.x = arg4;
    D_800FC314_11C810.y = arg5;
    D_800FC314_11C810.z = arg6;
    if (D_800FC328_11C810 == 0) {
        D_800FC32A_11C810 = arg7;
        D_800FC328_11C810 = arg7;
    }
}

void func_800FB4B0_11C0E0(void) {
    D_800FC320_11C810 = D_800FC324_11C810;
    D_800FC308_11C810.x = D_800FC314_11C810.x;
    D_800FC308_11C810.y = D_800FC314_11C810.y;
    D_800FC308_11C810.z = D_800FC314_11C810.z;
    D_800FC2F0_11C810.x = D_800FC2FC_11C810.x;
    D_800FC2F0_11C810.y = D_800FC2FC_11C810.y;
    D_800FC2F0_11C810.z = D_800FC2FC_11C810.z;
}

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/11BFE0", func_800FB514_11C144);
