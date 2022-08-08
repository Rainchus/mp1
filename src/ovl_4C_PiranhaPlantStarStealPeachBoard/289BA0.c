#include "common.h"
#include "289BA0.h"

//800F7500 - 800F7514 are bss vars
static unk_Struct03* D_800F74F0_28AAB0 = 0;
static unk_Struct03* D_800F74F4_28AAB4 = 0;
static unk_Struct03* D_800F74F8_28AAB8 = 0;
static unk_Struct03* D_800F74FC_28AABC = 0;
static s32 D_800F7500_28AAC0 = -1;
static s32 D_800F7504_28AAC4 = -1;
static s32 D_800F7508_28AAC8 = -1;
static s32 D_800F7508_28AACC = -1;
static void* D_800F7510_28AAD0 = 0;

static Vec3f D_800F7514 = { -80.0f, 0.0f, 1310.0f };
static Vec3f D_800F7520_28AAE0 = { -280.0f, -400.0f, 1310.0f };
static Vec3f D_800F752C = { 115.0f, 0.0f, 1520.0f };
static Vec3f D_800F7538 = { -145.0f, 0.0f, 1440.0f };
static Vec3f D_800F7544_28AB04 = { 450.0f, 0.0f, 785.0f };
static Vec3f D_800F7550_28AB10 = { -80.0f, 0.0f, 785.0f };

static s16 D_800F755C[] = {
    0x0000, 0x0002, 0x0001, 0x000A, 0x0001, 0x000F
};

static s16 D_800F7568[] = {
    0x0000, 0x0002, 0x0002, 0x000A, 0x0002, 0x000F
};

static s16 D_800F7574[] = {
    0x0000, 0x0002, 0x0006, 0x000A, 0x0006, 0x000F
};

static s16 D_800F7580[] = {
    0x0000, 0x0002, 0x0003, 0x000A, 0x0003, 0x000F
};

static s16 D_800F758C[] = {
    0x0000, 0x0002, 0x0004, 0x000A, 0x0004, 0x000F
};

static s16 D_800F7598[] = {
    0x0000, 0x0002, 0x0005, 0x000A, 0x0005, 0x000F
};

static s16* D_800F75A4[] = {
    D_800F755C, D_800F7568, D_800F7574, D_800F7580, D_800F758C, D_800F7598
};

static s32 D_800F75BC[] = { 00000003, 0x0000004A, 0x00000049, 0x0000004E, 0x00000000 };

void func_800F65E0_289BA0(void) {
    D_800F75E0 = D_800ED5DD;
    func_8005CF30(0x32, 0x32);
    func_800F741C_28A9DC();
    func_800F718C_28A74C();
    func_800544E4();
    func_800546B4(0, gPlayers[0].turn_status);
    func_800546B4(1, gPlayers[1].turn_status);
    func_800546B4(2, gPlayers[2].turn_status);
    func_800546B4(3, gPlayers[3].turn_status);
    func_8006CEA0();
    InitProcess(func_800F66B4_289C74, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, &func_800F7020_28A5E0);
    func_80072644(1, 0x10);
}

void func_800F66B4_289C74(void) {
    Vec3f sp10;
    f32 var_f22;
    f32 var_f24;
    s32 windowID;
    unk_Struct03* temp_s0_2;
    s32 i;
    u8 new_var;
    f32 *new_var3;

    func_800421E0();
    SleepProcess(0x1A);
    
    if (gPlayers[D_800F75E0].starAmount == 0) {
        func_8004EE14(0, &D_800F7550_28AB10, 5, D_800F74F0);
        SleepProcess(0x14);
        PlaySound(0x96);
        D_800F74F8 = D_800F74F8;
        sp10.x = D_800F74F8->coords.x - 100.0f;
        sp10.y = D_800F74F8->coords.y;
        sp10.z = D_800F74F8->coords.z;
        func_8004CCD0(&D_800F74F8->coords, &sp10, &D_800F74F8->unk_18);
        var_f22 = D_800F7544_28AB04.x;

        for (; var_f22 >= 295.0f; var_f22 -= 50.0f) {
            D_800F74F8->coords.x = var_f22;
            SleepVProcess();
        }

        func_8004EE14(0, &D_800F7544_28AB04, 0xA, D_800F75E4);
        D_800F74F8->coords.x = 295.0f;
        SleepVProcess();
        func_8004EE14(0, &D_800F75E4->coords, 0xA, D_800F74F8);
        SleepProcess(0xA);
        windowID = CreateTextWindow(0x6E, 0x28, 0xF, 4);
        LoadStringIntoWindow(windowID, (void*)0x1A2, -1, -1);
        func_8006E070(windowID, 0);
        ShowTextWindow(windowID);
        PlaySound(0x435);
        func_8004DBD4(windowID, D_800F75E0);
        HideTextWindow(windowID);
        PlaySound(0x97);
        var_f22 = D_800F74F8->coords.x;

        for (; var_f22 <= D_800F7544_28AB04.x; var_f22 += 50.0f) {
            D_800F74F8->coords.x = var_f22;
            SleepVProcess();
        }   
        
    } else {
        func_8004F4D4(D_800F74F0, 0, 0);
        func_8004F40C(D_800F74F0, 1, 2);
        for (i = 0; i < 45; i++) {
            if (i == 0xF) {
                PlaySound(0x9D);
            } else if (i == 0x1E) {
                PlaySound(0x9D);
            }
            SleepVProcess();
        }

        func_8003E81C(D_800F75E4, 0, 0);
        D_800F7508_28AACC = LoadFormFile(0x1E, 0x6B9);
        func_80025798(D_800F7508_28AACC, D_800F75E4->coords.x, D_800F75E4->coords.y, D_800F75E4->coords.z);
        func_80025830(D_800F7508_28AACC, 0.5f, 0.5f, 0.5f);
        func_80055994(D_800F75E0, 2);
        gPlayers[D_800F75E0].starAmount -= 1;
        func_80060618(0x44A, new_var = D_800F75E0); //func_80060618(0x44A, D_800F75E0);
        func_800503B0(D_800F75E0, 6);
        PlaySound(0x6D);
        PlaySound(0x44);
        D_800F74FC = func_8003DBE0(0x40, NULL);
        D_800F74FC->coords.x = D_800F752C.x;
        D_800F74FC->coords.y = D_800F752C.y + 200.0f;
        D_800F74FC->coords.z = D_800F752C.z;
        D_800F74FC->unk_24 = 0.5f;
        D_800F74FC->unk_28 = 0.5f;
        D_800F74FC->unk_2C = 0.5f;
        D_800F7510_28AAD0 = func_80042728(D_800F74FC, 0);
        var_f22 = 0.0f;
        var_f24 = 7.0f;
        for(i = 0; i < 0x15F; i += 5) {
            
            temp_s0_2 = D_800F74FC;
                //temp_s0_2->coords.x = D_800F752C.x + (func_80088060((i * 5) * 0.017453292519943295) * var_f24) ;
            new_var3 = &D_800F752C.x;
            temp_s0_2->coords.x = (*new_var3) + (func_80088060((i * 5) * 0.017453292519943295) * var_f24);
            
            temp_s0_2 = D_800F74FC;
            temp_s0_2->coords.y = D_800F752C.y + 200.0f + (i / 2);
            
            temp_s0_2->coords.z = D_800F752C.z + (func_800855C0((i * 5) * 0.017453292519943295) * var_f24);
            temp_s0_2 = D_800F74FC;
            
            temp_s0_2->unk_18.x = func_80088060(var_f22 * 0.017453292519943295);
            temp_s0_2 = D_800F74FC;
            
            temp_s0_2->unk_18.z = func_800855C0(var_f22 * 0.017453292519943295);
            
            if (i == 0x78) {
                func_8004E3E0(0, &D_800F7520_28AAE0, 0x32, D_800F74F0);
            }
            if (i == 0x4B) {
                PlaySound(0x9E);
                D_800F7508_28AAC8 = LoadFormFile(0x1D, 0x6B9);
                func_80025798(D_800F7508_28AAC8, D_800F75E4->coords.x, D_800F75E4->coords.y, D_800F75E4->coords.z);
            }
            SleepVProcess();
            var_f22 += 10.0f;
            var_f24 += 0.0f;
        }
        
        func_800726AC(0, 0x10);
        SleepProcess(0x1A);
        func_8003E694(D_800F75E4);
        func_8003E694(D_800F74F0);
        func_8003E694(D_800F74F4);
        D_800F74F0 = NULL;
        D_800F74F4 = NULL;
        func_800F7120_28A6E0();
        D_800F75E4 = func_8003DBE0(func_80052F04(D_800ED154.unk_00[D_800ED154.unk_1A]), D_800F75A4[gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].characterID]);
        D_800F75E4->coords.x = 0.0f;
        D_800F75E4->coords.y = D_800F752C.y;
        D_800F75E4->coords.z = D_800F752C.z;
        func_80021B14(*D_800F75E4->unk_3C->unk_40, gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].characterID, 0x80);
        func_8004CCD0(&D_800F75E4->coords, &D_800F32A0->coords, &D_800F75E4->unk_18);
        func_80072644(0, 0x10);
        SleepProcess(0x1A);
        func_800500A4();
        PlaySound(0x44);
        var_f22 = 0.0f;

        for (i = 0x15E; i >= 0; i -= 0x0A) {
            temp_s0_2 = D_800F74FC;
            temp_s0_2->coords.x = 0.0f;
            temp_s0_2->coords.y = D_800F752C.y + 200.0f + (i / 2);
            temp_s0_2->coords.z = D_800F752C.z;
            var_f22 += 10.0f;
            temp_s0_2->unk_18.x = func_80088060(var_f22 * 0.017453292519943295);
            temp_s0_2 = D_800F74FC;
            temp_s0_2->unk_18.z = func_800855C0(var_f22 * 0.017453292519943295);
            SleepVProcess();
        }
        
        PlaySound(0x474);
        func_800503B0(D_800ED154.unk_00[D_800ED154.unk_1A], 4);
        func_8003E694(D_800F74FC);
        D_800F74FC = NULL;
        func_800427D4(D_800F7510_28AAD0);
        D_800F7510_28AAD0 = NULL;
        func_8003E81C(D_800F75E4, 1, 0U);
        func_80021CDC(*D_800F75E4->unk_3C->unk_40, gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].characterID, 0x81);
        func_80055994(D_800ED154.unk_00[D_800ED154.unk_1A], 1);

        if (gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].starAmount < 0x63) {
            gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].starAmount++;
        }
        
        SleepProcess(0x24);
        func_80060468(0x443, gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].characterID);
        SleepProcess(0x30);
        func_80050160();
        D_800ED154.unk_00[D_800ED154.unk_1A] = -1;
    }
    
    D_800F5144 = 1;
    
    while (1) {
        SleepVProcess();
    }
    
}

void func_800F6FD4_28A594(void) {
    if (func_80072718() == 0) {
        func_800F74C4_28AA84();
        func_800F7348_28A908();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F7020_28A5E0(Object* arg0) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        arg0->func_ptr = &func_800F6FD4_28A594;
    }
}

void func_800F7064_28A624(void) {
    void* temp_s0;

    D_800F7500_28AAC0 = func_80064EF4(1, 5);
    temp_s0 = ReadMainFS(0xA0101);
    D_800F7504_28AAC4 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    func_80067208(D_800F7500_28AAC0, 0, D_800F7504_28AAC4, 0);
    func_80067384(D_800F7500_28AAC0, 0, 0x47F4);
    func_800674BC(D_800F7500_28AAC0, 0, 0x1000U);
    func_80066DC4(D_800F7500_28AAC0, 0, 0xA0, 0x78);
}

void func_800F7120_28A6E0(void) {
    if (D_800F7500_28AAC0 != -1) {
        func_80064D38(D_800F7500_28AAC0);
        D_800F7500_28AAC0 = -1;
    }
    if (D_800F7504_28AAC4 != -1) {
        func_80067704(D_800F7504_28AAC4);
        D_800F7504_28AAC4 = -1;
    }
}

void func_800F718C_28A74C(void) {
    func_8003DAA8();
    func_8004F2AC();
    D_800F74F0 = func_8003DBE0(0xC, &D_800F75BC);
    func_800A0D00(&D_800F74F0->coords, D_800F7514.x, D_800F7514.y, D_800F7514.z);
    func_800A0D00(&D_800F74F0->unk_18, 1.0f, 0.0f, 0.0f);
    D_800F74F8 = func_8003DBE0(0xB, NULL);
    D_800F74F8->coords.x = D_800F7544_28AB04.x;
    D_800F74F8->coords.y = D_800F7544_28AB04.y;
    D_800F74F8->coords.z = D_800F7544_28AB04.z;
    func_8004CCD0(&D_800F74F8->coords, &D_800F32A0->coords, &D_800F74F8->unk_18);
    D_800F75E4 = func_8003DBE0(func_80052F04(D_800F75E0), D_800F75A4[gPlayers[D_800F75E0].characterID]);
    D_800F75E4->coords.x = D_800F752C.x;
    D_800F75E4->coords.y = D_800F752C.y;
    D_800F75E4->coords.z = D_800F752C.z;
    func_8004CCD0(&D_800F75E4->coords, &D_800F74F0->coords, &D_800F75E4->unk_18);
    D_800F74F4 = func_8003DBE0((gPlayers[D_800ED154.unk_00[D_800ED154.unk_1A]].characterID + 0x1D), NULL);
    D_800F74F4 = D_800F74F4;
    D_800F74F4->coords.x = D_800F7538.x;
    D_800F74F4->coords.y = D_800F7538.y;
    D_800F74F4->coords.z = D_800F7538.z;
    D_800F74F4->unk_3C->unk_2C = 10.0f;
}

void func_800F7348_28A908(void) {
    func_8003E694(D_800F75E4);
    func_8003E694(D_800F74F8);
    
    if (D_800F74F0 != NULL) {
        func_8003E694(D_800F74F0);
    }
    
    if (D_800F74F4 != NULL) {
        func_8003E694(D_800F74F4);
    }
    
    if (D_800F74FC != NULL) {
        func_8003E694(D_800F74FC);
    }
    
    if (D_800F7510_28AAD0 != NULL) {
        func_800427D4(D_800F7510_28AAD0);
    }
    
    if (D_800F7508_28AAC8 != -1) {
        func_8002456C(D_800F7508_28AAC8);
    }
    
    if (D_800F7508_28AACC != -1) {
        func_8002456C(D_800F7508_28AACC);
    }
    func_8004F2EC();
}

void func_800F741C_28A9DC(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    func_80049F4C(9);
    func_800F7064_28A624();
}

void func_800F74C4_28AA84(void) {
    func_8004A140();
    func_80049F0C();
    func_800F7120_28A6E0();
}
