#include "common.h"
#include "2888A0.h"

void func_800F65E0_2888A0(void) {
    D_800F78E0 = D_800ED5DD;
    if ((u32) (D_800ED178.unk0 - 1) >= 3U) {
        D_800ED178.unk0 = 4U;
        D_800ED178.unk2 = GetRandomByte() & 3 & 0xFF;
        D_800ED178.unk4 = D_800ED178.unk6 = D_800ED178.unk8 = D_800ED178.unkA = -1;
    }
    func_8005CF30(50, 10);
    func_800F76EC_2899AC();
    func_800F744C_28970C();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F6A48_288D08, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7320_2895E0);
    SetFadeInTypeAndTime(1, 0x10);
    func_80023448(1);
    func_800234B8(0, 0x78, 0x78, 0x78);
    func_800234B8(1, 0x40, 0x40, 0x60);
    func_80023504(1, 100.0f, 100.0f, 300.0f);
}

INCLUDE_ASM(s32, "ovl_4B_FlowerLotteryPeachBoard/2888A0", func_800F6740_288A00);

INCLUDE_ASM(s32, "ovl_4B_FlowerLotteryPeachBoard/2888A0", func_800F6A48_288D08);

void func_800F72D4_289594(void) {
    if (func_80072718() == 0) {
        func_800F7794_289A54();
        func_800F7658_289918();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F7320_2895E0(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        arg0->func_ptr = &func_800F72D4_289594;
    }
}

void func_800F7364_289624(void) {
    void* temp_s0;

    D_800F78EC = func_80064EF4(1, 5);
    temp_s0 = ReadMainFS(0xA0101);
    D_800F78F0 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    func_80067208(D_800F78EE[0], 0, D_800F78F2, 0);
    func_80067384(D_800F78EE[0], 0, 0x47F4);
    func_800674BC(D_800F78EE[0], 0, 0x1000U);
    func_80066DC4(D_800F78EE[0], 0, 0xA0, 0x78);
}

void func_800F7420_2896E0(void) {
    func_80064D38( D_800F78EE[0]);
    func_80067704(D_800F78F2);
}

INCLUDE_ASM(s32, "ovl_4B_FlowerLotteryPeachBoard/2888A0", func_800F744C_28970C);

void func_800F7658_289918(void) {
    s32 i;

    func_8003E694(D_800F78E8);
    func_8003E694(D_800F78E4);
    
    if (D_800F77C0 != NULL) {
        func_8003E694(D_800F77C0);
    }
    
    for (i = 0; i < 4; i++) {
        if (D_800F77C4[i] != NULL) {
            func_8003E694(D_800F77C4[i]);
        }
    }
    func_8004F2EC();
    func_8004F5F0();
}

void func_800F76EC_2899AC(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(9);
    func_800F7364_289624();
}

void func_800F7794_289A54(void) {
    func_8004A140();
    func_80049F0C();
    func_800F7420_2896E0();
}
