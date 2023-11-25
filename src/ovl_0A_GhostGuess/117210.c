#include "common.h"
#include "GhostGuess.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F65E0_117210);

void func_800F69DC_11760C(unkObjectStruct* arg0) {
    s32 temp_s1;
    void* temp_s0;

    arg0->func_ptr = &func_800F79D4_118604;
    temp_s0 = ReadMainFS(0x1C000A);
    temp_s1 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    D_800FBEC0_11C810 = func_80064EF4(1, 0);
    func_80067208(D_800FBEC2_11C810[0], 0, temp_s1, 0);
    func_800674BC(D_800FBEC2_11C810[0], 0, 0x9000);
    func_80067354(D_800FBEC2_11C810[0], 0, 1.0f, 1.0f);
    func_80066DC4(D_800FBEC2_11C810[0], 0, 160, 120);
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
    arg0->unk_40[0] = func_800174C0(0x1C0000, 0x2DD);
    temp_s0 = func_80023684(UNK_SIZE_2C, 31000);
    arg0->unk_50 = temp_s0;
    func_8009B770(temp_s0, 0, UNK_SIZE_2C);
    temp_s0->unk_04 = 1;
    temp_s0->unk_05 = 0;
    func_80009000(arg0, 4, 1.0f);
    func_80008FC4(arg0, 20.0f);
    func_80008FB8(arg0, 1.0f);
}


INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB670_11C2A0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB674_11C2A4);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB678_11C2A8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB67C_11C2AC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB69C_11C2CC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6A0_11C2D0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6A4_11C2D4);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6A8_11C2D8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6AC_11C2DC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6B0_11C2E0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6C0_11C2F0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6D0_11C300);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6D4_11C304);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6D8_11C308);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6DC_11C30C);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6E0_11C310);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6E4_11C314);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6E8_11C318);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6EC_11C31C);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6F0_11C320);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6F4_11C324);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6F8_11C328);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB6FC_11C32C);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB700_11C330);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB704_11C334);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB708_11C338);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F6BA4_1177D4);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F6E78_117AA8);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F6FF4_117C24);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB720_11C350);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F73E0_118010);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F789C_1184CC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB760_11C390);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F79D4_118604);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F7FD8_118C08);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F80E4_118D14);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F86CC_1192FC);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F8888_1194B8);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F9400_11A030);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800F948C_11A0BC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB920_11C550);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB928_11C558);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB930_11C560);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB938_11C568);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB940_11C570);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB948_11C578);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB950_11C580);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB958_11C588);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB960_11C590);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB968_11C598);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB970_11C5A0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB978_11C5A8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB980_11C5B0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB988_11C5B8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB990_11C5C0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB998_11C5C8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9A0_11C5D0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9A8_11C5D8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9B0_11C5E0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9B8_11C5E8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9C0_11C5F0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9C8_11C5F8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9D0_11C600);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9D8_11C608);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9E0_11C610);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9E8_11C618);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9F0_11C620);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FB9F8_11C628);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA00_11C630);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA08_11C638);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA10_11C640);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA18_11C648);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA20_11C650);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA28_11C658);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA30_11C660);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA38_11C668);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA40_11C670);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA48_11C678);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA50_11C680);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA58_11C688);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA60_11C690);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA68_11C698);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA70_11C6A0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA78_11C6A8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA80_11C6B0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", jtbl_800FBA88_11C6B8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBA90_11C6C0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0A_GhostGuess/117210", D_800FBAD0_11C700);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800FA764_11B394);

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

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800FB270_11BEA0);

INCLUDE_ASM("asm/nonmatchings/ovl_0A_GhostGuess/117210", func_800FB2D0_11BF00);
