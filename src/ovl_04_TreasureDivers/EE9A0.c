#include "common.h"
#include "TreasureDivers.h"

void func_800F65E0_EE9A0(void) {
    unkObjectStruct* temp_v0;
    unkObjectStruct* temp_v0_4;
    unk_Struct00* temp_s0_2;
    void* temp_v0_3;
    u8 temp_s0;
    s16 i;

    func_80029090(50);
    func_8001DE70(32);
    InitObjSystem(50, 0);
    func_80060088();

    temp_v0 = func_8005D384(32730, 0, 0, -1, func_8005EB1C);
    func_8005D8B8(temp_v0, 160);

    func_800178A0(1);

    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 45.0f, 80.0f, 8000.0f);

    D_800F2BC0 = 0;
    D_800ED440 = 0;
    D_800FE6F2 = 0;
    D_800FE6F4 = 45;
    D_800FE6F8 = 0;
    D_800FE6F6 = 1;
    D_800FE6FA = 2700;
    D_800FE6FC = IsFlagSet(0x2B);

    for (i = 0; i < ARRAY_COUNT(D_800FED40); i++) {
        D_800FED40[i] = 0;
    }

    D_800FE702 = 0;
    D_800FE700 = 0;
    D_800FE6FE = 0;
    D_800FE760 = -1;
    D_800FF180 = 0;
    D_800FF25C = 0;
    D_800FED30 = 0;

    temp_v0_3 = ReadMainFS(0x160014);
    func_800FAA34_F2DF4(temp_v0_3);
    FreeMainFS(temp_v0_3);
    func_800FA440_F2800();
    func_8005EB1C(temp_v0);

    temp_s0_2 = D_800C3110;
    D_800FF258 = func_800AEAC0(temp_s0_2->unk_40 / 2.0) / func_800AEFD0(temp_s0_2->unk_40 / 2.0);

    guMtxL2F(D_800FF140, &temp_s0_2->unk_138);
    guMtxL2F(D_800FFAE0, &temp_s0_2->unk_138);
    func_800FA678_F2A38(D_800FFAE0);
    func_800FBB0C_F3ECC();

    D_800FE768 = func_80076FF4(124);
    D_800FF248 = func_8005D384(10, 0, 0, -1, &func_800F6B2C_EEEEC);

    D_800F2AF8[D_800ED440++] = temp_v0_4 = func_8005D384(2, 9, 0, -1, &func_800F7010_EF3D0);
    func_8005D8B8(temp_v0_4, 160);

    D_800F2AF8[D_800ED440++] = func_8005D384(2, 6, 0, -1, &func_800F7560_EF920);

    for (i = 0; i < 4; i++) {
        D_800F3FB0[D_800F2BC0++] = func_8005D384(3, 1, 50, -1, &func_800F719C_EF55C);
    }

    for (i = 0; i < 10; i++) {
        D_800FED08[D_800FF25C++] = func_8005D384(4, 1, 0, -1, &func_800F75AC_EF96C);
    }

    D_800FF24C[D_800FED30++] = temp_v0_4 = func_8005D384(5, 3, 0, -1, &func_800F7470_EF830);
    func_8005D8B8(temp_v0_4, 160);

    D_800FF24C[D_800FED30++] = temp_v0_4 = func_8005D384(5, 2, 0, -1, &func_800F74E8_EF8A8);
    func_8005D8B8(temp_v0_4, 160);

    D_800FE764 = func_8005D384(0, 0, 0, -1, &func_800F6F18_EF2D8);

    func_800234B8(0, 128, 128, 128);
    func_800234B8(1, 255, 255, 255);
    func_80023504(1, 0.0f, 128.0f, 128.0f);
}

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F6B2C_EEEEC);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F6B60_EEF20);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F6EBC_EF27C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F6F18_EF2D8);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F6F90_EF350);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F7010_EF3D0);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F719C_EF55C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F7470_EF830);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F74E8_EF8A8);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F7560_EF920);

INCLUDE_RODATA("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", D_800FE494_F6854);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F75AC_EF96C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F78BC_EFC7C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F78D8_EFC98);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F8B98_F0F58);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F92A0_F1660);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9580_F1940);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9668_F1A28);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9728_F1AE8);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F98B8_F1C78);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9BAC_F1F6C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9CB0_F2070);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9E08_F21C8);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800F9E9C_F225C);

INCLUDE_ASM("asm/nonmatchings/ovl_04_TreasureDivers/EE9A0", func_800FA084_F2444);
