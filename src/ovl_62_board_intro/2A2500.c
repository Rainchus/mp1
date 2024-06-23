#include "common.h"
#include "2A2500.h"
#include "process.h"

void func_800F65E0_2A2500(void) {
    D_801102B0 = D_800ED5C3;
    InitObjSystem(50, 10);
    func_800F9200_2A5120();
    func_800F906C_2A4F8C();
    func_8006CEA0();
    InitProcess(func_800F8DC8_2A4CE8, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F8FEC_2A4F0C);
}

void func_800F6660_2A2580(s32 arg0, s32 arg1) {
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

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F66E8_2A2608);

void func_800F677C_2A269C(unkObjectStruct* arg0) {
    func_80066DC4(D_800FDA60_ovl62[2], arg0->unk_4C[0], arg0->unk_4C[1], (arg0->unk_4C[2] * 5) - 0x50);
    arg0->unk_4C[2] += 2;
    if (arg0->unk_4C[2] >= 33) {
        D_800FCD2C[arg0->unk_4C[0]] = 0;
        func_8005D718(arg0);
    }
}

s32 func_800F67F8_2A2718(s32 arg0) {
    return func_8004F628(D_800FD59C_ovl62[(D_801102B0 * 2) + arg0], 0xA, D_800FD554[(D_801102B0 * 2) + arg0].unk0, D_800FD554[(D_801102B0 * 2) + arg0].unk2);
}

s32 func_800F684C_2A276C(void) {
    return 0;
}

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F6854_2A2774); //https://decomp.me/scratch/GBRa7 nop issue...

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F69F8_2A2918);

void func_800F6B18_2A2A38(void) {
    s32 sp10[2];
    f32 var_f20;

    func_80060128(57);
    HuPrcSleep(10);
    sp10[0] = func_800F67F8_2A2718(0);
    
    for (var_f20 = 0.0f; var_f20 <= 1.0f; var_f20 += 0.1f) {
        func_8004F7C0(sp10[0], 1.0f, var_f20);
        HuPrcVSleep();
    }
    
    func_8004F7C0(sp10[0], 1.0f, 1.0f);
    HuPrcSleep(34);
    sp10[1] = func_800F67F8_2A2718(1);
    HuPrcSleep(42);
    func_800F684C_2A276C();
    HuPrcSleep(60);
}

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F6BE4_2A2B04);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F6DAC_2A2CCC);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7054_2A2F74);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7330_2A3250);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F73FC_2A331C);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7538_2A3458);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7858_2A3778);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7988_2A38A8);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F7B5C_2A3A7C);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F8090_2A3FB0);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F8334_2A4254);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F8DC8_2A4CE8);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F8F38_2A4E58);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F8FEC_2A4F0C);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F906C_2A4F8C);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F9098_2A4FB8);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F9200_2A5120);

INCLUDE_ASM(s32, "ovl_62_board_intro/2A2500", func_800F9298_2A51B8);
