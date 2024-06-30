#include "common.h"
#include "14E940.h"

void func_800F65E0_CoinBlockBlitz(void) {
    u8 temp_s0;

    func_80029090(0x32);
    func_8002ADF0(&D_800EDEC0, 0x40);
    func_8001DE70(0x20);
    omInitObjMan(0x32, 0);
    func_80060088();
    func_8000942C();
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, func_8005EB1C), 0xA0);
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 20.0f, 2500.0f, 6000.0f);
    D_800EE984 = 0;
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    func_800F6D08_CoinBlockBlitz();
    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = omAddObj(1, 1, 0, -1, &func_800F9208_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA49C_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA500_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA554_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA5A8_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA5FC_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA65C_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA6B0_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA704_CoinBlockBlitz);
    D_800F2AF8[D_800ED440++] = omAddObj(4, 2, 0, -1, &func_800FA758_CoinBlockBlitz);

    func_800F6E1C_CoinBlockBlitz();
    func_80009500();
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 0xA, 0x32, -1, &func_800F9FB8_CoinBlockBlitz);
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 0xA, 0x32, -1, &func_800FA068_CoinBlockBlitz);
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 0xA, 0x32, -1, &func_800FA118_CoinBlockBlitz);
    D_800F3FB0[D_800F2BC0++] = omAddObj(2, 0xA, 0x32, -1, &func_800FA1C8_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA278_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA2D0_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA32C_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA388_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA3E4_CoinBlockBlitz);
    D_800EDE70[D_800EE984++] = omAddObj(3, 4, 0, -1, &func_800FA440_CoinBlockBlitz);

    omAddObj(1, 0, 0, -1, &func_800F6CB4_CoinBlockBlitz);
    SetFadeInTypeAndTime(0, 0x10);
}

void func_800F6CB4_CoinBlockBlitz(void) {
    s32 new_var;
    
    if ((new_var = D_800F5144 == 1)) { //fake match?
        func_800601D4(0x28);
        func_80009730();
        func_8002890C(0, 0, 0);
        omOvlReturnEx(1);
    }
}

void func_800F6D08_CoinBlockBlitz(void) {
    unkCoinBlockBlitzStruct1* var_s0;
    unkCoinBlockBlitzStruct2* var_s1;
    s16 temp_a0;
    s32 i;

    var_s0 = &D_800FAA80_CoinBlockBlitz;
    var_s1 = &D_800FA8F0_CoinBlockBlitz;
    temp_a0 = rand8() % 3;
    
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
    
    D_800FAA78_CoinBlockBlitz = 0;
    D_800EE98C = 3510.0f;
    D_800F33EC.y = -40.5f;
    D_800F33EC.x = 25.25f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = -100.0f;
    D_800F6524.y = -100.0f;
    D_800F6524.z = -185.0f;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F6E1C_CoinBlockBlitz);

void func_800F6F1C_CoinBlockBlitz(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F6F24_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F6FA8_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F700C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F702C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F713C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F73F4_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F745C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7604_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7B00_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7C30_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7D98_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7E5C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F7EE8_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F81F0_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F83A8_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F859C_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F8614_CoinBlockBlitz);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_14_CoinBlockBlitz/14E940", func_800F86F4_CoinBlockBlitz);
