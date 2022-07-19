#include "common.h"
#include "282820.h"

void func_80055960(u8, s32);

void func_800F677C_2829BC(void);
void func_800F69F0_282C30(void);
void func_800F6AF8_282D38(void);
void func_800F7044_283284(void);
void func_800F7410_283650(void);
void func_800F7BFC_283E3C(void);
void func_800F80EC_28432C(void);

//bss
u8 D_800F8FF0;
u8 D_800F8FF1;
u8 D_800F8FF2;
u8 D_800F8FF3;
unk_Struct03* D_800F8FF4; //80120570
unk_Struct03* D_800F8FF8; //80120610
u8 D_800F8FFC[4];


static s32 D_800F8ED0 = 0;
static s32 D_800F8ED4[] = {
    0x00000002, 0x0000000C, 0x00000014, 0x00000020, 0x0000029, 0x00000031, 0x0000003A, 0x00000047
};

static Vec3f D_800F8EF4 = {
    -115.0f, 0.0f, 1120.0f,
};

static Vec3f D_800F8F00 = {
    115.0f, 0.0f, 1520.0f
};

static s32 D_800F8F0C[] =  {
    0x00000005, 0x000A0068, 0x000A006A, 0x000A006C, 0x000A006D, 0x000A006B,
};

static s32 D_800F8F24[] = {
    0x00000004, 0x0001003E, 0x0001003D, 0x00010095, 0x00010039,
};

static s32 D_800F8F38[] = {
    0x00000004, 0x0002003E, 0x0002003D, 0x00020095, 0x00020039,
};

static s32 D_800F8F4C[] = {
    0x00000004, 0x0006003E, 0x0006003D, 0x00060095, 0x00060039,
};

static s32 D_800F8F60[] = {
    0x00000004, 0x0003003E, 0x0003003D, 0x00030095, 0x00030039,
};

static s32 D_800F8F74[] = {
    0x00000004, 0x0004003E, 0x0004003D, 0x00040095, 0x00040039,
};

static s32 D_800F8F88[] = {
    0x00000004, 0x0005003E, 0x0005003D, 0x00050095, 0x00050039,
};

static void* D_800F8F9C[] = {
    D_800F8F24, D_800F8F38, D_800F8F4C,
    D_800F8F60, D_800F8F74, D_800F8F88, 
};

static void (*D_800F8FB4[7])() = {
    &func_800F677C_2829BC, &func_800F69F0_282C30, &func_800F6AF8_282D38, &func_800F7044_283284, &func_800F7410_283650, &func_800F7BFC_283E3C, &func_800F80EC_28432C
};

void func_800F65E0_282820(void) {
    D_800F8FF0 = D_800ED5C3;
    D_800F8FF1 = D_800ED5DD;
    func_8005CF30(0x32, 0xA);
    func_800F8DF4_285034();
    func_800F8C6C_284EAC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_800547F8(0, 1);
    func_800547F8(1, 1);
    func_800547F8(2, 1);
    func_800547F8(3, 1);
    func_8006CEA0();
    InitProcess(func_800F8608_284848, 0x300U, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F8C20_284E60);
    func_80060128(0x12);
    func_80072644(3, 0x10);
}

s32 func_800F66FC_28293C(void) {
    s32 currentTurn = D_800ED5C0.currentTurn;

    if (currentTurn < 6) {
        return 10;
    } else if (currentTurn < 16) {
        return 20;
    } else if (currentTurn < 31) {
        return 30;
    } else if (currentTurn < 46) {
        return 40;
    } else {
        return 50;
    }
}

void func_800F6744_282984(void) {
    func_80055A34(D_800F8FF1);
    func_80054868(24);
    func_80055A34(-1);
    SleepProcess(20);
}

void func_800F677C_2829BC(void) {
    s32 sp10;
    s32 windowID;
    s32 var_s0;

    if (func_800F66FC_28293C() > gPlayers[D_800F8FF1].coinAmount ) {
        windowID = CreateTextWindow(0x28, 0x3C, 0x12, 3);
        LoadStringIntoWindow(windowID, 0xCD, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x91);
        func_8004DBD4(windowID, D_800F8FF1);
        HideTextWindow(windowID);
        var_s0 = gPlayers[D_800F8FF1].coinAmount;
    } else {
        windowID = CreateTextWindow(0x28, 0x3C, 0x13, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(windowID, &sp10, 0);
        LoadStringIntoWindow(windowID, 0xCC, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x91);
        func_8004DBD4(windowID, D_800F8FF1);
        HideTextWindow(windowID);
        var_s0 = func_800F66FC_28293C();
    }
    func_800F6744_282984();
    func_8003E81C(D_800F8FF4, 1, 0);
    func_8004F4D4(D_800F8FF8, 0, 0);
    func_80060468(0x44A, gPlayers[D_800F8FF1].characterID);
    func_80055960(D_800F8FF1, -var_s0);
    func_800503B0(D_800F8FF1, 5);
    func_8004F504(D_800F8FF4);
    func_8004F4D4(D_800F8FF4, 0, 2);
    windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
    LoadStringIntoWindow(windowID, 0xCE, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x4C);
    func_8004DBD4(windowID, D_800F8FF1);
    HideTextWindow(windowID);
}


void func_800F69F0_282C30(void) {
    s32 windowID;
    s32 i;

    windowID = CreateTextWindow(0x28, 0x3C, 0x13, 3);
    LoadStringIntoWindow(windowID, 0xCF, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x91);
    func_8004DBD4(windowID, D_800F8FF1);
    HideTextWindow(windowID);

    for (i = 0; i < 4; i++) {
        if (i == D_800F8FF1) {
            gPlayers[i].unk_00 = 0;
        } else {
            gPlayers[i].unk_00 = 1;
        }        
    }
    D_800F8ED0 = 1;
    func_8004F4D4(D_800F8FF4, 2, 0);
    SleepProcess(0x1E);
}

void func_800F6AF8_282D38(void) {
    s32 windowID;
    s32 temp_s4;
    s32 temp_s2;
    s32 var_a0;
    s32 var_s0;
    s32 i;
    s32 var_s3;
    s32 var_v1;

    var_s3 = 0;
    windowID = CreateTextWindow(0x28, 0x3C, 0x13, 4);
    LoadStringIntoWindow(windowID, 0xD4, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x91);
    func_8004DBD4(windowID, D_800F8FF1);
    HideTextWindow(windowID);
    func_80054868(0);
    SleepProcess(0x14);
    func_8003E81C(D_800F8FF4, 2, 0);
    func_8004F40C(D_800F8FF4, 0, 2);
    PlaySound(0x56);
    func_8005546C(0);
    func_8005546C(1);
    func_8005546C(2);
    func_8005546C(3);
    
    for (i = 0; i < 0x3C; i++) {
        func_800546B4(0, i % 5);
        func_800546B4(1, i % 5);
        func_800546B4(2, i % 5);
        func_800546B4(3, i % 5);
        SleepVProcess();
    }

    temp_s2 = 0;
    
    for (i = 0; i < 4; i++) {
        temp_s2 += gPlayers[i].coinAmount;
    }

    if (temp_s2 >= 0) {
        var_s0 = temp_s2;
    } else {
        var_s0 = temp_s2 + 3;
    }
    
    temp_s2 = var_s0 >> 2;
    
    if (gPlayers[D_800F8FF1].coinAmount < temp_s2) {
        var_s3 = 1;
    } else if (temp_s2 < gPlayers[D_800F8FF1].coinAmount) {
        var_s3 = 2;
    }
    
    var_a0 = -1;
    var_v1 = 0;

    for (i = 0; i < 4; i++) {
        if (var_v1 < (temp_s2 - gPlayers[i].coinAmount)) {
            if (var_a0 != -1) {
                D_800F8FFC[var_a0] = 0;
            }
            D_800F8FFC[i] = 1;
            var_a0 = i;
            var_v1 = temp_s2 - gPlayers[i].coinAmount;
        } else {
            D_800F8FFC[i] = 0;
        }
    }

    temp_s4 = gPlayers[D_800F8FF1].coinAmount;
    
    for (i = 0; i < 4; i++) {
        func_80055810(i, temp_s2 - gPlayers[i].coinAmount, D_800F8FFC[i]);
        if ((temp_s2 - gPlayers[i].coinAmount) < 0) {
            func_800503B0(i, 5);
        }
    }

    for (i = 0; i < 30; i++) {
        func_800546B4(0, i % 5);
        func_800546B4(1, i % 5);
        func_800546B4(2, i % 5);
        func_800546B4(3, i % 5);
        SleepVProcess();
    }
 
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_80055544(0);
    func_80055544(1);
    func_80055544(2);
    func_80055544(3);
    windowID = CreateTextWindow(0x50, 0x3C, 0xE, 4);
    LoadStringIntoWindow(windowID, 0xD5, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x4C);
    func_8004DBD4(windowID, D_800F8FF1);
    HideTextWindow(windowID);
    func_8003E81C(D_800F8FF4, 1, 2);
    switch (var_s3) {
    case 1:
        func_8004F4D4(D_800F8FF8, 3, 0);
        if (temp_s4 + 10 <= gPlayers[D_800F8FF1].coinAmount) {
            func_80060468(0x451, gPlayers[D_800F8FF1].characterID);
            SleepProcess(0xA);
        }
        break;
    case 2:
        func_8004F4D4(D_800F8FF8, 0, 0);
        if (temp_s4 - 10 >= gPlayers[D_800F8FF1].coinAmount) {
            func_80060468(0x44A, gPlayers[D_800F8FF1].characterID);
            SleepProcess(0xA); 
        }
        break;
    }
    SleepProcess(0x1E);
}

void func_800F7044_283284(void) {
    s32 sp10;
    s32 windowID;
    s32 var_a2;
    s32 var_s0_2;
    s32 i;

    if (D_800C597A == 0) {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        LoadStringIntoWindow(windowID, 0xD6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x91);
        func_8004DBD4(windowID, D_800F8FF1);
        HideTextWindow(windowID);
        
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1)
                gPlayers[i].unk_00 = 0;
            else {
                gPlayers[i].unk_00 = 1;
            }
            
        }
        
        D_800F8ED0 = 2;
        func_8004F4D4(D_800F8FF4, 2, 0);
        SleepProcess(0x1E);
        return;
    }

    if (gPlayers[D_800F8FF1].miniGameCoins == 0) {
        windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
        LoadStringIntoWindow(windowID, 0xD9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x4D);
        func_8004DBD4(windowID, D_800F8FF1);
        HideTextWindow(windowID);
        var_s0_2 = 0xF;
    } else {
        windowID = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        var_a2 = gPlayers[D_800F8FF1].miniGameCoins;
        
        if (var_a2 < 0) {
            var_a2 = -var_a2;
        }
        
        func_8008C490(&sp10, "%d", var_a2);
        func_8006DA5C(windowID, &sp10, 1);
        LoadStringIntoWindow(windowID, 0xD7, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x4D);
        func_8004DBD4(windowID, D_800F8FF1);
        HideTextWindow(windowID);
        var_s0_2 = -gPlayers[D_800F8FF1].miniGameCoins;
    }

    func_800F6744_282984();
    func_8004F4D4(D_800F8FF8, 0, 0);
    func_8003E81C(D_800F8FF4, 1, 0U);
    if (var_s0_2 >= 0xA) {
        func_80060468(0x44A, gPlayers[D_800F8FF1].characterID);
    }

    func_80055960(D_800F8FF1, (s32) -var_s0_2);
    func_800503B0((s32) D_800F8FF1, 5);

    for (i = 0; i < 4; i++) {
        if (i != D_800F8FF1) {
            func_80055810(i, gPlayers[i].miniGameCoins, 0U);
        }        
    }

    func_8004F504(D_800F8FF4);
    func_8004F4D4(D_800F8FF4, 0, 2);
    windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
    LoadStringIntoWindow(windowID, 0xD8, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x4C);
    func_8004DBD4(windowID, D_800F8FF1);
    HideTextWindow(windowID);
}

void func_800F7410_283650(void) {
    s32 sp10;
    s32 var_a1_2;
    s32 var_s2;
    s32 var_s1;
    s32 var_s4;
    s32 i;
    s32 tempVar;

    var_s2 = 0;
    if (D_800C597A == 0) {
        var_s1 = CreateTextWindow(0x28, 0x3C, 0x13, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, 0xDA, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x91);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        
        for (i = 0; i < 4; i++) {
            gPlayers[i].unk_00 = i;
        }
        
        D_800F8ED0 = 3;
        func_8004F4D4(D_800F8FF4, 2, 0);
        SleepProcess(0x1E);
        return;
    }
    
    var_s4 = 0;
    
    for (i = 0; i < 4; i++) {
        //if (gPlayers[i].miniGameCoins <= 0) {
        if ((s16)(gPlayers[i].miniGameCoins & 0xFFFFFFFF) <= 0U) { //fake match
            var_s4++;
        }
    }
    
    switch (var_s4) {
    case 4:
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, 0xDB, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        break;
    case 3:
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 4);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, 0xDC, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        break;
    case 2:
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 4);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, 0xDD, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        break;
    case 1:
        var_s1 = CreateTextWindow(0x50, 0x3C, 0xE, 4);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        i = 0;
        var_s2 = 1;
        for (; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, 0xDE, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        break;
    default:
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 4);
        if (gPlayers[D_800F8FF1].coinAmount < func_800F66FC_28293C()) {
            var_s2 = gPlayers[D_800F8FF1].coinAmount;
        } else {
            var_s2 = func_800F66FC_28293C();
        }
        func_8008C490(&sp10, "%d", var_s2);
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, 0xDF, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
    }

    if (var_s4 == 0) {
        func_800F6744_282984();
        func_8004F4D4(D_800F8FF8, 0, 0);
        func_8003E81C(D_800F8FF4, 1, 0);
        func_80055960(D_800F8FF1, -var_s2);
        if (gPlayers[D_800F8FF1].coinAmount != 0) {
            func_800503B0(D_800F8FF1, 5);
        }
    } else {
        for (i = 0; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_80054868(i + 0xA);
            }            
        }
        
        SleepProcess(0x14);
        
        if (gPlayers[D_800F8FF1].miniGameCoins == 0) {
            func_8004F4D4(D_800F8FF8, 0, 0);
        }
        func_8003E81C(D_800F8FF4, 1, 0U);
        
        tempVar = -1;
        var_a1_2 = 0; //a0
        
    
        for (i = 0; i < 4; i++) {
            if ((gPlayers[i].miniGameCoins == 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
                if (tempVar != -1) {
                    D_800F8FFC[tempVar] = 0;
                }
                D_800F8FFC[i] = 1;
                var_a1_2 = gPlayers[i].coinAmount;
                tempVar = i;
            } else {
                D_800F8FFC[i] = 0;
            }
            
        }

        for (i = 0; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_80055810(i, -func_800F66FC_28293C(), D_800F8FFC[i]);
                if (gPlayers[i].coinAmount != 0) {
                    func_800503B0(i, 5);
                }
            }
        }
    }
    
    func_8004F504(D_800F8FF4);
    func_8004F4D4(D_800F8FF4, 0, 2);
    var_s1 = CreateTextWindow(0x50, 0x3C, 0xE, 3);
    LoadStringIntoWindow(var_s1, 0xE0, -1, -1);
    func_8006E070(var_s1, 0);
    ShowTextWindow(var_s1);
    PlaySound(0x4C);
    func_8004DBD4(var_s1, D_800F8FF1);
    HideTextWindow(var_s1);
}

void func_800F7BFC_283E3C(void) {
    s32 sp10;
    s32 var_a1_2;
    s32 temp_s1;
    s32 tempVar;
    s32 i;

    if (D_800C597A == 0) {
        temp_s1 = CreateTextWindow(0x28, 0x3C, 0x11, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, 0xE1, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x91);
        func_8004DBD4(temp_s1, D_800F8FF1);
        HideTextWindow(temp_s1);
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1) {
                gPlayers[i].unk_00 = 0;
            } else {
                gPlayers[i].unk_00 = 1;
            }
        }
        D_800F8ED0 = 4;
        func_8004F4D4(D_800F8FF4, 2, 0);
        SleepProcess(0x1E);
        return;
    }
    if (gPlayers[D_800F8FF1].miniGameCoins < 0) {
        temp_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, 0xE2, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1);
        HideTextWindow(temp_s1);
    } else if (gPlayers[D_800F8FF1].miniGameCoins > 0) {
        temp_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, 0xE3, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1);
        HideTextWindow(temp_s1);
    } else {
        temp_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, 0xE4, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1);
        HideTextWindow(temp_s1);
    }

    for (i = 0; i < 4; i++) {
       if (gPlayers[i].miniGameCoins <= 0) {
           func_80054868(i + 0xA);
       }
    }
    
    SleepProcess(0x14);
    
    if (gPlayers[D_800F8FF1].miniGameCoins <= 0) {
        func_8004F4D4(D_800F8FF8, 0, 0);
    }
    
    func_8003E81C(D_800F8FF4, 1, 0);
    
    tempVar = -1;
    var_a1_2 = 0; //a0
    

    for (i = 0; i < 4; i++) {
        if ((gPlayers[i].miniGameCoins <= 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
            if (tempVar != -1) {
                D_800F8FFC[tempVar] = 0;
            }
            D_800F8FFC[i] = 1;
            var_a1_2 = gPlayers[i].coinAmount;
            tempVar = i;
        } else {
            D_800F8FFC[i] = 0;
        }
        
    }
    
    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins > 0) {
            continue;
        } else {
            func_80055810(i, -(func_800F66FC_28293C()), D_800F8FFC[i]);
            if (gPlayers[i].coinAmount) {
                func_800503B0(i, 5);
            }
        }
    }
    
    func_8004F504(D_800F8FF4);
    func_8004F4D4(D_800F8FF4, 0, 2);
    temp_s1 = CreateTextWindow(0x50, 0x3C, 0xE, 3);
    LoadStringIntoWindow(temp_s1, 0xE5, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    PlaySound(0x4C);
    func_8004DBD4(temp_s1, D_800F8FF1);
    HideTextWindow(temp_s1);
}

void func_800F80EC_28432C(void) {
    s32 sp10;
    s32 var_a1_2;
    s32 var_s1;
    s32 var_s2;
    s32 i;
    s32 tempVar;

    if (D_800C597A == 0) {
        var_s1 = CreateTextWindow(0x28, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, 0xE6, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x91);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
        
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1) {
                gPlayers[i].unk_00 = 0;
            } else {
                gPlayers[i].unk_00 = 1;
            }
        }
        
        D_800F8ED0 = 5;
        func_8004F4D4(D_800F8FF4, 2, 0);
        SleepProcess(0x1E);
        return;
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins != 0) {
            break;
        }
    }
    
    if (i != 4) {
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 4);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);

        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }

        LoadStringIntoWindow(var_s1, 0xE7, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
    } else {
        var_s1 = CreateTextWindow(0x3C, 0x3C, 0x10, 3);
        func_8008C490(&sp10, "%d", func_800F66FC_28293C());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, 0xE8, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1);
        HideTextWindow(var_s1);
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins == 0) {
            func_80054868(i + 0xA);
        }        
    }
    
    SleepProcess(0x14);
    if (gPlayers[D_800F8FF1].miniGameCoins == 0) {
        func_8004F4D4(D_800F8FF8, 0, 0);
    }
    
    func_8003E81C(D_800F8FF4, 1, 0U);
    
    tempVar = -1;
    var_a1_2 = 0;

    for (i = 0; i < 4; i++) {
        if ((gPlayers[i].miniGameCoins == 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
            if (tempVar != -1) {
                D_800F8FFC[tempVar] = 0;
            }
            
            D_800F8FFC[i] = 1;
            var_a1_2 = gPlayers[i].coinAmount;
            tempVar = i;
        } else {
            D_800F8FFC[i] = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins == 0) {
            func_80055810(i, -func_800F66FC_28293C(), D_800F8FFC[i]);
            if (gPlayers[i].coinAmount != 0) {
                func_800503B0(i, 5);
            }
        }
    }
    
    func_8004F504(D_800F8FF4);
    func_8004F4D4(D_800F8FF4, 0, 2);
    var_s1 = CreateTextWindow(0x50, 0x3C, 0xE, 3);
    LoadStringIntoWindow(var_s1, 0xE9, -1, -1);
    func_8006E070(var_s1, 0);
    ShowTextWindow(var_s1);
    PlaySound(0x4C);
    func_8004DBD4(var_s1, D_800F8FF1);
    HideTextWindow(var_s1);
}

void func_800F8608_284848(void) {
    s32 windowID;
    s32 var_s0_2;
    s32 var_s2;
    s32 i;
    u8 new_var2;

    var_s2 = 0;
    if (D_800C597A == 0) {
        func_8004935C();
        func_800499CC(D_800F8FF1);
        SleepProcess(0x1A);
        if (gPlayers[D_800F8FF1].coinAmount == 0) {
            if (gPlayers[D_800F8FF1].starAmount == 0) {
                windowID = CreateTextWindow(0x50, 0x3C, 0xE, 4);
                LoadStringIntoWindow(windowID, 0xCA, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4D);
                func_8004DBD4(windowID, D_800F8FF1);
                HideTextWindow(windowID);
                func_800F6744_282984();
                func_8004F4D4(D_800F8FF8, 2, 0);
                func_80055960(D_800F8FF1, 0x14);
                SleepProcess(0x1E);
                windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
                LoadStringIntoWindow(windowID, 0xCB, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4C);
                func_8004DBD4(windowID, D_800F8FF1);
                HideTextWindow(windowID);
            } else {
                windowID = CreateTextWindow(0x50, 0x3C, 0xE, 4);
                LoadStringIntoWindow(windowID, 0xC8, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4D);
                func_8004DBD4(windowID, D_800F8FF1);
                HideTextWindow(windowID);
                func_800F6744_282984();
                func_8003E81C(D_800F8FF4, 1, 0);
                func_8004F40C(D_800F8FF4, 0, 2);
                func_8003E81C(D_800F8FF8, 1, 0);
                func_80055994(D_800F8FF1, 2);
                new_var2 = D_800F8FF1; //?
                gPlayers[new_var2].starAmount--;
                func_80060618(0x44A, D_800F8FF1);
                func_80055960(D_800F8FF1, 0xA);
                func_800503B0(D_800F8FF1, 6);
                SleepProcess(0x1E);
                windowID = CreateTextWindow(0x50, 0x3C, 0xE, 3);
                LoadStringIntoWindow(windowID, 0xC9, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4C);
                func_8004DBD4(windowID, D_800F8FF1);
                HideTextWindow(windowID);
            }
        } else {
            windowID = CreateTextWindow(0x50, 0x3C, 0xD, 4);
            LoadStringIntoWindow(windowID, 0xC6, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(0x4D);
            func_8004DBD4(windowID, D_800F8FF1);
            HideTextWindow(windowID);
            func_8004F4D4(D_800F8FF4, 3, 0);
            SleepProcess(0x20);
            func_8004F4D4(D_800F8FF4, 0, 2);
            func_8004EE14(0, D_800F32A0, 0xF, D_800F8FF4);
            var_s0_2 = 0;
            func_80049E60();
            
            while (func_80049328() == -1) {
                if (func_80049340() == 2) {
                    if (var_s0_2 == 0) {
                        func_8004F4D4(D_800F8FF4, 1, 0);
                        var_s0_2 = 1;
                    } else if (++var_s0_2 == 0x28) {
                        func_8004F4D4(D_800F8FF4, 4, 6);
                    }
                }
                
                if ((func_80049340() == 4) && (var_s2 == 0)) {
                    func_8004EE14(0, &D_800F8F00.x, 0xF, D_800F8FF4);
                    var_s2 = 1;
                }
                
                SleepVProcess();     
                
            }

            func_80049478();
            func_8004F4D4(D_800F8FF4, 0, 2);
            
            if (D_800C597A == 0) {
                D_800F8FB4[func_80049328()]();
            } else {
                SleepProcess(0x1A);
                D_800F8FB4[func_80049334()](); //function ptr array
            }
        }
    } else {
        SleepProcess(0x1A);
        D_800F8FB4[func_80049334()](); //function ptr array
    }

    for (i = 0; i < 4; i++) {
        gPlayers[i].miniGameCoins = 0;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        SleepVProcess();
    }
}

//INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8B1C_284D5C);
void func_800F8B1C_284D5C(void) { //matches, needs rodata support for switch
    if ( func_80072718() == 0 ) {
        func_800F8EA8_2850E8();
        func_800F8DC0_285000();
        func_80054654();
        func_80070ED4();
        switch (D_800F8ED0) {
            case 0:
                func_8005DFB8(1);
                break;
            case 1:
                SetBoardFeatureFlag(0x45);
                func_8005E044(0x1, 0, 0x92);
                break;
            case 2:
                SetBoardFeatureFlag(0x45);
                func_80059348(0x10);
                func_8005DF44(0x6F, 0, 0x94);
                func_8005E36C(1, 0x46, 1, 0x92);
                break;
            case 3:
                SetBoardFeatureFlag(0x45);
                func_80059348(0xE);
                func_8005DF44(0x6F, 0, 0x94);
                func_8005E36C(1, 0x46, 1, 0x92);
                break;
            case 4:
                SetBoardFeatureFlag(0x45);
                func_80059348(0x33);
                func_8005DF44(0x6F, 0, 0x94);
                func_8005E36C(1, 0x46, 1, 0x92);
                break;
            case 5:
                SetBoardFeatureFlag(0x45);
                func_80059348(0x13);
                func_8005DF44(0x6F, 0, 0x94);
                func_8005E36C(1, 0x46, 1, 0x92);
                break;
        }
    }
}

void func_800F8C20_284E60(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 16);
        func_800601D4(32);
        arg0->func_ptr = &func_800F8B1C_284D5C;
    }
}

void func_800F8C6C_284EAC(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F8FF4 = func_8003DBE0(6, &D_800F8F0C);
    D_800F8FF4->unk_0C = D_800F8EF4.x;
    D_800F8FF4->unk_10 = D_800F8EF4.y;
    D_800F8FF4->unk_14 = D_800F8EF4.z;
    D_800F8FF4->unk_2C = 1.5f;
    D_800F8FF4->unk_28 = 1.5f;
    D_800F8FF4->unk_24 = 1.5f;
    D_800F8FF8 = func_8003DBE0(func_80052F04(D_800F8FF1), D_800F8F9C[gPlayers[D_800F8FF1].characterID]);
    D_800F8FF8->unk_0C = D_800F8F00.x;
    D_800F8FF8->unk_10 = D_800F8F00.y;
    D_800F8FF8->unk_14 = D_800F8F00.z;
    func_80021B14(*D_800F8FF8->unk_3C->unk_40, gPlayers[D_800F8FF1].characterID, 0x80);
    func_8004CCD0(&D_800F8FF8->unk_0C, &D_800F8FF4->unk_0C, &D_800F8FF8->unk_18);
    func_8004CCD0(&D_800F8FF4->unk_0C, &D_800F8FF8->unk_0C, &D_800F8FF4->unk_18);
}

void func_800F8DC0_285000(void) {
    func_8003E694(D_800F8FF8);
    func_8003E694(D_800F8FF4);
    func_8004F2EC();
}

void func_800F8DF4_285034(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    func_80049F4C(D_800F8ED4[D_800F8FF0]);
}

void func_800F8EA8_2850E8(void) {
    func_8004A140();
    func_80049F0C();
}

