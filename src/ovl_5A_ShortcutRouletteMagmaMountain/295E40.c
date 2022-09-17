#include "common.h"
#include "295E40.h"

typedef struct unkStruct_ovl5A_0 {
    /* 0x00 */ u8 unk_00[4];
} unkStruct_ovl5A_0;

s32 D_800F7200_296A60 = 0;

Vec3f D_800F7204_296A64 = {0.0f, 0.0f, 840.0f};
Vec3f D_800F7210_296A70 = {80.0f, 0.0f, 1520.0f};
Vec3f D_800F721C_296A7C = {0.0f, 0.0f, 1250.0f};

s32 D_800F7228_296A88[] =  {0x00000007, 0x00010003, 0x00010000, 0x000A008B, 0x00010018, 0x00010096, 0x00010039, 0x0001003F};
s32 D_800F7248_296AA8[] = {0x00000007, 0x00020003, 0x00020000, 0x000A008C, 0x00020018, 0x00020096, 0x00020039, 0x0002003F};
s32 D_800F7268_296AC8[] = {0x00000007, 0x00060003, 0x00060000, 0x000A008D, 0x00060018, 0x00060096, 0x00060039, 0x0006003F};
s32 D_800F7288_296AE8[] = {0x00000007, 0x00030003, 0x00030000, 0x000A008E, 0x00030018, 0x00030096, 0x00030039, 0x0003003F};
s32 D_800F72A8_296B08[] = {0x00000007, 0x00040003, 0x00040000, 0x000A008F, 0x00040018, 0x00040096, 0x00040039, 0x0004003F};
s32 D_800F72C8_296B28[] = {0x00000007, 0x00050003, 0x00050000, 0x000A0090, 0x00050018, 0x00050096, 0x00050039, 0x0005003F};
void* D_800F72E8_296B48[] = {D_800F7228_296A88, D_800F7248_296AA8, D_800F7268_296AC8, D_800F7288_296AE8, D_800F72A8_296B08, D_800F72C8_296B28};
unkStruct_ovl5A_0 D_800F7300_296B60 = {{0x01, 0x02, 0x04, 0x08}};

void func_800F65E0_295E40(void) {
    D_800F7310 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F711C_29697C();
    func_800F6F5C_2967BC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    InitProcess(func_800F6898_2960F8, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6EFC_29675C);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

s32 func_800F66D8_295F38(s32 arg0) {
    s16 sp18[4];
    s32 var_s3 = 0;
    unkStruct_ovl5A_0 sp20 = D_800F7300_296B60;
    s32 i;
    
    for (i = 0; i < 4; i++) {
        if (i == D_800F7310) {
            if (gPlayers[i].unk_06 & 1) {
                var_s3 = 1;
                sp18[gPlayers[i].flags] = -0x8000;
            } else {
                func_8007155C(arg0, sp20.unk_00[gPlayers[i].flags]);
                sp18[gPlayers[i].flags] = -1;
            }
        } else {
            sp18[gPlayers[i].flags] = -0;
        }
    }
    
    if (var_s3 != 0) {
        func_8006DA1C(arg0, 2, 2);
        func_80070FF8(sp18[0], sp18[1], sp18[2], sp18[3], func_8004DBBC());
    } else {
        func_800710A4(sp18[0], sp18[1], sp18[2], sp18[3]);
    }
    
    return func_8006FCF0(arg0, 0, 1);
}

void func_800F6898_2960F8(void) { //fix me: remove goto
    s32 windowID;
    s32 temp_s0_2;
    s32 var_s1;
    s32 temp_s2;
    

    if (D_800C597A != 0) {
        SleepProcess(8);
    } else {
        func_800421E0();
        SleepProcess(0x10);
        PlaySound(0xE6);
        SleepProcess(10);
    }

    windowID = CreateTextWindow(0x50, 0x28, 0xD, 5);
    LoadStringIntoWindow(windowID, (void* )0x1F3, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    func_8004F4D4(D_800F7314, 4, 0);
    
    while (func_8006FCC0(windowID)) {
        SleepVProcess();
    }
    
    temp_s0_2 = func_800F66D8_295F38(windowID);
    HideTextWindow(windowID);
    if (temp_s0_2 == 0) {
        func_80055960(D_800F7310, -0xA);
        SleepProcess(0x1E);
        func_80041048(D_800F7310, 1);
        SleepProcess(0x14);
        func_8004F4D4(D_800F7314, 0, 2);
        func_8004E3E0(0, &D_800F721C_296A7C, 0x14, D_800F7314);
        SleepProcess(0x14);
        func_8004F4D4(D_800F7314, 3, 0);
        func_8004F40C(D_800F7314, 1, 2);
        func_8004EE14(0, D_800F32A0, 0xA, D_800F7314);
        
        func_8004F9F4(D_800F7318, D_800F7314->coords.x, D_800F7314->coords.y - 22.0f, D_800F7314->coords.z + 50.0f, 1);
        SleepProcess(3);
        
        func_8004F9F4(D_800F7318, (D_800F7314->coords.x + 20.0f), (D_800F7314->coords.y - 22.0f), (D_800F7314->coords.z + 50.0f), 1);
        SleepProcess(3);
        func_8004F9F4(D_800F7318, D_800F7314->coords.x - 20.0f, D_800F7314->coords.y - 22.0f, D_800F7314->coords.z + 50.0f, 1);
        SleepProcess(4);
        var_s1 = 0;
        temp_s2 = 0;
        windowID = 0;
        
        //very hard block of code to match. cant seem to remove the goto
        do {
            switch (var_s1) {
            case 0:
                if ((gPlayers[D_800F7310].unk_06 & 1)) {
                    if(temp_s2 >= 0xF) {
                        goto label;
                    }
                    break;
                } else if (!(D_800F5460[gPlayers[D_800F7310].flags] & 0x8000)) {
                    break;
                } else {
                    label:
                    var_s1 = 1;
                }
                func_8003E81C(D_800F7314, 2, 0);
                func_8004F40C(D_800F7314, 1, 2);   
                break;
            case 1:
                if (++windowID == 5) {
                    var_s1 = 2;
                    func_800413B0(D_800F7310);
                }
                break;
            }
            temp_s2++;
            SleepVProcess();
        } while (var_s1 != 2);

        SleepProcess(0x28);
        D_800ED154.unk_02 = func_80041604(D_800F7310);
        if (!(D_800ED154.unk_02)) {
            windowID = CreateTextWindow(0x5A, 0x3C, 0xD, 3);
            LoadStringIntoWindow(windowID, (void* )0x1F5, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(0xE6);
            func_8004F4D4(D_800F7314, 6, 0);
            func_80060468(0x44A, gPlayers[D_800F7310].characterID);
        } else {
            windowID = CreateTextWindow(0x60, 0x3C, 0xA, 2);
            LoadStringIntoWindow(windowID, (void* )0x1F4, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(0xE6);
            func_8004F4D4(D_800F7314, 5, 0);
            func_80060468(0x451, gPlayers[D_800F7310].characterID);
        }
        func_8004DBD4(windowID, D_800F7310);
        HideTextWindow(windowID);
        SleepProcess(0x14);
    } else if (temp_s0_2 == 1) {
        windowID = CreateTextWindow(0x50, 0x3C, 0xF, 2);
        LoadStringIntoWindow(windowID, (void* )0x1F6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0xE6);
        func_8004DBD4(windowID, D_800F7310);
        HideTextWindow(windowID);
    } else {
        D_800F7200_296A60 = 1;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        SleepVProcess();
    }
}

void func_800F6E6C_2966CC(void) {
    if (func_80072718() == 0) {
        func_800F71D4_296A34();
        func_800F70E8_296948();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7310);

        if (D_800F7200_296A60 == 0) {
            func_8005DFB8(1);
            return;
        }

        func_8004F284();
        func_8004F28C(0x5A, D_800F7200_296A60);
    }
}

void func_800F6EFC_29675C(Object* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7200_296A60 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F6E6C_2966CC;
    }
}

void func_800F6F5C_2967BC(void) {
    func_8003DAA8();
    func_80053020();
    func_8004F2AC();
    func_8004F8DC();
    D_800F7318 = func_8004F954(0x26, 0x20);
    D_800F7314 = CreateObject(func_80052F04(D_800F7310), D_800F72E8_296B48[gPlayers[D_800F7310].characterID]);
    VEC3F_COPY_TO_OBJ(D_800F7314, D_800F7210_296A70);
    func_80021B14(*D_800F7314->unk_3C->unk_40, gPlayers[D_800F7310].characterID, 0x80);
    func_8004CCD0(&D_800F7314->coords, &D_800F7204_296A64, &D_800F7314->unk_18);
    func_80052E84(D_800F7310);
    func_8003E664(gPlayers[D_800F7310].playerObj);
    VEC3F_COPY_TO_OBJ(gPlayers[D_800F7310].playerObj, D_800F721C_296A7C);
}

void func_800F70E8_296948(void) {
    func_8003E694(D_800F7314);
    func_80052FD4(D_800F7310);
    func_8004F2EC();
}

void func_800F711C_29697C(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    if (D_800ED154.unk_00 == 1) {
        LoadBackgroundIndex(0x3E);
    } else {
        LoadBackgroundIndex(0x3D);
    }
}

void func_800F71D4_296A34(void) {
    func_8004A140();
    func_80049F0C();
}
