#include "RunningOfTheBulb.h"

void func_800F65E0_1FF1E0(void) {
    void* temp_s0;

    InitObjSystem(36, 0);
    func_80060088();
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_8001DE70(33);
    func_80029090(3);
    func_8002ADF0(&D_800EDEC0, 64);
    func_80009500();
    func_800FE090_206C90(20.0f, 3100.0f, 324.0f, 45.0f, 0, -280.0f, 0, 1675.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_80023448(3);
    func_800234B8(0, 0, 0, 0);
    func_800234B8(1, 0, 0, 0);
    func_80023504(1, 0.0f, 100.0f, 0.0f);
    func_800234B8(2, 0xA0, 0x5A, 0xCA);
    func_80023504(2, -16.0f, 97.0f, -68.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, 100.0f, 80.0f, 100.0f);
    func_8005D98C(0, 4);
    func_8005D98C(1, 4);
    func_8005D98C(2, 6);
    D_800FE49C = func_8005DB44(1);
    D_800FE460 = func_8005DB44(0);
    D_800FE480 = func_8005DB44(2);
    func_8005D8B8(func_8005D384(0x64, 0, 0, -1, &func_800FE140_206D40), 0xA0);
    func_8005D384(10, 13, 38, 0, &func_800F7AEC_2006EC);
    func_8005D384(10, 13, 38, 0, &func_800F7B08_200708);
    func_8005D384(10, 13, 38, 0, &func_800F7B24_200724);
    func_8005D384(10, 13, 38, 0, &func_800F7B40_200740);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    func_8005D384(20, 3, 4, 1, &func_800F9724_202324);
    D_800FE478 = func_8005D384(20, 6, 4, -1, &func_800FAB8C_20378C);
    D_800FE4AC = func_8005D384(40, 2, 0, -1, &func_800FB28C_203E8C);
    D_800FE494 = func_8005D384(42, 2, 0, -1, &func_800FB180_203D80);
    D_800FE4C4 = func_8005D384(45, 1, 0, -1, &func_800F6F04_1FFB04);
    func_8005D384(0, 0, 0, -1, &func_800F6AC0_1FF6C0);
    D_800FE470[1] = func_8005D384(6, 4, 0, -1, &func_800F6BE4_1FF7E4);
    D_800FE47C = func_8005D384(30, 0, 0, -1, &func_800F7034_1FFC34);
    func_8005D384(0x2710, 0, 0, -1, &func_800FBF30_204B30);
    D_800FE4A8 = func_8005D384(6, 0, 0, -1, NULL);
    temp_s0 = ReadMainFS(38);
    D_800FE45A = func_80039084(temp_s0);
    HuMemDirectFree(temp_s0);
    D_800FE458 = IsFlagSet(43);
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6AC0_1FF6C0(unkObjectStruct* arg0) {
    s32 i;

    D_800FE464 = 0;
    D_800FE498 = 0;
    D_800FE490 = 0;
    D_800FE44A = 0;
    
    for (i = 0; i < 4; i++) {
        D_800FE44C[i] = 0;
    }
    
    D_800FE4B4 = 0;
    D_800ED430 = 0;
    arg0->func_ptr = &func_800F6B28_1FF728;
}

void func_800F6B28_1FF728(void) {
    switch (D_800FE464) {
    case 0:
        if (D_800FE490 == NULL) {
            D_800FE490 = func_8005D384(4, 0, 0, -1, &func_800FBAA4_2046A4);
            return;
        }
    case 1:
        return;
    case 2:
        if (D_800FE498 == NULL) {
            D_800FE498 = func_8005D384(4, 0, 0, -1, &func_800FBB5C_20475C);
        }
        break;
    }
}

void func_800F6BE4_1FF7E4(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0_2;
    unkGlobalStruct_02* temp_s0_3;
    void* temp_s0;
    
    arg0->unk_40[0] = LoadFormFile(0x410001, 0x289);
    temp_s0 = ReadMainFS(0x27);
    func_80038A9C((&D_800F2B7C[arg0->unk_40[0]])->unk_6C, temp_s0, 0, D_800FE3B0);
    func_80025AD4(arg0->unk_40[0]);
    func_80025B34(arg0->unk_40[0]);
    HuMemDirectFree(temp_s0);
    arg0->unk_40[3] = LoadFormFile(0x410002, 0x699);
    func_80025798(arg0->unk_40[3], 0.0f, 1.0f, 0.0f);
    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = D_800FE4A8;
    temp_s0_2 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    D_800FE4A8->unk_50 = temp_s0_2;
    func_8009B770(temp_s0_2, 0, sizeof(unkGlobalStruct_02));
    temp_s0_2->unk_04 = 1;
    temp_s0_2->unk_05 = 1;
    func_80009000(D_800FE4A8, 2, -1000.0f);
    D_800F2AF8[D_800ED440++] = arg0;
    temp_s0_3 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s0_3;
    func_8009B770(temp_s0_3, 0, sizeof(unkGlobalStruct_02));
    temp_s0_3->unk_04 = 1;
    temp_s0_3->unk_05 = 0;
    func_80009028(arg0, 0, -400.0f, -2500.0f, 400.0f, 2500.0f);
    temp_s0_3->unk_08 = 0.1f;
    arg0->unk_4C[0] = 1;
    arg0->func_ptr = &func_800F6DF4_1FF9F4;
}

void func_800F6DF4_1FF9F4(unkObjectStruct* arg0) {
    f32 temp_f2;

    if ((D_800FE464 != 0) && (arg0->unk_4C[0] == 1)) {
        temp_f2 = D_800F652C.x;
        if ((temp_f2 > -2150.0f)) {
            D_800F652C.x = temp_f2 + -2.186f;
        } else {
            arg0->unk_4C[0] = 0;
            func_8005DC18(D_800FE478, 1);
        }
    }
}

void func_800F6E80_1FFA80(unkObjectStruct* arg0) {
    f32 temp_f2;

    temp_f2 = D_800F652C.x;
    if ((temp_f2 > -2150.0f)) {
        D_800F652C.x = temp_f2 + -13.116001f;
    } else {
        arg0->unk_4C[0] = 0;
        func_8005DC18(D_800FE478, 1);
        D_800F652C.x = -2150.0f;
    }
}

void func_800F6F04_1FFB04(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0;

    arg0->unk_40[0] = func_800174C0(0x41000A, 0x419);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 2;
    D_800F2AF8[D_800ED440++] = arg0;
    func_8005D95C(arg0, 0.0f, 0.0f, D_800F652C.x + -935.0f);
    func_800258EC(arg0->unk_40[0], 4, 4);
    func_80009090(arg0);
    arg0->func_ptr = &func_800F6FF4_1FFBF4;
}

void func_800F6FF4_1FFBF4(unkObjectStruct* arg0) {
    func_8005D95C(arg0, 0.0f, 0.0f, D_800F652C.x + -935.0f);
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7034_1FFC34);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7278_1FFE78);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7364_1FFF64);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7478_200078);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F77B4_2003B4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7A0C_20060C);

// void func_800F7A0C_20060C(Vec3f* arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3) { //matches with mulmul fix on
//     f32 temp_f10;
//     f32 temp_f12;
//     f32 temp_f14;
//     f32 temp_f4;
//     f32 temp_f6;
//     f32 temp_f8;

//     temp_f14 = arg1->x - arg0->x;
//     temp_f12 = arg1->y - arg0->y;
//     temp_f8 = arg1->z - arg0->z;
//     temp_f10 = arg2->x - arg0->x;
//     temp_f4 = arg2->y - arg0->y;
//     temp_f6 = arg2->z - arg0->z;
//     arg3->x = (temp_f12 * temp_f6) - (temp_f8 * temp_f4);
//     arg3->y = (temp_f8 * temp_f10) - (temp_f14 * temp_f6);
//     arg3->z = (temp_f14 * temp_f4) - (temp_f12 * temp_f10);
//     temp_f14 = func_800B1750((arg3->x * arg3->x) + (arg3->y * arg3->y) + (arg3->z * arg3->z));
//     arg3->x /= temp_f14;
//     arg3->y /= temp_f14;
//     arg3->z /= temp_f14;
// }


void func_800F7AEC_2006EC(s32 arg0) {
    func_800F7B5C_20075C(arg0, 0);
}

void func_800F7B08_200708(s32 arg0) {
    func_800F7B5C_20075C(arg0, 1);
}

void func_800F7B24_200724(s32 arg0) {
    func_800F7B5C_20075C(arg0, 2);
}

void func_800F7B40_200740(s32 arg0) {
    func_800F7B5C_20075C(arg0, 3);
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F7B5C_20075C);

void func_800F8210_200E10(unkObjectStruct* arg0) {
    u16 temp_s0;
    s32 temp_s1;
    s16 temp_s3;
    s16 temp_s4;
    s16* temp_s1_2;
    s16* temp_s2;
    s8 temp_s5;
    s8 temp_s6;
    s16* temp;

    if (D_800FE464 == 1) {
        arg0->func_ptr = &func_800F82F4_200EF4;
        return;
    }
    
    temp_s0 = ((unkGlobalStruct_00*) arg0->unk_50)->unk_56;
    temp_s5 = D_800ECE14[temp_s0];
    temp_s6 = D_800F3843[temp_s0];
    temp = D_800F5460;
    temp_s2 = &temp[temp_s0];
    temp_s4 = *temp_s2;
    temp_s1_2 = &D_800EDEB4[temp_s0];
    temp_s3 = *temp_s1_2;
    func_80005A28(arg0);
    D_800ECE14[temp_s0] = temp_s5;
    D_800F3843[temp_s0] = temp_s6;
    *temp_s2 = temp_s4;
    *temp_s1_2 = temp_s3;
}


INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F82F4_200EF4);

void func_800F8D80_201980(unkObjectStruct* arg0) {
    unk_Struct01* temp_s0;

    temp_s0 = ((unkGlobalStruct_00*) arg0->unk_50)->unk_E4;
    temp_s0->unk_58 -= 0.05f;
    func_8005D97C(arg0, temp_s0->unk_58, temp_s0->unk_58, temp_s0->unk_58);
    func_8005D95C(arg0, arg0->unk_18 + temp_s0->unk_5C, arg0->unk_1C + temp_s0->unk_60, arg0->unk_20 + temp_s0->unk_64);
    
    if (++temp_s0->unk_54 >= 20) {
        func_800258EC(arg0->unk_40[0], 4, 4);
        func_800258EC(arg0->unk_40[1], 4, 4);
        func_800258EC(arg0->unk_40[9], 4, 4);
        if (arg0 == D_800FE4A0) {
            func_800258EC(D_800FE4AC->unk_40[0], 4, 4);
        }
        arg0->func_ptr = NULL;
    }
}

void func_800F8EA0_201AA0(unkObjectStruct* arg0) {
    unkObjectStruct* temp_s1;
    f32 temp_f0;
    s16* temp_a0;
    s16* temp_v0_2;
    u16 temp_s0;
    u8 temp_s3;
    u8 temp_s4;
    u16 temp_s5;
    u16 temp_s6;
    unkGlobalStruct_00* temp_a1;
    s16* temp;

    temp_a1 = arg0->unk_50;
    if ((D_800FE470[1])->unk_4C[0] == 0) {
        arg0->func_ptr = &func_800F9094_201C94;
        return;
    }
    temp_s0 = temp_a1->unk_56;
    temp_s3 = D_800ECE14[temp_s0];
    temp_s4 = D_800F3843[temp_s0];
    temp = D_800EDEB4;
    temp_a0 = &temp[temp_s0];
    temp_s5 = *temp_a0;
    temp_v0_2 = &D_800F5460[temp_s0];
    temp_s6 = *temp_v0_2;
    *temp_v0_2 = 0;
    *temp_a0 = 0;
    D_800F3843[temp_s0] = 0;
    D_800ECE14[temp_s0] = 0;
    
    if (arg0->unk_20 > D_800FE364[temp_a1->unk_58][1]) {
        temp_f0 = func_800FCEA0_205AA0(arg0, NULL, D_800FE364[temp_a1->unk_58][0], D_800FE364[temp_a1->unk_58][1], 40.0f, 190.0f);
        D_800ECE14[temp_s0] = (func_800AEAC0(temp_f0) * 80.0f);
        D_800F3843[temp_s0] = (-func_800AEFD0(temp_f0) * 80.0f);
    }
    
    func_80005A28(arg0);
    D_800ECE14[temp_s0] = temp_s3;
    D_800F3843[temp_s0] = temp_s4;
    D_800EDEB4[temp_s0] = temp_s5;
    D_800F5460[temp_s0] = temp_s6;
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9094_201C94); //https://decomp.me/scratch/eJF8g

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F947C_20207C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9550_202150);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F960C_20220C);

void func_800F9648_202248(void) {
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9650_202250);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9724_202324);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F98F0_2024F0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800F9C2C_20282C);

void func_800FA2B8_202EB8(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp = ((unkGlobalStruct_00*) arg0->unk_50)->unk_68;

    if (arg0->unk_20 > -1600.0f) {
        temp->unk_20.floatingPoint = 180.0f;
        func_8009ECB0(&D_800F2B7C[arg0->unk_40[0]].unk7C, 0.0f, 180.0f, 0.0f);
        arg0->unk_20 += -13.116001f;
        return;
    }
    arg0->func_ptr = NULL;
}

void func_800FA36C_202F6C(unkObjectStruct* arg0) {
    f32 var_f20 = 2.0f - ((arg0->unk_1C - 100.0f) / 240.0f);
    
    if (var_f20 < 1.0f) {
        var_f20 = 1.0f;
    }
    
    func_80025798(arg0->unk_40[2], arg0->unk_18, 2.0f, arg0->unk_20);
    func_80025830(arg0->unk_40[2], var_f20, 2.0f, var_f20);
}

void func_800FA41C_20301C(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_v1;

    temp_v1 = ((unkGlobalStruct_00*) arg0->unk_50)->unk_68;
    temp_v1->unk_00 |= 0x0A;
    temp_v1->unk_02 = 0xA;
    temp_v1->unk_18 = 1.0f;
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA44C_20304C);

void func_800FA5B8_2031B8(heapThing* arg0) {
    if (arg0->unk_08 != NULL) {
        arg0->unk_00 = (u16) (arg0->unk_00 & 0xFFFB);
        ((unkGlobalStruct_00*) arg0->unk_08->unk_50)->unk_E4->unk_30 = 0;
        arg0->unk_08 = NULL;
    }
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA5EC_2031EC);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FA78C_20338C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAA40_203640);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAB8C_20378C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAD68_203968);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FAE18_203A18);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB0D8_203CD8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB180_203D80);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB28C_203E8C);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB3F8_203FF8);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB540_204140);

void func_800FB738_204338(unkObjectStruct* arg0) {
    u16 temp_v0;
    unkGlobalStruct_00* temp_s0;
    unkGlobalStruct_00* temp_v0_2;
    s32 i;

    temp_s0 = ((unkGlobalStruct_00*) arg0->unk_50)->unk_68;
    temp_s0->unk_14 = temp_s0->unk_14 - 1.0f;
    
    if (temp_s0->unk_14 != 0.0f) {
        temp_v0 = D_800FE39C ^ 1;
        D_800FE39C = D_800FE39C ^ 1;
        if (temp_v0 != 0) {
            temp_s0->unk_20.floatingPoint = temp_s0->unk_20.floatingPoint + 0.15f;
        } else {
            temp_s0->unk_20.floatingPoint = temp_s0->unk_20.floatingPoint - 0.09f;
        }
        func_80025798(arg0->unk_40[1], (temp_s0->unk_20.floatingPoint * -270.0f) + arg0->unk_18, (temp_s0->unk_20.floatingPoint * -90.0f) + arg0->unk_1C, (temp_s0->unk_20.floatingPoint * 200.0f) + arg0->unk_20);
        func_80025830(arg0->unk_40[1], temp_s0->unk_20.floatingPoint, temp_s0->unk_20.floatingPoint, temp_s0->unk_20.floatingPoint);
        return;
    }
    
    PlaySound(0x330);
    PlaySound(0x331);
    arg0->func_ptr = NULL;
    D_800FE478->func_ptr = &func_800FAE18_203A18;
    
    for (i = 0; i < 4; i++) {
        temp_v0_2 = ((unkGlobalStruct_00*) D_800FE49C[i]->unk_50)->unk_68;
        temp_v0_2->unk_02 = 0;
        temp_v0_2->unk_38 = 1.0f;
        temp_v0_2->unk_3C = 0;
        D_800FE49C[i]->func_ptr = &func_800FA78C_20338C;
    }
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FB8EC_2044EC);

void func_800FBAA4_2046A4(unkObjectStruct* arg0) {
    switch (D_800FE4B4) {
    case 0:
        if (func_80072718() == 0) {
            D_800FE4B4 = 1;
            func_80075CCC(0xD);
            return;
        }
        return;
    case 1:
        if ((func_80075FE0() == 0) || (func_80075FE0() & 2)) {
            D_800FE464 = 1;
            func_8005D718(arg0);
            D_800FE490 = NULL;
            D_800ED430 = 1;
            func_80060128(0x1C);
        }
        break;
    }
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FBB5C_20475C);

void func_800FBF30_204B30(void) {
    if ((D_800FE3A0 != 0) || (D_800F5144 != 0)) {
        func_800FE178_206D78(0x83);
        func_800601D4(0x28);
    }
}

void func_800FBF74_204B74(unkObjectStruct* arg0) {
    f32 temp_f20;
    f32 temp_f22;
    f32 var_f2;
    f32 var_f4;
    u16 temp_s0;

    temp_s0 = ((unkGlobalStruct_00*) arg0->unk_50)->unk_56;
    
    if (arg0 == D_800FE4A0) {
        var_f4 = D_800FE478_ovl2D->unk_18;
        var_f2 = D_800FE478_ovl2D->unk_20;
        temp_f22 = func_800FCEA0_205AA0(arg0, NULL, var_f4, var_f2, 40.0f, 250.0f);
    } else {
        if (!(((unkGlobalStruct_00*) D_800FE4A0->unk_50)->unk_E4->unk0 & 4)) {
            var_f4 = D_800FE4A0->unk_18;
            var_f2 = D_800FE4A0->unk_20;
        } else {
            var_f4 = D_800FE478_ovl2D->unk_18;
            var_f2 = D_800FE478_ovl2D->unk_20;
        }
        temp_f22 = func_800FCEA0_205AA0(arg0, D_800FE4A0, var_f4, var_f2, 40.0f, 250.0f);
    }
    
    
    temp_f20 = (rand8() & 1) + 15.0f;
    D_800ECE14[temp_s0] = (func_800AEAC0(temp_f22) * temp_f20);
    D_800F3843[temp_s0] = (-func_800AEFD0(temp_f22) * temp_f20);
    D_800EDEB4[temp_s0] = 0;
    D_800F5460[temp_s0] = 0;
}

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FC0F4_204CF4);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FCEA0_205AA0);

INCLUDE_ASM(s32, "ovl_2D_RunningOfTheBulb/1FF1E0", func_800FD394_205F94);

f32 func_800FD9BC_2065BC(u16 arg0, f32* arg1) {
    f32 temp_f0;
    f32 var_f12;
    f32 var_f14;
    f32 var_f20;
    s32 i;

    if (arg0 == 1) {
        temp_f0 = *arg1 + 180.0f;
        if (temp_f0 >= 360.0f) {
            return temp_f0 - 360.0f;
        }
        return temp_f0;
    }
    
    var_f20 = 10000.0f;

    for (i = 0; i < arg0; i++) {
        if (i == arg0 - 1) {
            temp_f0 = func_800FDB84_206784(arg1[i], arg1[0]);
        } else {
            temp_f0 = func_800FDB84_206784(arg1[i + 0], arg1[i + 1]);
        }
        
        if (temp_f0 < var_f20) {
            var_f20 = temp_f0;
        }      
    }

    return var_f20 / 2.0f;
}

u16 func_800FDAC4_2066C4(unkObjectStruct* arg0, unkObjectStruct** arg1, f32* arg2) {
    unkObjectStruct* temp_v1;
    f32 temp_f12;
    f32 temp_f2;
    u16 i;
    s32 j;

    for (i = 0, j = 0; j < 4; i++, j++) {
        temp_v1 = D_800FE49C[j];
        arg1[i] = temp_v1;
        temp_f2 = (arg1[i]->unk_18 - arg0->unk_18) * (arg1[i]->unk_18 - arg0->unk_18);
        temp_f12 = (arg1[i]->unk_20 - arg0->unk_20) * (arg1[i]->unk_20 - arg0->unk_20);
        arg2[i] = func_800B1750(temp_f2 + temp_f12);
    }
    return i;
}

f32 func_800FDB84_206784(f32 arg0, f32 arg1) {
    f32 var_f2;
    f32 newVar;
 
    while (arg0 < 0.0f) {
        arg0 += 360.0f;
    }
    
    while (arg0 >= 360.0f) {
        arg0 -= 360.0f;
    }

    while (arg1 < 0.0f) {
        arg1 += 360.0f;
    }

    while (arg1 >= 360.0f) {
        arg1 -= 360.0f;
    }

    newVar = arg0 - arg1;
    var_f2 = fabsf(newVar);
    
    if (var_f2 > 180.0f) {
        var_f2 = 360.0f - var_f2;
    }
    
    return var_f2;
}


unkObjectStruct* func_800FDCAC_2068AC(unkObjectStruct* arg0, f32* arg1) {
    unkObjectStruct* temp_s0;
    unkObjectStruct* var_s3;
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f12;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f24;
    f32 temp_f2;
    s32 i;

    var_s3 = NULL;
    *arg1 = 100000.0f;
    temp_f24 = arg0->unk_18;
    temp_f22 = arg0->unk_1C + 100.0f;
    temp_f20 = arg0->unk_20;
    for (i = 0; i < 4; i++) {
        temp_s0 = D_800FE460[i];
        if (((unkGlobalStruct_00*) temp_s0->unk_50)->unk_E4->unk0 & 0x36) {
            continue;
        } else {
            temp_f2 = (temp_s0->unk_18 - temp_f24) * (temp_s0->unk_18 - temp_f24);
            temp_f0 = (temp_s0->unk_1C - temp_f22) * (temp_s0->unk_1C - temp_f22);
            temp_f2 = temp_f2 + temp_f0;
            temp_f12 = temp_s0->unk_20 - temp_f20;
            temp_f0_2 = func_800B1750((temp_f2) + (temp_f12 * temp_f12));
            
            if (temp_f0_2 < *arg1) {
                *arg1 = temp_f0_2;
                var_s3 = temp_s0;
            }            
        }
        
    }
    return var_s3;
}

s32 func_800FDDC0_2069C0(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s0;
    unkGlobalStruct_00* temp_s1;
    unk_Struct01* temp_s3;
    unkObjectStruct* temp_v0;
    unkObjectStruct* temp_v1;
    s32 i;

    if (arg0 == D_800FE4A0) {
        if (!(arg0->unk_20 > -1850.0f)) {
            D_800FE464 = 2;
            D_800FE4A4 = 0;
            D_800FE44A = 1;
            for (i = 0; i < 4; i++) {
                temp_v1 = D_800FE460[i];
                temp_s0 = temp_v1->unk_50;
                temp_s3 = temp_s0->unk_E4;
                if (!(temp_s3->unk0 & 0x30)) {
                    temp_v1->func_ptr = &func_800F8EA0_201AA0;
                    temp_s0->unk_40 = 0.0f;
                    temp_v0 = D_800FE460[i];
                    temp_s0->unk_3C = func_800B0CD8(0.0f - temp_v0->unk_18, -2235.0f - temp_v0->unk_20);
                    func_80009E20(D_800FE460[i]);
                    gPlayers[i].miniGameCoins += 10;
                }
                if (temp_s3->unk0 & 0x40) {
                    func_800186E4(D_800FE460[i], 1, 0x23);
                }                
            }
            
            for (i = 0; i < 4; i++) {
                func_800258EC(D_800FE460[i]->unk_40[9], 4, 4);
            }


            for (i = 0; i < 4; i++) {
                temp_s1 = ((unkGlobalStruct_00*) D_800FE49C[i]->unk_50)->unk_68;
                if (temp_s1->unk_00 & 8) {
                    temp_s1->unk_00 &= ~0x8;
                    if (temp_s1->unk_02 < 5) {
                        func_8005D95C(D_800FE49C[i], 0.0f, 0.0f, 5000.0f);
                    } else {
                        temp_s1->unk_04 = 0x10;
                        func_800211BC(D_800FE49C[i]->unk_40[0], temp_s1->unk_04);
                        func_800211BC(D_800FE49C[i]->unk_40[2], temp_s1->unk_04);
                    }
                }
                if (!(temp_s1->unk_00 & 0x10)) {
                    D_800FE49C[i]->func_ptr = &func_800FA2B8_202EB8;
                }                
            }

            D_800FE470[1]->func_ptr = &func_800F6E80_1FFA80;
            return 1;
        }
    }
    return 0;
}
