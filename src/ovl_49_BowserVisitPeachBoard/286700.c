#include "common.h"
#include "286700.h"

Vec3f D_800F70D0 = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F70DC[2] = {{30.0f, 350.0f, 1475.0f}, {30.0f, 120.0f, 1475.0f}};
Vec3f D_800F70F4 = {115.0f, 0.0f, 1520.0f};

s32 D_800F7100_287220[] = {0x00000003, 0x000A0068, 0x000A006A, 0x000A006C};
s32 D_800F7110_287230[] = {0x00000002, 0x0001003C, 0x0001003E};
s32 D_800F711C_28723C[] = {0x00000002, 0x0002003C, 0x0002003E};
s32 D_800F7128_287248[] = {0x00000002, 0x0006003C, 0x0006003E};
s32 D_800F7134_287254[] = {0x00000002, 0x0003003C, 0x0003003E};
s32 D_800F7140_287260[] = {0x00000002, 0x0004003C, 0x0004003E};
s32 D_800F714C_28726C[] = {0x00000002, 0x00050010, 0x00050010};
s32* D_800F7158_287278[] = {D_800F7110_287230, D_800F711C_28723C, D_800F7128_287248, D_800F7134_287254, D_800F7140_287260, D_800F714C_28726C};

void func_800F65E0_286700(void) {
    D_800F7180 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F7008_287128();
    func_800F6E18_286F38();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66BC_2867DC, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6DCC_286EEC);
    func_80060128(18);
    SetFadeInTypeAndTime(3, 16);
}

void func_800F66BC_2867DC(void) {
    f32 var_f20;
    s32 temp_s1;

    SleepProcess(0x10);
    PlaySound(0x46A);
    SleepProcess(0xA);
    if (gPlayers[D_800F7180].coinAmount == 0) {
        temp_s1 = CreateTextWindow(0x3C, 0x28, 0x10, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x1A0, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
        temp_s1 = CreateTextWindow(0x3C, 0x28, 0x0F, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x1A1, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x46A);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
    } else if (!(gPlayers[D_800F7180].coinAmount >= 20)) {
        temp_s1 = CreateTextWindow(0x37, 0x28, 0x10, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x19D, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
        temp_s1 = CreateTextWindow(0x37, 0x28, 0x10, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x19E, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow( temp_s1);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
        func_8003E81C(D_800F7184, 1, 0);
        func_8004F40C(D_800F7184, 0, 2);
        func_8003E81C(D_800F718C, 1, 0);
        func_80055960(D_800F7180, -gPlayers[D_800F7180].coinAmount);
        func_800503B0(D_800F7180, 5);
        func_80060618(0x44A, D_800F7180);
        SleepProcess(0x1E);
        temp_s1 = CreateTextWindow(0x64, 0x28, 0x0B, 2);
        LoadStringIntoWindow(temp_s1, (void* )0x19F, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x469);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
    } else {
        temp_s1 = CreateTextWindow(0x37, 0x28, 0x10, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x19A, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
        func_8004F4D4(D_800F7184, 2, 0);
        func_8004F40C(D_800F7184, 0, 2);
        SleepProcess(0x14);
        var_f20 = D_800F70DC[0].y;

        while (D_800F70DC[1].y <= var_f20) {
            D_800F7188->unk_30 = var_f20;
            SleepVProcess();
            var_f20 -= 2.0f;
        }

        D_800F7188->unk_30 = D_800F70DC[1].y;
        D_800F7190->unk_4C = 1;
        SleepVProcess();
        func_8003E81C(D_800F7184, 1, 0);
        func_8004F40C(D_800F7184, 0, 2);
        SleepProcess(0x28);
        temp_s1 = CreateTextWindow(0x37, 0x28, 0x11, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x19B, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
        func_8003E81C(D_800F7184, 1, 0);
        func_8004F40C(D_800F7184, 0, 2);
        func_8003E81C(D_800F718C, 0, 0);
        func_80055960(D_800F7180, -20);
        func_800503B0(D_800F7180, 5);
        func_80060618(0x44A, D_800F7180);
        SleepProcess(0x1E);
        temp_s1 = CreateTextWindow(0x46, 0x28, 0x10, 3);
        LoadStringIntoWindow(temp_s1, (void* )0x19C, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x469);
        func_8004DBD4(temp_s1, D_800F7180);
        HideTextWindow(temp_s1);
    }

    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
}

void func_800F6C10_286D30(unkObjectStruct* arg0) {
    Object* temp_s0;
    Object* temp_s0_2;
    Object* temp_s0_3;

    temp_s0 = D_800F7188;
    temp_s0->unk_18.x = func_80088060(arg0->unk_24 * 0.017453292519943295);
    temp_s0_2 = D_800F7188;
    temp_s0_2->unk_18.z = func_800855C0(arg0->unk_24 * 0.017453292519943295);
    if ((arg0->unk_4C == 0) || !(arg0->unk_24 < -310.0f)) {
        arg0->unk_24 = arg0->unk_24 - 5.0f;
        if (arg0->unk_24 <= -360.0f) {
            arg0->unk_24 = arg0->unk_24 + 360.0f;
        }
    } else {
        temp_s0_3 = D_800F7188;
        temp_s0_3->unk_30 = ((func_80088060(arg0->unk_28 * 0.017453292519943295)) * 4.0f) + D_800F70DC[1].y;
        arg0->unk_28 = arg0->unk_28 + 5.0f;
        if (arg0->unk_28 >= 360.0f) {
            arg0->unk_28 -= 360.0f;
        }
    }
}

void func_800F6D80_286EA0(void) {
    if (func_80072718() == 0) {
        func_800F70A8_2871C8();
        func_800F6FBC_2870DC();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6DCC_286EEC(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 16);
        func_800601D4(32);
        arg0->func_ptr = &func_800F6D80_286EA0;
    }
}

void func_800F6E18_286F38(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7184 = CreateObject(6, &D_800F7100_287220);
    D_800F7184->coords.x = D_800F70D0.x;
    D_800F7184->coords.y = D_800F70D0.y;
    D_800F7184->coords.z = D_800F70D0.z;
    D_800F7184->zScale = 1.5f;
    D_800F7184->yScale = 1.5f;
    D_800F7184->xScale = 1.5f;
    D_800F7188 = CreateObject(0x80, NULL);
    D_800F7188->coords.x = D_800F70DC[0].x;
    D_800F7188->coords.y = 0.0f;
    D_800F7188->unk_30 = D_800F70DC[0].y;
    D_800F7188->coords.z = D_800F70DC[0].z;
    D_800F7190 = func_8005D384(0x1000, 0, 0, -1, &func_800F6C10_286D30);
    D_800F7190->unk_24 = -12.0f;
    D_800F7190->unk_28 = 0.0f;
    D_800F7190->unk_4C = 0;
    D_800F7188->unk_0A |= 1;
    D_800F718C = CreateObject(func_80052F04(D_800F7180), D_800F7158_287278[gPlayers[D_800F7180].characterID]);
    D_800F718C->coords.x = D_800F70F4.x;
    D_800F718C->coords.y = D_800F70F4.y;
    D_800F718C->coords.z = D_800F70F4.z;
    func_8004CCD0(&D_800F718C->coords, &D_800F7184->coords, &D_800F718C->unk_18);
    func_8004CCD0(&D_800F7184->coords, &D_800F718C->coords, &D_800F7184->unk_18);
}

void func_800F6FBC_2870DC(void) {
    func_8005D718(D_800F7190);
    DestroyObject(D_800F718C);
    DestroyObject(D_800F7184);
    DestroyObject(D_800F7188);
    func_8004F2EC();
}

void func_800F7008_287128(void) {
    func_800178A0(1);
    func_80017660(0U, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0U, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(10);
}

void func_800F70A8_2871C8(void) {
    func_8004A140();
    func_80049F0C();
}
