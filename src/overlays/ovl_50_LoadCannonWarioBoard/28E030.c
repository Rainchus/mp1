#include "process.h"
#include "28E030.h"

Vec3f D_800F6B20 = {-80.0f, 0.0f, 1310.0f};
Vec3f D_800F6B2C = {80.0f, 0.0f, 1520.0f};
Vec3f D_800F6B38 = {35.0f, 0.0f, 1450.0f};
Vec3f D_800F6B44 = {120.0f, 0.0f, 1575.0f};
Vec3f D_800F6B50 = {55.0f, 0.0f, 1475.0f};
Vec3f D_800F6B5C = {100.0f, 0.0f, 1555.0f};
Vec3f D_800F6B68 = {400.0f, 0.0f, 1940.0f};

s32 D_800F6B74[] = {0x00000002, 0x00010000, 0x00010063};
s32 D_800F6B80[] = {0x00000002, 0x00020000, 0x00020063};
s32 D_800F6B8C[] = {0x00000002, 0x00060000, 0x00060063};
s32 D_800F6B98[] = {0x00000002, 0x00030000, 0x00030063};
s32 D_800F6BA4[] = {0x00000002, 0x00040000, 0x00040063};
s32 D_800F6BB0[] = {0x00000002, 0x00050000, 0x00050063};

s32* D_800F6BBC[] = {D_800F6B74, D_800F6B80, D_800F6B8C, D_800F6B98, D_800F6BA4, D_800F6BB0};

void func_800F65E0_28E030(void) {
    D_800F6BE0 = D_800ED5DD;
    omInitObjMan(0x32, 0xA);
    func_800F6A54_28E4A4();
    func_800F6918_28E368();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F66B4_28E104, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F68F4_28E344);
    SetFadeInTypeAndTime(1, 16);
}


void func_800F66B4_28E104(void) {
    s32 temp_s1;

    func_800421E0();
    HuPrcSleep(16);
    PlaySound(0xBF);
    HuPrcSleep(10);
    temp_s1 = CreateTextWindow(100, 80, 10, 4);

    LoadStringIntoWindow(temp_s1, (void* )0x1CC, -1, -1);
    func_8006E070(temp_s1, 0);
    ShowTextWindow(temp_s1);
    func_8004DBD4(temp_s1, D_800F6BE0);
    HideTextWindow(temp_s1);
    func_8004E3E0(0, &D_800F6B38, 20, D_800F6BE4);
    HuPrcSleep(20);
    PlaySound(0xC2);
    PlaySound(0x145);
    func_800503B0(D_800F6BE0, 1);
    func_8004F4D4(D_800F6BE8, 1, 2);
    func_8004E3E0(0, &D_800F6B44, 5, D_800F6BE8);
    HuPrcSleep(20);
    func_8004E3E0(0, &D_800F6B50, 5, D_800F6BE4);
    func_8004E3E0(0, &D_800F6B5C, 5, D_800F6BE8);
    HuPrcSleep(4);
    PlaySound(0xC2);
    PlaySound(0x145);
    func_800503B0(D_800F6BE0, 1);
    func_8004E3E0(0, &D_800F6B68, 20, D_800F6BE8);
    HuPrcSleep(5);
    func_8004E3E0(0, &D_800F6B5C, 20, D_800F6BE4);
    HuPrcSleep(5);
    func_800726AC(1, 8);
    HuPrcSleep(20);
    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();        
    }
}

void func_800F68A8_28E2F8(void) {
    if (func_80072718() == 0) {
        func_800F6AF4_28E544();
        func_800F6A28_28E478();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F68F4_28E344(omObjData* arg0) {
    if (D_800F5144 != 0) {
        arg0->func_ptr = &func_800F68A8_28E2F8;
    }
}

void func_800F6918_28E368(void) {
    s32 sp18[2] = { 0xE, 0xF };

    func_8003DAA8();
    D_800F6BE4 = CreateObject(sp18[D_800ED154], NULL);
    D_800F6BE4->coords.x = D_800F6B20.x;
    D_800F6BE4->coords.y = D_800F6B20.y;
    D_800F6BE4->coords.z = D_800F6B20.z;
    D_800F6BE8 = CreateObject(func_80052F04(D_800F6BE0), D_800F6BBC[gPlayers[D_800F6BE0].characterID]);
    D_800F6BE8->coords.x = D_800F6B2C.x;
    D_800F6BE8->coords.y = D_800F6B2C.y;
    D_800F6BE8->coords.z = D_800F6B2C.z;
    func_8004CCD0(&D_800F6BE8->coords, &D_800F6BE4->coords, &D_800F6BE8->unk_18);
    func_8004CCD0(&D_800F6BE4->coords, &D_800F6BE8->coords, &D_800F6BE4->unk_18);
}

void func_800F6A28_28E478(void) {
    DestroyObject(D_800F6BE8);
    DestroyObject(D_800F6BE4);
}

void func_800F6A54_28E4A4(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(29);
}

void func_800F6AF4_28E544(void) {
    func_8004A140();
    func_80049F0C();
}
