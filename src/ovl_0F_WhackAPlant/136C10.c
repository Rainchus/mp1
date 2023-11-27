#include "common.h"
#include "WhackAPlant.h"

void func_800FB250_136C10(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
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

void func_800FB308_136CC8(unkObjectStruct* arg0, s16 arg1, f32 arg2, f32 arg3, f32 arg4) {
    if (arg1 == 0) {
        func_8005D95C(arg0, arg2, arg3, arg4);
        return;
    }
    func_80025798(arg0->unk_40[arg1], arg2, arg3, arg4);
}

void func_800FB378_136D38(unkObjectStruct* arg0, s16 arg1, f32 arg2, f32 arg3, f32 arg4) {
    if (arg1 == 0) {
        func_8005D96C(arg0, arg2, arg3, arg4);
        return;
    }
    func_800257E4(arg0->unk_40[arg1], arg2, arg3, arg4);
}

s32 func_800FB3E8_136DA8(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5) {
    f32 temp_f0;
    f32 temp_f12;
    f32 temp_f14;

    temp_f12 = arg0 - arg3;
    temp_f12 = temp_f12 * temp_f12;
    
    temp_f14 = arg1 - arg4;
    temp_f12 = (temp_f14 * temp_f14) + temp_f12;
    
    temp_f0 = arg2 + arg5;
    temp_f0 = temp_f0 * temp_f0;
    
    if (temp_f12 <= temp_f0) {
        return 1;
    } else {
        return 0;
    }
}

f32 func_800FB43C_136DFC(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp_f22 = arg2 - arg0;
    
    if (func_800B1750(SQ(temp_f22) + ((arg3 - arg1) * (arg3 - arg1))) < 15.0f) {
        return 1000.0f;
    } else {
        return func_800B0CD8(temp_f22, arg3 - arg1);
    }
}

void func_800FB4C0_136E80(s32 arg0) {
    func_8005DFB8(1);
}

void func_800FB4DC_136E9C(void) {
    D_800EE738[1] = 0;
    D_800EE738[2] = 900.0f;
    D_800EE738[0] = 0;
    D_800C3110->unk_40 = 45.0f;
    D_800EE738[3] = 45.0f;
    D_800EE738[4] = 20000.0f;
    D_800EE738[5] = 10000.0f;
    func_8001D420(0, &D_800FB724_137050, (Vec3f*) &D_800FB710_137050[2], &D_800FB734_137050);
    func_8001D57C(0);
}
