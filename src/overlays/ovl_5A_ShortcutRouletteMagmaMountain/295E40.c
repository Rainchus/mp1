#include "engine/process.h"
#include "295E40.h"

typedef struct unkStruct_ovl5A_0 {
    /* 0x00 */ u8 unk_00[4];
} unkStruct_ovl5A_0;

s32 D_800F7200_ShortcutRouletteMagmaMountain = 0;

Vec3f D_800F7204_ShortcutRouletteMagmaMountain = {0.0f, 0.0f, 840.0f};
Vec3f D_800F7210_ShortcutRouletteMagmaMountain = {80.0f, 0.0f, 1520.0f};
Vec3f D_800F721C_ShortcutRouletteMagmaMountain = {0.0f, 0.0f, 1250.0f};

s32 D_800F7228_ShortcutRouletteMagmaMountain[] =  {0x00000007, 0x00010003, 0x00010000, 0x000A008B, 0x00010018, 0x00010096, 0x00010039, 0x0001003F};
s32 D_800F7248_ShortcutRouletteMagmaMountain[] = {0x00000007, 0x00020003, 0x00020000, 0x000A008C, 0x00020018, 0x00020096, 0x00020039, 0x0002003F};
s32 D_800F7268_ShortcutRouletteMagmaMountain[] = {0x00000007, 0x00060003, 0x00060000, 0x000A008D, 0x00060018, 0x00060096, 0x00060039, 0x0006003F};
s32 D_800F7288_ShortcutRouletteMagmaMountain[] = {0x00000007, 0x00030003, 0x00030000, 0x000A008E, 0x00030018, 0x00030096, 0x00030039, 0x0003003F};
s32 D_800F72A8_ShortcutRouletteMagmaMountain[] = {0x00000007, 0x00040003, 0x00040000, 0x000A008F, 0x00040018, 0x00040096, 0x00040039, 0x0004003F};
s32 D_800F72C8_ShortcutRouletteMagmaMountain[] = {0x00000007, 0x00050003, 0x00050000, 0x000A0090, 0x00050018, 0x00050096, 0x00050039, 0x0005003F};
void* D_800F72E8_ShortcutRouletteMagmaMountain[] = {D_800F7228_ShortcutRouletteMagmaMountain, D_800F7248_ShortcutRouletteMagmaMountain, D_800F7268_ShortcutRouletteMagmaMountain, D_800F7288_ShortcutRouletteMagmaMountain, D_800F72A8_ShortcutRouletteMagmaMountain, D_800F72C8_ShortcutRouletteMagmaMountain};
unkStruct_ovl5A_0 D_800F7300_ShortcutRouletteMagmaMountain = {{0x01, 0x02, 0x04, 0x08}};

void func_800F65E0_ShortcutRouletteMagmaMountain(void) {
    D_800F7310_ShortcutRouletteMagmaMountain = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F711C_ShortcutRouletteMagmaMountain();
    func_800F6F5C_ShortcutRouletteMagmaMountain();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    omAddPrcObj(func_800F6898_ShortcutRouletteMagmaMountain, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6EFC_ShortcutRouletteMagmaMountain);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}

s32 func_800F66D8_ShortcutRouletteMagmaMountain(s32 arg0) {
    s16 sp18[4];
    s32 var_s3 = 0;
    unkStruct_ovl5A_0 sp20 = D_800F7300_ShortcutRouletteMagmaMountain;
    s32 i;
    
    for (i = 0; i < 4; i++) {
        if (i == D_800F7310_ShortcutRouletteMagmaMountain) {
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

void func_800F6898_ShortcutRouletteMagmaMountain(void) {
    s32 windowID;
    s32 temp_s0_2;
    s32 var_s1;
    s32 temp_s2;
    

    if (D_800C597A != 0) {
        HuPrcSleep(8);
    } else {
        func_800421E0();
        HuPrcSleep(0x10);
        PlaySound(0xE6);
        HuPrcSleep(10);
    }

    windowID = CreateTextWindow(0x50, 0x28, 0xD, 5);
    LoadStringIntoWindow(windowID, (void* )0x1F3, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    func_8004F4D4(D_800F7314_ShortcutRouletteMagmaMountain, 4, 0);
    
    while (func_8006FCC0(windowID)) {
        HuPrcVSleep();
    }
    
    temp_s0_2 = func_800F66D8_ShortcutRouletteMagmaMountain(windowID);
    HideTextWindow(windowID);
    
    if (temp_s0_2 == 0) {
        func_80055960(D_800F7310_ShortcutRouletteMagmaMountain, -0xA);
        HuPrcSleep(0x1E);
        func_80041048(D_800F7310_ShortcutRouletteMagmaMountain, 1);
        HuPrcSleep(0x14);
        func_8004F4D4(D_800F7314_ShortcutRouletteMagmaMountain, 0, 2);
        func_8004E3E0(0, &D_800F721C_ShortcutRouletteMagmaMountain, 0x14, D_800F7314_ShortcutRouletteMagmaMountain);
        HuPrcSleep(0x14);
        func_8004F4D4(D_800F7314_ShortcutRouletteMagmaMountain, 3, 0);
        func_8004F40C(D_800F7314_ShortcutRouletteMagmaMountain, 1, 2);
        func_8004EE14(0, D_800F32A0, 0xA, D_800F7314_ShortcutRouletteMagmaMountain);
        
        func_8004F9F4(D_800F7318_ShortcutRouletteMagmaMountain, D_800F7314_ShortcutRouletteMagmaMountain->coords.x, D_800F7314_ShortcutRouletteMagmaMountain->coords.y - 22.0f, D_800F7314_ShortcutRouletteMagmaMountain->coords.z + 50.0f, 1);
        HuPrcSleep(3);
        
        func_8004F9F4(D_800F7318_ShortcutRouletteMagmaMountain, (D_800F7314_ShortcutRouletteMagmaMountain->coords.x + 20.0f), (D_800F7314_ShortcutRouletteMagmaMountain->coords.y - 22.0f), (D_800F7314_ShortcutRouletteMagmaMountain->coords.z + 50.0f), 1);
        HuPrcSleep(3);
        func_8004F9F4(D_800F7318_ShortcutRouletteMagmaMountain, D_800F7314_ShortcutRouletteMagmaMountain->coords.x - 20.0f, D_800F7314_ShortcutRouletteMagmaMountain->coords.y - 22.0f, D_800F7314_ShortcutRouletteMagmaMountain->coords.z + 50.0f, 1);
        HuPrcSleep(4);
        var_s1 = 0;
        temp_s2 = 0;
        windowID = 0;
        
        while (var_s1 != 2) {
            switch (var_s1) {
            case 0:
                if (((gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].unk_06 & 1) && (temp_s2 >= 0xF)) || (!(gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].unk_06 & 1) && (D_800F5460[gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].flags] & 0x8000))) {
                    var_s1 = 1;
                    func_8003E81C(D_800F7314_ShortcutRouletteMagmaMountain, 2, 0);
                    func_8004F40C(D_800F7314_ShortcutRouletteMagmaMountain, 1, 2);
                }
                break;
            case 1:
                if (++windowID == 5) {
                    var_s1 = 2;
                    func_800413B0(D_800F7310_ShortcutRouletteMagmaMountain);
                }
                break;
            }
            temp_s2++;
            HuPrcVSleep();
        }

        HuPrcSleep(0x28);
        D_800ED100.boardRam[1] = func_80041604(D_800F7310_ShortcutRouletteMagmaMountain);

        if (!(D_800ED100.boardRam[1])) {
            windowID = CreateTextWindow(0x5A, 0x3C, 0xD, 3);
            LoadStringIntoWindow(windowID, (void* )0x1F5, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(0xE6);
            func_8004F4D4(D_800F7314_ShortcutRouletteMagmaMountain, 6, 0);
            func_80060468(0x44A, gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].characterID);
        } else {
            windowID = CreateTextWindow(0x60, 0x3C, 0xA, 2);
            LoadStringIntoWindow(windowID, (void* )0x1F4, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(0xE6);
            func_8004F4D4(D_800F7314_ShortcutRouletteMagmaMountain, 5, 0);
            func_80060468(0x451, gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].characterID);
        }
        func_8004DBD4(windowID, D_800F7310_ShortcutRouletteMagmaMountain);
        HideTextWindow(windowID);
        HuPrcSleep(0x14);
    } else if (temp_s0_2 == 1) {
        windowID = CreateTextWindow(0x50, 0x3C, 0xF, 2);
        LoadStringIntoWindow(windowID, (void* )0x1F6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0xE6);
        func_8004DBD4(windowID, D_800F7310_ShortcutRouletteMagmaMountain);
        HideTextWindow(windowID);
    } else {
        D_800F7200_ShortcutRouletteMagmaMountain = 1;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        HuPrcVSleep();
    }
}

void func_800F6E6C_ShortcutRouletteMagmaMountain(void) {
    if (func_80072718() == 0) {
        func_800F71D4_ShortcutRouletteMagmaMountain();
        func_800F70E8_ShortcutRouletteMagmaMountain();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7310_ShortcutRouletteMagmaMountain);

        if (D_800F7200_ShortcutRouletteMagmaMountain == 0) {
            omOvlReturnEx(1);
            return;
        }

        func_8004F284();
        func_8004F28C(0x5A, D_800F7200_ShortcutRouletteMagmaMountain);
    }
}

void func_800F6EFC_ShortcutRouletteMagmaMountain(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7200_ShortcutRouletteMagmaMountain != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F6E6C_ShortcutRouletteMagmaMountain;
    }
}

void func_800F6F5C_ShortcutRouletteMagmaMountain(void) {
    func_8003DAA8();
    func_80053020();
    func_8004F2AC();
    func_8004F8DC();
    D_800F7318_ShortcutRouletteMagmaMountain = func_8004F954(0x26, 0x20);
    D_800F7314_ShortcutRouletteMagmaMountain = CreateObject(func_80052F04(D_800F7310_ShortcutRouletteMagmaMountain), D_800F72E8_ShortcutRouletteMagmaMountain[gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].characterID]);
    VEC3F_COPY_TO_OBJ(D_800F7314_ShortcutRouletteMagmaMountain, D_800F7210_ShortcutRouletteMagmaMountain);
    func_80021B14(*D_800F7314_ShortcutRouletteMagmaMountain->unk_3C->unk_40, gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].characterID, 0x80);
    func_8004CCD0(&D_800F7314_ShortcutRouletteMagmaMountain->coords, &D_800F7204_ShortcutRouletteMagmaMountain, &D_800F7314_ShortcutRouletteMagmaMountain->unk_18);
    func_80052E84(D_800F7310_ShortcutRouletteMagmaMountain);
    func_8003E664(gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].playerObj);
    VEC3F_COPY_TO_OBJ(gPlayers[D_800F7310_ShortcutRouletteMagmaMountain].playerObj, D_800F721C_ShortcutRouletteMagmaMountain);
}

void func_800F70E8_ShortcutRouletteMagmaMountain(void) {
    DestroyObject(D_800F7314_ShortcutRouletteMagmaMountain);
    func_80052FD4(D_800F7310_ShortcutRouletteMagmaMountain);
    func_8004F2EC();
}

void func_800F711C_ShortcutRouletteMagmaMountain(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    if (D_800ED100.boardRam[0] == 1) {
        LoadBackgroundIndex(0x3E);
    } else {
        LoadBackgroundIndex(0x3D);
    }
}

void func_800F71D4_ShortcutRouletteMagmaMountain(void) {
    func_8004A140();
    func_80049F0C();
}
