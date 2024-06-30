#include "BumperBalls.h"

void func_800FB1E0_BumperBalls(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_800178A0(1);
    func_800178E8();
    D_800EE98C = arg1;
    D_800F33EC.y = arg2;
    D_800F33EC.x = arg3;
    D_800F33EC.z = arg4;
    D_800F6524.x = arg5;
    D_800F6524.y = arg6;
    D_800F6524.z = arg7;
    D_800C3110->unk_40 = arg0;
}

void func_800FB298_BumperBalls(void) {
    s32 i;
    for (i = 0; i < D_800F3778; i++) {}
}

void func_800FB2D0_BumperBalls(void) {
    omOvlReturnEx(1);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/196300", func_800FB2EC_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/196300", func_800FBA20_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/196300", func_800FC618_BumperBalls);
