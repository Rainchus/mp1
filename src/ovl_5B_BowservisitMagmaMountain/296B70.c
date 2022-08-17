#include "common.h"
#include "296B70.h"

unk_Struct03* D_800F7590_297B20 = NULL;
s32 D_800F7594_297B24 = -1;
s32 D_800F7598_297B28 = -1;
void* D_800F759C_297B2C = NULL;
Vec3f D_800F75A0_297B30 = {0.0f, 0.0f, 840.0f};
Vec3f D_800F75AC_297B3C = {0.0f, 0.0f, 1250.0f};
Vec3f D_800F75B8_297B48 = {80.0f, 0.0f, 1520.0f};
s32 D_800F75C4_297B54[] = {0x00000004, 0x000A006A, 0x000A006C, 0x000A006B, 0x000A0068};
s32 D_800F75D8_297B68[] = {0x00000002, 0x0001000A, 0x0001003E};
s32 D_800F75E4_297B74[] = {0x00000002, 0x0002000A, 0x0002003E};
s32 D_800F75F0_297B80[] = {0x00000002, 0x0006000A, 0x0006003E};
s32 D_800F75FC_297B8C[] = {0x00000002, 0x0003000A, 0x0003003E};
s32 D_800F7608_297B98[] = {0x00000002, 0x0004000A, 0x0004003E};
s32 D_800F7614_297BA4[] = {0x00000002, 0x0005000A, 0x0005003E};
s32* D_800F7620_297BB0[] = {D_800F75D8_297B68, D_800F75E4_297B74, D_800F75F0_297B80, D_800F75FC_297B8C, D_800F7608_297B98, D_800F7614_297BA4};

//

void func_800F65E0_296B70(void) {
    D_800F7650 = D_800ED5DD;
    func_8005CF30(0x32, 0x32);
    func_800F74C0_297A50();
    func_800F7120_2976B0();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    func_8003FCD4();
    InitProcess(func_800F66C4_296C54, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F70D4_297664);
    func_80060128(0x12);
    func_80072644(3, 0x10);
}

void func_800F66C4_296C54(void) { //fix me: remove gotos
    s32 sp10;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 var_f22;
    f32 var_f24;
    s32 var_s2;
    s32 var_s1_3;
    unk_Struct03* temp_s0_4;
    unk_Struct04* tempStruct04;
    s32 windowID;
    s32 tempVar;
    s32 tempVar2;
    s32 temp_s2;

    SleepProcess(0x10);
    PlaySound(0x46A);
    SleepProcess(0xA);

    if (gPlayers[D_800F7650].starAmount != 0 && gPlayers[D_800F7650].coinAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x12, 3);
        LoadStringIntoWindow(windowID, (void* )0x1EE, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650);
        HideTextWindow(windowID);
        labelTest:
        func_8004F4D4(D_800F7658, 2, 0);
        SleepProcess(15);
        PlaySound(0x6C);
        SleepProcess(5);
        func_8003E81C(D_800F765C, 0, 0);
        D_800F7598_297B28 = LoadFormFile(0x1E, 0x6B9);
        var_s1_3 = 0;
        func_80025798(D_800F7598_297B28, D_800F765C->coords.x, D_800F765C->coords.y, D_800F765C->coords.z);
        func_80025830(D_800F7598_297B28, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F7650, 2);
        gPlayers[D_800F7650].starAmount--;
        func_800503B0(D_800F7650, 6);
        func_80060618(0x44A, D_800F7650);
        PlaySound(0x79);
        D_800F7590 = func_8003DBE0(0x25, 0);
        D_800F7590->coords.x = D_800F75B8_297B48.x;
        D_800F7590->coords.y = D_800F75B8_297B48.y + 200.0f;
        D_800F7590->coords.z = D_800F75B8_297B48.z;
        tempStruct04 = D_800F7590->unk_3C;
        tempStruct04->unk_24 = 90.0f;
        D_800F7590->unk_24 = D_800F7590->unk_28 = D_800F7590->unk_2C = 0.5f;
        D_800F759C_297B2C = func_80042728(D_800F7590, 0);
            var_f24 = 0.0f;
            var_f22 = 7.0f;
            do {
                temp_s0_4 = D_800F7590;
                temp_s0_4->coords.y = D_800F75B8_297B48.y + 200.0f + (f32) (var_s1_3 / 2);
                temp_f20 = var_s1_3 * 5 * 0.017453292519943295;
                temp_s0_4->coords.x = (func_80088060(temp_f20) * var_f22) + D_800F75B8_297B48.x;
                temp_s0_4 = D_800F7590;
                temp_s0_4->coords.z = (func_800855C0(temp_f20) * var_f22) + D_800F75B8_297B48.z;
                temp_s0_4 = D_800F7590;
                temp_f20_2 = var_f24 * 0.017453292519943295;
                temp_s0_4->unk_18.x = func_80088060(temp_f20_2);
                temp_s0_4 = D_800F7590;
                temp_s0_4->unk_18.z = func_800855C0(temp_f20_2);
                SleepVProcess();
                if (var_s1_3 == 0x4B) {
                    func_8003E81C(D_800F7658, 0, 0);
                    func_8004F40C(D_800F7658, 3, 2);
                    PlaySound(0x9E);
                    D_800F7594_297B24 = LoadFormFile(0x1D, 0x6B9);
                    func_80025798(D_800F7594_297B24, D_800F765C->coords.x, D_800F765C->coords.y, D_800F765C->coords.z);
                }
                var_s1_3 += 5;
                var_f24 += 10.0f;
                var_f22 += 0.0f;
            } while (var_s1_3 < 0x15F);
            func_8003E694(D_800F7590);
            D_800F7590 = NULL;
            func_800427D4(D_800F759C_297B2C);
            D_800F759C_297B2C = NULL;
    }

    else if (gPlayers[D_800F7650].coinAmount != 0 && gPlayers[D_800F7650].starAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x12, 3);
        if (!(gPlayers[D_800F7650].coinAmount < 0x14)) {
            var_s2 = 0x14;
        } else {
            var_s2 = gPlayers[D_800F7650].coinAmount;
        }
        func_8008C490(&sp10, "%d", var_s2);
        func_8006DA5C(windowID, &sp10, 0);
        LoadStringIntoWindow(windowID, (void* )0x1E6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650);
        HideTextWindow(windowID);
        labelTemp2:
        func_8003E81C(D_800F7658, 0, 0);
        func_8004F40C(D_800F7658, 3, 2);
        func_8004F4D4(D_800F765C, 1, 0);
        func_80055960(D_800F7650, -var_s2);
        func_800503B0(D_800F7650, 5);
        func_80060618(0x44A, D_800F7650);
        SleepProcess(0x1E);
    }

    else if (gPlayers[D_800F7650].starAmount == 0 && gPlayers[D_800F7650].coinAmount == 0) {
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
        func_8004DBD4(windowID, D_800F7650);
        HideTextWindow(windowID);
        func_800410E8(D_800F7650);
        temp_s2 = 0;
        tempVar2 = 0;
        tempVar = 0;
        do {
            switch (tempVar) {
            case 0:
                if ((gPlayers[D_800F7650].unk_06 & 1)) {
                    if(temp_s2 >= 0xF) {
                        goto label;
                    }
                    break;
                } else if (!(D_800F5460[gPlayers[D_800F7650].flags] & 0x8000)) {
                    break;
                } else {
                    label:
                    tempVar = 1;
                }
                func_8004F4D4(D_800F7658, 1, 0);
                func_8004F40C(D_800F7658, 3, 2);   
                break;
            case 1:
                if (++tempVar2 == 0x14) {
                    tempVar = 2;
                    func_800413B0(D_800F7650);
                }
                break;
            }
            temp_s2++;
            SleepVProcess();
        } while (tempVar != 2);
        SleepProcess(0x1E);
        if (func_80041624(D_800F7650) == 0) {
            windowID = CreateTextWindow(0x46, 0x41, 0xE, 2);
            if (!(gPlayers[D_800F7650].coinAmount < 0x14)) {
                var_s2 = 0x14;
            } else {
                var_s2 = gPlayers[D_800F7650].coinAmount;
            }

            func_8008C490(&sp10, "%d", var_s2);
            func_8006DA5C(windowID, &sp10, 0);
            LoadStringIntoWindow(windowID, (void* )0x1E9, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            func_8004DBD4(windowID, D_800F7650);
            HideTextWindow(windowID);
            func_800405DC(D_800F7650);
            goto labelTemp2;
        }
        windowID = CreateTextWindow(0x50, 0x41, 0x0D, 2);
        LoadStringIntoWindow(windowID, (void*)0x1E8, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7650);
        HideTextWindow(windowID);
        func_800405DC(D_800F7650);
        goto labelTest;
    }
    windowID = CreateTextWindow(0x50, 0x3C, 0xF, 3);
    LoadStringIntoWindow(windowID, (void* )0x1EF, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x469);
    label3:
    func_8004DBD4(windowID, D_800F7650);
    HideTextWindow(windowID);
    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
}

void func_800F7074_297604(void) {
    if (func_80072718() == 0) {
        func_800F7560_297AF0();
        func_800F7404_297994();
        func_80054654();
        func_80070ED4();
        func_80041370();
        func_800405DC(D_800F7650);
        func_8005DFB8(1);
    }
}

void func_800F70D4_297664(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F7074_297604;
    }
}

void func_800F7120_2976B0(void) {
    unk_Struct03* temp_s0;
    unk_Struct03* temp_s0_2;

    func_8003DAA8();
    func_8004F2AC();
    D_800F7654 = func_8003DBE0(0x76U, NULL);
    func_80025B34(*D_800F7654->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F7654, D_800F75A0_297B30);
    D_800F7654->unk_24 = D_800F7654->unk_28 = D_800F7654->unk_2C = 1.5f;
    func_80025F60(*D_800F7654->unk_3C->unk_40, 0);
    temp_s0 = D_800F7654;
    temp_s0->unk_18.x = func_80088060(0.10471976f);
    temp_s0_2 = D_800F7654;
    temp_s0_2->unk_18.z = func_800855C0(0.10471976f);
    D_800F7658 = func_8003DBE0(6U, &D_800F75C4_297B54);
    func_80025B34(*D_800F7658->unk_3C->unk_40);
    D_800F7658->coords.x = D_800F75A0_297B30.x;
    D_800F7658->coords.y = D_800F75A0_297B30.y;
    D_800F7658->coords.z = D_800F75A0_297B30.z + 200.0f;
    D_800F7658->unk_24 = D_800F7658->unk_28 = D_800F7658->unk_2C = 1.5f;
    func_80025F60(*D_800F7658->unk_3C->unk_40, 0);
    func_800258EC(*D_800F7658->unk_40->unk_40, 0x180, 0x80);
    func_80025AD4(*D_800F7658->unk_40->unk_40);
    D_800F765C = func_8003DBE0(func_80052F04(D_800F7650), D_800F7620[gPlayers[D_800F7650].characterID]);
    func_80025B34(*D_800F765C->unk_3C->unk_40);
    VEC3F_COPY_TO_OBJ(D_800F765C, D_800F75B8_297B48);
    func_8004CCD0(&D_800F765C->coords, &D_800F7658->coords, &D_800F765C->unk_18);
    func_8004CCD0(&D_800F7658->coords, &D_800F765C->coords, &D_800F7658->unk_18);
    func_80052E84(D_800F7650);
    func_8003E664(gPlayers[D_800F7650].playerObj);
    (gPlayers[D_800F7650].playerObj)->coords.x = D_800F75AC_297B3C.x;
    (gPlayers[D_800F7650].playerObj)->coords.y = D_800F75AC_297B3C.y;
    (gPlayers[D_800F7650].playerObj)->coords.z = D_800F75AC_297B3C.z;
}

void func_800F7404_297994(void) {
    func_8003E694(D_800F7654);
    func_8003E694(D_800F7658);
    func_8003E694(D_800F765C);
    
    if (D_800F7590 != NULL) {
        func_8003E694(D_800F7590);
    }

    if (D_800F759C_297B2C != NULL) {
        func_800427D4(D_800F759C_297B2C);
    }
    
    if (D_800F7594_297B24 != -1) {
        func_8002456C(D_800F7594_297B24);
    }
    
    if (D_800F7598_297B28 != -1) {
        func_8002456C(D_800F7598_297B28);
    }
    
    func_80052FD4(D_800F7650);
    func_8004F2EC();
}

void func_800F74C0_297A50(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    func_80049F4C(0x3B);
}

void func_800F7560_297AF0(void) {
    func_8004A140();
    func_80049F0C();
}
