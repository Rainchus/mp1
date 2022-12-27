#include "common.h"
#include "117210.h"

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
    unkGlobalStruct_00* temp_s0;

    arg0->func_ptr = NULL;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = 0.0f;
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 5.0f;
    arg0->unk_40->unk_00.unsigned16[0] = func_800174C0(0x1C0000, 0x2DD);
    temp_s0 = func_80023684(44, 31000);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, 44);
    temp_s0->unk_04.b[0] = 1;
    temp_s0->unk_04.b[1] = 0;
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
    arg0->unk_4C = arg1 >> 24;
    arg0->unk_4D = arg1 >> 16;
    arg0->unk_4E = arg1 >> 8;
    arg0->unk_4F = arg1;
}

s32 func_800FB244_11BE74(unkObjectStruct* arg0) { //deconstruct u8s in struct into a pointer (again why?)
    return  (arg0->unk_4C << 24) |
            (arg0->unk_4D << 16) |
            (arg0->unk_4E << 8) |
            arg0->unk_4F;
}

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB270_11BEA0);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB2D0_11BF00);

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB3B0_11BFE0);

void func_800FB448_11C078(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6, u16 arg7) {
    D_800FC324 = arg0;
    D_800FC2FC.x = arg1;
    D_800FC2FC.y = arg2;
    D_800FC2FC.z = arg3;
    D_800FC314.x = arg4;
    D_800FC314.y = arg5;
    D_800FC314.z = arg6;
    if (D_800FC328 == 0) {
        D_800FC32A = arg7;
        D_800FC328 = arg7;
    }
}

void func_800FB4B0_11C0E0(void) {
    D_800FC320 = D_800FC324;
    D_800FC308.x = D_800FC314.x;
    D_800FC308.y = D_800FC314.y;
    D_800FC308.z = D_800FC314.z;
    D_800FC2F0.x = D_800FC2FC.x;
    D_800FC2F0.y = D_800FC2FC.y;
    D_800FC2F0.z = D_800FC2FC.z;
}

INCLUDE_ASM(s32, "ovl_0A_GhostGuess/117210", func_800FB514_11C144);
