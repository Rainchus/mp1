#include "PR/os.h"
#include "316440.h"

void func_800F65E0_316440(void) {
    InitObjSystem(50, 10);
    func_800F7880_3176E0();
    func_800F77E0_317640();
    func_8006CEA0();
    InitProcess(&func_800F76E0_317540, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7794_3175F4);
}

void func_800F6650_3164B0(s32 arg0, s32 arg1) {
    playerMain* temp_s0;
    playerMain* temp_s1;
    void* temp_s2;

    temp_s1 = GetPlayerStruct(arg0);
    temp_s2 = GetPlayerStruct(arg1);
    temp_s0 = MallocPerm(sizeof(playerMain));
    bcopy(temp_s1, temp_s0, sizeof(playerMain));
    bcopy(temp_s2, temp_s1, sizeof(playerMain));
    bcopy(temp_s0, temp_s2, sizeof(playerMain));
    FreePerm(temp_s0);
}

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F66D8_316538);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F676C_3165CC);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F6880_3166E0);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F6A20_316880);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F6DA0_316C00);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F6EF0_316D50);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F76E0_317540);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F7738_317598);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F7794_3175F4);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F77E0_317640);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F780C_31766C);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F7880_3176E0);

INCLUDE_ASM(s32, "ovl_82_MiniGameStadiumStartCopy/316440", func_800F7918_317778);
