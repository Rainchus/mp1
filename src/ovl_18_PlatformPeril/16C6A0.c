#include "PlatformPeril.h"

void func_800F6F60_16C6A0(void) {
}

void func_800F6F68_16C6A8(void) {
    u8 temp_s0;

    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 8000.0f);
    D_800F6524.x = D_800FDD74.unk4;
    D_800F6524.y = D_800FDD74.unk8;
    D_800F6524.z = D_800FDD74.unkC;
    D_800F33EC.y = D_800FDD74.unk10;
    D_800F33EC.x = D_800FDD74.unk14;
    D_800F33EC.z = D_800FDD74.unk18;
    D_800EE98C = D_800FDD74.unk_00.float32;
}

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F7070_16C7B0);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F76E4_16CE24);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F7868_16CFA8);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F815C_16D89C);

void func_800F8218_16D958(void) {
}

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F8220_16D960);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F87A0_16DEE0);

void func_800F8AE8_16E228(unkObjectStruct* arg0) {
    arg0->unk_1C = D_800FE1D8[arg0->unk_4C[0]]->unk_1C + 50.0f;
    func_80025798(arg0->unk_40[1], arg0->unk_18, D_800FE1D8[arg0->unk_4C[0]]->unk_1C, arg0->unk_20);
    func_80025830(arg0->unk_40[1], 0.7f, 0.7f, 0.7f);
}

void func_800F8B7C_16E2BC(void) {
    s32 i;
    D_800FE250 = 0;
    
    for (i = 0; D_800FD8F4[i].unk_00.signed32 != 0; i++) {
        D_800EDE70[D_800EE984++] = func_8005D384(0xA, 5, 5, -1, &func_800F8C2C_16E36C);
    }
}

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F8C2C_16E36C);

void func_800F90C0_16E800(void) {
    D_800FCDA0 = 300.0f;
    D_800FE2B0.unk0 = 0;
    D_800FE2B0.unk4 = 0;
    D_800FE2B0.unk8 = 0;
    D_800FE2B0.unkC = 0;
    func_80009500();
    func_80009618(0);
    D_800B8955 = 0;
    func_8005D98C(2, 4);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F94EC_16EC2C);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F9598_16ECD8);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F9644_16ED84);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 9, 0x3C, 2, &func_800F96F0_16EE30);
}

void func_800F922C_16E96C(unkObjectStruct* arg0, s32 arg1, s32 arg2, u16 arg3, f32 arg4, f32 arg5, f32 arg6) {
    unkGlobalStruct_00* temp_s0_2;
    s32 i;
    s32 temp = 0x699;

    func_8000979C(arg0, arg1, arg2, arg3, temp, temp);
    D_800FE2A0[arg3] = gPlayers[arg3].cpuDifficulty;
    func_800187D0(arg0, 0, arg1, 1, 0);
    func_800187D0(arg0, 1, arg1 | 1, 1, 0);
    func_800187D0(arg0, 2, arg1 | 3, 1, 0);
    func_800187D0(arg0, 6, arg1 | 5, 1, 0x13);
    
    if (!(rand8() & 1)) {
        func_8001775C(arg0, 0xD, arg1 | 0xF);
        func_8001775C(arg0, 0xE, arg1 | 0x10);
    } else {
        func_8001775C(arg0, 0xD, arg1 | 0x38);
        func_8001775C(arg0, 0xE, arg1 | 0x3C);
    }
    
    func_8001874C(arg0, 0x15, arg1 | 0x62, 0, 0);
    arg0->unk_18 = arg4;
    arg0->unk_1C = arg5;
    arg0->unk_20 = arg6;
    arg0->unk_30 = 1.0f;
    arg0->unk_34 = 1.0f;
    arg0->unk_38 = 1.0f;
    MtxRotate(D_800F2B7C[arg0->unk_40[0]].unk7C, 0, 180.0f, 0);
    func_80025830(arg0->unk_40[1], arg0->unk_30, arg0->unk_34, arg0->unk_38);
    func_800257E4(arg0->unk_40[1], arg0->unk_24, arg0->unk_28, arg0->unk_2C);
    func_80025798(arg0->unk_40[1], arg0->unk_18, 1.0f, arg0->unk_20);
    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    temp_s0_2 = arg0->unk_50;
    func_80008FD0(arg0, 30.0f);
    arg0->func_ptr = &func_800F979C_16EEDC;
    arg0->unk_4C[0] = arg3;
    
    if (gPlayers[arg3].unk_06 & 1) { //checking if CPU?
        arg0->unk_4C[1] = 1;
    } else {
        arg0->unk_4C[1] = 0;
    }
    
    arg0->unk_4C[2] = 0;

    for (i = 0; i < 4; i++) {
        D_800FE1B0[i][1] = 0;
        D_800FE1B0[i][0] = 0;
    }
    temp_s0_2->unk_3C = 180.0f;
}

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F94EC_16EC2C);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F9598_16ECD8);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F9644_16ED84);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F96F0_16EE30);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800F979C_16EEDC);

INCLUDE_ASM(const s32, "ovl_18_PlatformPeril/16C6A0", func_800FAAE0_170220);
