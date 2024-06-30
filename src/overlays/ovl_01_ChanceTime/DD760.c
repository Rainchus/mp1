#include "ChanceTime.h"

void func_8004DBD4(s16, s8);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", func_800FEB60_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", func_800FEBA0_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", func_800FEC4C_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_80101630_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_80101634_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_8010163C_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_80101644_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_8010164C_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_80101654_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_8010165C_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_80101664_ChanceTime);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", D_8010166C_ChanceTime);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", func_800FED28_ChanceTime);

void func_800FF2B8_ChanceTime(void) {
    s16 temp_s0;

    D_80101320_ChanceTime = 0;
    temp_s0 = CreateTextWindow(100, 140, 17, 4);
    ShowTextWindow(temp_s0);
    LoadStringIntoWindow(temp_s0, (void*)0xEA, -1, -1);
    func_8006E070(temp_s0, 0);
    func_8004DBD4(temp_s0, D_80101AAE_ChanceTime);
    D_80101320_ChanceTime = 1;
    HideTextWindow(temp_s0);
    while (1) {
        HuPrcVSleep();
    }
    
}

void func_800FF354_ChanceTime(void) {
    s16 temp_s0;

    D_80101320_ChanceTime = 0;
    temp_s0 = CreateTextWindow(0x1E, 0x3C, 0x12, 4);
    ShowTextWindow((s32) temp_s0);
    LoadStringIntoWindow(temp_s0, (void*)0xD0, -1, -1);
    func_8006E070(temp_s0, 0);
    func_8004DBD4(temp_s0, D_80101AAE_ChanceTime);
    D_80101320_ChanceTime = 1;
    HideTextWindow((s32) temp_s0);
    while (1) {
        HuPrcVSleep();
    }
    
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_01_ChanceTime/DD760", func_800FF3F0_ChanceTime);
