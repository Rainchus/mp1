#include "common.h"
#include "2F40C0.h"

void func_800F65E0_2F40C0(void) {
    u8 temp_s0;

    func_80029090(0x32);
    func_8002ADF0(&D_800EDEC0, 0x40);
    func_8001DE70(0x20);
    func_8005CF30(0x32, 0);
    func_80060088();
    func_8000942C();
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 8000.0f);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_80009500();
    D_800B899C = 0;
    func_80009618(1);
    D_800B8955 = 0;
    func_800090B8(D_800ED440);
    
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800F6BD8_2F46B8);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 2, 0, -1, &func_800F6D04_2F47E4);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800F6E38_2F4918);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800F6F1C_2F49FC);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800F7010_2F4AF0);
    
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 0xA, 0x3C, -1, &func_800F7970_2F5450);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, -1, &func_800F7A44_2F5524);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, -1, &func_800F7AFC_2F55DC);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, -1, &func_800F7B78_2F5658);
    
    D_800EDE70[D_800EE984++] = func_8005D384(3, 5, 0, -1, &func_800F7C38_2F5718);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 1, 0, -1, &func_800F7BF4_2F56D4);
    
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    D_800B895C = 10.0f;
    func_80072644(0, 0x10);
}

void func_800F6A44_2F4524(void) {
    s32 i;
    f32* tempVar;
    f32* anotherTemp;

    func_80009468();
    switch (D_800ED430) {
    case 0:
        if (D_800F9494 >= 0x1F) {
            func_80009458();
        }
        D_800F9494 += 2;
        break;
    case 1:
        D_800F9498 -= 2;
        if ((D_800EDEB4[0] & 0x30) == 0x30) { //D_800EDEB4 maybe not an array
            func_8005DFB8(1);
        }
        break;
    case 2:
        if (D_800F949C == 0) {
            func_8000C250(0xB4);
        }
        
        if (D_800F949C > 0xB4) {
            func_80009448();
        }
        
        D_800F949C += 2;
        break;
    case 3:
        if (D_800F94A0 == 0) {
            func_8000C250(0xB4);
        }
        D_800F94A0 += 2;
        break;
    }

    for (i = 0; i < D_800F2BC0; i++) {
        anotherTemp = &D_800F3FB0[i]->unk_50->unk_60;
        tempVar = &D_800F33F0;
        *anotherTemp = *tempVar;
    }
}

void func_800F6BD8_2F46B8(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380004, 0x99);
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], 0.0f, arg0->unk_1C, arg0->unk_20);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = &func_800F6A44_2F4524;
    temp_s1->unk_04.b[0] = 1;
    D_800F6524.x = 8.0f;
    D_800F6524.y = 110.0f;
    D_800F6524.z = -86.0f;
    D_800F33EC.y = 312.7f;
    D_800EE98C = 2616.0f;
    func_800090A4(arg0);
    func_80008FB8(arg0, 0.6f);
    func_80008FC4(arg0, 25.0f);
    temp_s1->unk_04.b[1] = 0;
}

void func_800F6D04_2F47E4(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380008, 0x899);
    arg0->unk_18 = -1500.0f;
    arg0->unk_1C = 75.0f;
    arg0->unk_20 = 1200.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = &func_800F7EDC_2F59BC;
    temp_s1->unk_04.b[0] = 1;
    func_80009058(arg0, 160.0f, 160.0f, -100.0f, -100.0f, 100.0f, 100.0f);
    func_80008FB8(arg0, 0.3f);
    func_8000941C(arg0, 1.0f, 1.0f, 1.0f);
    temp_s1->unk_04.b[1] = 1;
}

void func_800F6E38_2F4918(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380000, 0x899);
    arg0->unk_18 = 0.0f;
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = &func_800F9400_2F6EE0;
    temp_s1->unk_04.b[0] = 1;
    func_80009000(arg0, 4, 0.0f);
    func_800090A4(arg0);
    func_80008FB8(arg0, 0.5f);
    func_8000941C(arg0, 1.0f, 1.0f, 1.0f);
    func_80008FC4(arg0, 20.0f);
    temp_s1->unk_04.b[1] = 2;
}

void func_800F6F1C_2F49FC(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380006, 0x899);
    arg0->unk_18 = 0.0f;
    arg0->unk_1C = 125.0f;
    arg0->unk_20 = 1700.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, 1700.0f);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = &func_800F7F50_2F5A30;
    temp_s1->unk_04.b[0] = 1;
    func_80009000(arg0, 4, 0.0f);
    func_80008FB8(arg0, 0.5f);
    func_8000941C(arg0, 1.0f, 1.0f, 1.0f);
    temp_s1->unk_04.b[1] = 3;
}

void func_800F7010_2F4AF0(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380006, 0x899);
    arg0->unk_20 = 1000.0f;
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = NULL;
    temp_s1->unk_04.b[0] = 1;
    func_80009090(arg0);
    func_80009058(arg0, 250.0f, 250.0f, -250.0f, -250.0f, 250.0f, 250.0f);
    func_80008FB8(arg0, 0.5f);
    func_80008FC4(arg0, 15.0f);
    func_8000941C(arg0, 2.0f, 2.0f, 2.0f);
    temp_s1->unk_04.b[1] = 4;
}

void func_800F7108_2F4BE8(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x380006, 0x899);
    arg0->unk_18 = 0.0f;
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = NULL;
    temp_s1->unk_04.b[0] = 1;
    func_80009090(arg0);
    func_80009058(arg0, 250.0f, 250.0f, -250.0f, -250.0f, 250.0f, 250.0f);
    func_80008FB8(arg0, 0.5f);
    func_80008FC4(arg0, 15.0f);
    func_8000941C(arg0, 2.0f, 2.0f, 2.0f);
    temp_s1->unk_04.b[1] = 4;
}

void func_800F71F4_2F4CD4(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x38000C, 0x899);
    arg0->unk_18 = -1600.0f;
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = 2000.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, 2000.0f);
    temp_s1 = func_80023684(0x2C, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 0x2C);
    arg0->func_ptr = NULL;
    temp_s1->unk_04.b[0] = 1;
    func_80009000(arg0, 4, 0.0f);
    func_80008FB8(arg0, 0.5f);
    func_8000941C(arg0, 1.0f, 1.0f, 1.0f);
    temp_s1->unk_04.b[1] = 5;
}

#ifdef NON_MATCHING //matches but tons of warnings
typedef struct struct2 {
/* 0x00 */ union {
        u16 unsigned16[2];
        s16 signed16[2];
        s32 signed32;
    } unk_00;
s16 unk_04;
s16 unk_06;
s16 unk_08;
s16 unk_0A;
s16 unk_0C;
s16 unk_0E;
s16 unk_10;
} struct2;

typedef struct struct1 {
    char unk_00[0x18];
    f32 unk_18;
    f32 unk_1C;
    f32 unk_20;
    char unk_24[0x1C];
    struct2* unk_40;
} struct1;

void func_800F72DC_2F4DBC(struct1* arg0, s32 arg1, s32 arg2, s32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_8000979C(arg0, arg1, arg2, arg3 & 0xFFFF, 0xA99, 0xA99);
    arg0->unk_40->unk_06 = LoadFormFile(0x19, 0xA8D);
    arg0->unk_40->unk_08 = LoadFormFile(0x1A, 0xA8D);
    arg0->unk_40->unk_0C = LoadFormFile(0x1B, 0xA8D);
    arg0->unk_40->unk_0A = LoadFormFile(0x1C, 0xA8D);
    arg0->unk_40->unk_0E = LoadFormFile(0x1E, 0xA8D);
    arg0->unk_40->unk_10 = LoadFormFile(0x1D, 0xA8D);
    func_800187D0(arg0, 0, arg1, 1, 0);
    func_800187D0(arg0, 1, arg1 | 1, 1, 0);
    func_800187D0(arg0, 2, arg1 | 3, 1, 0);
    func_800187D0(arg0, 5, arg1 | 4, 0, 0);
    func_800187D0(arg0, 6, arg1 | 5, 1, 0x13);
    func_800187D0(arg0, 7, arg1 | 6, 1, 0x22);
    func_800187D0(arg0, 8, arg1 | 9, 1, 0x1B);
    func_800187D0(arg0, 9, arg1 | 0xA, 1, 0x27);
    func_800187D0(arg0, 0x10, arg1 | 0x17, 1, 0);
    func_800187D0(arg0, 0x11, arg1 | 0x18, 0, 0);
    func_800187D0(arg0, 0x12, arg1 | 0x1C, 2, 0);
    func_800187D0(arg0, 0x13, arg1 | 0x1D, 2, 0);
    func_800187D0(arg0, 0xA, arg1 | 0x1E, 1, 0x27);
    func_800187D0(arg0, 0x16, arg1 | 0x24, 1, 0);
    func_8001874C(arg0, 0x15, arg1 | 0x62, 0, 0);
    func_8001874C(arg0, 0x14, arg1 | 0x5F, 2, 0);
    func_8001874C(arg0, 3, arg1 | 0x60, 1, 0);
    func_8001874C(arg0, 4, arg1 | 0x61, 1, 0);
    func_8001874C(arg0, 0x1E, arg1 | 0x63, 2, 0);
    func_8001874C(arg0, 0x1F, arg1 | 0x64, 2, 0);
    func_8001874C(arg0, 0x20, arg1 | 0x67, 0, 0);
    func_8001874C(arg0, 0x21, arg1 | 0x68, 2, 0);
    func_8001874C(arg0, 0x22, arg1 | 0x69, 2, 0);
    arg0->unk_18 = arg4;
    arg0->unk_1C = 10.0f;
    arg0->unk_20 = arg6;
    func_80025798(arg0->unk_40->unk_00.unsigned16[0], arg0->unk_18, arg0->unk_1C, arg6);
    func_800090C4(arg0, 0, 2);
    func_800090C4(arg0, 1, 2);
    func_800090C4(arg0, 2, 2);
    func_800090C4(arg0, 3, 2);
    func_800090C4(arg0, 4, 2);
    func_800090C4(arg0, 5, 2);
    func_800090C4(arg0, 6, 2);
}
#else
INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F72DC_2F4DBC);
#endif

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7690_2F5170);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F77BC_2F529C);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7970_2F5450);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7A44_2F5524);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7AFC_2F55DC);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7B78_2F5658);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7BF4_2F56D4);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7C38_2F5718);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7C68_2F5748);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7EBC_2F599C);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7EDC_2F59BC);

void func_800F7F50_2F5A30(void) {
}

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F7F58_2F5A38);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F8360_2F5E40);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F846C_2F5F4C);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F85E4_2F60C4);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F8804_2F62E4);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F8A60_2F6540);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F8C6C_2F674C);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F8D18_2F67F8);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F908C_2F6B6C);

INCLUDE_ASM(s32, "ovl_70_TestingRoom/2F40C0", func_800F9400_2F6EE0);
