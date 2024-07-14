#include "common.h"
#include "engine/process.h"

void func_800F6EEC_BowserVisitEternalStar(void);
void func_800F7030_BowserVisitEternalStar(void);
void func_800F66BC_BowserVisitEternalStar(void);
void func_800F6DD4_BowserVisitEternalStar(void);
void func_800F6F90_BowserVisitEternalStar(void);
void func_800F6D88_BowserVisitEternalStar(omObjData*);
void func_8004DBD4(s32, u8);
void func_80055994(u8, s32);

Object* D_800F7060_BowserVisitEternalStar = NULL;
s32 D_800F7064_BowserVisitEternalStar = -1;
s32 D_800F7068_BowserVisitEternalStar = -1;
void* D_800F706C_BowserVisitEternalStar = NULL;

Vec3f D_800F7070_BowserVisitEternalStar = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F707C_BowserVisitEternalStar = {115.0f, 0.0f, 1520.0f};

s32 D_800F7088_BowserVisitEternalStar[] = {0x00000004, 0x000A0068, 0x000A006A, 0x000A006C, 0x000A006B};
s32 D_800F709C_BowserVisitEternalStar[] = {0x00000002, 0x0001000A, 0x0001003E};
s32 D_800F70A8_BowserVisitEternalStar[] = {0x00000002, 0x0002000A, 0x0002003E};
s32 D_800F70B4_BowserVisitEternalStar[] = {0x00000002, 0x0006000A, 0x0006003E};
s32 D_800F70C0_BowserVisitEternalStar[] = {0x00000002, 0x0003000A, 0x0003003E};
s32 D_800F70CC_BowserVisitEternalStar[] = {0x00000002, 0x0004000A, 0x0004003E};
s32 D_800F70D8_BowserVisitEternalStar[] = {0x00000002, 0x0005000A, 0x0005003E};
s32* D_800F70E4_BowserVisitEternalStar[] = {D_800F709C_BowserVisitEternalStar, D_800F70A8_BowserVisitEternalStar, D_800F70B4_BowserVisitEternalStar, D_800F70C0_BowserVisitEternalStar, D_800F70CC_BowserVisitEternalStar, D_800F70D8_BowserVisitEternalStar};

//bss
extern u8 D_800F7110_BowserVisitEternalStar;
extern Object* D_800F7114_BowserVisitEternalStar;
extern Object* D_800F7118_BowserVisitEternalStar;

void func_800F65E0_BowserVisitEternalStar(void) {
    D_800F7110_BowserVisitEternalStar = D_800ED5DC;
    omInitObjMan(0x32, 0x32);
    func_800F6F90_BowserVisitEternalStar();
    func_800F6DD4_BowserVisitEternalStar();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    omAddPrcObj(func_800F66BC_BowserVisitEternalStar, 0x300, 0x2000, 0);
    omAddObj(0x1000, 0, 0, -1, &func_800F6D88_BowserVisitEternalStar);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66BC_BowserVisitEternalStar(void) {
    char sp10;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 var_f22;
    f32 var_f24;
    s32 var_s2;
    s32 var_s1_3;
    Object* temp_s0_4;
    unk_Struct04* tempStruct04;
    s32 windowID;
    s32 temp;

    HuPrcSleep(0x10);
    PlaySound(0x46A);
    HuPrcSleep(0xA);

    if (gPlayers[D_800F7110_BowserVisitEternalStar].starAmount != 0) {
        windowID = CreateTextWindow(0x28, 0x28, 0x15, 3);
        LoadStringIntoWindow(windowID, (void* )0x1F8, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7110_BowserVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114_BowserVisitEternalStar, 3, 0);
        HuPrcSleep(15);
        PlaySound(0x6C);
        HuPrcSleep(5);
        func_8003E81C(D_800F7118_BowserVisitEternalStar, 0, 0);
        D_800F7068_BowserVisitEternalStar = LoadFormFile(0x1E, 0x6B9);
        var_s1_3 = 0;
        func_80025798(D_800F7068_BowserVisitEternalStar, D_800F7118_BowserVisitEternalStar->coords.x, D_800F7118_BowserVisitEternalStar->coords.y, D_800F7118_BowserVisitEternalStar->coords.z);
        func_80025830(D_800F7068_BowserVisitEternalStar, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F7110_BowserVisitEternalStar, 2);
        gPlayers[D_800F7110_BowserVisitEternalStar].starAmount--;
        func_800503B0(D_800F7110_BowserVisitEternalStar, 6);
        func_80060618(0x44A, D_800F7110_BowserVisitEternalStar);
        PlaySound(0x79);
        D_800F7060_BowserVisitEternalStar = CreateObject(0x25, 0);
        D_800F7060_BowserVisitEternalStar->coords.x = D_800F707C_BowserVisitEternalStar.x;
        D_800F7060_BowserVisitEternalStar->coords.y = D_800F707C_BowserVisitEternalStar.y + 200.0f;
        D_800F7060_BowserVisitEternalStar->coords.z = D_800F707C_BowserVisitEternalStar.z;
        tempStruct04 = D_800F7060_BowserVisitEternalStar->unk_3C;
        tempStruct04->unk_24 = 90.0f;
        D_800F7060_BowserVisitEternalStar->xScale = D_800F7060_BowserVisitEternalStar->yScale = D_800F7060_BowserVisitEternalStar->zScale = 0.5f;
        D_800F706C_BowserVisitEternalStar = func_80042728(D_800F7060_BowserVisitEternalStar, 0);
        var_f24 = 0.0f;
        var_f22 = 7.0f;
        do {
            temp_s0_4 = D_800F7060_BowserVisitEternalStar;
            temp_s0_4->coords.y = D_800F707C_BowserVisitEternalStar.y + 200.0f + (f32) (var_s1_3 / 2);
            temp_f20 = var_s1_3 * 5 * (M_PI/180);
            temp_s0_4->coords.x = (sinf(temp_f20) * var_f22) + D_800F707C_BowserVisitEternalStar.x;
            temp_s0_4 = D_800F7060_BowserVisitEternalStar;
            temp_s0_4->coords.z = (cosf(temp_f20) * var_f22) + D_800F707C_BowserVisitEternalStar.z;
            temp_s0_4 = D_800F7060_BowserVisitEternalStar;
            temp_f20_2 = var_f24 * (M_PI/180);
            temp_s0_4->unk_18.x = sinf(temp_f20_2);
            temp_s0_4 = D_800F7060_BowserVisitEternalStar;
            temp_s0_4->unk_18.z = cosf(temp_f20_2);
            HuPrcVSleep();
            if (var_s1_3 == 0x4B) {
                func_8003E81C(D_800F7114_BowserVisitEternalStar, 1, 0);
                func_8004F40C(D_800F7114_BowserVisitEternalStar, 0, 2);
                PlaySound(0x9E);
                D_800F7064_BowserVisitEternalStar = LoadFormFile(0x1D, 0x6B9);
                func_80025798(D_800F7064_BowserVisitEternalStar, D_800F7118_BowserVisitEternalStar->coords.x, D_800F7118_BowserVisitEternalStar->coords.y, D_800F7118_BowserVisitEternalStar->coords.z);
            }
            var_s1_3 += 5;
            var_f24 += 10.0f;
            var_f22 += 0.0f;
        } while (var_s1_3 < 0x15F);
        DestroyObject(D_800F7060_BowserVisitEternalStar);
        D_800F7060_BowserVisitEternalStar = NULL;
        func_800427D4(D_800F706C_BowserVisitEternalStar);
        D_800F706C_BowserVisitEternalStar = NULL;
        windowID = CreateTextWindow(0x3C, 0x28, 0x0F, 2);
        LoadStringIntoWindow(windowID, (void*)0x1F9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x469);
        func_8004DBD4(windowID, D_800F7110_BowserVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114_BowserVisitEternalStar, 2, 0);
        HuPrcSleep(30);     
    }

    else if (gPlayers[D_800F7110_BowserVisitEternalStar].coinAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x28, 0x14, 3);
        LoadStringIntoWindow(windowID, (void* )0x1FB, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7110_BowserVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114_BowserVisitEternalStar, 2, 0);
        HuPrcSleep(30);
    } else {
        windowID = CreateTextWindow(0x28, 0x28, 0x15, 3);
        temp = gPlayers[D_800F7110_BowserVisitEternalStar].coinAmount;
        
        if (temp < 20) {
            var_s2 = temp;
        } else {
            var_s2 = 20;
        }
        
        sprintf(&sp10, "%d", var_s2);
        func_8006DA5C(windowID, &sp10, 0);
        LoadStringIntoWindow(windowID, (void*)0x1FA, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7110_BowserVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114_BowserVisitEternalStar, 3, 0);
        HuPrcSleep(15);
        PlaySound(0x6C);
        HuPrcSleep(5);
        func_8004F4D4(D_800F7118_BowserVisitEternalStar, 1, 0);
    
        func_80055960(D_800F7110_BowserVisitEternalStar, -var_s2);
        func_800503B0(D_800F7110_BowserVisitEternalStar, 5);
    
        func_80060618(0x44A, D_800F7110_BowserVisitEternalStar);
        HuPrcSleep(30);
        func_8003E81C(D_800F7114_BowserVisitEternalStar, 1, 0);
        func_8004F40C(D_800F7114_BowserVisitEternalStar, 0, 2);
        HuPrcSleep(30);
        windowID = CreateTextWindow(0x3C, 0x28, 0x0F, 2);
        LoadStringIntoWindow(windowID, (void*)0x1F9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x469);
        func_8004DBD4(windowID, D_800F7110_BowserVisitEternalStar);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114_BowserVisitEternalStar, 2, 0);
        HuPrcSleep(30);        
    }

    D_800F5144 = 1;
    while (1) {
        HuPrcVSleep();
    }
}

void func_800F6D3C_BowserVisitEternalStar(void) {
    if (func_80072718() == 0) {
        func_800F7030_BowserVisitEternalStar();
        func_800F6EEC_BowserVisitEternalStar();
        func_80054654();
        func_80070ED4();
        omOvlReturnEx(1);
    }
}

void func_800F6D88_BowserVisitEternalStar(omObjData* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F6D3C_BowserVisitEternalStar;
    }
}

void func_800F6DD4_BowserVisitEternalStar(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7114_BowserVisitEternalStar = CreateObject(6, &D_800F7088_BowserVisitEternalStar);
    D_800F7114_BowserVisitEternalStar->coords.x = D_800F7070_BowserVisitEternalStar.x;
    D_800F7114_BowserVisitEternalStar->coords.y = D_800F7070_BowserVisitEternalStar.y;
    D_800F7114_BowserVisitEternalStar->coords.z = D_800F7070_BowserVisitEternalStar.z;
    D_800F7114_BowserVisitEternalStar->zScale = 1.5f;
    D_800F7114_BowserVisitEternalStar->yScale = 1.5f;
    D_800F7114_BowserVisitEternalStar->xScale = 1.5f;
    D_800F7118_BowserVisitEternalStar = CreateObject(func_80052F04(D_800F7110_BowserVisitEternalStar), D_800F70E4_BowserVisitEternalStar[gPlayers[D_800F7110_BowserVisitEternalStar].characterID]);
    D_800F7118_BowserVisitEternalStar->coords.x = D_800F707C_BowserVisitEternalStar.x;
    D_800F7118_BowserVisitEternalStar->coords.y = D_800F707C_BowserVisitEternalStar.y;
    D_800F7118_BowserVisitEternalStar->coords.z = D_800F707C_BowserVisitEternalStar.z;
    func_8004CCD0(&D_800F7118_BowserVisitEternalStar->coords, &D_800F7114_BowserVisitEternalStar->coords, &D_800F7118_BowserVisitEternalStar->unk_18);
    func_8004CCD0(&D_800F7114_BowserVisitEternalStar->coords, &D_800F7118_BowserVisitEternalStar->coords, &D_800F7114_BowserVisitEternalStar->unk_18);
}

void func_800F6EEC_BowserVisitEternalStar(void) {
    DestroyObject(D_800F7118_BowserVisitEternalStar);
    DestroyObject(D_800F7114_BowserVisitEternalStar);

    if (D_800F7060_BowserVisitEternalStar != NULL) {
        DestroyObject(D_800F7060_BowserVisitEternalStar);
    }

    if (D_800F706C_BowserVisitEternalStar != NULL) {
        func_800427D4(D_800F706C_BowserVisitEternalStar);
    }
    
    if (D_800F7064_BowserVisitEternalStar != -1) {
        func_8002456C(D_800F7064_BowserVisitEternalStar);
    }
    
    if (D_800F7068_BowserVisitEternalStar != -1) {
        func_8002456C(D_800F7068_BowserVisitEternalStar);
    }
    
    func_8004F2EC();
}

void func_800F6F90_BowserVisitEternalStar(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(FE2310_ROM_START);
    LoadBackgroundIndex(0x46);
}

void func_800F7030_BowserVisitEternalStar(void) {
    func_8004A140();
    func_80049F0C();
}
