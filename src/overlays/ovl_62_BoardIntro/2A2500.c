#include "common.h"
#include "2A2500.h"

//what memory region does D_801102B0_BoardIntro belong to?

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F65E0_BoardIntro);

// void func_800F65E0_BoardIntro(void) {
//     D_801102B0_BoardIntro = D_800ED5C2;
//     omInitObjMan(50, 10);
//     func_800F9200_BoardIntro();
//     func_800F906C_BoardIntro();
//     func_8006CEA0();
//     omAddPrcObj(func_800F8DC8_BoardIntro, 0x300, 0x2000, 0);
//     omAddObj(0x1000, 0, 0, -1, &func_800F8FEC_BoardIntro);
// }

void func_800F6660_BoardIntro(s32 arg0, s32 arg1) {
    playerMain* temp_s1;
    playerMain* temp_s2;
    playerMain* temp_v0;

    temp_s1 = GetPlayerStruct(arg0);
    temp_s2 = GetPlayerStruct(arg1);
    temp_v0 = HuMemDirectMalloc(sizeof(playerMain));
    bcopy(temp_s1, temp_v0, sizeof(playerMain));
    bcopy(temp_s2, temp_s1, sizeof(playerMain));
    bcopy(temp_v0, temp_s2, sizeof(playerMain));
    HuMemDirectFree(temp_v0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F66E8_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F677C_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F67F8_BoardIntro);

//D_801102B0_BoardIntro symbol again
// s32 func_800F67F8_BoardIntro(s32 arg0) {
//     return func_8004F628(D_800FD59C_ovl62[(D_801102B0_BoardIntro * 2) + arg0], 0xA, D_800FD554_BoardIntro[(D_801102B0_BoardIntro * 2) + arg0].unk0, D_800FD554_BoardIntro[(D_801102B0_BoardIntro * 2) + arg0].unk2);
// }

s32 func_800F684C_BoardIntro(void) {
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F6854_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F69F8_BoardIntro);

void func_800F6B18_BoardIntro(void) {
    s32 sp10[2];
    f32 var_f20;

    func_80060128(57);
    HuPrcSleep(10);
    sp10[0] = func_800F67F8_BoardIntro(0);
    
    for (var_f20 = 0.0f; var_f20 <= 1.0f; var_f20 += 0.1f) {
        func_8004F7C0(sp10[0], 1.0f, var_f20);
        HuPrcVSleep();
    }
    
    func_8004F7C0(sp10[0], 1.0f, 1.0f);
    HuPrcSleep(34);
    sp10[1] = func_800F67F8_BoardIntro(1);
    HuPrcSleep(42);
    func_800F684C_BoardIntro();
    HuPrcSleep(60);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F6BE4_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F6DAC_BoardIntro);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", D_800FD9C0_BoardIntro);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", D_800FD9C4_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7054_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7330_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F73FC_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7538_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7858_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7988_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F7B5C_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F8090_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F8334_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F8DC8_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F8F38_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F8FEC_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F906C_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F9098_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F9200_BoardIntro);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", func_800F9298_BoardIntro);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_62_BoardIntro/2A2500", D_800FD9E8_BoardIntro);
