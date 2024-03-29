#include "PedalPower.h"

INCLUDE_ASM(const s32, "ovl_0C_PedalPower/122BA0", func_800F79B0_122BA0);

void func_800F7AEC_122CDC(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s1;

    arg0->unk_40[0] = func_800174C0(0x1E0002, 0x99);
    arg0->unk_40[1] = func_800174C0(0x1E0003, 0x99);
    arg0->unk_40[2] = func_800174C0(0x14, 0x99);
    arg0->unk_40[3] = func_800174C0(0x1E0008, 0x99);
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_24 = 0.0f;
    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025798(arg0->unk_40[3], arg0->unk_18, arg0->unk_1C - 25.0f, arg0->unk_20);
    temp_s1 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, sizeof(unkGlobalStruct_02));
    temp_s1->unk_04 = 1;
    temp_s1->unk_05 = 0;
    arg0->func_ptr = &func_800F6944_121B34;
}

void func_800F7C04_122DF4(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0;

    D_800F9EFA = arg0->unk_40[3] = func_800174C0(0x1E0004, 0x99);
    D_800F9EF6 = arg0->unk_40[2] = func_800174C0(0x1E0006, 0x99);
    D_800F9EF8 = arg0->unk_40[0] = func_800174C0(0x1E0000, 0x99);
    D_800F9EFC = arg0->unk_40[1] = func_800174C0(0x1E0001, 0x699);
    arg0->unk_40[4] = func_800174C0(0x1E0009, 0x99);
    arg0->unk_40[5] = func_800174C0(0x1E000A, 0x99);
    func_80025CA8(D_800F9EF6, D_800FA720);
    func_80025EB4(D_800F9EF8, 2, 1);
    func_80025EB4(D_800F9EF6, 2, 1);
    func_80026040(D_800F9EFA);
    func_80039C48(&D_800F9E90, &D_800F9EFE);
    D_800F9F04 = 0;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_24 = 0.0f;
    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025798(arg0->unk_40[5], arg0->unk_18, arg0->unk_1C, arg0->unk_20 + 100.0f);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    arg0->func_ptr = &func_800F7DD4_122FC4;
}

INCLUDE_ASM(const s32, "ovl_0C_PedalPower/122BA0", func_800F7DD4_122FC4);

INCLUDE_ASM(const s32, "ovl_0C_PedalPower/122BA0", func_800F886C_123A5C);

INCLUDE_ASM(const s32, "ovl_0C_PedalPower/122BA0", func_800F89F0_123BE0);

void func_800F8D34_123F24(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0;

    arg0->unk_40[0]= func_800174C0(0x190002, 0x99);
    arg0->unk_18 = D_800F9E38[D_800F9E20];
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = -50.0f;
    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, -50.0f);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    arg0->func_ptr = NULL;
    D_800F9E20 += 1;
}


void func_800F8E08_123FF8(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0;

    arg0->unk_40[0]= func_800174C0(0x1E000B, 0x99);
    arg0->unk_18 = -25.0f;
    arg0->unk_1C = 0.0f;
    arg0->unk_20 = 75.0f;
    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, 75.0f);
    func_80025830(arg0->unk_40[0], 2.5f, 1.0f, 1.0f);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 0x7918);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    arg0->func_ptr = NULL;
}