#include "common.h"
#include "GhostGuess.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/11BFE0", func_800FB3B0_11BFE0);

void func_800FB448_11C078(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, u16 arg7) {
    D_800FC324 = arg0;
    D_800FC2FC.x = arg1;
    D_800FC2FC.y = arg2;
    D_800FC2FC.z = arg3;
    D_800FC314.x = arg4;
    D_800FC314.y = arg5;
    D_800FC314.z = arg6;
    if (D_800FC328 == 0) {
        D_800FC32A = arg7;
        D_800FC328 = arg7;
    }
}

void func_800FB4B0_11C0E0(void) {
    D_800FC320 = D_800FC324;
    D_800FC308.x = D_800FC314.x;
    D_800FC308.y = D_800FC314.y;
    D_800FC308.z = D_800FC314.z;
    D_800FC2F0.x = D_800FC2FC.x;
    D_800FC2F0.y = D_800FC2FC.y;
    D_800FC2F0.z = D_800FC2FC.z;
}

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/11BFE0", func_800FB514_11C144);
