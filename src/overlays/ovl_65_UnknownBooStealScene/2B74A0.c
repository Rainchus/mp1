#include "common.h"
#include "2B74A0.h"

void func_800F65E0_UnknownBooStealScene(void) {
    D_800F9600_UnknownBooStealScene = D_800ED5C0.unk_02;
    D_800F9601_UnknownBooStealScene = D_800ED5C0.unk_1C;
    
    if (D_800ED5C0.currentTurn < 10) {
        D_800F9602_UnknownBooStealScene = 0;
    } else if (D_800ED5C0.currentTurn < 20) {
        D_800F9602_UnknownBooStealScene = 1;
    } else if (D_800ED5C0.currentTurn < 40) {
        D_800F9602_UnknownBooStealScene = 2;
    } else {
        D_800F9602_UnknownBooStealScene = 3;
    }
    
    omInitObjMan(0x32, 0x32);
    func_800F922C_UnknownBooStealScene();
    func_800F9024_UnknownBooStealScene();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F884C_UnknownBooStealScene, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F8F18_UnknownBooStealScene);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 0x10);
    }
}

s32 func_800F6734_UnknownBooStealScene(void) {
    return rand8() / 256.0f * 100.0f;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F6788_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F699C_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F6B3C_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F7278_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F7648_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F78E0_UnknownBooStealScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", D_800F95A0_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F7B54_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F884C_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F8E9C_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F8F18_UnknownBooStealScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", D_800F95C0_UnknownBooStealScene);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", D_800F95C4_UnknownBooStealScene);

void func_800F8F78_UnknownBooStealScene(omObjData* arg0) {
    Object* temp_s0;

    temp_s0 = D_800F9604_UnknownBooStealScene;
    temp_s0->unk_30 = sinf(arg0->rot.y * 0.0174532925199432955)* 20.0f + 150.0f;
    arg0->rot.y += 2.0f;
    if (arg0->rot.y >= 360.0f) {
        arg0->rot.y -=  360.0f;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F9024_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F91D0_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F922C_UnknownBooStealScene);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_65_UnknownBooStealScene/2B74A0", func_800F93A4_UnknownBooStealScene);
