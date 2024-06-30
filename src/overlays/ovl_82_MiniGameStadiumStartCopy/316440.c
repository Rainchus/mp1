#include "PR/os.h"
#include "316440.h"

void func_800F65E0_MiniGameStadiumStartCopy(void) {
    omInitObjMan(50, 10);
    func_800F7880_MiniGameStadiumStartCopy();
    func_800F77E0_MiniGameStadiumStartCopy();
    func_8006CEA0();
    omAddPrcObj(&func_800F76E0_MiniGameStadiumStartCopy, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7794_MiniGameStadiumStartCopy);
}

void func_800F6650_MiniGameStadiumStartCopy(s32 arg0, s32 arg1) {
    playerMain* temp_s0;
    playerMain* temp_s1;
    void* temp_s2;

    temp_s1 = GetPlayerStruct(arg0);
    temp_s2 = GetPlayerStruct(arg1);
    temp_s0 = HuMemDirectMalloc(sizeof(playerMain));
    bcopy(temp_s1, temp_s0, sizeof(playerMain));
    bcopy(temp_s2, temp_s1, sizeof(playerMain));
    bcopy(temp_s0, temp_s2, sizeof(playerMain));
    HuMemDirectFree(temp_s0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F66D8_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F676C_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F6880_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F6A20_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F6DA0_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F6EF0_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F76E0_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F7738_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F7794_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F77E0_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F780C_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F7880_MiniGameStadiumStartCopy);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", func_800F7918_MiniGameStadiumStartCopy);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_82_MiniGameStadiumStartCopy/316440", D_800F7B10_MiniGameStadiumStartCopy);
