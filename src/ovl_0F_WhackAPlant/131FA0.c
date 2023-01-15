#include "common.h"
#include "131FA0.h"

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F65E0_131FA0);

void func_800F6B8C_13254C(void) {
    s32 i = 0;
    
    for (i = 0; i < D_800F3778; i++) {}

}

void func_800F6BC4_132584(unkObjectStruct* arg0) {
    s16 temp_s2;
    s32 i;

    D_800FB740 = 0;
    D_800FB69A = 0;
    D_800FB6F4 = 0;
    D_800FB710[1] = 0;

    for (i = 0; i < 9; i++) {
        temp_s2 = func_8001E00C((void*)-1, 0x68D, 8);
        D_800ECDE0[temp_s2].unk_02 = D_800FB6BA;
        func_80025930(D_800ECDE0[temp_s2].unk_00, 0x60000000, 0x60000000);
        D_800FB6C0[i] = temp_s2;
        D_800FB6EA[i] = 0;
    }

    for (i = 0; i < 9; i++) {
        temp_s2 = func_8001E00C((void*)-1, 0x68D, 8);
        D_800ECDE0[temp_s2].unk_02 = D_800FB6BC;
        func_80025930(D_800ECDE0[temp_s2].unk_00, 0x60000000, 0x60000000);
        D_800FB6D8[i] = temp_s2;
        func_8001E2F8(temp_s2, 0xE0);
        func_8001E360(temp_s2, 0xFF, 0xFF, 0xBE);
    }

    D_800ED430 = 1;
    arg0->func_ptr = &func_800F6D54_132714;
}

void func_800F6D54_132714(void) {
    switch (D_800FB740) {
    case 0:
        func_800FA078_135A38();
        break;
    case 1:
        break;
    case 2:
        func_800FA1E0_135BA0();
        break;
    }
}

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F6DBC_13277C);

void func_800F6FE4_1329A4(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s0;
    
    D_800F2AF8[D_800ED440++] = arg0;
    temp_s0 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 0x2C);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 1;
    func_80009058(arg0, 170.0f, 170.0f, -320.0f, -320.0f, 320.0f, 320.0f);
    func_80008FB8(arg0, 0.5f);
    arg0->func_ptr = NULL;
}

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F70AC_132A6C);

void func_800F7570_132F30(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;

    if (D_800FB60A < 0x69) {
        func_8005D95C(arg0, arg0->unk_18, arg0->unk_1C + PI, arg0->unk_20);
        func_80017DB0(arg0);
    } else {
        D_800FB710[0] = 3;
        arg0->func_ptr = &func_800F7714_1330D4;
        func_800258EC(D_800FB6F8->unk_40->unk_00.unsigned16[0], 0x1C00, 0x400);
        temp_s1->unk_3C = 0.0f;
    }

    D_800FB60A += 1;
    D_800FB724.x = func_800AEAC0(D_800FB60C) * D_800FB610;
    D_800FB724.z = func_800AEFD0(D_800FB60C) * D_800FB610;
    D_800FB724.y = D_800FB614 + 270.0f;
    D_800FB718 = D_800FB618 + 270.0f;
    D_800FB60C -= 3.4285715f;
    D_800FB610 = D_800FB610 + 7.561905f;
    D_800FB614 = D_800FB614 + 7.6190476f;
    D_800FB618 = D_800FB618 + -2.5714285f;
}

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F7714_1330D4);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F7AE0_1334A0);

void func_800F7F90_133950(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    unk_Struct01* temp_v1 = temp_s1->unk_E4;

    if (D_800FB61C < 0xF) {
        temp_s1->unk_3C += temp_v1->unk_08;
        arg0->unk_18 += temp_v1->unk_0C;
        arg0->unk_20 += temp_v1->unk_10;
        D_800FB61C += 1;
        if (D_800FB61C == 0xF) {
            func_800184BC(arg0, 0);
            arg0->unk_18 = arg0->unk_20 = 0.0f;
            if (D_800FB698 == 0) {
                D_800FB730 = 1;
            }
        }
    }
    func_80017DB0(arg0);
    func_8009ECB0(&D_800F2B7C[arg0->unk_40->unk_00.signed16[0]].unk7C, 0.0f, temp_s1->unk_3C, 0.0f);
}

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F8098_133A58);

// void func_800F8098_133A58(unkObjectStruct* arg0) {
//     u16 temp = (++D_800FB61E);
//     if (temp < 0x5A) {
//         arg0->unk_1C += -2.7777777f;
//     }
    
//     if (D_800FB620 != 0) {
//         u16 temp2 = (--D_800FB620); 
//         if (!temp2) {
//             func_80060540(0x24B, 0);
//         }
//     }
    
//     func_80017DB0(arg0);
// }

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F8134_133AF4);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F82B4_133C74);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F8614_133FD4);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F87EC_1341AC);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F8A58_134418);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F8BE8_1345A8);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F92FC_134CBC);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F968C_13504C);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F97F8_1351B8);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F998C_13534C);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800F9AF4_1354B4);

void func_800F9D38_1356F8(unkObjectStruct* arg0) {
    D_800FB6A4 = func_80019060(D_800FB6A2, 0, 1);
    func_80018D84(D_800FB6A4, 0x8000);
    D_800FB69E = func_80019060(D_800FB69C, 0, 1);
    D_800FB6A0 = func_80019060(D_800FB69C, 0, 1);
    func_80018D84(D_800FB69E, 0x8000);
    func_80018D84(D_800FB6A0, 0x8000);
    SetBasicSpritePos(D_800FB6A4, 0x8E, 0x20);
    SetBasicSpritePos(D_800FB69E, 0xA2, 0x20);
    SetBasicSpritePos(D_800FB6A0, 0xAA, 0x20);
    arg0->unk_4C = 0;
    arg0->unk_4D = 0;
    arg0->unk_4E = 0;
    arg0->unk_4F = 0;
    arg0->unk_34 = 1.0f;
    arg0->func_ptr = &func_800F9E44_135804;
}

void func_800F9E44_135804(unkObjectStruct* arg0) {
    s32 temp_v1;
    u32 temp_s0;
    s32 temp_s1;
    
    temp_v1 = arg0->unk_10;
    
    if (temp_v1 != 0) {
        arg0->unk_10 = 0;
        if (temp_v1 == 1) {
            arg0->unk_4C += arg0->unk_4F;
            arg0->unk_4F = 0;
            arg0->unk_4D = 2;
            arg0->unk_34 = 1.0f;
        }
    }
    
    switch (arg0->unk_4D) {
    case 2:
        arg0->unk_34 += 0.3f;
        if (arg0->unk_34 >= 2.4f) {
            arg0->unk_4D = 4;
            arg0->unk_34 = 2.4f;
        }
        break;

    case 4:
        arg0->unk_34 -= 0.3f;
        if (arg0->unk_34 <= 1.0f) {
            arg0->unk_4D = 0;
            arg0->unk_34 = 1.0f;
        }
        break;
    }

    temp_s1 = arg0->unk_4C;
    temp_s0 = arg0->unk_4C;
    temp_s0 = temp_s0 / 10;
    func_80018E50(D_800FB69E, temp_s0, 0);
    func_80018E50(D_800FB6A0, temp_s1 - (temp_s0 * 0xA), 0);
    SetBasicSpriteSize(D_800FB69E, 1.0f, arg0->unk_34);
    SetBasicSpriteSize(D_800FB6A0, 1.0f, arg0->unk_34);
    SetBasicSpritePos(D_800FB69E, 0xA0, 32.0f - ((arg0->unk_34 - 1.0f) * 6.0f));
    SetBasicSpritePos(D_800FB6A0, 0xB0, 32.0f - ((arg0->unk_34 - 1.0f) * 6.0f));
}


INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FA078_135A38);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FA1E0_135BA0);

void func_800FA668_136028(void) {
    if ((D_800FB608 != 0) || (D_800F5144 != 0)) {
        func_800FB4C0_136E80(131);
        func_800601D4(40);
    }
}

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FA6AC_13606C);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FA760_136120);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FAF34_1368F4);

INCLUDE_ASM(s32, "ovl_0F_WhackAPlant/131FA0", func_800FB138_136AF8);

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
    func_80025798(arg0->unk_40->unk_00.signed16[arg1], arg2, arg3, arg4);
}

void func_800FB378_136D38(unkObjectStruct* arg0, s16 arg1, f32 arg2, f32 arg3, f32 arg4) {
    if (arg1 == 0) {
        func_8005D96C(arg0, arg2, arg3, arg4);
        return;
    }
    func_800257E4(arg0->unk_40->unk_00.signed16[arg1], arg2, arg3, arg4);
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
    func_8001D420(0, &D_800FB724, (Vec3f*) &D_800FB710[2], &D_800FB734);
    func_8001D57C(0);
}
