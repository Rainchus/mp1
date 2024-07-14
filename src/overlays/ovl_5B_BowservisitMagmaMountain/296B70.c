#include "engine/process.h"
#include "296B70.h"

Object* D_800F7590_BowservisitMagmaMountain = NULL;
s32 D_800F7594_BowservisitMagmaMountain = -1;
s32 D_800F7598_BowservisitMagmaMountain = -1;
void* D_800F759C_BowservisitMagmaMountain = NULL;
Vec3f D_800F75A0_BowservisitMagmaMountain = {0.0f, 0.0f, 840.0f};
Vec3f D_800F75AC_BowservisitMagmaMountain = {0.0f, 0.0f, 1250.0f};
Vec3f D_800F75B8_BowservisitMagmaMountain = {80.0f, 0.0f, 1520.0f};
s32 D_800F75C4_BowservisitMagmaMountain[] = {0x00000004, 0x000A006A, 0x000A006C, 0x000A006B, 0x000A0068};
s32 D_800F75D8_BowservisitMagmaMountain[] = {0x00000002, 0x0001000A, 0x0001003E};
s32 D_800F75E4_BowservisitMagmaMountain[] = {0x00000002, 0x0002000A, 0x0002003E};
s32 D_800F75F0_BowservisitMagmaMountain[] = {0x00000002, 0x0006000A, 0x0006003E};
s32 D_800F75FC_BowservisitMagmaMountain[] = {0x00000002, 0x0003000A, 0x0003003E};
s32 D_800F7608_BowservisitMagmaMountain[] = {0x00000002, 0x0004000A, 0x0004003E};
s32 D_800F7614_BowservisitMagmaMountain[] = {0x00000002, 0x0005000A, 0x0005003E};
s32* D_800F7620_BowservisitMagmaMountain[] = {D_800F75D8_BowservisitMagmaMountain, D_800F75E4_BowservisitMagmaMountain, D_800F75F0_BowservisitMagmaMountain, D_800F75FC_BowservisitMagmaMountain, D_800F7608_BowservisitMagmaMountain, D_800F7614_BowservisitMagmaMountain};

void func_800F65E0_BowservisitMagmaMountain(void) {
    D_800F7650_BowservisitMagmaMountain = D_800ED5DC;
    omInitObjMan(0x32, 0x32);
    func_800F74C0_BowservisitMagmaMountain();
    func_800F7120_BowservisitMagmaMountain();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    omAddPrcObj(func_800F66C4_BowservisitMagmaMountain, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F70D4_BowservisitMagmaMountain);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66C4_BowservisitMagmaMountain(void) { //fix me: remove gotos
    char sp10;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 var_f22;
    f32 var_f24;
    s32 var_s2;
    s32 var_s1_3;
    Object* temp_s0_4;
    unk_Struct04* tempStruct04;
    s32 windowID;
    s32 tempVar;
    s32 tempVar2;
    s32 temp_s2;

    HuPrcSleep(0x10);
    PlaySound(0x46A);
    HuPrcSleep(0xA);

    if (gPlayers[D_800F7650_BowservisitMagmaMountain].starAmount != 0 && gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x12, 3);
        LoadStringIntoWindow(windowID, (void* )0x1EE, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
        HideTextWindow(windowID);
        labelTest:
        func_8004F4D4(D_800F7658_BowservisitMagmaMountain, 2, 0);
        HuPrcSleep(15);
        PlaySound(0x6C);
        HuPrcSleep(5);
        func_8003E81C(D_800F765C_BowservisitMagmaMountain, 0, 0);
        D_800F7598_BowservisitMagmaMountain = LoadFormFile(0x1E, 0x6B9);
        var_s1_3 = 0;
        func_80025798(D_800F7598_BowservisitMagmaMountain, D_800F765C_BowservisitMagmaMountain->coords.x, D_800F765C_BowservisitMagmaMountain->coords.y, D_800F765C_BowservisitMagmaMountain->coords.z);
        func_80025830(D_800F7598_BowservisitMagmaMountain, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F7650_BowservisitMagmaMountain, 2);
        gPlayers[D_800F7650_BowservisitMagmaMountain].starAmount--;
        func_800503B0(D_800F7650_BowservisitMagmaMountain, 6);
        func_80060618(0x44A, D_800F7650_BowservisitMagmaMountain);
        PlaySound(0x79);
        D_800F7590_BowservisitMagmaMountain = CreateObject(0x25, 0);
        D_800F7590_BowservisitMagmaMountain->coords.x = D_800F75B8_BowservisitMagmaMountain.x;
        D_800F7590_BowservisitMagmaMountain->coords.y = D_800F75B8_BowservisitMagmaMountain.y + 200.0f;
        D_800F7590_BowservisitMagmaMountain->coords.z = D_800F75B8_BowservisitMagmaMountain.z;
        tempStruct04 = D_800F7590_BowservisitMagmaMountain->unk_3C;
        tempStruct04->unk_24 = 90.0f;
        D_800F7590_BowservisitMagmaMountain->xScale = D_800F7590_BowservisitMagmaMountain->yScale = D_800F7590_BowservisitMagmaMountain->zScale = 0.5f;
        D_800F759C_BowservisitMagmaMountain = func_80042728(D_800F7590_BowservisitMagmaMountain, 0);
            var_f24 = 0.0f;
            var_f22 = 7.0f;
            do {
                temp_s0_4 = D_800F7590_BowservisitMagmaMountain;
                temp_s0_4->coords.y = D_800F75B8_BowservisitMagmaMountain.y + 200.0f + (f32) (var_s1_3 / 2);
                temp_f20 = var_s1_3 * 5 * 0.017453292519943295;
                temp_s0_4->coords.x = (sinf(temp_f20) * var_f22) + D_800F75B8_BowservisitMagmaMountain.x;
                temp_s0_4 = D_800F7590_BowservisitMagmaMountain;
                temp_s0_4->coords.z = (cosf(temp_f20) * var_f22) + D_800F75B8_BowservisitMagmaMountain.z;
                temp_s0_4 = D_800F7590_BowservisitMagmaMountain;
                temp_f20_2 = var_f24 * 0.017453292519943295;
                temp_s0_4->unk_18.x = sinf(temp_f20_2);
                temp_s0_4 = D_800F7590_BowservisitMagmaMountain;
                temp_s0_4->unk_18.z = cosf(temp_f20_2);
                HuPrcVSleep();
                if (var_s1_3 == 0x4B) {
                    func_8003E81C(D_800F7658_BowservisitMagmaMountain, 0, 0);
                    func_8004F40C(D_800F7658_BowservisitMagmaMountain, 3, 2);
                    PlaySound(0x9E);
                    D_800F7594_BowservisitMagmaMountain = LoadFormFile(0x1D, 0x6B9);
                    func_80025798(D_800F7594_BowservisitMagmaMountain, D_800F765C_BowservisitMagmaMountain->coords.x, D_800F765C_BowservisitMagmaMountain->coords.y, D_800F765C_BowservisitMagmaMountain->coords.z);
                }
                var_s1_3 += 5;
                var_f24 += 10.0f;
                var_f22 += 0.0f;
            } while (var_s1_3 < 0x15F);
            DestroyObject(D_800F7590_BowservisitMagmaMountain);
            D_800F7590_BowservisitMagmaMountain = NULL;
            func_800427D4(D_800F759C_BowservisitMagmaMountain);
            D_800F759C_BowservisitMagmaMountain = NULL;
    }

    else if (gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount != 0 && gPlayers[D_800F7650_BowservisitMagmaMountain].starAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x12, 3);
        if (!(gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount < 0x14)) {
            var_s2 = 0x14;
        } else {
            var_s2 = gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount;
        }
        sprintf(&sp10, "%d", var_s2);
        func_8006DA5C(windowID, &sp10, 0);
        LoadStringIntoWindow(windowID, (void* )0x1E6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
        HideTextWindow(windowID);
        labelTemp2:
        func_8003E81C(D_800F7658_BowservisitMagmaMountain, 0, 0);
        func_8004F40C(D_800F7658_BowservisitMagmaMountain, 3, 2);
        func_8004F4D4(D_800F765C_BowservisitMagmaMountain, 1, 0);
        func_80055960(D_800F7650_BowservisitMagmaMountain, -var_s2);
        func_800503B0(D_800F7650_BowservisitMagmaMountain, 5);
        func_80060618(0x44A, D_800F7650_BowservisitMagmaMountain);
        HuPrcSleep(0x1E);
    }

    else if (gPlayers[D_800F7650_BowservisitMagmaMountain].starAmount == 0 && gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x11, 3);
        LoadStringIntoWindow(windowID, (void*)0x1EA, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        goto label3;
    } else {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        LoadStringIntoWindow(windowID, (void*)0x1E7, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
        HideTextWindow(windowID);
        func_800410E8(D_800F7650_BowservisitMagmaMountain);
        temp_s2 = 0;
        tempVar2 = 0;
        tempVar = 0;
        while (tempVar != 2) {
            switch (tempVar) {
            case 0:
                if (((gPlayers[D_800F7650_BowservisitMagmaMountain].unk_06 & 1) && (temp_s2 >= 0xF)) || (!(gPlayers[D_800F7650_BowservisitMagmaMountain].unk_06 & 1) && (D_800F5460[gPlayers[D_800F7650_BowservisitMagmaMountain].flags] & 0x8000))) {
                    tempVar = 1;
                    func_8004F4D4(D_800F7658_BowservisitMagmaMountain, 1, 0);
                    func_8004F40C(D_800F7658_BowservisitMagmaMountain, 3, 2); 
                }
                break;
            case 1:
                if (++tempVar2 == 20) {
                    tempVar = 2;
                    func_800413B0(D_800F7650_BowservisitMagmaMountain);
                }
                break;
            }
            temp_s2++;
            HuPrcVSleep();
        }

        HuPrcSleep(0x1E);

        if (func_80041624(D_800F7650_BowservisitMagmaMountain) == 0) {
            windowID = CreateTextWindow(0x46, 0x41, 0xE, 2);
            if (!(gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount < 0x14)) {
                var_s2 = 0x14;
            } else {
                var_s2 = gPlayers[D_800F7650_BowservisitMagmaMountain].coinAmount;
            }

            sprintf(&sp10, "%d", var_s2);
            func_8006DA5C(windowID, &sp10, 0);
            LoadStringIntoWindow(windowID, (void* )0x1E9, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
            HideTextWindow(windowID);
            func_800405DC(D_800F7650_BowservisitMagmaMountain);
            goto labelTemp2;
        }
        windowID = CreateTextWindow(0x50, 0x41, 0x0D, 2);
        LoadStringIntoWindow(windowID, (void*)0x1E8, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
        HideTextWindow(windowID);
        func_800405DC(D_800F7650_BowservisitMagmaMountain);
        goto labelTest;
    }
    windowID = CreateTextWindow(0x50, 0x3C, 0xF, 3);
    LoadStringIntoWindow(windowID, (void* )0x1EF, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x469);
    label3:
    func_8004DBD4(windowID, D_800F7650_BowservisitMagmaMountain);
    HideTextWindow(windowID);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();
    }
}

void func_800F7074_BowservisitMagmaMountain(void) {
    if (func_80072718() == 0) {
        func_800F7560_BowservisitMagmaMountain();
        func_800F7404_BowservisitMagmaMountain();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7650_BowservisitMagmaMountain);
        omOvlReturnEx(1);
    }
}

void func_800F70D4_BowservisitMagmaMountain(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F7074_BowservisitMagmaMountain;
    }
}

void func_800F7120_BowservisitMagmaMountain(void) {
    Object* temp_s0;
    Object* temp_s0_2;

    func_8003DAA8();
    func_8004F2AC();
    D_800F7654_BowservisitMagmaMountain = CreateObject(0x76U, NULL);
    func_80025B34(*D_800F7654_BowservisitMagmaMountain->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F7654_BowservisitMagmaMountain, D_800F75A0_BowservisitMagmaMountain);
    D_800F7654_BowservisitMagmaMountain->xScale = D_800F7654_BowservisitMagmaMountain->yScale = D_800F7654_BowservisitMagmaMountain->zScale = 1.5f;
    func_80025F60(*D_800F7654_BowservisitMagmaMountain->unk_3C->unk_40, 0);
    temp_s0 = D_800F7654_BowservisitMagmaMountain;
    temp_s0->unk_18.x = sinf(0.10471976f);
    temp_s0_2 = D_800F7654_BowservisitMagmaMountain;
    temp_s0_2->unk_18.z = cosf(0.10471976f);
    D_800F7658_BowservisitMagmaMountain = CreateObject(6U, &D_800F75C4_BowservisitMagmaMountain);
    func_80025B34(*D_800F7658_BowservisitMagmaMountain->unk_3C->unk_40);
    D_800F7658_BowservisitMagmaMountain->coords.x = D_800F75A0_BowservisitMagmaMountain.x;
    D_800F7658_BowservisitMagmaMountain->coords.y = D_800F75A0_BowservisitMagmaMountain.y;
    D_800F7658_BowservisitMagmaMountain->coords.z = D_800F75A0_BowservisitMagmaMountain.z + 200.0f;
    D_800F7658_BowservisitMagmaMountain->xScale = D_800F7658_BowservisitMagmaMountain->yScale = D_800F7658_BowservisitMagmaMountain->zScale = 1.5f;
    func_80025F60(*D_800F7658_BowservisitMagmaMountain->unk_3C->unk_40, 0);
    func_800258EC(*D_800F7658_BowservisitMagmaMountain->unk_40->unk_40, 0x180, 0x80);
    func_80025AD4(*D_800F7658_BowservisitMagmaMountain->unk_40->unk_40);
    D_800F765C_BowservisitMagmaMountain = CreateObject(func_80052F04(D_800F7650_BowservisitMagmaMountain), D_800F7620_BowservisitMagmaMountain[gPlayers[D_800F7650_BowservisitMagmaMountain].characterID]);
    func_80025B34(*D_800F765C_BowservisitMagmaMountain->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F765C_BowservisitMagmaMountain, D_800F75B8_BowservisitMagmaMountain);
    func_8004CCD0(&D_800F765C_BowservisitMagmaMountain->coords, &D_800F7658_BowservisitMagmaMountain->coords, &D_800F765C_BowservisitMagmaMountain->unk_18);
    func_8004CCD0(&D_800F7658_BowservisitMagmaMountain->coords, &D_800F765C_BowservisitMagmaMountain->coords, &D_800F7658_BowservisitMagmaMountain->unk_18);
    func_80052E84(D_800F7650_BowservisitMagmaMountain);
    func_8003E664(gPlayers[D_800F7650_BowservisitMagmaMountain].playerObj);
    (gPlayers[D_800F7650_BowservisitMagmaMountain].playerObj)->coords.x = D_800F75AC_BowservisitMagmaMountain.x;
    (gPlayers[D_800F7650_BowservisitMagmaMountain].playerObj)->coords.y = D_800F75AC_BowservisitMagmaMountain.y;
    (gPlayers[D_800F7650_BowservisitMagmaMountain].playerObj)->coords.z = D_800F75AC_BowservisitMagmaMountain.z;
}

void func_800F7404_BowservisitMagmaMountain(void) {
    DestroyObject(D_800F7654_BowservisitMagmaMountain);
    DestroyObject(D_800F7658_BowservisitMagmaMountain);
    DestroyObject(D_800F765C_BowservisitMagmaMountain);
    
    if (D_800F7590_BowservisitMagmaMountain != NULL) {
        DestroyObject(D_800F7590_BowservisitMagmaMountain);
    }

    if (D_800F759C_BowservisitMagmaMountain != NULL) {
        func_800427D4(D_800F759C_BowservisitMagmaMountain);
    }
    
    if (D_800F7594_BowservisitMagmaMountain != -1) {
        func_8002456C(D_800F7594_BowservisitMagmaMountain);
    }
    
    if (D_800F7598_BowservisitMagmaMountain != -1) {
        func_8002456C(D_800F7598_BowservisitMagmaMountain);
    }
    
    func_80052FD4(D_800F7650_BowservisitMagmaMountain);
    func_8004F2EC();
}

void func_800F74C0_BowservisitMagmaMountain(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(0x3B);
}

void func_800F7560_BowservisitMagmaMountain(void) {
    func_8004A140();
    func_80049F0C();
}
