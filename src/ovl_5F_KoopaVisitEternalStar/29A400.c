#include "common.h"
#include "29A400.h"

void func_8004DBD4(s32, u8);

void func_800F65E0_29A400(void) {
    D_800F6D10 = D_800ED5C3;
    D_800F6D11 = D_800ED5DD;
    if (D_800ED192.amountOfTimesStartPassed % 10 == 0) {
        D_800F6D12 = D_800ED192.amountOfTimesStartPassed / 10;
        if (D_800F6D12 >= 5) {
            D_800F6D12 = 4;
        }
    } else {
        D_800F6D12 = 0;
    }
    InitObjSystem(0x32, 0xA);
    func_800F6B80_29A9A0();
    func_800F69CC_29A7EC();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(&func_800F673C_29A55C, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6988_29A7A8);
    SetFadeInTypeAndTime(1, 0x10);
}

void func_800F673C_29A55C(void) {
    char buffer1[8];
    char buffer2[8];
    s16 temp_s0;
    
    func_800421E0();
    SleepProcess(0x1A);
    if (D_800ED192.amountOfTimesStartPassed % 10 == 0) {
        temp_s0 = CreateTextWindow(0x32, 0x32, 0xF, 4);
        func_8008C490(buffer1, &D_800F6D00, D_800ED192.amountOfTimesStartPassed);
        func_8008C490(buffer2, &D_800F6D00, D_800F6C60[D_800F6D12]);
        func_8006DA5C(temp_s0, buffer1, 0);
        func_8006DA5C(temp_s0, buffer2, 1);
        LoadStringIntoWindow(temp_s0, (void*)0x17A, -1, -1);
        func_8006E070(temp_s0, 0);
        ShowTextWindow(temp_s0);
        PlaySound(0x432);
        func_8004DBD4(temp_s0, D_800F6D11);
        HideTextWindow(temp_s0);
    } else {
        temp_s0 = CreateTextWindow(0x50, 0x3C, 0xC, 3);
        LoadStringIntoWindow(temp_s0, (void*)0x239, -1, -1);
        func_8006E070(temp_s0, 0);
        ShowTextWindow(temp_s0);
        PlaySound(0x432);
        func_8004DBD4(temp_s0, D_800F6D11);
        HideTextWindow(temp_s0);
    }
    
    func_8004CCD0(&D_800F6D18->coords, &D_800F32A0->coords, &D_800F6D18->unk_18);
    func_8004F4D4(D_800F6D18, 0, 0);
    func_80060468(0x451, gPlayers[D_800F6D11].characterID);
    func_80055960(D_800F6D11, D_800F6C60[D_800F6D12]);
    SleepProcess(0x28);
    D_800F5144 = 1;
    
    while (1) {
       SleepVProcess(); 
    }
}

void func_800F693C_29A75C(void) {
    if (func_80072718() == 0) {
        func_800F6C34_29AA54();
        func_800F6B3C_29A95C();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6988_29A7A8(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        arg0->func_ptr = &func_800F693C_29A75C;
    }
}

void func_800F69CC_29A7EC(void) {
    func_8003DAA8();
    if (IsBoardFeatureFlagSet(0x2C) == 0) {
        D_800F6D14 = CreateObject(8, NULL);
        func_8004F140(*D_800F6D14->unk_3C->unk_40);
    } else {
        D_800F6D14 = CreateObject(0x83, NULL);
    }

    D_800F6D14->coords.x = D_800F6C94.x;
    D_800F6D14->coords.y = D_800F6C94.y;
    D_800F6D14->coords.z = D_800F6C94.z;
    D_800F6D18 = CreateObject(func_80052F04(D_800F6D11) & 0xFF, D_800F6CDC[gPlayers[D_800F6D11].characterID]);
    D_800F6D18->coords.x = D_800F6CA0.x;
    D_800F6D18->coords.y = D_800F6CA0.y;
    D_800F6D18->coords.z = D_800F6CA0.z;
    func_80021B14(*D_800F6D18->unk_3C->unk_40, gPlayers[D_800F6D11].characterID, 0x80);
    func_8004CCD0(&D_800F6D14->coords, &D_800F6D18->coords, &D_800F6D14->unk_18);
    func_8004CCD0(&D_800F6D18->coords, &D_800F6D14->coords, &D_800F6D18->unk_18);
}

void func_800F6B3C_29A95C(void) {
    DestroyObject(D_800F6D14);
    DestroyObject(D_800F6D18);
    if (IsBoardFeatureFlagSet(0x2C) == 0) {
        func_8004F1D0();
    }
}

void func_800F6B80_29A9A0(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(D_800F6C68[D_800F6D10]);
}

void func_800F6C34_29AA54(void) {
    func_8004A140();
    func_80049F0C();
}
