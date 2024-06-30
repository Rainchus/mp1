#include "engine/process.h"
#include "29AB30.h"

extern s32 D_800F6E7C_name_60[];
extern s32 D_800F6D30_name_60[];
extern Vec3f D_800F6D50_name_60[];
extern Vec3f D_800F6DB0_name_60[];
extern s32* D_800F6E64_name_60[];

void func_8004DBD4(s32, u8);

void func_800F65E0_name_60(void) {
    D_800F6EC0_name_60 = D_800ED5C2[0];
    D_800F6EC1_name_60 = D_800ED5DC;
    omInitObjMan(0x32, 0xA);
    func_800F6B8C_name_60();
    func_800F69BC_name_60();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F66C4_name_60, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6978_name_60);
    SetFadeInTypeAndTime(1, 0x10);
}


void func_800F66C4_name_60(void) {
    s16 textWindowID;

    func_800421E0();
    HuPrcSleep(26);
    func_8004F00C(D_800F6EC4_name_60, 0, -3.0f);
    func_8004F044(D_800F6EC4_name_60);
    PlaySound(117);
    HuPrcSleep(10);
    textWindowID = CreateTextWindow(80, 60, 12, 3);
    LoadStringIntoWindow(textWindowID, (void*)382, -1, -1);
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    PlaySound(0x432);
    func_8004DBD4(textWindowID, D_800F6EC1_name_60);
    HideTextWindow(textWindowID);
    func_8004CCD0(&D_800F6EC8_name_60->coords , &D_800F32A0->coords, &D_800F6EC8_name_60->unk_18 );
    func_8004F4D4(D_800F6EC8_name_60, 0, 0);
    func_80060468(0x451, gPlayers[D_800F6EC1_name_60].characterID);
    func_80055960(D_800F6EC1_name_60, 20);
    HuPrcSleep(40);
    func_8003E81C(D_800F6EC8_name_60, 1, 2);
    func_8004EE14(0, &D_800F6EC4_name_60->coords, 10, D_800F6EC8_name_60);
    HuPrcSleep(10);
    func_8004F4D4(D_800F6EC8_name_60, -1, 2);
    textWindowID = CreateTextWindow(100, 60, 14, 3);
    LoadStringIntoWindow(textWindowID, (void*)383, -1, -1);
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    PlaySound(0x432);
    func_8004DBD4(textWindowID, D_800F6EC1_name_60);
    HideTextWindow(textWindowID);
    func_8004F4D4(D_800F6EC4_name_60, 2, 2);
    func_8004EE14(0, &D_800F6E10_name_60, 10, D_800F6EC4_name_60);
    PlaySound(85);
    HuPrcSleep(10);
    func_8004E3E0(0, &D_800F6E10_name_60, 20, D_800F6EC4_name_60);
    PlaySound(85);
    HuPrcSleep(20);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();
    }
}

void func_800F692C_name_60(void) {
    if (func_80072718() == 0) {
        func_800F6D04_name_60();
        func_800F6B58_name_60();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F6978_name_60(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 16);
        arg0->func_ptr = &func_800F692C_name_60;
    }
}

void func_800F69BC_name_60(void) {
    func_8003DAA8();
    D_800F6EC4_name_60 = CreateObject(8, &D_800F6E7C_name_60);
    D_800F6EC4_name_60->coords.x = D_800F6D50_name_60[D_800F6EC0_name_60].x;
    D_800F6EC4_name_60->coords.y = D_800F6D50_name_60[D_800F6EC0_name_60].y;
    D_800F6EC4_name_60->coords.z = D_800F6D50_name_60[D_800F6EC0_name_60].z;
    D_800F6EC4_name_60->unk_30 = 1000.0f;
    func_8004F140(*D_800F6EC4_name_60->unk_3C->unk_40);
    D_800F6EC8_name_60 = CreateObject(func_80052F04(D_800F6EC1_name_60), D_800F6E64_name_60[gPlayers[D_800F6EC1_name_60].characterID]);
    D_800F6EC8_name_60->coords.x = D_800F6DB0_name_60[D_800F6EC0_name_60].x;
    D_800F6EC8_name_60->coords.y = D_800F6DB0_name_60[D_800F6EC0_name_60].y;
    D_800F6EC8_name_60->coords.z = D_800F6DB0_name_60[D_800F6EC0_name_60].z;
    func_80021B14(*D_800F6EC8_name_60->unk_3C->unk_40, gPlayers[D_800F6EC1_name_60].characterID, 0x80);
    func_8004CCD0(&D_800F6EC4_name_60->coords, &D_800F6EC8_name_60->coords, &D_800F6EC4_name_60->unk_18);
    func_8004CCD0(&D_800F6EC8_name_60->coords, &D_800F6EC4_name_60->coords, &D_800F6EC8_name_60->unk_18);
}

void func_800F6B58_name_60(void) {
    DestroyObject((Object*) D_800F6EC4_name_60);
    DestroyObject((Object*) D_800F6EC8_name_60);
    func_8004F1D0();
}

void func_800F6B8C_name_60(void) {
    s32 var_a0;

    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    switch (D_800F6EC0_name_60) {
    case 1:
        if (gPlayers[D_800F6EC1_name_60].curChainIndex == 2) {
            var_a0 = 12;
        } else {
            var_a0 = 9;
        }
        break;
    case 3:
        switch (gPlayers[D_800F6EC1_name_60].curChainIndex) {
        case 2:
            var_a0 = 29;
            break;
        case 3:
            var_a0 = 33;
            break;
        case 8:
            var_a0 = 31;
            break;
        case 1:
            var_a0 = 32;
            break;
        case 0:
        default:
            var_a0 = 30;
            break;
        }
        break;
    default:
        var_a0 = D_800F6D30_name_60[D_800F6EC0_name_60];
    }
    LoadBackgroundIndex(var_a0);
}

void func_800F6D04_name_60(void) {
    func_8004A140();
    func_80049F0C();
}

s32 D_800F6D30_name_60[] = {0x00000002, 0x00000009, 0x00000014, 0x0000001D, 0x00000029, 0x00000031, 0x0000003A, 0x00000047};

Vec3f D_800F6D50_name_60[] = {
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f},
    {-80.0f, 0.0f, 1310.0f}
};

Vec3f D_800F6DB0_name_60[] = {
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
    {80.0f, 0.0f, 1520.0f},
};

Vec3f D_800F6E10_name_60 = {-500.0f, 0.0f, 1310.0f};

s32 D_800F6E1C_name_60[] = { 0x00000002, 0x00010039, 0x00010001 };
s32 D_800F6E28_name_60[] = { 0x00000002, 0x00020039, 0x00020001 };
s32 D_800F6E34_name_60[] = { 0x00000002, 0x00060039, 0x00060001 };
s32 D_800F6E40_name_60[] = { 0x00000002, 0x00030039, 0x00030001 };
s32 D_800F6E4C_name_60[] = { 0x00000002, 0x00040039, 0x00040001 };
s32 D_800F6E58_name_60[] = { 0x00000002, 0x00050039, 0x00050001 };

s32* D_800F6E64_name_60[] = { D_800F6E1C_name_60, D_800F6E28_name_60, D_800F6E34_name_60, D_800F6E40_name_60, D_800F6E4C_name_60, D_800F6E58_name_60 };

s32 D_800F6E7C_name_60[] = { 0x00000003, 0x000A0072, 0x000A0073, 0x000A0074, 0x00000000 };