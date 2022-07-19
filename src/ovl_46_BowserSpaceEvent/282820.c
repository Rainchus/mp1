#include "common.h"
#include "282820.h"

void func_80055960(u8, s32);

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
        func_8008C490(&sp10, &D_800F8FD0, func_800F66FC_28293C());
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

// INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7044_283284);
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
        
        func_8008C490(&sp10, &D_800F8FD0, var_a2);
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

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7410_283650);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F7BFC_283E3C);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F80EC_28432C);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8608_284848);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8B1C_284D5C);

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

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8DC0_285000);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8DF4_285034);

INCLUDE_ASM(s32, "ovl_46_BowserSpaceEvent/282820", func_800F8EA8_2850E8);
