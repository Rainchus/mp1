#include "common.h"
#include "GhostGuess.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F65E0_GhostGuess);

void func_800F69DC_GhostGuess(omObjData* arg0) {
    s32 temp_s1;
    void* temp_s0;

    arg0->func_ptr = &func_800F79D4_GhostGuess;
    temp_s0 = ReadMainFS(0x1C000A);
    temp_s1 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    D_800FBEC0_GhostGuess = func_80064EF4(1, 0);
    func_80067208(D_800FBEC0_GhostGuess, 0, temp_s1, 0);
    func_800674BC(D_800FBEC0_GhostGuess, 0, 0x9000);
    func_80067354(D_800FBEC0_GhostGuess, 0, 1.0f, 1.0f);
    func_80066DC4(D_800FBEC0_GhostGuess, 0, 160, 120);
    func_800FB3B0_GhostGuess();
}

void func_800F6AAC_GhostGuess(void) {
    if (func_80072718() == 0) {
        func_800FB21C_GhostGuess();
        omOvlReturnEx(1);
    }
}

void func_800F6AE0_GhostGuess(omObjData* arg0) {
    unkGlobalStruct_02* temp_s0;

    arg0->func_ptr = NULL;
    arg0->trans.x = arg0->trans.y = arg0->trans.z = 0.0f;
    arg0->scale.x = arg0->scale.y = arg0->scale.z = 5.0f;
    arg0->model[0] = func_800174C0(0x1C0000, 0x2DD);
    temp_s0 = func_80023684(sizeof(unkGlobalStruct_02), 31000);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, sizeof(unkGlobalStruct_02));
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    func_80009000(arg0, 4, 1.0f);
    func_80008FC4(arg0, 20.0f);
    func_80008FB8(arg0, 1.0f);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F6BA4_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F6E78_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F6FF4_GhostGuess);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", D_800FB720_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F73E0_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F789C_GhostGuess);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", D_800FB760_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F79D4_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F7FD8_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F80E4_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F86CC_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F8888_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F9400_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800F948C_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800FA764_GhostGuess);

void func_800FB21C_GhostGuess(void) {
}

void func_800FB224_GhostGuess(omObjData* arg0, u32 arg1) { //construct pointer into u8s
    arg0->work[0] = arg1 >> 24;
    arg0->work[1] = arg1 >> 16;
    arg0->work[2] = arg1 >> 8;
    arg0->work[3] = arg1;
}

s32 func_800FB244_GhostGuess(omObjData* arg0) { //deconstruct u8s in struct into a pointer
    return  (arg0->work[0] << 24) |
            (arg0->work[1] << 16) |
            (arg0->work[2] << 8) |
            arg0->work[3];
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800FB270_GhostGuess);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0A_GhostGuess/117210", func_800FB2D0_GhostGuess);