#include "BumperBalls.h"

void func_800F65E0_BumperBalls(void) {
    void* temp_s0;
    void* temp_s0_2;
    s32 i;

    omInitObjMan(32, 0);
    func_80060088();
    D_800FCD1E_BumperBalls = 4;
    
    for (i = 0; i < 4; i++) {
        if (gPlayers[i].unk_06 & 1) {
            D_800FCD1E_BumperBalls--;
        }
    }
    
    func_80029090(2);
    func_8001DE70(24);
    func_8002ADF0(&D_800EDEC0, 64);
    func_8002890C(0, 32, 128);
    func_8002578C(1);
    func_800FB1E0_BumperBalls(20.0f, 3000.0f, 328.0f, 0, 0, 0, 0, -140.0f);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_8005EB1C), 160);
    func_80023448(3);
    func_800234B8(0, 44, 44, 64);
    func_800234B8(1, 96, 96, 16);
    func_80023504(1, 100.0f, 80.0f, 100.0f);
    func_800234B8(2, 0, 0, 0);
    func_80023504(2, 100.0f, 80.0f, 100.0f);
    func_800234B8(3, 0, 0, 0);
    func_80023504(3, 100.0f, 80.0f, 100.0f);
    func_8005D98C(0, 4);
    D_800FCD2C_BumperBalls = func_8005DB44(0);
    func_8005D98C(1, 4);
    D_800FCD30_BumperBalls = func_8005DB44(1);
    omSetStatBit(omAddObj(100, 0, 0, -1, &func_800FB298_BumperBalls), 160);
    omAddObj(20, 9, 7, 0, &func_800F6E2C_BumperBalls);
    omAddObj(20, 9, 7, 0, &func_800F6E68_BumperBalls);
    omAddObj(20, 9, 7, 0, &func_800F6E84_BumperBalls);
    omAddObj(20, 9, 7, 0, &func_800F6EA0_BumperBalls);
    omAddObj(10, 7, 0, 1, &func_800F8538_BumperBalls);
    omAddObj(10, 7, 0, 1, &func_800F8554_BumperBalls);
    omAddObj(10, 7, 0, 1, &func_800F8570_BumperBalls);
    omAddObj(10, 7, 0, 1, &func_800F858C_BumperBalls);
    omAddObj(0, 0, 0, -1, &func_800F6A60_BumperBalls);
    D_800FCD20_BumperBalls = omAddObj(6, 3, 0, -1, &func_800F6D98_BumperBalls);
    omAddObj(0x2710, 0, 0, -1, &func_800F9588_BumperBalls);
    D_800FCD18_BumperBalls = InitSprite(117);
    temp_s0 = ReadMainFS(37);
    D_800FCD1A_BumperBalls = func_80039084(temp_s0);
    HuMemDirectFree(temp_s0);
    temp_s0_2 = ReadMainFS(36);
    D_800FCD1C_BumperBalls = func_80039084(temp_s0_2);
    HuMemDirectFree(temp_s0_2);
    func_8007B168(D_800FCC28_BumperBalls, 1);
    D_800FCD12_BumperBalls = IsFlagSet(MINIGAME_ISLAND_ENDING);
    D_800FCFF0_BumperBalls = 0;
    SetFadeInTypeAndTime(0, 16);
}

void func_800F6A60_BumperBalls(omObjData* arg0) {
    D_800FCFF4_BumperBalls = 0;
    D_800FCD28_BumperBalls = 0;
    D_800FCD24_BumperBalls = 0;
    D_800FCD16_BumperBalls = 60;
    D_800FCD14_BumperBalls = 30;
    D_800FCD0E_BumperBalls = 0;
    D_800FCD10_BumperBalls = 4;
    arg0->func_ptr = &func_800F6AB4_BumperBalls;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F6AB4_BumperBalls);

void func_800F6D98_BumperBalls(omObjData* arg0) {
    arg0->model[0] = LoadFormFile(0x310000, 0x20289);
    arg0->model[1] = LoadFormFile(0x380002, 0x48D);
    arg0->model[2] = LoadFormFile(0x380003, 0x48D);
    func_800FB2EC_BumperBalls();
    arg0->func_ptr = &func_800F6E10_BumperBalls;
}

void func_800F6E10_BumperBalls(omObjData* arg0) { //unused arg?
    func_800FC618_BumperBalls();
}

void func_800F6E2C_BumperBalls(s32 arg0) {
    LoadFormFile(0x310002, 0x69D);
    func_800F6EBC_BumperBalls(arg0, 0);
}

void func_800F6E68_BumperBalls (s32 arg0) {
    func_800F6EBC_BumperBalls(arg0, 1);
}

void func_800F6E84_BumperBalls (s32 arg0) {
    func_800F6EBC_BumperBalls(arg0, 2);
}

void func_800F6EA0_BumperBalls (s32 arg0) {
    func_800F6EBC_BumperBalls(arg0, 3);
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCBE0_BumperBalls);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCBEC_BumperBalls);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCBF8_BumperBalls);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCC04_BumperBalls);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCC10_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F6EBC_BumperBalls);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", D_800FCC28_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F74E8_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F7EC4_BumperBalls);

void func_800F821C_BumperBalls(omObjData* arg0) {
    UnkBumberBallsStruct* temp_s1 = arg0->unk_50;
    s32 temp_v1 = arg0->unk_10;

    if (temp_v1 != 0) {
        arg0->unk_10 = 0;
        if (temp_v1 == 1) {
            temp_s1->unk_00 = 5;
            func_80025C20(arg0->model[0], func_80025E48(arg0->motion[5]), 0, 15, 0);
        }
    }
    if (temp_s1->unk_00 != 5) {
        omSetTra(arg0, arg0->trans.x, (2.0f * func_800AEAC0(temp_s1->unk_50)) + arg0->trans.y, arg0->trans.z);
        temp_s1->unk_50 = temp_s1->unk_50 + 8.0f;
        
        if (temp_s1->unk_50 >= 360.0f) {
            temp_s1->unk_50 = temp_s1->unk_50 - 360.0f;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F8304_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F8384_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F84AC_BumperBalls);

void func_800F8538_BumperBalls(s32 arg0) {
    func_800F85A8_BumperBalls(arg0, 0);
}

void func_800F8554_BumperBalls(s32 arg0) {
    func_800F85A8_BumperBalls(arg0, 1);
}

void func_800F8570_BumperBalls(s32 arg0) {
    func_800F85A8_BumperBalls(arg0, 2);
}

void func_800F858C_BumperBalls(s32 arg0) {
    func_800F85A8_BumperBalls(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F85A8_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F87F4_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F8D68_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F8E40_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F9588_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F95CC_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F98CC_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F9A7C_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F9B70_BumperBalls);

void func_800F9CA8_BumperBalls(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {
    func_800F9CC8_BumperBalls(arg3, (arg1 - 2));
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F9CC8_BumperBalls);

s32 func_800F9EE0_BumperBalls(void) {
    u16 phi_a0_2 = 0;
    s32 i;

    for (i = 0; i < 4; i++) {
        if (((unkGlobalStruct_00*) D_800FCD2C_BumperBalls[i]->unk_50)->unk_00 != 3) {
            phi_a0_2++;
        }
    }

    return (phi_a0_2 < 4) ^ 1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800F9F30_BumperBalls);

s32 func_800FA36C_BumperBalls(omObjData* arg0) {
    unkGlobalStruct_00* temp_v1 = arg0->unk_50;

    if (temp_v1->unk_00 == 3 || temp_v1->unk_00 == 4 || temp_v1->unk_00 == 5) {
        return 1;
    } else {
        return 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800FA3A0_BumperBalls);

void func_800FA510_BumperBalls(omObjData* arg0) {
    switch (((UnkBumberBallsStruct*) arg0->unk_50)->unk_42) {
    case 1:
        func_800FA5A4_BumperBalls();
        return;
    case 2:
        func_800FA950_BumperBalls();
        return;
    case 3:
        func_800FAB54_BumperBalls();
        return;
    case 4:
        func_800FAE60_BumperBalls();
        return;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800FA5A4_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800FA950_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800FAB54_BumperBalls);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_1E_BumperBalls/191700", func_800FAE60_BumperBalls);
