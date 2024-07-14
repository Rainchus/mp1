#include "engine/process.h"
#include "282820.h"

void func_800F677C_BowserSpaceEvent(void);
void func_800F69F0_BowserSpaceEvent(void);
void func_800F6AF8_BowserSpaceEvent(void);
void func_800F7044_BowserSpaceEvent(void);
void func_800F7410_BowserSpaceEvent(void);
void func_800F7BFC_BowserSpaceEvent(void);
void func_800F80EC_BowserSpaceEvent(void);

s32 D_800F8ED0_BowserSpaceEvent = 0;
s32 D_800F8ED4_BowserSpaceEvent[] = {0x00000002, 0x0000000C, 0x00000014, 0x00000020, 0x0000029, 0x00000031, 0x0000003A, 0x00000047};

Vec3f D_800F8EF4_BowserSpaceEvent = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F8F00_BowserSpaceEvent = {115.0f, 0.0f, 1520.0f};

s32 D_800F8F0C_BowserSpaceEvent[] =  {0x00000005, 0x000A0068, 0x000A006A, 0x000A006C, 0x000A006D, 0x000A006B};
s32 D_800F8F24_BowserSpaceEvent[] = {0x00000004, 0x0001003E, 0x0001003D, 0x00010095, 0x00010039};
s32 D_800F8F38_BowserSpaceEvent[] = {0x00000004, 0x0002003E, 0x0002003D, 0x00020095, 0x00020039};
s32 D_800F8F4C_BowserSpaceEvent[] = {0x00000004, 0x0006003E, 0x0006003D, 0x00060095, 0x00060039};
s32 D_800F8F60_BowserSpaceEvent[] = {0x00000004, 0x0003003E, 0x0003003D, 0x00030095, 0x00030039,};
s32 D_800F8F74_BowserSpaceEvent[] = {0x00000004, 0x0004003E, 0x0004003D, 0x00040095, 0x00040039,};
s32 D_800F8F88_BowserSpaceEvent[] = {0x00000004, 0x0005003E, 0x0005003D, 0x00050095, 0x00050039,};

void* D_800F8F9C_BowserSpaceEvent[] = {
    D_800F8F24_BowserSpaceEvent, D_800F8F38_BowserSpaceEvent, D_800F8F4C_BowserSpaceEvent,
    D_800F8F60_BowserSpaceEvent, D_800F8F74_BowserSpaceEvent, D_800F8F88_BowserSpaceEvent, 
};

void (*D_800F8FB4_BowserSpaceEvent[7])() = {
    &func_800F677C_BowserSpaceEvent, &func_800F69F0_BowserSpaceEvent, &func_800F6AF8_BowserSpaceEvent, &func_800F7044_BowserSpaceEvent, &func_800F7410_BowserSpaceEvent, &func_800F7BFC_BowserSpaceEvent, &func_800F80EC_BowserSpaceEvent
};

//bss
extern u8 D_800F8FF0_BowserSpaceEvent;
extern u8 D_800F8FF1_BowserSpaceEvent;
extern u8 D_800F8FF2_BowserSpaceEvent;
extern u8 D_800F8FF3_BowserSpaceEvent;
extern Object* D_800F8FF4_BowserSpaceEvent;
extern Object* D_800F8FF8_BowserSpaceEvent;
extern u8 D_800F8FFC_BowserSpaceEvent[4];

void func_800F65E0_BowserSpaceEvent(void) {
    D_800F8FF0_BowserSpaceEvent = D_800ED5C2[0];
    D_800F8FF1_BowserSpaceEvent = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F8DF4_BowserSpaceEvent();
    func_800F8C6C_BowserSpaceEvent();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    HidePlayerHUDVisibility(0, 1);
    HidePlayerHUDVisibility(1, 1);
    HidePlayerHUDVisibility(2, 1);
    HidePlayerHUDVisibility(3, 1);
    func_8006CEA0();
    omAddPrcObj(func_800F8608_BowserSpaceEvent, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F8C20_BowserSpaceEvent);
    func_80060128(18);
    SetFadeInTypeAndTime(3, 16);
}

s32 func_800F66FC_BowserSpaceEvent(void) {
    s32 currentTurn = D_800ED5C0.currentTurn;

    if (currentTurn <= 5) {
        return 10;
    } else if (currentTurn <= 15) {
        return 20;
    } else if (currentTurn <= 30) {
        return 30;
    } else if (currentTurn <= 45) {
        return 40;
    } else {
        return 50;
    }
}

void func_800F6744_BowserSpaceEvent(void) {
    func_80055A34(D_800F8FF1_BowserSpaceEvent);
    func_80054868(24);
    func_80055A34(-1);
    HuPrcSleep(20);
}

void func_800F677C_BowserSpaceEvent(void) {
    char sp10;
    s32 windowID;
    s32 var_s0;

    if (func_800F66FC_BowserSpaceEvent() > gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount ) {
        windowID = CreateTextWindow(40, 60, 18, 3);
        LoadStringIntoWindow(windowID, (void*)0xCD, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(145);
        func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(windowID);
        var_s0 = gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount;
    } else {
        windowID = CreateTextWindow(40, 60, 19, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(windowID, &sp10, 0);
        LoadStringIntoWindow(windowID, (void*)0xCC, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(145);
        func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(windowID);
        var_s0 = func_800F66FC_BowserSpaceEvent();
    }
    func_800F6744_BowserSpaceEvent();
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
    func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
    func_80060468(0x44A, gPlayers[D_800F8FF1_BowserSpaceEvent].characterID);
    func_80055960(D_800F8FF1_BowserSpaceEvent, -var_s0);
    func_800503B0(D_800F8FF1_BowserSpaceEvent, 5);
    func_8004F504(D_800F8FF4_BowserSpaceEvent);
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
    windowID = CreateTextWindow(80, 60, 14, 3);
    LoadStringIntoWindow(windowID, (void*)0xCE, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(76);
    func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(windowID);
}


void func_800F69F0_BowserSpaceEvent(void) {
    s32 windowID;
    s32 i;

    windowID = CreateTextWindow(40, 60, 19, 3);
    LoadStringIntoWindow(windowID, (void*)0xCF, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x91);
    func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(windowID);

    for (i = 0; i < 4; i++) {
        if (i == D_800F8FF1_BowserSpaceEvent) {
            gPlayers[i].unk_00 = 0;
        } else {
            gPlayers[i].unk_00 = 1;
        }        
    }
    D_800F8ED0_BowserSpaceEvent = 1;
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 2, 0);
    HuPrcSleep(30);
}

void func_800F6AF8_BowserSpaceEvent(void) {
    s32 windowID;
    s32 temp_s4;
    s32 temp_s2;
    s32 var_a0;
    s32 var_s0;
    s32 i;
    s32 var_s3;
    s32 var_v1;

    var_s3 = 0;
    windowID = CreateTextWindow(40, 60, 19, 4);
    LoadStringIntoWindow(windowID, (void*)0xD4, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(145);
    func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(windowID);
    func_80054868(0);
    HuPrcSleep(20);
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 2, 0);
    func_8004F40C(D_800F8FF4_BowserSpaceEvent, 0, 2);
    PlaySound(0x56);
    func_8005546C(0);
    func_8005546C(1);
    func_8005546C(2);
    func_8005546C(3);
    
    for (i = 0; i < 60; i++) {
        func_800546B4(0, i % 5);
        func_800546B4(1, i % 5);
        func_800546B4(2, i % 5);
        func_800546B4(3, i % 5);
        HuPrcVSleep();
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
    
    if (gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount < temp_s2) {
        var_s3 = 1;
    } else if (temp_s2 < gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount) {
        var_s3 = 2;
    }
    
    var_a0 = -1;
    var_v1 = 0;

    for (i = 0; i < 4; i++) {
        if (var_v1 < (temp_s2 - gPlayers[i].coinAmount)) {
            if (var_a0 != -1) {
                D_800F8FFC_BowserSpaceEvent[var_a0] = 0;
            }
            D_800F8FFC_BowserSpaceEvent[i] = 1;
            var_a0 = i;
            var_v1 = temp_s2 - gPlayers[i].coinAmount;
        } else {
            D_800F8FFC_BowserSpaceEvent[i] = 0;
        }
    }

    temp_s4 = gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount;
    
    for (i = 0; i < 4; i++) {
        func_80055810(i, temp_s2 - gPlayers[i].coinAmount, D_800F8FFC_BowserSpaceEvent[i]);
        if ((temp_s2 - gPlayers[i].coinAmount) < 0) {
            func_800503B0(i, 5);
        }
    }

    for (i = 0; i < 30; i++) {
        func_800546B4(0, i % 5);
        func_800546B4(1, i % 5);
        func_800546B4(2, i % 5);
        func_800546B4(3, i % 5);
        HuPrcVSleep();
    }
 
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_80055544(0);
    func_80055544(1);
    func_80055544(2);
    func_80055544(3);
    windowID = CreateTextWindow(80, 60, 14, 4);
    LoadStringIntoWindow(windowID, (void*)0xD5, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x4C);
    func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(windowID);
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 2);
    switch (var_s3) {
    case 1:
        func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 3, 0);
        if (temp_s4 + 10 <= gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount) {
            func_80060468(0x451, gPlayers[D_800F8FF1_BowserSpaceEvent].characterID);
            HuPrcSleep(10);
        }
        break;
    case 2:
        func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
        if (temp_s4 - 10 >= gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount) {
            func_80060468(0x44A, gPlayers[D_800F8FF1_BowserSpaceEvent].characterID);
            HuPrcSleep(10); 
        }
        break;
    }
    HuPrcSleep(30);
}

void func_800F7044_BowserSpaceEvent(void) {
    char sp10;
    s32 windowID;
    s32 var_a2;
    s32 var_s0_2;
    s32 i;

    if (D_800C597A == 0) {
        windowID = CreateTextWindow(60, 60, 16, 3);
        LoadStringIntoWindow(windowID, (void*)0xD6, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x91);
        func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(windowID);
        
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1_BowserSpaceEvent)
                gPlayers[i].unk_00 = 0;
            else {
                gPlayers[i].unk_00 = 1;
            }
            
        }
        
        D_800F8ED0_BowserSpaceEvent = 2;
        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 2, 0);
        HuPrcSleep(0x1E);
        return;
    }

    if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins == 0) {
        windowID = CreateTextWindow(80, 60, 14, 3);
        LoadStringIntoWindow(windowID, (void*)0xD9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x4D);
        func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(windowID);
        var_s0_2 = 0xF;
    } else {
        windowID = CreateTextWindow(60, 60, 16, 3);
        var_a2 = gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins;
        
        if (var_a2 < 0) {
            var_a2 = -var_a2;
        }
        
        sprintf(&sp10, "%d", var_a2);
        func_8006DA5C(windowID, &sp10, 1);
        LoadStringIntoWindow(windowID, (void*)0xD7, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x4D);
        func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(windowID);
        var_s0_2 = -gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins;
    }

    func_800F6744_BowserSpaceEvent();
    func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
    if (var_s0_2 >= 10) {
        func_80060468(0x44A, gPlayers[D_800F8FF1_BowserSpaceEvent].characterID);
    }

    func_80055960(D_800F8FF1_BowserSpaceEvent, -var_s0_2);
    func_800503B0(D_800F8FF1_BowserSpaceEvent, 5);

    for (i = 0; i < 4; i++) {
        if (i != D_800F8FF1_BowserSpaceEvent) {
            func_80055810(i, gPlayers[i].miniGameCoins, 0);
        }        
    }

    func_8004F504(D_800F8FF4_BowserSpaceEvent);
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
    windowID = CreateTextWindow(80, 60, 14, 3);
    LoadStringIntoWindow(windowID, (void*)0xD8, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    PlaySound(0x4C);
    func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(windowID);
}

void func_800F7410_BowserSpaceEvent(void) {
    char sp10;
    s32 var_a1_2;
    s32 var_s2;
    s32 var_s1;
    s32 var_s4;
    s32 i;
    s32 tempVar;

    var_s2 = 0;
    if (D_800C597A == 0) {
        var_s1 = CreateTextWindow(40, 60, 19, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, (void*)0xDA, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x91);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        
        for (i = 0; i < 4; i++) {
            gPlayers[i].unk_00 = i;
        }
        
        D_800F8ED0_BowserSpaceEvent = 3;
        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 2, 0);
        HuPrcSleep(0x1E);
        return;
    }
    
    var_s4 = 0;
    
    for (i = 0; i < 4; i++) {
        switch (gPlayers[i].miniGameCoins) {
        case 0:
            var_s4++;
        }
    }
    
    switch (var_s4) {
    case 4:
        var_s1 = CreateTextWindow(60, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, (void*)0xDB, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        break;
    case 3:
        var_s1 = CreateTextWindow(60, 60, 16, 4);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, (void*)0xDC, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        break;
    case 2:
        var_s1 = CreateTextWindow(60, 60, 16, 4);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, (void*)0xDD, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        break;
    case 1:
        var_s1 = CreateTextWindow(80, 60, 14, 4);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        i = 0;
        var_s2 = 1;
        for (; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }
        LoadStringIntoWindow(var_s1, (void*)0xDE, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        break;
    default:
        var_s1 = CreateTextWindow(60, 60, 16, 4);
        if (gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount < func_800F66FC_BowserSpaceEvent()) {
            var_s2 = gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount;
        } else {
            var_s2 = func_800F66FC_BowserSpaceEvent();
        }
        sprintf(&sp10, "%d", var_s2);
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, (void*)0xDF, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x4D);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
    }

    if (var_s4 == 0) {
        func_800F6744_BowserSpaceEvent();
        func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
        func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
        func_80055960(D_800F8FF1_BowserSpaceEvent, -var_s2);
        if (gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount != 0) {
            func_800503B0(D_800F8FF1_BowserSpaceEvent, 5);
        }
    } else {
        for (i = 0; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_80054868(i + 10);
            }            
        }
        
        HuPrcSleep(0x14);
        
        if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins == 0) {
            func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
        }
        func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0U);
        
        tempVar = -1;
        var_a1_2 = 0; //a0
        
    
        for (i = 0; i < 4; i++) {
            if ((gPlayers[i].miniGameCoins == 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
                if (tempVar != -1) {
                    D_800F8FFC_BowserSpaceEvent[tempVar] = 0;
                }
                D_800F8FFC_BowserSpaceEvent[i] = 1;
                var_a1_2 = gPlayers[i].coinAmount;
                tempVar = i;
            } else {
                D_800F8FFC_BowserSpaceEvent[i] = 0;
            }
            
        }

        for (i = 0; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_80055810(i, -func_800F66FC_BowserSpaceEvent(), D_800F8FFC_BowserSpaceEvent[i]);
                if (gPlayers[i].coinAmount != 0) {
                    func_800503B0(i, 5);
                }
            }
        }
    }
    
    func_8004F504(D_800F8FF4_BowserSpaceEvent);
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
    var_s1 = CreateTextWindow(80, 60, 14, 3);
    LoadStringIntoWindow(var_s1, (void*)0xE0, -1, -1);
    func_8006E070(var_s1, 0);
    ShowTextWindow(var_s1);
    PlaySound(76);
    func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(var_s1);
}

void func_800F7BFC_BowserSpaceEvent(void) {
    char sp10;
    s32 var_a1_2;
    s32 temp_s1;
    s32 tempVar;
    s32 i;

    if (D_800C597A == 0) {
        temp_s1 = CreateTextWindow(40, 60, 17, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, (void*)0xE1, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(145);
        func_8004DBD4(temp_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(temp_s1);
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1_BowserSpaceEvent) {
                gPlayers[i].unk_00 = 0;
            } else {
                gPlayers[i].unk_00 = 1;
            }
        }
        D_800F8ED0_BowserSpaceEvent = 4;
        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 2, 0);
        HuPrcSleep(0x1E);
        return;
    }
    if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins < 0) {
        temp_s1 = CreateTextWindow(60, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, (void*)0xE2, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(temp_s1);
    } else if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins > 0) {
        temp_s1 = CreateTextWindow(60, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, (void*)0xE3, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(temp_s1);
    } else {
        temp_s1 = CreateTextWindow(60, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(temp_s1, &sp10, 0);
        LoadStringIntoWindow(temp_s1, (void*)0xE4, -1, -1);
        func_8006E070(temp_s1, 0);
        ShowTextWindow(temp_s1);
        PlaySound(0x4D);
        func_8004DBD4(temp_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(temp_s1);
    }

    for (i = 0; i < 4; i++) {
       if (gPlayers[i].miniGameCoins <= 0) {
           func_80054868(i + 10);
       }
    }
    
    HuPrcSleep(20);
    
    if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins <= 0) {
        func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
    }
    
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
    
    tempVar = -1;
    var_a1_2 = 0; //a0
    

    for (i = 0; i < 4; i++) {
        if ((gPlayers[i].miniGameCoins <= 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
            if (tempVar != -1) {
                D_800F8FFC_BowserSpaceEvent[tempVar] = 0;
            }
            D_800F8FFC_BowserSpaceEvent[i] = 1;
            var_a1_2 = gPlayers[i].coinAmount;
            tempVar = i;
        } else {
            D_800F8FFC_BowserSpaceEvent[i] = 0;
        }
        
    }
    
    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins > 0) {
            continue;
        } else {
            func_80055810(i, -(func_800F66FC_BowserSpaceEvent()), D_800F8FFC_BowserSpaceEvent[i]);
            if (gPlayers[i].coinAmount) {
                func_800503B0(i, 5);
            }
        }
    }
    
    func_8004F504(D_800F8FF4_BowserSpaceEvent);
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
    temp_s1 = CreateTextWindow(80, 60, 14, 3);
    LoadStringIntoWindow(temp_s1, (void*)0xE5, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    PlaySound(0x4C);
    func_8004DBD4(temp_s1, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(temp_s1);
}

void func_800F80EC_BowserSpaceEvent(void) {
    char sp10;
    s32 var_a1_2;
    s32 var_s1;
    s32 var_s2;
    s32 i;
    s32 tempVar;

    if (D_800C597A == 0) {
        var_s1 = CreateTextWindow(40, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, (void*)0xE6, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(0x91);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
        
        for (i = 0; i < 4; i++) {
            if (i == D_800F8FF1_BowserSpaceEvent) {
                gPlayers[i].unk_00 = 0;
            } else {
                gPlayers[i].unk_00 = 1;
            }
        }
        
        D_800F8ED0_BowserSpaceEvent = 5;
        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 2, 0);
        HuPrcSleep(0x1E);
        return;
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins != 0) {
            break;
        }
    }
    
    if (i != 4) {
        var_s1 = CreateTextWindow(60, 60, 16, 4);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);

        for (i = 0, var_s2 = 1; i < 4; i++) {
            if (gPlayers[i].miniGameCoins == 0) {
                func_8006DA5C(var_s1, D_800C5218[gPlayers[i].characterID], var_s2++);
            }
        }

        LoadStringIntoWindow(var_s1, (void*)0xE7, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(77);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
    } else {
        var_s1 = CreateTextWindow(60, 60, 16, 3);
        sprintf(&sp10, "%d", func_800F66FC_BowserSpaceEvent());
        func_8006DA5C(var_s1, &sp10, 0);
        LoadStringIntoWindow(var_s1, (void*)0xE8, -1, -1);
        func_8006E070(var_s1, 0);
        ShowTextWindow(var_s1);
        PlaySound(77);
        func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
        HideTextWindow(var_s1);
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins == 0) {
            func_80054868(i + 10);
        }        
    }
    
    HuPrcSleep(20);
    if (gPlayers[D_800F8FF1_BowserSpaceEvent].miniGameCoins == 0) {
        func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 0, 0);
    }
    
    func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
    
    tempVar = -1;
    var_a1_2 = 0;

    for (i = 0; i < 4; i++) {
        if ((gPlayers[i].miniGameCoins == 0) && (var_a1_2 < gPlayers[i].coinAmount)) {
            if (tempVar != -1) {
                D_800F8FFC_BowserSpaceEvent[tempVar] = 0;
            }
            
            D_800F8FFC_BowserSpaceEvent[i] = 1;
            var_a1_2 = gPlayers[i].coinAmount;
            tempVar = i;
        } else {
            D_800F8FFC_BowserSpaceEvent[i] = 0;
        }
    }

    for (i = 0; i < 4; i++) {
        if (gPlayers[i].miniGameCoins == 0) {
            func_80055810(i, -func_800F66FC_BowserSpaceEvent(), D_800F8FFC_BowserSpaceEvent[i]);
            if (gPlayers[i].coinAmount != 0) {
                func_800503B0(i, 5);
            }
        }
    }
    
    func_8004F504(D_800F8FF4_BowserSpaceEvent);
    func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
    var_s1 = CreateTextWindow(80, 60, 14, 3);
    LoadStringIntoWindow(var_s1, (void*)0xE9, -1, -1);
    func_8006E070(var_s1, 0);
    ShowTextWindow(var_s1);
    PlaySound(0x4C);
    func_8004DBD4(var_s1, D_800F8FF1_BowserSpaceEvent);
    HideTextWindow(var_s1);
}

void func_800F8608_BowserSpaceEvent(void) {
    s32 windowID;
    s32 var_s0_2;
    s32 var_s2;
    s32 i;
    u8 new_var2;

    var_s2 = 0;
    if (D_800C597A == 0) {
        func_8004935C();
        func_800499CC(D_800F8FF1_BowserSpaceEvent);
        HuPrcSleep(0x1A);
        if (gPlayers[D_800F8FF1_BowserSpaceEvent].coinAmount == 0) {
            if (gPlayers[D_800F8FF1_BowserSpaceEvent].starAmount == 0) {
                windowID = CreateTextWindow(80, 60, 14, 4);
                LoadStringIntoWindow(windowID, (void*)0xCA, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(77);
                func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
                HideTextWindow(windowID);
                func_800F6744_BowserSpaceEvent();
                func_8004F4D4(D_800F8FF8_BowserSpaceEvent, 2, 0);
                func_80055960(D_800F8FF1_BowserSpaceEvent, 20);
                HuPrcSleep(30);
                windowID = CreateTextWindow(80, 60, 14, 3);
                LoadStringIntoWindow(windowID, (void*)0xCB, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(76);
                func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
                HideTextWindow(windowID);
            } else {
                windowID = CreateTextWindow(80, 60, 14, 4);
                LoadStringIntoWindow(windowID, (void*)0xC8, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4D);
                func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
                HideTextWindow(windowID);
                func_800F6744_BowserSpaceEvent();
                func_8003E81C(D_800F8FF4_BowserSpaceEvent, 1, 0);
                func_8004F40C(D_800F8FF4_BowserSpaceEvent, 0, 2);
                func_8003E81C(D_800F8FF8_BowserSpaceEvent, 1, 0);
                func_80055994(D_800F8FF1_BowserSpaceEvent, 2);
                new_var2 = D_800F8FF1_BowserSpaceEvent; //?
                gPlayers[new_var2].starAmount--;
                func_80060618(0x44A, D_800F8FF1_BowserSpaceEvent);
                func_80055960(D_800F8FF1_BowserSpaceEvent, 10);
                func_800503B0(D_800F8FF1_BowserSpaceEvent, 6);
                HuPrcSleep(0x1E);
                windowID = CreateTextWindow(80, 60, 14, 3);
                LoadStringIntoWindow(windowID, (void*)0xC9, -1, -1);
                func_8006E070(windowID, 0);
                ShowTextWindow(windowID);
                PlaySound(0x4C);
                func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
                HideTextWindow(windowID);
            }
        } else {
            windowID = CreateTextWindow(80, 60, 13, 4);
            LoadStringIntoWindow(windowID, (void*)0xC6, -1, -1);
            func_8006E070(windowID, 0);
            ShowTextWindow(windowID);
            PlaySound(77);
            func_8004DBD4(windowID, D_800F8FF1_BowserSpaceEvent);
            HideTextWindow(windowID);
            func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 3, 0);
            HuPrcSleep(0x20);
            func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
            func_8004EE14(0, D_800F32A0, 15, D_800F8FF4_BowserSpaceEvent);
            var_s0_2 = 0;
            func_80049E60();
            
            while (func_80049328() == -1) {
                if (func_80049340() == 2) {
                    if (var_s0_2 == 0) {
                        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 1, 0);
                        var_s0_2 = 1;
                    } else if (++var_s0_2 == 40) {
                        func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 4, 6);
                    }
                }
                
                if ((func_80049340() == 4) && (var_s2 == 0)) {
                    func_8004EE14(0, &D_800F8F00_BowserSpaceEvent.x, 15, D_800F8FF4_BowserSpaceEvent);
                    var_s2 = 1;
                }
                
                HuPrcVSleep();     
                
            }

            func_80049478();
            func_8004F4D4(D_800F8FF4_BowserSpaceEvent, 0, 2);
            
            if (D_800C597A == 0) {
                D_800F8FB4_BowserSpaceEvent[func_80049328()]();
            } else {
                HuPrcSleep(26);
                D_800F8FB4_BowserSpaceEvent[func_80049334()](); //function ptr array
            }
        }
    } else {
        HuPrcSleep(26);
        D_800F8FB4_BowserSpaceEvent[func_80049334()](); //function ptr array
    }

    for (i = 0; i < 4; i++) {
        gPlayers[i].miniGameCoins = 0;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        HuPrcVSleep();
    }
}

void func_800F8B1C_BowserSpaceEvent(void) {
    if ( func_80072718() == 0 ) {
        func_800F8EA8_BowserSpaceEvent();
        func_800F8DC0_BowserSpaceEvent();
        func_80054654();
        func_80070ED4();
        switch (D_800F8ED0_BowserSpaceEvent) {
            case 0:
                omOvlReturnEx(1);
                break;
            case 1:
                SetBoardFeatureFlag(69);
                omOvlGotoEx(1, 0, 146);
                break;
            case 2:
                SetBoardFeatureFlag(69);
                func_80059348(16);
                omOvlCallEx(111, 0, 148);
                omOvlHisChg(1, 70, 1, 146);
                break;
            case 3:
                SetBoardFeatureFlag(69);
                func_80059348(14);
                omOvlCallEx(111, 0, 148);
                omOvlHisChg(1, 70, 1, 146);
                break;
            case 4:
                SetBoardFeatureFlag(69);
                func_80059348(51);
                omOvlCallEx(111, 0, 148);
                omOvlHisChg(1, 70, 1, 146);
                break;
            case 5:
                SetBoardFeatureFlag(69);
                func_80059348(19);
                omOvlCallEx(111, 0, 148);
                omOvlHisChg(1, 70, 1, 146);
                break;
        }
    }
}

void func_800F8C20_BowserSpaceEvent(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 16);
        func_800601D4(32);
        arg0->func_ptr = &func_800F8B1C_BowserSpaceEvent;
    }
}

void func_800F8C6C_BowserSpaceEvent(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F8FF4_BowserSpaceEvent = CreateObject(6, &D_800F8F0C_BowserSpaceEvent);
    D_800F8FF4_BowserSpaceEvent->coords.x = D_800F8EF4_BowserSpaceEvent.x;
    D_800F8FF4_BowserSpaceEvent->coords.y = D_800F8EF4_BowserSpaceEvent.y;
    D_800F8FF4_BowserSpaceEvent->coords.z = D_800F8EF4_BowserSpaceEvent.z;
    D_800F8FF4_BowserSpaceEvent->xScale = D_800F8FF4_BowserSpaceEvent->yScale = D_800F8FF4_BowserSpaceEvent->zScale = 1.5f;
    D_800F8FF8_BowserSpaceEvent = CreateObject(func_80052F04(D_800F8FF1_BowserSpaceEvent), D_800F8F9C_BowserSpaceEvent[gPlayers[D_800F8FF1_BowserSpaceEvent].characterID]);
    D_800F8FF8_BowserSpaceEvent->coords.x = D_800F8F00_BowserSpaceEvent.x;
    D_800F8FF8_BowserSpaceEvent->coords.y = D_800F8F00_BowserSpaceEvent.y;
    D_800F8FF8_BowserSpaceEvent->coords.z = D_800F8F00_BowserSpaceEvent.z;
    func_80021B14(*D_800F8FF8_BowserSpaceEvent->unk_3C->unk_40, gPlayers[D_800F8FF1_BowserSpaceEvent].characterID, 0x80);
    func_8004CCD0(&D_800F8FF8_BowserSpaceEvent->coords, &D_800F8FF4_BowserSpaceEvent->coords, &D_800F8FF8_BowserSpaceEvent->unk_18);
    func_8004CCD0(&D_800F8FF4_BowserSpaceEvent->coords, &D_800F8FF8_BowserSpaceEvent->coords, &D_800F8FF4_BowserSpaceEvent->unk_18);
}

void func_800F8DC0_BowserSpaceEvent(void) {
    DestroyObject(D_800F8FF8_BowserSpaceEvent);
    DestroyObject(D_800F8FF4_BowserSpaceEvent);
    func_8004F2EC();
}

void func_800F8DF4_BowserSpaceEvent(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(D_800F8ED4_BowserSpaceEvent[D_800F8FF0_BowserSpaceEvent]);
}

void func_800F8EA8_BowserSpaceEvent(void) {
    func_8004A140();
    func_80049F0C();
}
