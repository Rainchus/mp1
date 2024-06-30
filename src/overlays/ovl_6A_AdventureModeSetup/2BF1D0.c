#include "common.h"

void func_800F66A8_AdventureModeSetup(void);
extern s32 D_80101F70_AdventureModeSetup;

void func_800F6610_AdventureModeSetup(void) {
    D_80101F70_AdventureModeSetup = 0;
    func_800F66A8_AdventureModeSetup();
}

void func_800F6630_AdventureModeSetup(void) {
    D_80101F70_AdventureModeSetup = 1;
    func_800F66A8_AdventureModeSetup();
}


void func_800F6654_AdventureModeSetup(void) {
    D_80101F70_AdventureModeSetup = 2;
    func_800F66A8_AdventureModeSetup();
}

void func_800F6678_AdventureModeSetup(void) {
    D_80101F70_AdventureModeSetup = 3;
    SetBoardFeatureFlag(0x2C);
    func_800F66A8_AdventureModeSetup();
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F66A8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6958_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6BDC_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6D08_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6E20_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6EEC_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F6F34_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F70CC_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F70E4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F71DC_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F72E0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F86F8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F88C0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F88D4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F88EC_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F8BA4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F8D90_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F8FD8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F9030_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800F9090_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FB2D8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FB30C_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FBBE8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FBD98_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FBEC0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FC924_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FCA78_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FCAB8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FD3A4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FD3D8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FD4A4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FD7F0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FD804_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FE68C_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FED7C_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FF064_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FF0A0_AdventureModeSetup);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", D_80101DB0_AdventureModeSetup);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", D_80101DB4_AdventureModeSetup);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", D_80101DB8_AdventureModeSetup);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", D_80101DBC_AdventureModeSetup);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", D_80101DC0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_800FF328_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100198_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_8010042C_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100528_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100564_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100744_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_801008B4_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100958_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100BF8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100C88_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100D84_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80100E48_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_801010E0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80101170_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80101274_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80101338_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80101374_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_80101494_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_801014C0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_801014F8_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_801015D0_AdventureModeSetup);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_6A_AdventureModeSetup/2BF1D0", func_8010179C_AdventureModeSetup);
