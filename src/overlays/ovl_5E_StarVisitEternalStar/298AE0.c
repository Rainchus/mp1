#include "298AE0.h"

void func_80040780(u8);
void func_800415B0(u8, s32);
s8 func_800415E8(u8);
s32 func_8004D8A4(void);
void func_8004DBD4(s32, u8);
void func_80055994(u8, s32);
extern s32 D_800F3FF0;
extern u16 D_800F5460[];

Object* D_800F7DC0_StarVisitEternalStar = 0;
Object* D_800F7DC4_StarVisitEternalStar = 0;
s32 D_800F7DC8_StarVisitEternalStar = 0;
s32 D_800F7DCC_StarVisitEternalStar = 0;
s32 D_800F7DD0_StarVisitEternalStar = 0;

Vec3f D_800F7DD4_StarVisitEternalStar = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F7DE0_StarVisitEternalStar = {115.0f, 0.0f, 1520.0f};
Vec3f D_800F7DEC_StarVisitEternalStar = {0.0f, 0.0f, 1250.0f};

typedef struct unk_ovl5E_Struct0 {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
} unk_ovl5E_Struct0;

s32 D_800F7DF8_StarVisitEternalStar[] = {
    0x00000004, 0x000A00E7,
    0x000A00E8, 0x000A00E9,
    0x000A00EC
};

unk_ovl5E_Struct0 D_800F7E0C_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00010003,
    0x00010000, 0x000A008B,
    0x00010018, 0x0001000F,
    0x0001003F
    }
};

unk_ovl5E_Struct0 D_800F7E28_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00020003,
    0x00020000, 0x000A008C,
    0x00020018, 0x0002000F,
    0x0002003F
    }
};

unk_ovl5E_Struct0 D_800F7E44_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00060003,
    0x00060000, 0x000A008D,
    0x00060018, 0x0006000F,
    0x0006003F
    }
};

unk_ovl5E_Struct0 D_800F7E60_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00030003,
    0x00030000, 0x000A008E,
    0x00030018, 0x0003000F,
    0x0003003F
    }
};

unk_ovl5E_Struct0 D_800F7E7C_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00040003,
    0x00040000, 0x000A008F,
    0x00040018, 0x0004000F,
    0x0004003F
    }
};

unk_ovl5E_Struct0 D_800F7E98_StarVisitEternalStar[] = {
    {
    0x00000006, 0x00050003,
    0x00050000, 0x000A0090,
    0x00050018, 0x0005000F,
    0x0005003F
    }
};

unk_ovl5E_Struct0* D_800F7EB4_StarVisitEternalStar[] = {
    D_800F7E0C_StarVisitEternalStar,
    D_800F7E28_StarVisitEternalStar,
    D_800F7E44_StarVisitEternalStar,
    D_800F7E60_StarVisitEternalStar,
    D_800F7E7C_StarVisitEternalStar,
    D_800F7E98_StarVisitEternalStar
};

// const u8 D_800F7ED0_StarVisitEternalStar[4] = {1, 2, 4, 8};

void func_800F65E0_StarVisitEternalStar(void) {
    D_800F7F00_StarVisitEternalStar = D_800ED5DC;
    omInitObjMan(50, 50);
    func_800F7CF8_StarVisitEternalStar();
    func_800F7A90_StarVisitEternalStar();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    omAddPrcObj(func_800F76D4_StarVisitEternalStar, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F7A08_StarVisitEternalStar);
    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(2, 16);
    }
}

s32 func_800F66D8_StarVisitEternalStar(s32 arg0) {
    s16 sp18[4];
    s32 var_s3 = 0;
    u8 sp20[] = {1, 2, 4, 8};
    s32 i;
    
    for (i = 0; i < 4; i++) {
        if (i == D_800F7F00_StarVisitEternalStar) {
            if (gPlayers[i].unk_06 & 1) {
                var_s3 = 1;
                sp18[gPlayers[i].flags] = -0x8000;
            } else {
                func_8007155C(arg0, sp20[gPlayers[i].flags]);
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

void func_800F6898_StarVisitEternalStar(void) {
    Object* Obj;
    f32 temp_f20;
    s32 windowID;
    s32 var_s0;
    s32 var_s2;
    s32 temp_s1;
    s32 i;
    u8 array[2];
    Vec3f* vec;

    func_80040780(D_800F7F00_StarVisitEternalStar);
    func_800415CC(D_800F7F00_StarVisitEternalStar, (((rand8() & 0xFF) % 3) & 0xFF) + 8);
    HuPrcSleep(0x14);
    func_8004F4D4(D_800F7F08_StarVisitEternalStar, 0, 2);
    func_8004E3E0(0, &D_800F7DEC_StarVisitEternalStar, 0x14, D_800F7F08_StarVisitEternalStar);
    HuPrcSleep(0xF);
    func_8004F4D4(D_800F7F08_StarVisitEternalStar, 3, 0);
    func_8004F40C(D_800F7F08_StarVisitEternalStar, 1, 2);
    func_8004EE14(0, D_800F32A0, 0xA, D_800F7F08_StarVisitEternalStar);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(3);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x + 20.0f, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(3);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x - 20.0f, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(4);
    
    var_s0 = 0;
    var_s2 = 0;
    temp_s1 = 0;

    while (var_s0 != 2) {
        switch (var_s0) {
        case 0:
            if (((gPlayers[D_800F7F00_StarVisitEternalStar].unk_06 & 1) && (var_s2 >= 0xF)) || (!(gPlayers[D_800F7F00_StarVisitEternalStar].unk_06 & 1) && (D_800F5460[gPlayers[D_800F7F00_StarVisitEternalStar].flags] & 0x8000))) {
                var_s0 = 1;
                func_8003E81C(D_800F7F08_StarVisitEternalStar, 2, 0);
                func_8004F40C(D_800F7F08_StarVisitEternalStar, 1, 2);
            }
            break;
        case 1:
            if (++temp_s1 == 5) {
                var_s0 = 2;
                func_800413B0(D_800F7F00_StarVisitEternalStar);
            }
            break;
        }
        var_s2++;
        HuPrcVSleep();
    }
        
    HuPrcSleep(0x28);
    array[0] = func_800415E8(D_800F7F00_StarVisitEternalStar);
    func_800405DC(D_800F7F00_StarVisitEternalStar);
    func_8004F4D4(D_800F7F08_StarVisitEternalStar, 0, 2);
    func_8004E3E0(0, &D_800F7DE0_StarVisitEternalStar, 0x14, D_800F7F08_StarVisitEternalStar);
    HuPrcSleep(0xF);
    func_8004F4D4(D_800F7F08_StarVisitEternalStar, 3, 0);
    func_8004F40C(D_800F7F08_StarVisitEternalStar, 1, 2);
    func_8004EE14(0, &D_800F7DD4_StarVisitEternalStar, 0xA, D_800F7F08_StarVisitEternalStar);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(3);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x + 20.0f, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(3);
    func_8004F9F4(D_800F7F0C_StarVisitEternalStar, D_800F7F08_StarVisitEternalStar->coords.x - 20.0f, D_800F7F08_StarVisitEternalStar->coords.y - 22.0f, D_800F7F08_StarVisitEternalStar->coords.z + 50.0f, 1);
    HuPrcSleep(4);
    func_80040780(D_800F7F00_StarVisitEternalStar);
    
    while (1) {
        array[1] = rand8() % 10 + 1;
        if (array[1] == array[0]) {
            continue;
        } else {
            func_800415CC(D_800F7F00_StarVisitEternalStar, array[1]);
            break;
        }
    }
    
    HuPrcSleep(0x14);
    func_8004F4D4(D_800F7F04_StarVisitEternalStar, 3, 2);
    func_8004E3E0(0, &D_800F7DEC_StarVisitEternalStar, 0x14, D_800F7F04_StarVisitEternalStar);
    HuPrcSleep(0xF);
    func_8004F4D4(D_800F7F04_StarVisitEternalStar, -1, 2);
    func_8004EE14(0, D_800F32A0, 0xA, D_800F7F04_StarVisitEternalStar);
    HuPrcSleep(0xA);
    
    var_s2 = 0;
    temp_s1 = 0;
    var_s0 = 0;

    while (var_s0 != 2) {
        switch (var_s0) {
        case 0:
            if ((var_s2 >= 0xF)) {
                var_s0 = 1;
                func_8003E81C(D_800F7F04_StarVisitEternalStar, 0, 0);
                func_8004F40C(D_800F7F04_StarVisitEternalStar, -1, 2);
            }
            break;
        case 1:
            if (++temp_s1 == 5) {
                var_s0 = 2;
                func_800413B0(D_800F7F00_StarVisitEternalStar);
            }
            break;
        }
        var_s2++;
        HuPrcVSleep();
    }

    HuPrcSleep(0x28);
    array[1] = func_800415E8(D_800F7F00_StarVisitEternalStar);
    func_800405DC(D_800F7F00_StarVisitEternalStar);
    func_800415B0(D_800F7F00_StarVisitEternalStar, D_800F3FF0);
    func_8004F4D4(D_800F7F04_StarVisitEternalStar, 3, 2);
    func_8004EE14(0, &D_800F7DD4_StarVisitEternalStar, 0xA, D_800F7F04_StarVisitEternalStar);
    HuPrcSleep(0xA);
    func_8004E3E0(0, &D_800F7DD4_StarVisitEternalStar, 0x14, D_800F7F04_StarVisitEternalStar);
    HuPrcSleep(0xF);
    func_8004F4D4(D_800F7F04_StarVisitEternalStar, -1, 2);
    func_8004EE14(0, &D_800F7DE0_StarVisitEternalStar, 0xA, D_800F7F04_StarVisitEternalStar);
    HuPrcSleep(0xA);
    if (array[0] > array[1]) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0xE, 3);
        LoadStringIntoWindow(windowID, (void* )0x206, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7F04_StarVisitEternalStar, 2, 0);
        func_8004F504(D_800F7F04_StarVisitEternalStar);
        func_800500A4();
        PlaySound(0x44);
        PlaySound(0x6D);
        D_800F7DC0_StarVisitEternalStar = CreateObject(0x40U, NULL);
        func_800A0D00(&D_800F7DC0_StarVisitEternalStar->coords, D_800F7DD4_StarVisitEternalStar.x, D_800F7DD4_StarVisitEternalStar.y + 200.0f, D_800F7DD4_StarVisitEternalStar.z);
        func_800A0D00(&D_800F7DC0_StarVisitEternalStar->xScale, 0.5f, 0.5f, 0.5f);
        D_800F7DC4_StarVisitEternalStar = func_80042728(D_800F7DC0_StarVisitEternalStar, 0);
        
        for (i = 0; i < 0xB5; i += 5) {
            func_800A0D00(&D_800F7DC0_StarVisitEternalStar->coords, D_800F7DD4_StarVisitEternalStar.x + (((D_800F7DE0_StarVisitEternalStar.x - D_800F7DD4_StarVisitEternalStar.x) * i) / 180.0f), D_800F7DD4_StarVisitEternalStar.y + 200.0f + (sinf(i * 0.017453292519943295) * 100.0f), D_800F7DD4_StarVisitEternalStar.z + (((D_800F7DE0_StarVisitEternalStar.z - D_800F7DD4_StarVisitEternalStar.z) * i) / 180.0));
            Obj = D_800F7DC0_StarVisitEternalStar;
            Obj->unk_18.x = sinf((i * 0xA) * 0.017453292519943295);
            Obj = D_800F7DC0_StarVisitEternalStar;
            Obj->unk_18.z = cosf((i * 0xA) * 0.017453292519943295);
            HuPrcVSleep();
        }

        PlaySound(0x474);
        func_80055994(D_800F7F00_StarVisitEternalStar, 1);
        func_800503B0(D_800F7F00_StarVisitEternalStar, 4);
        DestroyObject(D_800F7DC0_StarVisitEternalStar);
        D_800F7DC0_StarVisitEternalStar = NULL;
        func_800427D4(D_800F7DC4_StarVisitEternalStar);
        D_800F7DC4_StarVisitEternalStar = NULL;
        func_80021CDC(*D_800F7F08_StarVisitEternalStar->unk_3C->unk_40, gPlayers[D_800F7F00_StarVisitEternalStar].characterID, 0x81);
        func_8004CCD0(&D_800F7F08_StarVisitEternalStar->coords, &D_800F32A0->coords, &D_800F7F08_StarVisitEternalStar->unk_18);
        func_8003E81C(D_800F7F08_StarVisitEternalStar, 4, 0U);
        gPlayers[D_800F7F00_StarVisitEternalStar].starAmount++;
        D_800F7DD0_StarVisitEternalStar = func_8004D8A4();
        HuPrcSleep(0x24);
        func_80060468(0x443, gPlayers[D_800F7F00_StarVisitEternalStar].characterID);
        HuPrcSleep(0x30);
        func_80050160();
        D_800F7DCC_StarVisitEternalStar = 1;
        return;
    }
    
    if (gPlayers[D_800F7F00_StarVisitEternalStar].starAmount == 0) {
        windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
        LoadStringIntoWindow(windowID, (void* )0x204, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7F04_StarVisitEternalStar, 1, 2);
    } else {
        windowID = CreateTextWindow(0x50, 0x3C, 0xB, 3);
        LoadStringIntoWindow(windowID, (void* )0x205, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
        HideTextWindow(windowID);
    }
    
    func_8004F4D4(D_800F7F08_StarVisitEternalStar, 5, 0);
    func_8004F504(D_800F7F08_StarVisitEternalStar);
    
    if (gPlayers[D_800F7F00_StarVisitEternalStar].starAmount != 0) {
        func_800500A4();
        PlaySound(0x44);
        PlaySound(0x6D);
        gPlayers[D_800F7F00_StarVisitEternalStar].starAmount--;
        func_800503B0((s32) D_800F7F00_StarVisitEternalStar, 6);
        D_800F7DC0_StarVisitEternalStar = CreateObject(0x40U, NULL);
        func_800A0D00(&D_800F7DC0_StarVisitEternalStar->coords, D_800F7DE0_StarVisitEternalStar.x, D_800F7DE0_StarVisitEternalStar.y + 200.0f, D_800F7DE0_StarVisitEternalStar.z);
        func_800A0D00(&D_800F7DC0_StarVisitEternalStar->xScale, 0.5f, 0.5f, 0.5f);
        D_800F7DC4_StarVisitEternalStar = func_80042728(D_800F7DC0_StarVisitEternalStar, 0);
        
        for (i = 0; i < 0xB5; i += 5) {
            func_800A0D00(&D_800F7DC0_StarVisitEternalStar->coords, D_800F7DE0_StarVisitEternalStar.x + (((D_800F7DD4_StarVisitEternalStar.x - D_800F7DE0_StarVisitEternalStar.x) * i) / 180.0f), (D_800F7DE0_StarVisitEternalStar.y + 200.0f) + (sinf(i * 0.017453292519943295) * 100.0f), D_800F7DE0_StarVisitEternalStar.z + (((D_800F7DD4_StarVisitEternalStar.z - D_800F7DE0_StarVisitEternalStar.z) * i) / 180.0));
            Obj = D_800F7DC0_StarVisitEternalStar;
            Obj->unk_18.x = sinf((i * 0xA * 0.017453292519943295));
            Obj = D_800F7DC0_StarVisitEternalStar;
            Obj->unk_18.z = cosf((i * 0xA * 0.017453292519943295));
            HuPrcVSleep();
        }
        
        PlaySound(0x474);
        func_80055994(D_800F7F00_StarVisitEternalStar, 2);
        DestroyObject(D_800F7DC0_StarVisitEternalStar);
        D_800F7DC0_StarVisitEternalStar = NULL;
        func_800427D4(D_800F7DC4_StarVisitEternalStar);
        D_800F7DC4_StarVisitEternalStar = NULL;
        func_8004F4D4(D_800F7F04_StarVisitEternalStar, 1, 0);
        func_8004F40C(D_800F7F04_StarVisitEternalStar, -1, 2);
        HuPrcSleep(0x24);
        HuPrcSleep(0x30);
        func_80050160();
    }
}


void func_800F76D4_StarVisitEternalStar(void) {
    s32 windowID;
    s32 temp_s0;

    if (D_800C597A == 0) {
        func_800421E0();
        HuPrcSleep(0x10);
        PlaySound(0xF0);
        HuPrcSleep(10);
    } else {
        HuPrcSleep(8);
    }
    
    if (gPlayers[D_800F7F00_StarVisitEternalStar].starAmount >= 99) {
        windowID = CreateTextWindow(0x78, 0x3C, 0xC, 4);
        LoadStringIntoWindow(windowID, (void*)0x207, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
        HideTextWindow(windowID);
    }
    else if (gPlayers[D_800F7F00_StarVisitEternalStar].coinAmount < 20) {
        windowID = CreateTextWindow(0x78, 0x28, 0xC, 6);
        LoadStringIntoWindow(windowID, (void*)0x200, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
        HideTextWindow(windowID);
    } else {
        windowID = CreateTextWindow(0x6E, 0x28, 0xC, 7);
        LoadStringIntoWindow(windowID, (void*)0x201, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        while ((func_8006FCC0(windowID)) != 0) {
            HuPrcVSleep();
        }
    
        temp_s0 = func_800F66D8_StarVisitEternalStar(windowID);
        HideTextWindow(windowID);
        
        if (temp_s0 == 2) {
            D_800F7DC8_StarVisitEternalStar = 1;
        } else if (temp_s0 == 1) {
            windowID = CreateTextWindow(0x78, 0x50, 9, 2);
            LoadStringIntoWindow(windowID, (void*)0x202, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
            HideTextWindow(windowID);
        } else {
            func_80055960(D_800F7F00_StarVisitEternalStar, -0x14);
            HuPrcSleep(0x1E);
            windowID = CreateTextWindow(0x32, 0x3C, 0x13, 3);
            LoadStringIntoWindow(windowID, (void*)0x203, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            func_8004DBD4(windowID, D_800F7F00_StarVisitEternalStar);
            HideTextWindow(windowID);
            func_800F6898_StarVisitEternalStar();
        }
    }
    
    D_800F5144 = 1;
    
    while (1) {
        HuPrcVSleep();
    }

}

void func_800F7978_StarVisitEternalStar(void) {
    if (func_80072718() == 0) {
        func_800F7D98_StarVisitEternalStar();
        func_800F7C88_StarVisitEternalStar();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7F00_StarVisitEternalStar);
        if (D_800F7DC8_StarVisitEternalStar == 0) {
            omOvlReturnEx(1);
            return;
        }
        func_8004F284();
        func_8004F28C(0x5E, D_800F7DC8_StarVisitEternalStar);
    }
}

void func_800F7A08_StarVisitEternalStar(omObjData* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7DC8_StarVisitEternalStar != 0) {
            func_800726AC(6, 8);
        } else {
            if (D_800F7DCC_StarVisitEternalStar != 0) {
                if (D_800F7DD0_StarVisitEternalStar == 1) {
                    func_800601D4(0x20);
                }
            }
            func_800726AC(2, 16);
        }
        arg0->func_ptr = &func_800F7978_StarVisitEternalStar;
    }
}

void func_800F7A90_StarVisitEternalStar(void) {
    func_8003DAA8();
    func_8004F2AC();
    func_8004F8DC();
    D_800F7F0C_StarVisitEternalStar = func_8004F954(0x26, 0x20);
    D_800F7F04_StarVisitEternalStar = CreateObject(0x78, &D_800F7DF8_StarVisitEternalStar);
    D_800F7F04_StarVisitEternalStar->coords.x = D_800F7DD4_StarVisitEternalStar.x;
    D_800F7F04_StarVisitEternalStar->coords.y = D_800F7DD4_StarVisitEternalStar.y;
    D_800F7F04_StarVisitEternalStar->coords.z = D_800F7DD4_StarVisitEternalStar.z;
    D_800F7F04_StarVisitEternalStar->xScale = D_800F7F04_StarVisitEternalStar->yScale = D_800F7F04_StarVisitEternalStar->zScale = 1.5f;
    D_800F7F08_StarVisitEternalStar = CreateObject(func_80052F04(D_800F7F00_StarVisitEternalStar), D_800F7EB4_StarVisitEternalStar[gPlayers[D_800F7F00_StarVisitEternalStar].characterID]);
    D_800F7F08_StarVisitEternalStar->coords.x = D_800F7DE0_StarVisitEternalStar.x;
    D_800F7F08_StarVisitEternalStar->coords.y = D_800F7DE0_StarVisitEternalStar.y;
    D_800F7F08_StarVisitEternalStar->coords.z = D_800F7DE0_StarVisitEternalStar.z;
    func_80021B14(*D_800F7F08_StarVisitEternalStar->unk_3C->unk_40, gPlayers[D_800F7F00_StarVisitEternalStar].characterID, 0x80);
    func_8004CCD0(&D_800F7F08_StarVisitEternalStar->coords, &D_800F7F04_StarVisitEternalStar->coords, &D_800F7F08_StarVisitEternalStar->unk_18);
    func_8004CCD0(&D_800F7F04_StarVisitEternalStar->coords, &D_800F7F08_StarVisitEternalStar->coords, &D_800F7F04_StarVisitEternalStar->unk_18);
    func_80052E84(D_800F7F00_StarVisitEternalStar);
    func_8003E664(gPlayers[D_800F7F00_StarVisitEternalStar].playerObj);
    (gPlayers[D_800F7F00_StarVisitEternalStar].playerObj)->coords.x = D_800F7DEC_StarVisitEternalStar.x;
    (gPlayers[D_800F7F00_StarVisitEternalStar].playerObj)->coords.y = D_800F7DEC_StarVisitEternalStar.y;
    (gPlayers[D_800F7F00_StarVisitEternalStar].playerObj)->coords.z = D_800F7DEC_StarVisitEternalStar.z;
}

void func_800F7C88_StarVisitEternalStar(void) {
    DestroyObject(D_800F7F08_StarVisitEternalStar);
    DestroyObject(D_800F7F04_StarVisitEternalStar);
    
    if (D_800F7DC0_StarVisitEternalStar != NULL) {
        DestroyObject(D_800F7DC0_StarVisitEternalStar);
    }
    if (D_800F7DC4_StarVisitEternalStar != NULL) {
        func_800427D4(D_800F7DC4_StarVisitEternalStar);
    }
    
    func_80052FD4(D_800F7F00_StarVisitEternalStar);
    func_8004F2EC();
}

void func_800F7CF8_StarVisitEternalStar(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(0x47);
}

void func_800F7D98_StarVisitEternalStar(void) {
    func_8004A140();
    func_80049F0C();
}
