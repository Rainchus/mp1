#include "common.h"
#include "54120.h"

void func_80055810(s32 arg0, s32 arg1, s32);

INCLUDE_ASM(s32, "54120", func_80053520);

INCLUDE_ASM(s32, "54120", func_80053A1C);

INCLUDE_ASM(s32, "54120", func_80053D88);

INCLUDE_ASM(s32, "54120", func_80053E8C);

INCLUDE_ASM(s32, "54120", func_80053FEC);

INCLUDE_ASM(s32, "54120", func_8005412C);

INCLUDE_ASM(s32, "54120", func_800541F0);

INCLUDE_ASM(s32, "54120", func_800542D0);

INCLUDE_ASM(s32, "54120", func_800543D8);

INCLUDE_ASM(s32, "54120", func_800544E4);

INCLUDE_ASM(s32, "54120", func_8005456C);

INCLUDE_ASM(s32, "54120", func_80054654);

INCLUDE_ASM(s32, "54120", func_800546B4);

INCLUDE_ASM(s32, "54120", func_80054730);

INCLUDE_ASM(s32, "54120", func_80054744);

INCLUDE_ASM(s32, "54120", func_80054758);

INCLUDE_ASM(s32, "54120", HidePlayerHUDVisibility);

void func_80054834(s32 arg0, s32 arg1) {
    func_80054758(arg0, D_800C54D8[arg1][0], D_800C54D8[arg1][1]);
}

INCLUDE_ASM(s32, "54120", func_80054868);

s32 func_80054FA8(void) {
    s32 i;
    s32 ret = 0;

    for (i = 0; i < 4; i++) {
        if (D_800D83A8[i].unk_0A != -2) {
            ret = 1;
        }
    }

    return ret;
}

INCLUDE_ASM(s32, "54120", func_80054FE4);

INCLUDE_ASM(s32, "54120", func_800550C4);

INCLUDE_ASM(s32, "54120", func_80055228);

INCLUDE_ASM(s32, "54120", func_8005528C);

void func_8005546C(s32 arg0) {
    omObjData* temp_v0;
    unkStruct4* temp_s0;
    s32 i;
    s32 j;

    temp_s0 = &D_800D83A8[arg0];
    if (temp_s0->unk2C == NULL) {
        temp_v0 = omAddObj(-0x8000, 0, 0, -1, &func_8005528C);
        temp_s0->unk2C = temp_v0;
        temp_v0->rot.x = 0.0f;
        temp_v0->work[0] = arg0;
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 0x0B; j++){
                func_80067354(D_800D83A8[i].unk_06, j, D_800C5654[j], D_800C5654[j]);
            }
            
        }
    }
}

void func_80055544(s32 arg0) {
    unkStruct4* temp_s1;
    s32 i;

    temp_s1 = &D_800D83A8[arg0];
    
    if (temp_s1->unk2C != NULL) {
        func_8005D718(temp_s1->unk2C);
        temp_s1->unk2C = NULL;
        for (i = 0; i < 0xB; i++) {
            func_80067354(temp_s1->unk_06, i, D_800C5654[i], D_800C5654[i]);
        }
    }
}

extern void AdjustPlayerCoins(s32, s32); // TODO: Possibly same file, if not add header to 53680.c
void func_800555D0(omObjData* arg0) {
    u32 var_s1 = 0;

    while (arg0->scale.y <= 0.0f) {
        if (arg0->trans.x > 0.0f) {
            AdjustPlayerCoins(arg0->work[0], 1);
            if (((arg0->work[3] != 0) & (var_s1 == 0)) && (arg0->scale.z >= 3.0f)) {
                PlaySound(0x43);
                var_s1 = 1;
                arg0->scale.z -= 3.0f;
            }
            
            arg0->trans.x -= 1.0f;

        } else {
            AdjustPlayerCoins(arg0->work[0], -1);
            arg0->trans.x += 1.0f;
            
            if (arg0->work[3] != 0) {
                if ((var_s1 == 0) && (arg0->scale.z >= 3.0f)) {
                    PlaySound(0x57);
                    var_s1 = 1;
                    arg0->scale.z -= 3.0f;
                }
                if (arg0->trans.x == 0.0f || gPlayers[arg0->work[0]].coinAmount == 0) {
                    PlaySound(0x58);
                }
            }                
        }
        
        if (arg0->trans.x == 0.0f || gPlayers[arg0->work[0]].coinAmount == 0) {
            D_800D84D0[arg0->work[0]] = 0;
            func_8005D718(arg0);
            return;
        }
        
        arg0->scale.y += arg0->scale.x;
    }         
    arg0->scale.y = arg0->scale.y - 1.0f;
    arg0->scale.z = arg0->scale.z + 2.0f;
}

INCLUDE_ASM(s32, "54120", func_80055810);

void func_80055960(s32 arg0, s32 arg1) {
    func_80055810(arg0, arg1, 1);
}

s32 func_8005597C(s32 arg0) {
    if (D_800D84D0[arg0] != 0) {
        return 1;
    } else {
        return 0;
    }
}

void func_80055994(s32 arg0) {
    D_800D83A8[arg0].unk_04 = 0;
}

s32 func_800559A8(void) {
    if (D_800D83A8[0].unk_05 & 1) {
        return 0;
    } else {
        return 1;
    }
}

void func_800559BC(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D83A8[i].unk_05 |= 1;
    }
}

void func_800559F8(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D83A8[i].unk_05 &= ~1;
    }
}

void func_80055A34(s32 arg0) {
    D_800C54D4 = arg0;
}

void func_80055A40(s32 arg1) {
    s32 i;
    for (i = 0; i < 4; i++) {
        func_800543D8(i);
        func_80054758(i, D_800C54D8[i + 4][0], D_800C54D8[i + 4][1]);
        func_800546B4(i, gPlayers[i].turn_status);
    }

    D_800D83A0 = omAddPrcObj(func_80053A1C, 0U, 0x2000, 0);
    func_8005D900(D_800D83A0, 0x80);
    D_800D84AA = -1;
    D_800D84A8 = -1;
}

void func_80055AFC(void) {
    func_8005456C(D_800C54D0);
    func_8005456C(D_800C54D4);
    HuPrcKill(D_800D83A0);
    func_80055228();
    D_800C54D0 = -1;
    D_800C54D4 = -1;
}

void func_80055B50(s32 arg0, s32 arg1) {
    D_800C54D0 = arg0;
    D_800C54D4 = arg1;
}

void func_80055B64(void) {
    func_80054868(0x16);
}

void func_80055B80(void) {
    func_80054868(0x17);
}

void func_80055B9C(void) {
    s32 i;

    while (1) {
        if ((D_800F329A == -1) || (D_800F3750 == -1)) {
            func_800674BC(D_800D85D4, 0, 0x8000);
            func_800674BC(D_800D85D4, 1, 0x8000);
            
            for (i = 0; i < 5; i++) {
                func_800674BC(D_800D85EC.unk_00, i + 1, 0x8000);
            }
            
            func_800674BC(D_800D8654, 1, 0x8000);
        } else {
            func_80067480(D_800D85D4, 0, 0x8000);
            func_80067480(D_800D85D4, 1, 0x8000);
            for (i = 0; i < 5; i++) {
                func_80067480(D_800D85EC.unk_00, i + 1, 0x8000);
            }
            func_80067480(D_800D8654, 1, 0x8000);
            func_800672B0(D_800D85D4, 0, 1);
            func_800672DC(D_800D85D4, 0, (u16) D_800F329A, 0);
            func_800672B0(D_800D85D4, 1, 1);
            func_800672DC(D_800D85D4, 1, (u16) D_800F3750, 0);
        }
        HuPrcVSleep();        
    }
}

void func_80055D28(void) {
    s32 lives;

    while (1) {
        lives = D_800F37BB;
        if (lives < 0) {
            lives = 0;
        }
        
        if (lives >= 100) {
            lives = 99;
        }
        
        func_800672B0(D_800D84E4, 0, 1);
        func_800672DC(D_800D84E4, 0, (lives / 10), 0);
        func_800672B0(D_800D84E4, 1, 1);
        func_800672DC(D_800D84E4, 1, (lives % 10), 0);
        HuPrcVSleep();      
    }
}

void func_80055E08(void) {
    s32 coins;

    while (1) {
        coins = D_800F37C4;
        if (coins < 0) {
            coins = 0;
        }
        
        if (coins >= 100) {
            coins = 99;
        }
        
        func_800672B0(D_800D855C, 0, 1);
        func_800672DC(D_800D855C, 0, (coins / 10), 0);
        func_800672B0(D_800D855C, 1, 1);
        func_800672DC(D_800D855C, 1, (coins % 10), 0);
        HuPrcVSleep();      
    }
}

void func_80055EE8(void) {
    void* file;
    s32 i;

    func_80076740(D_800D85D8, (char*) &D_800CB298, 0, -1, -1);
    func_80066DC4(D_800D85EC.unk_00, 0, 0xA0, 0x18);
    func_80076740(&D_800D85EC.unk_54, (char*) &D_800CB2A0, 0, -1, -1);
    func_80066DC4(D_800D85EC.unk_54.unk_14[0], 0, 0xA0, 0x28);
    file = ReadMainFS(0x7C);
    D_800D85D6 = func_800678A4(file);
    FreeMainFS(file);
    D_800D85D4 = func_80064EF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208(D_800D85D4, i, D_800D85D6, 0);
        func_800672B0(D_800D85D4, i, 1);
        func_80067384(D_800D85D4, i, 0xA);
        func_800674BC(D_800D85D4, i, 0x1000);
        if (i == 0) {
            func_80066DC4(D_800D85D4, 0, 0x90, 0x28);
        } else {
            func_80066DC4(D_800D85D4, i, 0x20, 0);
        }
    }
    
    D_800D86A8 = omAddPrcObj(func_80055B9C, 0U, 0, 0);
    func_8005D900(D_800D86A8, 0x80);
}


void func_8005608C(void) {
    Process* process;
    void* file;
    s32 i;

    D_800D84E0 = func_80064EF4(1, 5);
    func_80066DC4(D_800D84E0, 0, 0x2A, 0x22);
    file = ReadMainFS(D_800C56B0[D_800F37B8]);
    D_800D84E2 = func_800678A4(file);
    FreeMainFS(file);
    func_80067208(D_800D84E0, 0, D_800D84E2, 0);
    func_800672B0(D_800D84E0, 0, 1);
    func_80067384(D_800D84E0, 0, 0x10);
    func_800674BC(D_800D84E0, 0, 0x1000);
    file = ReadMainFS(0xA0163);
    D_800D84EA = func_800678A4(file);
    FreeMainFS(file);
    D_800D84E8 = func_80064EF4(1, 5);
    func_80067208(D_800D84E8, 0, D_800D84EA, 0);
    func_800672B0(D_800D84E8, 0, 1);
    func_80067384(D_800D84E8, 0, 0x11);
    func_800674BC(D_800D84E8, 0, 0x1000);
    func_80067354(D_800D84E8, 0, 0.5f, 0.5f);
    func_80066DC4(D_800D84E8, 0, 0x2A, 0x22);
    func_80076740(D_800D84F0, D_800CB2A4, 0, -1, -1);
    func_80066DC4(D_800D8504, 0, 0x44, 0x22);
    file = ReadMainFS(0x7C);
    D_800D84E6 = func_800678A4(file);
    FreeMainFS(file);
    D_800D84E4 = func_80064EF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208(D_800D84E4, i, D_800D84E6, 0);
        func_800672B0(D_800D84E4, i, 1);
        func_80067384(D_800D84E4, i, 0xA);
        func_800674BC(D_800D84E4, i, 0x1000);
        if (i == 0) {
            func_80066DC4(D_800D84E4, 0, 0x54, 0x22);
        } else {
            func_80066DC4(D_800D84E4, i, i * 16, 0);
        }
    }

    D_800D8558 = omAddPrcObj(func_80055D28, 0, 0, 0);
    func_8005D900(D_800D8558, 0x80);
}

void func_80056380(void) {
    Process* process;
    void* file;
    s32 i;

    file = ReadMainFS(0xA0013);
    D_800D8562 = func_800678A4(file);
    FreeMainFS(file);
    D_800D8560 = func_80064EF4(1, 5);
    func_80067208(D_800D8560, 0, D_800D8562, 0);
    func_800672B0(D_800D8560, 0, 1);
    func_80067384(D_800D8560, 0, 0x11);
    func_800674BC(D_800D8560, 0, 0x1000);
    func_80066DC4(D_800D8560, 0, 0xE2, 0x22);
    func_80067284(D_800D8560, 0, 0.0f);
    func_80076740(D_800D8568, D_800CB2A4, 0, -1, -1);
    func_80066DC4(D_800D857C, 0, 0xFC, 0x22);
    file = ReadMainFS(0x7C);
    D_800D855E = func_800678A4(file);
    FreeMainFS(file);
    D_800D855C = func_80064EF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208(D_800D855C, i, D_800D855E, 0);
        func_800672B0(D_800D855C, i, 1);
        func_80067384(D_800D855C, i, 0xA);
        func_800674BC(D_800D855C, i, 0x1000);
        if (i == 0) {
            func_80066DC4(D_800D855C, 0, 0x10C, 0x22);
        } else {
            func_80066DC4(D_800D855C, i, i * 16, 0);
        }
    }

    D_800D85D0 = omAddPrcObj(func_80055E08, 0, 0, 0);
    func_8005D900(D_800D85D0, 0x80);
}

void func_800565B4(void) {
    func_8005608C();
    func_80056380();
    func_80055EE8();
}

void func_800565E0(void) {
    func_80077044(D_800D85D8);
    func_80077044(D_800D8640);
    func_80067704(D_800D85D6);
    func_80064D38(D_800D85D4);
    EndProcess(D_800D86A8);
}

void func_80056630(void) {
    func_80067704(D_800D84E2);
    func_80064D38(D_800D84E0);
    func_80077044(D_800D84F0);
    func_80067704(D_800D84E6);
    func_80064D38(D_800D84E4);
    func_80067704(D_800D84EA);
    func_80064D38(D_800D84E8);
    EndProcess(D_800D8558);
}


void func_800566A4(void) {
    func_80077044(D_800D8568);
    func_80067704(D_800D855E);
    func_80064D38(D_800D855C);
    func_80067704(D_800D8562);
    func_80064D38(D_800D8560);
    EndProcess(D_800D85D0);
}

void func_80056700(void) {
    func_80056630();
    func_800566A4();
    func_800565E0();
}
