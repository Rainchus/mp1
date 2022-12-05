#include "common.h"

void func_800F6EEC_2988BC(void);
void func_800F7030_298A00(void);
void func_800F66BC_29808C(void);
void func_800F6DD4_2987A4(void);
void func_800F6F90_298960(void);
void func_800F6D88_298758(unkObjectStruct*);
void func_8004DBD4(s32, u8);
void func_80055994(u8, s32);

Object* D_800F7060_298A30 = NULL;
s32 D_800F7064_298A34 = -1;
s32 D_800F7068_298A38 = -1;
void* D_800F706C_298A3C = NULL;

Vec3f D_800F7070_298A40 = {-115.0f, 0.0f, 1120.0f};
Vec3f D_800F707C_298A4C = {115.0f, 0.0f, 1520.0f};

s32 D_800F7088_298A58[] = {0x00000004, 0x000A0068, 0x000A006A, 0x000A006C, 0x000A006B};
s32 D_800F709C_298A6C[] = {0x00000002, 0x0001000A, 0x0001003E};
s32 D_800F70A8_298A78[] = {0x00000002, 0x0002000A, 0x0002003E};
s32 D_800F70B4_298A84[] = {0x00000002, 0x0006000A, 0x0006003E};
s32 D_800F70C0_298A90[] = {0x00000002, 0x0003000A, 0x0003003E};
s32 D_800F70CC_298A9C[] = {0x00000002, 0x0004000A, 0x0004003E};
s32 D_800F70D8_298AA8[] = {0x00000002, 0x0005000A, 0x0005003E};
s32* D_800F70E4_298AB4[] = {D_800F709C_298A6C, D_800F70A8_298A78, D_800F70B4_298A84, D_800F70C0_298A90, D_800F70CC_298A9C, D_800F70D8_298AA8};

//bss
extern u8 D_800F7110;
extern Object* D_800F7114;
extern Object* D_800F7118;

void func_800F65E0_297FB0(void) {
    D_800F7110 = D_800ED5DD;
    InitObjSystem(0x32, 0x32);
    func_800F6F90_298960();
    func_800F6DD4_2987A4();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66BC_29808C, 0x300, 0x2000, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F6D88_298758);
    func_80060128(0x12);
    SetFadeInTypeAndTime(3, 0x10);
}

void func_800F66BC_29808C(void) {
    s32 sp10;
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

    SleepProcess(0x10);
    PlaySound(0x46A);
    SleepProcess(0xA);

    if (gPlayers[D_800F7110].starAmount != 0) {
        windowID = CreateTextWindow(0x28, 0x28, 0x15, 3);
        LoadStringIntoWindow(windowID, (void* )0x1F8, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7110);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114, 3, 0);
        SleepProcess(15);
        PlaySound(0x6C);
        SleepProcess(5);
        func_8003E81C(D_800F7118, 0, 0);
        D_800F7068_298A38 = LoadFormFile(0x1E, 0x6B9);
        var_s1_3 = 0;
        func_80025798(D_800F7068_298A38, D_800F7118->coords.x, D_800F7118->coords.y, D_800F7118->coords.z);
        func_80025830(D_800F7068_298A38, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F7110, 2);
        gPlayers[D_800F7110].starAmount--;
        func_800503B0(D_800F7110, 6);
        func_80060618(0x44A, D_800F7110);
        PlaySound(0x79);
        D_800F7060_298A30 = CreateObject(0x25, 0);
        D_800F7060_298A30->coords.x = D_800F707C_298A4C.x;
        D_800F7060_298A30->coords.y = D_800F707C_298A4C.y + 200.0f;
        D_800F7060_298A30->coords.z = D_800F707C_298A4C.z;
        tempStruct04 = D_800F7060_298A30->unk_3C;
        tempStruct04->unk_24 = 90.0f;
        D_800F7060_298A30->xScale = D_800F7060_298A30->yScale = D_800F7060_298A30->zScale = 0.5f;
        D_800F706C_298A3C = func_80042728(D_800F7060_298A30, 0);
        var_f24 = 0.0f;
        var_f22 = 7.0f;
        do {
            temp_s0_4 = D_800F7060_298A30;
            temp_s0_4->coords.y = D_800F707C_298A4C.y + 200.0f + (f32) (var_s1_3 / 2);
            temp_f20 = var_s1_3 * 5 * 0.017453292519943295;
            temp_s0_4->coords.x = (__sinf(temp_f20) * var_f22) + D_800F707C_298A4C.x;
            temp_s0_4 = D_800F7060_298A30;
            temp_s0_4->coords.z = (func_800855C0(temp_f20) * var_f22) + D_800F707C_298A4C.z;
            temp_s0_4 = D_800F7060_298A30;
            temp_f20_2 = var_f24 * 0.017453292519943295;
            temp_s0_4->unk_18.x = __sinf(temp_f20_2);
            temp_s0_4 = D_800F7060_298A30;
            temp_s0_4->unk_18.z = func_800855C0(temp_f20_2);
            SleepVProcess();
            if (var_s1_3 == 0x4B) {
                func_8003E81C(D_800F7114, 1, 0);
                func_8004F40C(D_800F7114, 0, 2);
                PlaySound(0x9E);
                D_800F7064_298A34 = LoadFormFile(0x1D, 0x6B9);
                func_80025798(D_800F7064_298A34, D_800F7118->coords.x, D_800F7118->coords.y, D_800F7118->coords.z);
            }
            var_s1_3 += 5;
            var_f24 += 10.0f;
            var_f22 += 0.0f;
        } while (var_s1_3 < 0x15F);
        DestroyObject(D_800F7060_298A30);
        D_800F7060_298A30 = NULL;
        func_800427D4(D_800F706C_298A3C);
        D_800F706C_298A3C = NULL;
        windowID = CreateTextWindow(0x3C, 0x28, 0x0F, 2);
        LoadStringIntoWindow(windowID, (void*)0x1F9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x469);
        func_8004DBD4(windowID, D_800F7110);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114, 2, 0);
        SleepProcess(30);     
    }

    else if (gPlayers[D_800F7110].coinAmount == 0) {
        windowID = CreateTextWindow(0x3C, 0x28, 0x14, 3);
        LoadStringIntoWindow(windowID, (void* )0x1FB, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        func_8004DBD4(windowID, D_800F7110);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114, 2, 0);
        SleepProcess(30);
    } else {
        windowID = CreateTextWindow(0x28, 0x28, 0x15, 3);
        temp = gPlayers[D_800F7110].coinAmount;
        
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
        func_8004DBD4(windowID, D_800F7110);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114, 3, 0);
        SleepProcess(15);
        PlaySound(0x6C);
        SleepProcess(5);
        func_8004F4D4(D_800F7118, 1, 0);
    
        func_80055960(D_800F7110, -var_s2);
        func_800503B0(D_800F7110, 5);
    
        func_80060618(0x44A, D_800F7110);
        SleepProcess(30);
        func_8003E81C(D_800F7114, 1, 0);
        func_8004F40C(D_800F7114, 0, 2);
        SleepProcess(30);
        windowID = CreateTextWindow(0x3C, 0x28, 0x0F, 2);
        LoadStringIntoWindow(windowID, (void*)0x1F9, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x469);
        func_8004DBD4(windowID, D_800F7110);
        HideTextWindow(windowID);
        func_8004F4D4(D_800F7114, 2, 0);
        SleepProcess(30);        
    }

    D_800F5144 = 1;
    while (1) {
        SleepVProcess();
    }
}

void func_800F6D3C_29870C(void) {
    if (func_80072718() == 0) {
        func_800F7030_298A00();
        func_800F6EEC_2988BC();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6D88_298758(unkObjectStruct* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(3, 0x10);
        func_800601D4(0x20);
        arg0->func_ptr = &func_800F6D3C_29870C;
    }
}

void func_800F6DD4_2987A4(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F7114 = CreateObject(6, &D_800F7088_298A58);
    D_800F7114->coords.x = D_800F7070_298A40.x;
    D_800F7114->coords.y = D_800F7070_298A40.y;
    D_800F7114->coords.z = D_800F7070_298A40.z;
    D_800F7114->zScale = 1.5f;
    D_800F7114->yScale = 1.5f;
    D_800F7114->xScale = 1.5f;
    D_800F7118 = CreateObject(func_80052F04(D_800F7110), D_800F70E4_298AB4[gPlayers[D_800F7110].characterID]);
    D_800F7118->coords.x = D_800F707C_298A4C.x;
    D_800F7118->coords.y = D_800F707C_298A4C.y;
    D_800F7118->coords.z = D_800F707C_298A4C.z;
    func_8004CCD0(&D_800F7118->coords, &D_800F7114->coords, &D_800F7118->unk_18);
    func_8004CCD0(&D_800F7114->coords, &D_800F7118->coords, &D_800F7114->unk_18);
}

void func_800F6EEC_2988BC(void) {
    DestroyObject(D_800F7118);
    DestroyObject(D_800F7114);

    if (D_800F7060_298A30 != NULL) {
        DestroyObject(D_800F7060_298A30);
    }

    if (D_800F706C_298A3C != NULL) {
        func_800427D4(D_800F706C_298A3C);
    }
    
    if (D_800F7064_298A34 != -1) {
        func_8002456C(D_800F7064_298A34);
    }
    
    if (D_800F7068_298A38 != -1) {
        func_8002456C(D_800F7068_298A38);
    }
    
    func_8004F2EC();
}

void func_800F6F90_298960(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    LoadBackgroundData(&D_FE2310);
    LoadBackgroundIndex(0x46);
}

void func_800F7030_298A00(void) {
    func_8004A140();
    func_80049F0C();
}
