#include "engine/process.h"
#include "29A400.h"

u8 D_800F6C60_KoopaVisitEternalStar[] = {10, 20, 30, 40, 50};
s32 D_800F6C68_KoopaVisitEternalStar[] = {
    2, 9, 20, 29, 41, 49, 58, 71, 71, 101, 71
};

Vec3f D_800F6C94_KoopaVisitEternalStar = {-80.0f, 0.0f, 1310.0f};
Vec3f D_800F6CA0_KoopaVisitEternalStar = {80.0f, 0.0f, 1520.0f};

s32 D_800F6CAC_KoopaVisitEternalStar[] = {
    0x00000001, 0x00010039,
};

s32 D_800F6CB4_KoopaVisitEternalStar[] = {
    0x00000001, 0x00020039
};

s32 D_800F6CBC_KoopaVisitEternalStar[] = {
    0x00000001, 0x00060039
};

s32 D_800F6CC4_KoopaVisitEternalStar[] = {
    0x00000001, 0x00030039,
};

s32 D_800F6CCC_KoopaVisitEternalStar[] = {
    0x00000001, 0x00040039
};

s32 D_800F6CD4_KoopaVisitEternalStar[] = {
    0x00000001, 0x00050039
};

s32* D_800F6CDC_KoopaVisitEternalStar[] = {
    D_800F6CAC_KoopaVisitEternalStar,
    D_800F6CB4_KoopaVisitEternalStar,
    D_800F6CBC_KoopaVisitEternalStar,
    D_800F6CC4_KoopaVisitEternalStar,
    D_800F6CCC_KoopaVisitEternalStar,
    D_800F6CD4_KoopaVisitEternalStar
};

void func_8004DBD4(s32, u8);

void func_800F65E0_KoopaVisitEternalStar(void) {
    D_800F6D10_KoopaVisitEternalStar = D_800ED5C2[0];
    D_800F6D11_KoopaVisitEternalStar = D_800ED5DC;
    if (D_800ED100.boardRam[31] % 10 == 0) { //D_800ED100.boardRam[31] is amountOfTimesStartPassed
        D_800F6D12_KoopaVisitEternalStar = D_800ED100.boardRam[31] / 10;
        if (D_800F6D12_KoopaVisitEternalStar >= 5) {
            D_800F6D12_KoopaVisitEternalStar = 4;
        }
    } else {
        D_800F6D12_KoopaVisitEternalStar = 0;
    }
    omInitObjMan(0x32, 0xA);
    func_800F6B80_KoopaVisitEternalStar();
    func_800F69CC_KoopaVisitEternalStar();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(&func_800F673C_KoopaVisitEternalStar, 0x300, 0, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6988_KoopaVisitEternalStar);
    SetFadeInTypeAndTime(1, 0x10);
}

void func_800F673C_KoopaVisitEternalStar(void) {
    char buffer1[8];
    char buffer2[8];
    s16 temp_s0;
    
    func_800421E0();
    HuPrcSleep(0x1A);
    if (D_800ED100.boardRam[31] % 10 == 0) { //D_800ED100.boardRam[31] is amountOfTimesStartPassed
        temp_s0 = CreateTextWindow(0x32, 0x32, 0xF, 4);
        sprintf(buffer1, "%d", D_800ED100.boardRam[31]);
        sprintf(buffer2, "%d", D_800F6C60_KoopaVisitEternalStar[D_800F6D12_KoopaVisitEternalStar]);
        func_8006DA5C(temp_s0, buffer1, 0);
        func_8006DA5C(temp_s0, buffer2, 1);
        LoadStringIntoWindow(temp_s0, (void*)0x17A, -1, -1);
        func_8006E070(temp_s0, 0);
        ShowTextWindow(temp_s0);
        PlaySound(0x432);
        func_8004DBD4(temp_s0, D_800F6D11_KoopaVisitEternalStar);
        HideTextWindow(temp_s0);
    } else {
        temp_s0 = CreateTextWindow(0x50, 0x3C, 0xC, 3);
        LoadStringIntoWindow(temp_s0, (void*)0x239, -1, -1);
        func_8006E070(temp_s0, 0);
        ShowTextWindow(temp_s0);
        PlaySound(0x432);
        func_8004DBD4(temp_s0, D_800F6D11_KoopaVisitEternalStar);
        HideTextWindow(temp_s0);
    }
    
    func_8004CCD0(&D_800F6D18_KoopaVisitEternalStar->coords, &D_800F32A0->coords, &D_800F6D18_KoopaVisitEternalStar->unk_18);
    func_8004F4D4(D_800F6D18_KoopaVisitEternalStar, 0, 0);
    func_80060468(0x451, gPlayers[D_800F6D11_KoopaVisitEternalStar].characterID);
    func_80055960(D_800F6D11_KoopaVisitEternalStar, D_800F6C60_KoopaVisitEternalStar[D_800F6D12_KoopaVisitEternalStar]);
    HuPrcSleep(0x28);
    D_800F5144 = 1;
    
    while (1) {
       HuPrcVSleep(); 
    }
}

void func_800F693C_KoopaVisitEternalStar(void) {
    if (func_80072718() == 0) {
        func_800F6C34_KoopaVisitEternalStar();
        func_800F6B3C_KoopaVisitEternalStar();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F6988_KoopaVisitEternalStar(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        arg0->func_ptr = &func_800F693C_KoopaVisitEternalStar;
    }
}

void func_800F69CC_KoopaVisitEternalStar(void) {
    func_8003DAA8();
    if (IsFlagSet(0x2C) == 0) {
        D_800F6D14_KoopaVisitEternalStar = CreateObject(8, NULL);
        func_8004F140(*D_800F6D14_KoopaVisitEternalStar->unk_3C->unk_40);
    } else {
        D_800F6D14_KoopaVisitEternalStar = CreateObject(0x83, NULL);
    }

    D_800F6D14_KoopaVisitEternalStar->coords.x = D_800F6C94_KoopaVisitEternalStar.x;
    D_800F6D14_KoopaVisitEternalStar->coords.y = D_800F6C94_KoopaVisitEternalStar.y;
    D_800F6D14_KoopaVisitEternalStar->coords.z = D_800F6C94_KoopaVisitEternalStar.z;
    D_800F6D18_KoopaVisitEternalStar = CreateObject(func_80052F04(D_800F6D11_KoopaVisitEternalStar), D_800F6CDC_KoopaVisitEternalStar[gPlayers[D_800F6D11_KoopaVisitEternalStar].characterID]);
    D_800F6D18_KoopaVisitEternalStar->coords.x = D_800F6CA0_KoopaVisitEternalStar.x;
    D_800F6D18_KoopaVisitEternalStar->coords.y = D_800F6CA0_KoopaVisitEternalStar.y;
    D_800F6D18_KoopaVisitEternalStar->coords.z = D_800F6CA0_KoopaVisitEternalStar.z;
    func_80021B14(*D_800F6D18_KoopaVisitEternalStar->unk_3C->unk_40, gPlayers[D_800F6D11_KoopaVisitEternalStar].characterID, 0x80);
    func_8004CCD0(&D_800F6D14_KoopaVisitEternalStar->coords, &D_800F6D18_KoopaVisitEternalStar->coords, &D_800F6D14_KoopaVisitEternalStar->unk_18);
    func_8004CCD0(&D_800F6D18_KoopaVisitEternalStar->coords, &D_800F6D14_KoopaVisitEternalStar->coords, &D_800F6D18_KoopaVisitEternalStar->unk_18);
}

void func_800F6B3C_KoopaVisitEternalStar(void) {
    DestroyObject(D_800F6D14_KoopaVisitEternalStar);
    DestroyObject(D_800F6D18_KoopaVisitEternalStar);
    if (IsFlagSet(0x2C) == 0) {
        func_8004F1D0();
    }
}

void func_800F6B80_KoopaVisitEternalStar(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(D_800F6C68_KoopaVisitEternalStar[D_800F6D10_KoopaVisitEternalStar]);
}

void func_800F6C34_KoopaVisitEternalStar(void) {
    func_8004A140();
    func_80049F0C();
}
