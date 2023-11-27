#include "common.h"
#include "BumperBalls.h"

void func_800F65E0_191700(void) {
    void* temp_s0;
    void* temp_s0_2;
    s32 i;

    InitObjSystem(32, 0);
    func_80060088();
    D_800FCD1E_197E20 = 4;
    
    for (i = 0; i < 4; i++) {
        if (gPlayers[i].unk_06 & 1) {
            D_800FCD1E_197E20--;
        }
    }
    
    func_80029090(2);
    func_8001DE70(24);
    func_8002ADF0(&D_800EDEC0, 64);
    func_8002890C(0, 32, 128);
    func_8002578C(1);
    func_800FB1E0_196300(20.0f, 3000.0f, 328.0f, 0, 0, 0, 0, -140.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_8005EB1C), 160);
    func_80023448(3);
    func_800234B8(0, 44, 44, 64);
    func_800234B8(1, 96, 96, 16);
    func_80023504(1, 100.0f, 80.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_80023504(2, 100.0f, 80.0f, 100.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, 100.0f, 80.0f, 100.0f);
    func_8005D98C(0, 4);
    D_800FCD2C_197E20 = func_8005DB44(0);
    func_8005D98C(1, 4);
    D_800FCD30_197E20 = func_8005DB44(1);
    func_8005D8B8(func_8005D384(100, 0, 0, -1, &func_800FB298_1963B8), 160);
    func_8005D384(20, 9, 7, 0, &func_800F6E2C_191F4C);
    func_8005D384(20, 9, 7, 0, &func_800F6E68_191F88);
    func_8005D384(20, 9, 7, 0, &func_800F6E84_191FA4);
    func_8005D384(20, 9, 7, 0, &func_800F6EA0_191FC0);
    func_8005D384(10, 7, 0, 1, &func_800F8538_193658);
    func_8005D384(10, 7, 0, 1, &func_800F8554_193674);
    func_8005D384(10, 7, 0, 1, &func_800F8570_193690);
    func_8005D384(10, 7, 0, 1, &func_800F858C_1936AC);
    func_8005D384(0, 0, 0, -1, &func_800F6A60_191B80);
    D_800FCD20_197E20 = func_8005D384(6, 3, 0, -1, &func_800F6D98_191EB8);
    func_8005D384(0x2710, 0, 0, -1, &func_800F9588_1946A8);
    D_800FCD18_197E20 = InitSprite(117);
    temp_s0 = ReadMainFS(37);
    D_800FCD1A_197E20 = func_80039084(temp_s0);
    FreePerm(temp_s0);
    temp_s0_2 = ReadMainFS(36);
    D_800FCD1C_197E20 = func_80039084(temp_s0_2);
    FreePerm(temp_s0_2);
    func_8007B168(&D_800FCC28_197D48, 1);
    D_800FCD12_197E20 = IsFlagSet(MINIGAME_ISLAND_ENDING);
    D_800FCFF0_197E20 = 0;
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6A60_191B80(unkObjectStruct* arg0) {
    D_800FCFF4_197E20 = 0;
    D_800FCD28_197E20 = 0;
    D_800FCD24_197E20 = 0;
    D_800FCD16_197E20 = 60;
    D_800FCD14_197E20 = 30;
    D_800FCD0E_197E20 = 0;
    D_800FCD10_197E20 = 4;
    arg0->func_ptr = &func_800F6AB4_191BD4;
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F6AB4_191BD4);

void func_800F6D98_191EB8(unkObjectStruct* arg0) {
    arg0->unk_40[0] = LoadFormFile(0x310000, 0x20289);
    arg0->unk_40[1] = LoadFormFile(0x380002, 0x48D);
    arg0->unk_40[2] = LoadFormFile(0x380003, 0x48D);
    func_800FB2EC_19640C();
    arg0->func_ptr = &func_800F6E10_191F30;
}

void func_800F6E10_191F30(unkObjectStruct* arg0) { //unused arg?
    func_800FC618_197738();
}

void func_800F6E2C_191F4C(s32 arg0) {
    LoadFormFile(0x310002, 0x69D);
    func_800F6EBC_191FDC(arg0, 0);
}

void func_800F6E68_191F88 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 1);
}

void func_800F6E84_191FA4 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 2);
}

void func_800F6EA0_191FC0 (s32 arg0) {
    func_800F6EBC_191FDC(arg0, 3);
}

INCLUDE_RODATA("asm/nonmatchings/ovl_1E_BumperBalls/191700", D_800FCBE0_197D00);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F6EBC_191FDC);

INCLUDE_RODATA("asm/nonmatchings/ovl_1E_BumperBalls/191700", D_800FCC28_197D48);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F74E8_192608);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F7EC4_192FE4);

void func_800F821C_19333C(unkObjectStruct* arg0) {
    UnkBumberBallsStruct* temp_s1 = arg0->unk_50;
    s32 temp_v1 = arg0->unk_10;

    if (temp_v1 != 0) {
        arg0->unk_10 = 0;
        if (temp_v1 == 1) {
            temp_s1->unk_00 = 5;
            func_80025C20(arg0->unk_40[0], func_80025E48(arg0->unk_48[5]), 0, 15, 0);
        }
    }
    if (temp_s1->unk_00 != 5) {
        func_8005D95C(arg0, arg0->unk_18, (2.0f * func_800AEAC0(temp_s1->unk_50)) + arg0->unk_1C, arg0->unk_20);
        temp_s1->unk_50 = temp_s1->unk_50 + 8.0f;
        
        if (temp_s1->unk_50 >= 360.0f) {
            temp_s1->unk_50 = temp_s1->unk_50 - 360.0f;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F8304_193424);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F8384_1934A4);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F84AC_1935CC);

void func_800F8538_193658(s32 arg0) {
    func_800F85A8_1936C8(arg0, 0);
}

void func_800F8554_193674(s32 arg0) {
    func_800F85A8_1936C8(arg0, 1);
}

void func_800F8570_193690(s32 arg0) {
    func_800F85A8_1936C8(arg0, 2);
}

void func_800F858C_1936AC(s32 arg0) {
    func_800F85A8_1936C8(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F85A8_1936C8);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F87F4_193914);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F8D68_193E88);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F8E40_193F60);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F9588_1946A8);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F95CC_1946EC);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F98CC_1949EC);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F9A7C_194B9C);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F9B70_194C90);

void func_800F9CA8_194DC8(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_800F9CC8_194DE8(arg3, (arg1 - 2));
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F9CC8_194DE8);

s32 func_800F9EE0_195000(void) {
    u16 phi_a0_2 = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if (((unkGlobalStruct_00*) D_800FCD2C_197E20[i]->unk_50)->unk_00 != 3) {
            phi_a0_2++;
        }
    }

    return (phi_a0_2 < 4) ^ 1;
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800F9F30_195050);

s32 func_800FA36C_19548C(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_v1 = arg0->unk_50;

    if (temp_v1->unk_00 == 3 || temp_v1->unk_00 == 4 || temp_v1->unk_00 == 5) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800FA3A0_1954C0);

void func_800FA510_195630(unkObjectStruct* arg0) {
    switch (((UnkBumberBallsStruct*) arg0->unk_50)->unk_42) {
    case 1:
        func_800FA5A4_1956C4();
        return;
    case 2:
        func_800FA950_195A70();
        return;
    case 3:
        func_800FAB54_195C74();
        return;
    case 4:
        func_800FAE60_195F80();
        return;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800FA5A4_1956C4);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800FA950_195A70);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800FAB54_195C74);

INCLUDE_ASM("asm/nonmatchings/ovl_1E_BumperBalls/191700", func_800FAE60_195F80);

INCLUDE_RODATA("asm/nonmatchings/ovl_1E_BumperBalls/191700", D_800FCCD0_197DF0);

INCLUDE_RODATA("asm/nonmatchings/ovl_1E_BumperBalls/191700", D_800FCCDC_197DFC);
