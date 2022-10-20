#include "common.h"
#include "2908F0.h"

Vec3f D_800F6F70_291280 = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F6F7C_29128C = {115.0f, 0.0f, 1520.0f};
Vec3f D_800F6F88_291298 = {500.0f, 0.0f, 1520.0f};
Vec3f D_800F6F94_2912A8 = {345.0f, 0.0f, 1920.0f};

s32 D_800F6FA0_2912B0[] = {0x00000004, 0x00010000, 0x00010001, 0x00010049, 0x0001003E};
s32 D_800F6FB4_2912C4[] = {0x00000004, 0x00020000, 0x00020001, 0x00020049, 0x0002003E};
s32 D_800F6FC8_2912D8[] = {0x00000004, 0x00060000, 0x00060001, 0x00060049, 0x0006003E};
s32 D_800F6FDC_2912EC[] = {0x00000004, 0x00030000, 0x00030001, 0x00030049, 0x0003003E};
s32 D_800F6FF0_291300[] = {0x00000004, 0x00040000, 0x00040001, 0x00040049, 0x0004003E};
s32 D_800F7004_291314[] = {0x00000004, 0x00050000, 0x00050001, 0x00050049, 0x0005003E};
s32* D_800F7018_291328[] = {D_800F6FA0_2912B0, D_800F6FB4_2912C4, D_800F6FC8_2912D8, D_800F6FDC_2912EC, D_800F6FF0_291300, D_800F7004_291314};
s32 D_800F7030_291340[] = {0x00000003, 0x000A0068, 0x000A006B, 0x000A006A};

//bss
extern u8 D_800F7050;
extern Object* D_800F7054;
extern Object* D_800F7058;
extern s32 D_800F705C;

void func_800F65E0_2908F0(void) {
    D_800F7050 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F6EA0_2911B0();
    func_800F6CE8_290FF8();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66BC_2909CC, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6C9C_290FAC);
    func_80060128(18);
    SetFadeInTypeAndTime(3, 16);
}

void func_800F66BC_2909CC(void) {
    char sp18[8];
    s32 temp_s1;
    s32 i;

    SleepProcess(16);
    PlaySound(0x46A);
    SleepProcess(10);
    if (gPlayers[D_800F7050].coinAmount == 0) {
        temp_s1 = CreateTextWindow(60, 40, 17, 4);
        LoadStringIntoWindow(temp_s1, (void* )0x1D1, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7050);
        HideTextWindow(temp_s1);
    } else if (gPlayers[D_800F7050].coinAmount < 20) {
        temp_s1 = CreateTextWindow(60, 40, 17, 4);
        sprintf(&sp18, "%d", gPlayers[D_800F7050].coinAmount);
        func_8006DA5C(temp_s1, &sp18, 0);
        LoadStringIntoWindow(temp_s1, (void* )0x1D0, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7050);
        HideTextWindow(temp_s1);
        func_8004F4D4(D_800F7058, 3, 0);
        func_80055960(D_800F7050, -gPlayers[D_800F7050].coinAmount);
        func_800503B0(D_800F7050, 5);
        SleepProcess(30);
    } else {
        temp_s1 = CreateTextWindow(60, 40, 17, 4);
        LoadStringIntoWindow(temp_s1, (void* )0x1CF, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        func_8004DBD4(temp_s1, D_800F7050);
        HideTextWindow(temp_s1);
        func_8004F4D4(D_800F7058, 3, 0);
        func_80055960(D_800F7050, -20);
        func_800503B0(D_800F7050, 5);
        SleepProcess(30);
    }
    
    temp_s1 = CreateTextWindow(60, 60, 18, 2);
    LoadStringIntoWindow(temp_s1, (void* )0x1D2, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F7050);
    HideTextWindow(temp_s1);
    func_8004F4D4(D_800F7058, 1, 0);
    func_8004EE14(0, &D_800F6F94_2912A8, 0x14, D_800F7058);
    SleepProcess(0x14);
    func_8004F4D4(D_800F7058, 0, 2);
    temp_s1 = CreateTextWindow(80, 60, 16, 2);
    LoadStringIntoWindow(temp_s1, (void* )0x1D3, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F7050);
    HideTextWindow(temp_s1);
    func_8004F4D4(D_800F7054, 1, 0);
    func_8004F40C(D_800F7054, 2, 2);
    SleepProcess(15);
    PlaySound(0x6C);
    SleepProcess(5);
    PlaySound(0xD0);
    func_80060468(0x45F, gPlayers[D_800F7050].characterID);
    func_800503B0(D_800F7050, 6);
    func_8004E3E0(0, &D_800F6F88_291298, 0x14, D_800F7058);
    func_8004F00C(D_800F7058, 20.0f, -0.05f);
    func_8003E81C(D_800F7058, 2, 2);

    for (i = 0; i < 10; i++) {
        if ((gPlayers[D_800F7050].characterID == 2) | (gPlayers[D_800F7050].characterID == 0)) {
            func_8004F9F4(D_800F705C, D_800F7058->coords.x, (D_800F7058->coords.y + D_800F7058->unk_30) - 50.0f, D_800F7058->coords.z, 1);
        } else {
            func_8004F9F4(D_800F705C, D_800F7058->coords.x, (D_800F7058->coords.y + D_800F7058->unk_30), D_800F7058->coords.z, 1);
        }
        SleepProcess(1);
    }

    SleepProcess(10);
    temp_s1 = CreateTextWindow(60, 60, 17, 2);
    LoadStringIntoWindow(temp_s1, (void* )0x1D4, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F7050);
    PlaySound(0x469);
    HideTextWindow(temp_s1);
    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
    
}

void func_800F6C50_290F60(void) {
    if (func_80072718() == 0) {
        func_800F6F40_291250();
        func_800F6E6C_29117C();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6C9C_290FAC(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 16);
        func_800601D4(32);
        arg0->func_ptr = &func_800F6C50_290F60;
    }
}

void func_800F6CE8_290FF8(void) {
    func_8003DAA8();
    func_8004F2AC();
    func_8004F8DC();
    D_800F705C = func_8004F954(0x26, 0x10);
    func_8004FA90(D_800F705C, 2.0f, 2.0f, 2.0f);
    D_800F7054 = CreateObject(6, D_800F7030_291340);
    VEC3F_COPY_TO_OBJ(D_800F7054, D_800F6F70_291280);
    D_800F7054->xScale = D_800F7054->yScale = D_800F7054->zScale = 1.5f;
    D_800F7058 = CreateObject(func_80052F04(D_800F7050), D_800F7018_291328[gPlayers[D_800F7050].characterID]);
    VEC3F_COPY_TO_OBJ(D_800F7058, D_800F6F7C_29128C);
    func_80021B14(*D_800F7058->unk_3C->unk_40, gPlayers[D_800F7050].characterID, 0x80);
    func_8004CCD0(&D_800F7058->coords, &D_800F7054->coords, &D_800F7058->unk_18);
    func_8004CCD0(&D_800F7054->coords, &D_800F7058->coords, &D_800F7054->unk_18);
}

void func_800F6E6C_29117C(void) {
    DestroyObject(D_800F7058);
    DestroyObject(D_800F7054);
    func_8004F2EC();
}

void func_800F6EA0_2911B0(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(30);
}

void func_800F6F40_291250(void) {
    func_8004A140();
    func_80049F0C();
}

