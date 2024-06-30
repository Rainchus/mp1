#include "common.h"
#include "engine/process.h"

void func_8004DBD4(s32, u8); //defined differently between some files?
void func_800F66B4_HappeningSpaceEternalStar(void);
void func_800F6824_HappeningSpaceEternalStar(void);
void func_800F68C0_HappeningSpaceEternalStar(void);
void func_800F67E0_HappeningSpaceEternalStar(omObjData* arg0);
void func_800F6898_HappeningSpaceEternalStar(void);
void func_800F6960_HappeningSpaceEternalStar(void);
void func_800F6794_HappeningSpaceEternalStar(void);

Vec3f D_800F6990_HappeningSpaceEternalStar = {0.0f, 0.0f, 1320.0f};
s32 D_800F699C_HappeningSpaceEternalStar[] = { 0x00000004, 0x000A0068, 0x000A006A, 0x000A006C, 0x000A006B };

//bss
extern u8 D_800F69B0_HappeningSpaceEternalStar;
extern Object* D_800F69B4_HappeningSpaceEternalStar;


void func_800F65E0_HappeningSpaceEternalStar(void) {
    D_800F69B0_HappeningSpaceEternalStar = D_800ED5DC;
    omInitObjMan(0x32, 0x32);
    func_800F68C0_HappeningSpaceEternalStar();
    func_800F6824_HappeningSpaceEternalStar();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F66B4_HappeningSpaceEternalStar, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F67E0_HappeningSpaceEternalStar);
    SetFadeInTypeAndTime(4, 0x10);
}

void func_800F66B4_HappeningSpaceEternalStar(void) {
    s32 textWindowID;

    func_800421E0();
    HuPrcSleep(0x10);
    PlaySound(0x46A);
    HuPrcSleep(0xA);
    textWindowID = CreateTextWindow(0x50, 0x3C, 0xF, 3);
    LoadStringIntoWindow(textWindowID, (void*)0x208, -1, -1);
    func_8006E070(textWindowID, 0);
    ShowTextWindow(textWindowID);
    func_8004DBD4(textWindowID, D_800F69B0_HappeningSpaceEternalStar);
    HideTextWindow(textWindowID);
    PlaySound(0x71);
    func_8004F4D4(D_800F69B4_HappeningSpaceEternalStar, 2, 0);
    HuPrcSleep(0x1E);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();  
    }
}

void func_800F6794_HappeningSpaceEternalStar(void) {
    if (func_80072718() == 0) {
        func_800F6960_HappeningSpaceEternalStar();
        func_800F6898_HappeningSpaceEternalStar();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F67E0_HappeningSpaceEternalStar(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(4, 0x10);
        arg0->func_ptr = &func_800F6794_HappeningSpaceEternalStar;
    }
}

void func_800F6824_HappeningSpaceEternalStar(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F69B4_HappeningSpaceEternalStar = CreateObject(6, &D_800F699C_HappeningSpaceEternalStar);
    D_800F69B4_HappeningSpaceEternalStar->coords.x = D_800F6990_HappeningSpaceEternalStar.x;
    D_800F69B4_HappeningSpaceEternalStar->coords.y = D_800F6990_HappeningSpaceEternalStar.y;
    D_800F69B4_HappeningSpaceEternalStar->coords.z = D_800F6990_HappeningSpaceEternalStar.z;
    D_800F69B4_HappeningSpaceEternalStar->xScale = D_800F69B4_HappeningSpaceEternalStar->yScale = D_800F69B4_HappeningSpaceEternalStar->zScale = 1.5f;
}

void func_800F6898_HappeningSpaceEternalStar(void) {
    DestroyObject(D_800F69B4_HappeningSpaceEternalStar);
    func_8004F2EC();
}

void func_800F68C0_HappeningSpaceEternalStar(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(0x46);
}

void func_800F6960_HappeningSpaceEternalStar(void) {
    func_8004A140();
    func_80049F0C();
}
