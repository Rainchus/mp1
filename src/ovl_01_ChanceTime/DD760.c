#include "common.h"
#include "D51E0.h"

void func_8004DBD4(s16, s8);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DD760", func_800FEB60_DD760);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DD760", func_800FEBA0_DD7A0);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DD760", func_800FEC4C_DD84C);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DD760", func_800FED28_DD928);

void func_800FF2B8_DDEB8(void) {
    s16 temp_s0;

    D_80101320 = 0;
    temp_s0 = CreateTextWindow(100, 140, 17, 4);
    ShowTextWindow(temp_s0);
    func_8006D7D8(temp_s0, 0xEA, -1, -1);
    func_8006E070(temp_s0, 0);
    func_8004DBD4(temp_s0, D_80101AAE);
    D_80101320 = 1;
    HideTextWindow(temp_s0);
    while (1) {
        SleepVProcess();
    }
    
}

void func_800FF354_DDF54(void) {
    s16 temp_s0;

    D_80101320 = 0;
    temp_s0 = CreateTextWindow(0x1E, 0x3C, 0x12, 4);
    ShowTextWindow((s32) temp_s0);
    func_8006D7D8(temp_s0, 0xD0, -1, -1);
    func_8006E070(temp_s0, 0);
    func_8004DBD4(temp_s0, D_80101AAE);
    D_80101320 = 1;
    HideTextWindow((s32) temp_s0);
    while (1) {
        SleepVProcess();
    }
    
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/DD760", func_800FF3F0_DDFF0);
