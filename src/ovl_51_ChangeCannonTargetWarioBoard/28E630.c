#include "common.h"
#include "process.h"

void func_800F66B4_28E704(void);
void func_800F69D8_28EA28(s32);
void func_800F6B30_28EB80(void);
void func_800F6994_28E9E4(unkObjectStruct*);
void func_800F6B04_28EB54(void);
void func_800F6BD0_28EC20(void);
void func_800F69D8_28EA28(s32);
void func_800F6B04_28EB54(void);
void func_8004DBD4(s32, u8);
void func_800F6948_28E998(void);

extern u8 D_800F6C50;
extern s16 D_800ED172;
extern Vec3f D_800F6C24[];
extern s32 D_800F6C3C[];
extern s32 D_800F6C44[];
extern u8 D_800F6C50;
extern void* D_800F6C54;
extern void* D_800F6C58;

void func_800F65E0_28E630(void) {
    D_800F6C50 = D_800ED5DD;
    InitObjSystem(50, 10);
    func_800F6B30_28EB80();
    func_800F69D8_28EA28(1);
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66B4_28E704, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6994_28E9E4);
    SetFadeInTypeAndTime(4, 16);
}


void func_800F66B4_28E704(void) {
    s32 windowID;
    s32 i;
    s32 j;

    func_800421E0();
    HuPrcSleep(16);
    PlaySound(0xBF);
    HuPrcSleep(0xA);
    windowID = CreateTextWindow(100, 80, 13, 3);
    LoadStringIntoWindow(windowID, (void* )0x1C4, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    func_8004DBD4(windowID, D_800F6C50);
    HideTextWindow(windowID);
    PlaySound(0xC4);
    func_8004EE14(0, &D_800F6C24[D_800F6C44[D_800ED172]], 0x1E, D_800F6C58);
    
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 4; j++) {
            func_800503B0(j, 1);
        }
        HuPrcSleep(9);
    }
    
    PlaySound(0xC5);
    HuPrcSleep(30);
    func_800726AC(0, 4);
    HuPrcSleep(6);
    func_800F6B04_28EB54();
    func_8004A140();
    LoadBackgroundIndex(0x20);
    func_800F69D8_28EA28(0);
    SetFadeInTypeAndTime(0, 4);
    HuPrcSleep(4);
    windowID = CreateTextWindow(0x64, 0x50, 0xC, 3);
    LoadStringIntoWindow(windowID, (void* )0x1C5, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    func_8004DBD4(windowID, D_800F6C50);
    HideTextWindow(windowID);
    PlaySound(0xC4);
    func_8004EE14(0, &D_800F6C24[D_800F6C3C[D_800ED172]], 30, D_800F6C58);
    
    for (i = 0; i < 3; i++) {
        for (j = 0; j < 4; j++) {
            func_800503B0(j, 1);
        }
        HuPrcSleep(9);
    }
    
    PlaySound(0xC5);
    HuPrcSleep(30);
    D_800F5144 = 1;
    while(1) {
        HuPrcVSleep();
    }
}

void func_800F6948_28E998(void) {
    if (func_80072718() == 0) {
        func_800F6BD0_28EC20();
        func_800F6B04_28EB54();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F6994_28E9E4(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(4, 16);
        arg0->func_ptr = &func_800F6948_28E998;
    }
}

INCLUDE_ASM(s32, "ovl_51_ChangeCannonTargetWarioBoard/28E630", func_800F69D8_28EA28); //https://decomp.me/scratch/XixHe

void func_800F6B04_28EB54(void) {
    DestroyObject(D_800F6C54);
    DestroyObject(D_800F6C58);
}

void func_800F6B30_28EB80(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(0x1D);
}

void func_800F6BD0_28EC20(void) {
    func_8004A140();
    func_80049F0C();
}
