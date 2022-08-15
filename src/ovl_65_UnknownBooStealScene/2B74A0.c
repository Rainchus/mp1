#include "common.h"
#include "2B74A0.h"

void func_800F884C_2B970C(void);
void func_800F9024_2B9EE4(void);
void func_800F922C_2BA0EC(void);
//extern ? D_800ED5C2;

extern u8 D_800F9600;
extern u8 D_800F9601;
extern s8 D_800F9602;
void func_800F8F18_2B9DD8(void);

void func_800F65E0_2B74A0(void) {
    D_800F9600 = D_800ED5C0.unk_02;
    D_800F9601 = D_800ED5C0.unk_1C;
    
    if (D_800ED5C0.currentTurn < 10) {
        D_800F9602 = 0;
    } else if (D_800ED5C0.currentTurn < 20) {
        D_800F9602 = 1;
    } else if (D_800ED5C0.currentTurn < 40) {
        D_800F9602 = 2;
    } else {
        D_800F9602 = 3;
    }
    
    func_8005CF30(0x32, 0x32);
    func_800F922C_2BA0EC();
    func_800F9024_2B9EE4();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F884C_2B970C, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F8F18_2B9DD8);
    if (D_800C597A != 0) {
        func_80072644(6, 8);
    } else {
        func_80072644(1, 0x10);
    }
}

s32 func_800F6734_2B75F4(void) {
    return GetRandomByte() / 256.0f * 100.0f;
}

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F6788_2B7648);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F699C_2B785C);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F6B3C_2B79FC);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F7278_2B8138);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F7648_2B8508);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F78E0_2B87A0);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F7B54_2B8A14);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F884C_2B970C);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F8E9C_2B9D5C);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F8F18_2B9DD8);

void func_800F8F78_2B9E38(unk_Struct03* arg0) {
    unk_Struct03* temp_s0;

    temp_s0 = D_800F9604;
    temp_s0->unk_30 = func_80088060(arg0->unk_28 * D_800F95C8)* 20.0f + 150.0f;
    arg0->unk_28 += 2.0f;
    if (arg0->unk_28 >= 360.0f) {
        arg0->unk_28 -=  360.0f;
    }
}

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F9024_2B9EE4);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F91D0_2BA090);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F922C_2BA0EC);

INCLUDE_ASM(s32, "ovl_65_UnknownBooStealScene/2B74A0", func_800F93A4_2BA264);
