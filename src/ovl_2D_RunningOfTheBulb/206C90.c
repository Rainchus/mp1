#include "RunningOfTheBulb.h"

void func_800FE090_206C90(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
    func_800178A0(1);
    D_800EE98C = arg1;
    D_800F33EC.y = arg2;
    D_800F33EC.x = arg3;
    D_800F33EC.z = arg4;
    D_800F6524.x = arg5;
    D_800F6524.y = arg6;
    D_800F6524.z = arg7;
    D_800C3110->unk_40 = arg0;
}

void func_800FE140_206D40(void) {
    s32 i;
    for (i = 0; i < D_800F3778; i++) {}
}

void func_800FE178_206D78(s32 arg0) {
    func_8005DFB8(1);
}

void func_800FE194_206D94(void) {
    D_800EE738.unk4 = 0;
    D_800EE738.unk8 = 900.0f;
    D_800EE738.unk0 = 0;
    D_800C3110->unk_40 = 20.0f;
    D_800EE738.unkC = 20.0f;
    D_800EE738.unk10 = 20000.0f;
    D_800EE738.unk14 = 10000.0f;
    func_8001D420(0, &D_800FE484, &D_800FE468_ovl2D, &D_800FE4B8);
    func_8001D57C(0);
}
