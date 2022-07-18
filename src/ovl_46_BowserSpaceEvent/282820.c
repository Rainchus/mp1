#include "common.h"
#include "282820.h"

void func_800F65E0_282820(void) {
    D_800F8FF0 = D_800ED5C3;
    D_800F8FF1 = D_800ED5DD;
    func_8005CF30(0x32, 0xA);
    func_800F8DF4_285034();
    func_800F8C6C_284EAC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_800547F8(0, 1);
    func_800547F8(1, 1);
    func_800547F8(2, 1);
    func_800547F8(3, 1);
    func_8006CEA0();
    InitProcess(func_800F8608_284848, 0x300U, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F8C20_284E60);
    func_80060128(0x12);
    func_80072644(3, 0x10);
}

s32 func_800F66FC_28293C(void) {
    s32 temp_v1 = D_800ED5C0.currentTurn;

    if (temp_v1 < 6) {
        return 10;
    } else if (temp_v1 < 16) {
        return 20;
    } else if (temp_v1 < 31) {
        return 30;
    } else if (temp_v1 < 46) {
        return 40;
    } else {
        return 50;
    }
}

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F6744_282984);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F677C_2829BC);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F69F0_282C30);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F6AF8_282D38);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7044_283284);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7410_283650);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7BFC_283E3C);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F80EC_28432C);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8608_284848);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8B1C_284D5C);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8C20_284E60);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8C6C_284EAC);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8DC0_285000);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8DF4_285034);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8EA8_2850E8);
