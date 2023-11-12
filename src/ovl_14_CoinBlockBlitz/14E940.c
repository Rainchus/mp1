#include "common.h"
#include "CoinBlockBlitz.h"

void func_800F65E0_14E940(void) {
    u8 temp_s0;

    func_80029090(0x32);
    func_8002ADF0(&D_800EDEC0, 0x40);
    func_8001DE70(0x20);
    InitObjSystem(0x32, 0);
    func_80060088();
    func_8000942C();
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 20.0f, 2500.0f, 6000.0f);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_800F6D08_14F068();
    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = func_8005D384(1, 1, 0, -1, &func_800F9208_151568);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA49C_1527FC);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA500_152860);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA554_1528B4);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA5A8_152908);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA5FC_15295C);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA65C_1529BC);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA6B0_152A10);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA704_152A64);
    D_800F2AF8[D_800ED440++] = func_8005D384(4, 2, 0, -1, &func_800FA758_152AB8);

    func_800F6E1C_14F17C();
    func_80009500();
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 0xA, 0x32, -1, &func_800F9FB8_152318);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 0xA, 0x32, -1, &func_800FA068_1523C8);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 0xA, 0x32, -1, &func_800FA118_152478);
    D_800F3FB0[D_800F2BC0++] = func_8005D384(2, 0xA, 0x32, -1, &func_800FA1C8_152528);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA278_1525D8);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA2D0_152630);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA32C_15268C);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA388_1526E8);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA3E4_152744);
    D_800EDE70[D_800EE984++] = func_8005D384(3, 4, 0, -1, &func_800FA440_1527A0);

    func_8005D384(1, 0, 0, -1, &func_800F6CB4_14F014);
    SetFadeInTypeAndTime(0, 0x10);
}

void func_800F6CB4_14F014(void) {
    s32 new_var;
    
    if ((new_var = D_800F5144 == 1)) { //fake match?
        func_800601D4(0x28);
        func_80009730();
        func_8002890C(0, 0, 0);
        func_8005DFB8(1);
    }
}

void func_800F6D08_14F068(void) {
    unkCoinBlockBlitzStruct1* var_s0;
    unkCoinBlockBlitzStruct2* var_s1;
    s16 temp_a0;
    s32 i;

    var_s0 = &D_800FAA80;
    var_s1 = &D_800FA8F0;
    temp_a0 = GetRandomByte() % 3;
    
    for (i = 0; i < 4; i++, var_s0++, var_s1++) {
        var_s0->unk0 = 0;
        var_s0->unk2 = 0;
        var_s0->unk6 = 0;
        var_s0->unk8 = 0;
        var_s0->unkC = 0;
        var_s0->unkE = 0;
        var_s0->unk10 = 0;
        var_s0->unk12 = 0;
        var_s1->unk0 = 0;
        var_s1->unkA = temp_a0;
    }
    
    D_800FAA78 = 0;
    D_800EE98C = 3510.0f;
    D_800F33EC.y = -40.5f;
    D_800F33EC.x = 25.25f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = -100.0f;
    D_800F6524.y = -100.0f;
    D_800F6524.z = -185.0f;
}

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F6E1C_14F17C);

void func_800F6F1C_14F27C(void) {
}

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F6F24_14F284);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F6FA8_14F308);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F700C_14F36C);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F702C_14F38C);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F713C_14F49C);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F73F4_14F754);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F745C_14F7BC);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7604_14F964);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7B00_14FE60);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7C30_14FF90);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7D98_1500F8);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7E5C_1501BC);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F7EE8_150248);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F81F0_150550);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F83A8_150708);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F859C_1508FC);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F8614_150974);

INCLUDE_ASM("asm/nonmatchings/ovl_14_CoinBlockBlitz/14E940", func_800F86F4_150A54);
