#include "common.h"
#include "engine/process.h"

void func_800F66B4_ChangeCannonTargetWarioBoard(void);
void func_800F69D8_ChangeCannonTargetWarioBoard(s32);
void func_800F6B30_ChangeCannonTargetWarioBoard(void);
void func_800F6994_ChangeCannonTargetWarioBoard(omObjData*);
void func_800F6B04_ChangeCannonTargetWarioBoard(void);
void func_800F6BD0_ChangeCannonTargetWarioBoard(void);
void func_800F69D8_ChangeCannonTargetWarioBoard(s32);
void func_800F6B04_ChangeCannonTargetWarioBoard(void);
void func_8004DBD4(s32, u8);
void func_800F6948_ChangeCannonTargetWarioBoard(void);

extern u8 D_800F6C50_ChangeCannonTargetWarioBoard;
extern Vec3f D_800F6C24_ChangeCannonTargetWarioBoard[];
extern s32 D_800F6C3C_ChangeCannonTargetWarioBoard[];
extern s32 D_800F6C44_ChangeCannonTargetWarioBoard[];
extern u8 D_800F6C50_ChangeCannonTargetWarioBoard;
extern void* D_800F6C54_ChangeCannonTargetWarioBoard;
extern void* D_800F6C58_ChangeCannonTargetWarioBoard;

void func_800F65E0_ChangeCannonTargetWarioBoard(void) {
    D_800F6C50_ChangeCannonTargetWarioBoard = D_800ED5DC;
    omInitObjMan(50, 10);
    func_800F6B30_ChangeCannonTargetWarioBoard();
    func_800F69D8_ChangeCannonTargetWarioBoard(1);
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F66B4_ChangeCannonTargetWarioBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6994_ChangeCannonTargetWarioBoard);
    SetFadeInTypeAndTime(4, 16);
}


void func_800F66B4_ChangeCannonTargetWarioBoard(void) {
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
    func_8004DBD4(windowID, D_800F6C50_ChangeCannonTargetWarioBoard);
    HideTextWindow(windowID);
    PlaySound(0xC4);
    func_8004EE14(0, &D_800F6C24_ChangeCannonTargetWarioBoard[D_800F6C44_ChangeCannonTargetWarioBoard[D_800ED100.boardRam[15]]], 0x1E, D_800F6C58_ChangeCannonTargetWarioBoard);
    
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
    func_800F6B04_ChangeCannonTargetWarioBoard();
    func_8004A140();
    LoadBackgroundIndex(0x20);
    func_800F69D8_ChangeCannonTargetWarioBoard(0);
    SetFadeInTypeAndTime(0, 4);
    HuPrcSleep(4);
    windowID = CreateTextWindow(0x64, 0x50, 0xC, 3);
    LoadStringIntoWindow(windowID, (void* )0x1C5, -1, -1);
    func_8006E070(windowID, 0);
    ShowTextWindow(windowID);
    func_8004DBD4(windowID, D_800F6C50_ChangeCannonTargetWarioBoard);
    HideTextWindow(windowID);
    PlaySound(0xC4);
    func_8004EE14(0, &D_800F6C24_ChangeCannonTargetWarioBoard[D_800F6C3C_ChangeCannonTargetWarioBoard[D_800ED100.boardRam[15]]], 30, D_800F6C58_ChangeCannonTargetWarioBoard);
    
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

void func_800F6948_ChangeCannonTargetWarioBoard(void) {
    if (func_80072718() == 0) {
        func_800F6BD0_ChangeCannonTargetWarioBoard();
        func_800F6B04_ChangeCannonTargetWarioBoard();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F6994_ChangeCannonTargetWarioBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(4, 16);
        arg0->func_ptr = &func_800F6948_ChangeCannonTargetWarioBoard;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_51_ChangeCannonTargetWarioBoard/28E630", func_800F69D8_ChangeCannonTargetWarioBoard); //https://decomp.me/scratch/XixHe

void func_800F6B04_ChangeCannonTargetWarioBoard(void) {
    DestroyObject(D_800F6C54_ChangeCannonTargetWarioBoard);
    DestroyObject(D_800F6C58_ChangeCannonTargetWarioBoard);
}

void func_800F6B30_ChangeCannonTargetWarioBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(0x1D);
}

void func_800F6BD0_ChangeCannonTargetWarioBoard(void) {
    func_8004A140();
    func_80049F0C();
}
