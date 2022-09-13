#include "common.h"
#include "1217D0.h"

void func_800F65E0_1217D0(void) {
    func_80029090(0x20);
    func_8002ADF0(&D_800EDEC0, 64);
    func_8001DE70(32);
    InitObjSystem(32, 0);
    func_80060088();
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 160);
    func_8000942C();
    D_800F6524.x = 50.0f;
    D_800F6524.y = 200.0f;
    D_800F6524.z = -100.0f;
    D_800F33EC.y = D_800F33EC.x = D_800F33EC.z = 0.0f;
    D_800EE98C = 1750.0f;
    func_800F67AC_12199C();
    func_800F6870_121A60();
    D_800FA72D = 0;
    D_800FA738 = 0;
    D_800FA72C = 0;
    func_800F8EE0_1240D0();
    func_800F79B0_122BA0();
    func_800F6CF8_121EE8();
    func_80023448(3);
    func_800234B8(0, 16, 16, 16);
    func_80023504(1, -43.0f, -18.0f, -110.0f);
    func_800234B8(1, 0, 0, 0);
    func_80023504(2, 9.0f, -17.0f, 118.0f);
    func_800234B8(2, 0, 0, 0);
    func_80023504(3, -43.0f, -18.0f, -110.0f);
    func_800234B8(3, 0, 0, 0);
    func_8002890C(0, 15, 0);
    SetFadeInTypeAndTime(0, 16);
}

void func_800F67AC_12199C(void) {
    s16 temp_s0;
    u8 temp_s1;

    func_800178A0(1);
    temp_s0 = func_800178E8();
    temp_s1 = temp_s0;
    func_80017660(temp_s1, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s1, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(temp_s0, 30.0f, 80.0f, 8000.0f);
}

void func_800F6870_121A60(void) {
    if (func_80075FE0() != 0) {
        func_80075FE0();
    }
}

void func_800F689C_121A8C(s32 arg0, u32 arg1) {
    u32 new_var;
    switch (D_800ED430) {
    case 0:
        func_80075FE0();
        if (arg1 == 0) {
            func_80075CCC(0);
            if (func_80075FE0() != 0) {
                func_80075FE0();
                break;
            }
        } else {
            if (arg1 >= 60) {
                func_80009458();
                break;
            }
        }
        break;
    case 1:
        do { (new_var = 0x384); } while (0); //required to match
        if (new_var == arg1) {
            func_80009438();
        }
        break;
    case 2:
        break;
    }
}

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F6944_121B34);

void func_800F6CF8_121EE8(void) {
    func_8005D384(2, 2, 0, -1, &func_800F6D2C_121F1C);
}

void func_800F6D2C_121F1C(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_50 = func_80023684(0x6C, 0x7918);
    func_8009B770(arg0->unk_50, 0, 0x6C);
    temp_s1 = arg0->unk_50;
    D_800FA73C.x = 400.0f;
    D_800FA73C.y = 250.0f;
    D_800FA73C.z = 600.0f;
    arg0->unk_18 = 400.0f;
    arg0->unk_1C = D_800FA73C.y;
    arg0->unk_20 = D_800FA73C.z;
    arg0->unk_38 = 1.2f;
    arg0->unk_34 = 1.2f;
    arg0->unk_30 = 1.2f;
    arg0->unk_28 = -45.0f;
    arg0->func_ptr = &func_800F6ED0_1220C0;
    arg0->unk_40->unk_00.unsigned16[0] = LoadFormFile(0xA0088, 0x649);
    func_80009340(arg0, 1, 0x26, 0x64D, 8);
    func_8001E360(temp_s1->unk_20.b[2], 255, 255, 255);
    func_8001E2F8(temp_s1->unk_20.b[2], 255);
    func_80025EB4(arg0->unk_40->unk_00.unsigned16[0], 2, 1);
    func_80021240(arg0->unk_40->unk_00.unsigned16[0]);
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_800257E4(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_24, arg0->unk_28, arg0->unk_2C);
    func_80025830(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_30, arg0->unk_34, arg0->unk_38);
    func_80025830(arg0->unk_40->unk_00.unsigned16[1], 2.0f, 2.0f, 2.0f);
}

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F6ED0_1220C0);

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F73CC_1225BC);

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F7618_122808);

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F79B0_122BA0);

void func_800F7AEC_122CDC(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x1E0002, 0x99);
    arg0->unk_40->unk_00.unsigned16[1] = func_800174C0(0x1E0003, 0x99);
    arg0->unk_40->unk_04.unsigned16[0] = func_800174C0(0x14, 0x99);
    arg0->unk_40->unk_04.unsigned16[1] = func_800174C0(0x1E0008, 0x99);
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_24 = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025798(arg0->unk_40->unk_04.unsigned16[1], arg0->unk_18, arg0->unk_1C - 25.0f, arg0->unk_20);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    temp_s1->unk_04.b[0] = 1;
    temp_s1->unk_04.b[1] = 0;
    arg0->func_ptr = &func_800F6944_121B34;
}

void func_800F7C04_122DF4(Object* arg0) {
    unkGlobalStruct_00* temp_s0;

    D_800F9EFA = arg0->unk_40->unk_04.unsigned16[1] = func_800174C0(0x1E0004, 0x99);
    D_800F9EF6 = arg0->unk_40->unk_04.unsigned16[0] = func_800174C0(0x1E0006, 0x99);
    D_800F9EF8 = arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x1E0000, 0x99);
    D_800F9EFC = arg0->unk_40->unk_00.unsigned16[1] = func_800174C0(0x1E0001, 0x699);
    arg0->unk_40->unk_08.unsigned16[0] = func_800174C0(0x1E0009, 0x99);
    arg0->unk_40->unk_08.unsigned16[1] = func_800174C0(0x1E000A, 0x99);
    func_80025CA8(D_800F9EF6, D_800FA720);
    func_80025EB4(D_800F9EF8, 2, 1);
    func_80025EB4(D_800F9EF6, 2, 1);
    func_80026040(D_800F9EFA);
    func_80039C48(&D_800F9E90, &D_800F9EFE);
    D_800F9F04 = 0;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_24 = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025798(arg0->unk_40->unk_08.unsigned16[1], arg0->unk_18, arg0->unk_1C, arg0->unk_20 + 100.0f);
    temp_s0 = func_80023684(44, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 0x2C);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 0;
    arg0->func_ptr = &func_800F7DD4_122FC4;
}

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F7DD4_122FC4);

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F886C_123A5C);

INCLUDE_ASM(s32, "ovl_0C_PedalPower/1217D0", func_800F89F0_123BE0);

void func_800F8D34_123F24(Object* arg0) {
    unkGlobalStruct_00* temp_s0;

    arg0->unk_40->unk_00.unsigned16[0]= func_800174C0(0x190002, 0x99);
    arg0->unk_18 = D_800F9E38[D_800F9E20];
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = -50.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, -50.0f);
    temp_s0 = func_80023684(44, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 44);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 0;
    arg0->func_ptr = NULL;
    D_800F9E20 += 1;
}


void func_800F8E08_123FF8(Object* arg0) {
    unkGlobalStruct_00* temp_s0;

    arg0->unk_40->unk_00.unsigned16[0]= func_800174C0(0x1E000B, 0x99);
    arg0->unk_18 = -25.0f;
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = 75.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, 75.0f);
    func_80025830(arg0->unk_40->unk_00.unsigned16[0], 2.5f, 1.0f, 1.0f);
    temp_s0 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 0x2C);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 0;
    arg0->func_ptr = NULL;
}
