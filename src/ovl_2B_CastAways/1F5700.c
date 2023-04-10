#include "CastAways.h"

void func_800FAF40_1F5700(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, f32 arg7) {
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

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FAFF0_1F57B0);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB0C8_1F5888);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB374_1F5B34);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB404_1F5BC4);

s32 func_800FB4D4_1F5C94(f32 arg0, f32 arg1, f32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 temp_f0, temp_f2, temp_f12;
    f32 temp = 18.0f;
    
    temp_f2 = D_800FBA30[arg3];
    temp_f12 = (arg0 - arg4) * (arg0 - arg4);
    temp_f0 = (arg2 - arg6) * (arg2 - arg6);
    
    if ( (temp_f12 + temp_f0) <= ((temp_f2 + temp) * (temp_f2 + temp))) {
        return 1;
    } else {
        return 0;
    }
}

s32 func_800FB53C_1F5CFC(f32 arg0, f32 arg1, f32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    f32 temp_f0, temp_f2, temp_f12;
    f32 temp = 18.0f;
    
    temp_f2 = D_800FBA30[arg3] - 6.0f;
    temp_f12 = (arg0 - arg4) * (arg0 - arg4);
    temp_f0 = (arg2 - arg6) * (arg2 - arg6);
    
    if ( (temp_f12 + temp_f0) <= ((temp_f2 + temp) * (temp_f2 + temp))) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB5B4_1F5D74);

void func_800FB644_1F5E04(u16 arg0, s32 arg1) {
    D_800F2B7C[arg0].unk_4C.signed32 = arg1;
}

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB668_1F5E28);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB778_1F5F38);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB858_1F6018);

INCLUDE_ASM(const s32, "ovl_2B_CastAways/1F5700", func_800FB884_1F6044);
