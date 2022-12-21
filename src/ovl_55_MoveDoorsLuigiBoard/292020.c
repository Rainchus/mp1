#include "process.h"
#include "292020.h"

void func_800F65E0_292020(void) {
    D_800F7820 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F765C_29309C();
    func_800F7528_292F68();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F7198_292BD8, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F74C8_292F08);

    if (D_800C597A != 0) {
        SetFadeInTypeAndTime(6, 8);
    } else {
        SetFadeInTypeAndTime(1, 16);
    }
}


INCLUDE_ASM(s32, "ovl_55_MoveDoorsLuigiBoard/292020", func_800F66D0_292110);

INCLUDE_ASM(s32, "ovl_55_MoveDoorsLuigiBoard/292020", func_800F6F14_292954);

void func_800F7198_292BD8(void) {
    s8 sp10[3];
    s32 temp_v0;
    s32 temp_s0;

    if (D_800C597A == 0) {
        func_800421E0();
        SleepProcess(0x10);
        PlaySound(0xDA);
        SleepProcess(10);
    } else {
        SleepProcess(8);
    }
    
    temp_v0 = CreateTextWindow(0x3C, 0x28, 0x11, 7);
    
    if (gPlayers[D_800F7820].coinAmount < 0x14) {
        func_8006DA5C(temp_v0, &D_800F7810, 0);
        sp10[0] = 0;
    } else {
        func_8006DA5C(temp_v0, &D_800F7814, 0);
        sp10[0] = 1;
    }
    sp10[2] = 1;
    sp10[1] = 1;
    LoadStringIntoWindow(temp_v0, (void* )0x1D5, -1, -1);
    func_8006E070(temp_v0, 0);
    ShowTextWindow(temp_v0);

    while ((func_8006FCC0(temp_v0) << 0x10) != 0) {
        SleepVProcess();
    }
    
    temp_s0 = func_800F6F14_292954(temp_v0, sp10);
    
    HideTextWindow(temp_v0);
    if (temp_s0 == 2) {
        D_800F7720 = 1;
    } else if (temp_s0 == 1) {
        temp_v0 = CreateTextWindow(80, 60, 15, 3);
        LoadStringIntoWindow(temp_v0, (void* )0x1D7, -1, -1);
        func_8006E070(temp_v0, 0);
        ShowTextWindow(temp_v0);
        func_8004DBD4(temp_v0, D_800F7820);
        HideTextWindow(temp_v0);
        D_800ED156 = 0;
    } else {
        func_80055960(D_800F7820, -0x14);
        SleepProcess(30);
        D_800ED156 = 1;
        temp_v0 = CreateTextWindow(0x50, 0x3C, 0xD, 3);
        LoadStringIntoWindow(temp_v0, (void* )0x1D6, -1, -1);
        func_8006E070(temp_v0, 0);
        ShowTextWindow(temp_v0);
        func_8004DBD4(temp_v0, D_800F7820);
        HideTextWindow(temp_v0);
        func_8004F4D4(D_800F7824, 0, 0);
        func_800503B0(D_800F7820, 1);
        PlaySound(0xE1);
        SleepProcess(15);
    }
    
    D_800F5144 = 1;
    
    while (1) {
        SleepVProcess();
    }
}

void func_800F744C_292E8C(void) {
    if (func_80072718() == 0) {
        func_800F76FC_29313C();
        func_800F7630_293070();
        func_80054654();
        func_80070ED4();
        if (D_800F7720 == 0) {
            func_8005DFB8(1);
            return;
        }
        func_8004F284();
        func_8004F28C(85, D_800F7720);
    }
}

void func_800F74C8_292F08(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        if (D_800F7720 != 0) {
            func_800726AC(6, 8);
        } else {
            func_800726AC(1, 16);
        }
        arg0->func_ptr = &func_800F744C_292E8C;
    }
}

void func_800F7528_292F68(void) {
    func_8003DAA8();
    D_800F7824 = CreateObject(0x11, D_800F773C);
    D_800F7824->coords.x = D_800F7724.x;
    D_800F7824->coords.y = D_800F7724.y;
    D_800F7824->coords.z = D_800F7724.z;
    func_8003E81C(D_800F7824, 1, 2);
    D_800F7828 = CreateObject(func_80052F04(D_800F7820), D_800C5490[gPlayers[D_800F7820].characterID]);
    D_800F7828->coords.x = D_800F7730.x;
    D_800F7828->coords.y = D_800F7730.y;
    D_800F7828->coords.z = D_800F7730.z;
    func_8004CCD0(&D_800F7828->coords, &D_800F7824->coords, &D_800F7828->unk_18);
    func_8004CCD0(&D_800F7824->coords, &D_800F7828->coords, &D_800F7824->unk_18);
}

void func_800F7630_293070(void) {
    DestroyObject(D_800F7828);
    DestroyObject(D_800F7824);
}

void func_800F765C_29309C(void) {
    func_800178A0(1);
    func_80017660(0U, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0U, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(41);
}

void func_800F76FC_29313C(void) {
    func_8004A140();
    func_80049F0C();
}
