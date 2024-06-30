#include "engine/process.h"
#include "28E030.h"

Vec3f D_800F6B20_LoadCannonWarioBoard = {-80.0f, 0.0f, 1310.0f};
Vec3f D_800F6B2C_LoadCannonWarioBoard = {80.0f, 0.0f, 1520.0f};
Vec3f D_800F6B38_LoadCannonWarioBoard = {35.0f, 0.0f, 1450.0f};
Vec3f D_800F6B44_LoadCannonWarioBoard = {120.0f, 0.0f, 1575.0f};
Vec3f D_800F6B50_LoadCannonWarioBoard = {55.0f, 0.0f, 1475.0f};
Vec3f D_800F6B5C_LoadCannonWarioBoard = {100.0f, 0.0f, 1555.0f};
Vec3f D_800F6B68_LoadCannonWarioBoard = {400.0f, 0.0f, 1940.0f};

s32 D_800F6B74_LoadCannonWarioBoard[] = {0x00000002, 0x00010000, 0x00010063};
s32 D_800F6B80_LoadCannonWarioBoard[] = {0x00000002, 0x00020000, 0x00020063};
s32 D_800F6B8C_LoadCannonWarioBoard[] = {0x00000002, 0x00060000, 0x00060063};
s32 D_800F6B98_LoadCannonWarioBoard[] = {0x00000002, 0x00030000, 0x00030063};
s32 D_800F6BA4_LoadCannonWarioBoard[] = {0x00000002, 0x00040000, 0x00040063};
s32 D_800F6BB0_LoadCannonWarioBoard[] = {0x00000002, 0x00050000, 0x00050063};

s32* D_800F6BBC_LoadCannonWarioBoard[] = {D_800F6B74_LoadCannonWarioBoard, D_800F6B80_LoadCannonWarioBoard, D_800F6B8C_LoadCannonWarioBoard, D_800F6B98_LoadCannonWarioBoard, D_800F6BA4_LoadCannonWarioBoard, D_800F6BB0_LoadCannonWarioBoard};

void func_800F65E0_LoadCannonWarioBoard(void) {
    D_800F6BE0_LoadCannonWarioBoard = D_800ED5DC;
    omInitObjMan(0x32, 0xA);
    func_800F6A54_LoadCannonWarioBoard();
    func_800F6918_LoadCannonWarioBoard();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F66B4_LoadCannonWarioBoard, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F68F4_LoadCannonWarioBoard);
    SetFadeInTypeAndTime(1, 16);
}


void func_800F66B4_LoadCannonWarioBoard(void) {
    s32 temp_s1;

    func_800421E0();
    HuPrcSleep(16);
    PlaySound(0xBF);
    HuPrcSleep(10);
    temp_s1 = CreateTextWindow(100, 80, 10, 4);

    LoadStringIntoWindow(temp_s1, (void* )0x1CC, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F6BE0_LoadCannonWarioBoard);
    HideTextWindow(temp_s1);
    func_8004E3E0(0, &D_800F6B38_LoadCannonWarioBoard, 20, D_800F6BE4_LoadCannonWarioBoard);
    HuPrcSleep(20);
    PlaySound(0xC2);
    PlaySound(0x145);
    func_800503B0(D_800F6BE0_LoadCannonWarioBoard, 1);
    func_8004F4D4(D_800F6BE8_LoadCannonWarioBoard, 1, 2);
    func_8004E3E0(0, &D_800F6B44_LoadCannonWarioBoard, 5, D_800F6BE8_LoadCannonWarioBoard);
    HuPrcSleep(20);
    func_8004E3E0(0, &D_800F6B50_LoadCannonWarioBoard, 5, D_800F6BE4_LoadCannonWarioBoard);
    func_8004E3E0(0, &D_800F6B5C_LoadCannonWarioBoard, 5, D_800F6BE8_LoadCannonWarioBoard);
    HuPrcSleep(4);
    PlaySound(0xC2);
    PlaySound(0x145);
    func_800503B0(D_800F6BE0_LoadCannonWarioBoard, 1);
    func_8004E3E0(0, &D_800F6B68_LoadCannonWarioBoard, 20, D_800F6BE8_LoadCannonWarioBoard);
    HuPrcSleep(5);
    func_8004E3E0(0, &D_800F6B5C_LoadCannonWarioBoard, 20, D_800F6BE4_LoadCannonWarioBoard);
    HuPrcSleep(5);
    func_800726AC(1, 8);
    HuPrcSleep(20);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();        
    }
}

void func_800F68A8_LoadCannonWarioBoard(void) {
    if (func_80072718() == 0) {
        func_800F6AF4_LoadCannonWarioBoard();
        func_800F6A28_LoadCannonWarioBoard();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F68F4_LoadCannonWarioBoard(omObjData* arg0) {
    if (D_800F5144 != 0) {
        arg0->func_ptr = &func_800F68A8_LoadCannonWarioBoard;
    }
}

void func_800F6918_LoadCannonWarioBoard(void) {
    s32 sp18[2] = { 0xE, 0xF };

    func_8003DAA8();
    D_800F6BE4_LoadCannonWarioBoard = CreateObject(sp18[D_800ED100.boardRam[0]], NULL);
    D_800F6BE4_LoadCannonWarioBoard->coords.x = D_800F6B20_LoadCannonWarioBoard.x;
    D_800F6BE4_LoadCannonWarioBoard->coords.y = D_800F6B20_LoadCannonWarioBoard.y;
    D_800F6BE4_LoadCannonWarioBoard->coords.z = D_800F6B20_LoadCannonWarioBoard.z;
    D_800F6BE8_LoadCannonWarioBoard = CreateObject(func_80052F04(D_800F6BE0_LoadCannonWarioBoard), D_800F6BBC_LoadCannonWarioBoard[gPlayers[D_800F6BE0_LoadCannonWarioBoard].characterID]);
    D_800F6BE8_LoadCannonWarioBoard->coords.x = D_800F6B2C_LoadCannonWarioBoard.x;
    D_800F6BE8_LoadCannonWarioBoard->coords.y = D_800F6B2C_LoadCannonWarioBoard.y;
    D_800F6BE8_LoadCannonWarioBoard->coords.z = D_800F6B2C_LoadCannonWarioBoard.z;
    func_8004CCD0(&D_800F6BE8_LoadCannonWarioBoard->coords, &D_800F6BE4_LoadCannonWarioBoard->coords, &D_800F6BE8_LoadCannonWarioBoard->unk_18);
    func_8004CCD0(&D_800F6BE4_LoadCannonWarioBoard->coords, &D_800F6BE8_LoadCannonWarioBoard->coords, &D_800F6BE4_LoadCannonWarioBoard->unk_18);
}

void func_800F6A28_LoadCannonWarioBoard(void) {
    DestroyObject(D_800F6BE8_LoadCannonWarioBoard);
    DestroyObject(D_800F6BE4_LoadCannonWarioBoard);
}

void func_800F6A54_LoadCannonWarioBoard(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(29);
}

void func_800F6AF4_LoadCannonWarioBoard(void) {
    func_8004A140();
    func_80049F0C();
}
