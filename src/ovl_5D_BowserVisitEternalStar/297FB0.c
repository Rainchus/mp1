#include "common.h"

void func_800F66BC_29808C(void);
void func_800F6DD4_2987A4(void);
void func_800F6F90_298960(void);
void func_800F6D88_298758(void);
extern u8 D_800F7110;

void func_800F65E0_297FB0(void) {
    D_800F7110 = D_800ED5DD;
    func_8005CF30(0x32, 0x32);
    func_800F6F90_298960();
    func_800F6DD4_2987A4();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66BC_29808C, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6D88_298758);
    func_80060128(0x12);
    func_80072644(3, 0x10);
}

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F66BC_29808C);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F6D3C_29870C);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F6D88_298758);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F6DD4_2987A4);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F6EEC_2988BC);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F6F90_298960);

INCLUDE_ASM(s32, "ovl_5D_BowserVisitEternalStar/297FB0", func_800F7030_298A00);
