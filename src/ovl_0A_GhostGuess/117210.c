#include "GhostGuess.h"

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F65E0_117210);

void func_800F69DC_11760C(unkObjectStruct* arg0) {
    s32 temp_s1;
    void* temp_s0;

    arg0->func_ptr = &func_800F79D4_118604;
    temp_s0 = ReadMainFS(0x1C000A);
    temp_s1 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    D_800FBEC0 = func_80064EF4(1, 0);
    func_80067208(D_800FBEC2[0], 0, temp_s1, 0);
    func_800674BC(D_800FBEC2[0], 0, 0x9000);
    func_80067354(D_800FBEC2[0], 0, 1.0f, 1.0f);
    func_80066DC4(D_800FBEC2[0], 0, 160, 120);
    func_800FB3B0_11BFE0();
}

void func_800F6AAC_1176DC(void) {
    if (func_80072718() == 0) {
        func_800FB21C_11BE4C();
        func_8005DFB8(1);
    }
}

void func_800F6AE0_117710(unkObjectStruct* arg0) {
    unkGlobalStruct_02* temp_s0;

    arg0->func_ptr = NULL;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 5.0f;
    arg0->unk_40[0] = func_800174C0(0x1C0000, 0x2DD);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 31000);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    func_80009000(arg0, 4, 1.0f);
    func_80008FC4(arg0, 20.0f);
    func_80008FB8(arg0, 1.0f);
}

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F6BA4_1177D4);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F6E78_117AA8);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F6FF4_117C24);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F73E0_118010);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F789C_1184CC);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F79D4_118604);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F7FD8_118C08);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F80E4_118D14);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F86CC_1192FC);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F8888_1194B8);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F9400_11A030);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800F948C_11A0BC);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FA764_11B394);

void func_800FB21C_11BE4C(void) {
}

void func_800FB224_11BE54(unkObjectStruct* arg0, u32 arg1) { //construct pointer into u8s in struct (why?)
    arg0->unk_4C[0] = arg1 >> 24;
    arg0->unk_4C[1] = arg1 >> 16;
    arg0->unk_4C[2] = arg1 >> 8;
    arg0->unk_4C[3] = arg1;
}

s32 func_800FB244_11BE74(unkObjectStruct* arg0) { //deconstruct u8s in struct into a pointer (again why?)
    return  (arg0->unk_4C[0] << 24) |
            (arg0->unk_4C[1] << 16) |
            (arg0->unk_4C[2] << 8) |
            arg0->unk_4C[3];
}

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB270_11BEA0);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB2D0_11BF00);

