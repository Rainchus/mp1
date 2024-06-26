#include "common.h"
#include "engine/process.h"

typedef struct unkStruct4 {
    /* 0x00 */ char pad0[4];
    /* 0x04 */ u8 unk_04;
    /* 0x05 */ u8 unk_05;
    /* 0x06 */ s16 unk_06;                            /* inferred */
    /* 0x08 */ char pad8[2];                     /* maybe part of unk6[0x13]? */
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ char unk_0C[0x20];
    /* 0x2C */ void* unk2C;                         /* inferred */
    /* 0x30 */ char pad30[0x10];                    /* maybe part of unk2C[5]? */
} unkStruct4;

typedef struct unkStruct3 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ char unk_02[0x52];
/* 0x54 */ unkCommonStruct0 unk_54;
} unkStruct3;

extern unkStruct4 D_800D83A8_D8438[4];
extern s16 D_800C54D8_C60D8[][2];
extern f32 D_800C5654_C6254[];
extern s32 D_800D84D0_D8560[];
extern s32 D_800C54D4_C60D4;
extern Process* D_800D83A0_D8430;
extern s16 D_800D84A8_D8538;
extern s16 D_800D84AA_D853A;
extern s32 D_800C54D0_C60D0;
extern s16 D_800F3750_F37E0;
extern s16 D_800F329A_F332A;
extern s16 D_800D85D4_D8664;
extern s16 D_800D8654_D86E4;
extern s16 D_800D84E4_D8574;
extern s8 D_800F37BB_F384B; //minigame island lives
extern s8 D_800F37C4_F3854; //minigame island coins
extern s16 D_800D855C_D85EC;
extern unkStruct3 D_800D85EC_D867C;
extern unkCommonStruct0 D_800D85D8_D8668[];
extern unkCommonStruct0 D_800D8640_D86D0[];
extern s16 D_800D85D6_D8666;
extern Process* D_800D86A8_D8738;
extern s16 D_800D84E0_D8570;
extern s16 D_800D84E2_D8572;
extern s16 D_800D84E4_D8574;
extern s16 D_800D84E6_D8576;
extern s16 D_800D84E8_D8578;
extern s16 D_800D84EA_D857A;
extern s32 D_800C56B0_C62B0[];
extern s8 D_800F37B8_F3848;
extern unkCommonStruct0 D_800D84F0_D8580[];
extern Process* D_800D8558_D85E8;
extern s16 D_800D8504_D8594;
extern s16 D_800D855C_D85EC;
extern s16 D_800D855E_D85EE;
extern s16 D_800D8560_D85F0;
extern s16 D_800D8562_D85F2;
extern unkCommonStruct0 D_800D8568_D85F8[];
extern s16 D_800D857C_D860C;
extern Process* D_800D85D0_D8660;
void func_800543D8_54FD8(s32);
void func_8005456C_5516C(s32);
extern void AdjustPlayerCoins(s32, s32);
void func_8005528C_55E8C(omObjData* arg0);
void func_80053A1C_5461C(void);
void func_80054758_55358(s32, s32, s16);
void func_80055810_56410(s32 arg0, s32 arg1, s32);
void func_80055228_55E28(void);
void func_80067284_67E84(s16, s32, f32);

INCLUDE_ASM("asm/nonmatchings/54120", func_80053520_54120);

INCLUDE_ASM("asm/nonmatchings/54120", func_80053A1C_5461C);

INCLUDE_ASM("asm/nonmatchings/54120", func_80053D88_54988);

INCLUDE_ASM("asm/nonmatchings/54120", func_80053E8C_54A8C);

INCLUDE_ASM("asm/nonmatchings/54120", func_80053FEC_54BEC);

INCLUDE_ASM("asm/nonmatchings/54120", func_8005412C_54D2C);

INCLUDE_ASM("asm/nonmatchings/54120", func_800541F0_54DF0);

INCLUDE_ASM("asm/nonmatchings/54120", func_800542D0_54ED0);

INCLUDE_ASM("asm/nonmatchings/54120", func_800543D8_54FD8);

INCLUDE_ASM("asm/nonmatchings/54120", func_800544E4_550E4);

INCLUDE_ASM("asm/nonmatchings/54120", func_8005456C_5516C);

INCLUDE_ASM("asm/nonmatchings/54120", func_80054654_55254);

INCLUDE_ASM("asm/nonmatchings/54120", func_800546B4_552B4);

INCLUDE_ASM("asm/nonmatchings/54120", func_80054730_55330);

INCLUDE_ASM("asm/nonmatchings/54120", func_80054744_55344);

INCLUDE_ASM("asm/nonmatchings/54120", func_80054758_55358);

INCLUDE_ASM("asm/nonmatchings/54120", HidePlayerHUDVisibility);

void func_80054834_55434(s32 arg0, s32 arg1) {
    func_80054758_55358(arg0, D_800C54D8_C60D8[arg1][0], D_800C54D8_C60D8[arg1][1]);
}

INCLUDE_ASM("asm/nonmatchings/54120", func_80054868_55468);

s32 func_80054FA8_55BA8(void) {
    s32 i;
    s32 ret = 0;

    for (i = 0; i < 4; i++) {
        if (D_800D83A8_D8438[i].unk_0A != -2) {
            ret = 1;
        }
    }

    return ret;
}

INCLUDE_ASM("asm/nonmatchings/54120", func_80054FE4_55BE4);

INCLUDE_ASM("asm/nonmatchings/54120", func_800550C4_55CC4);

INCLUDE_ASM("asm/nonmatchings/54120", func_80055228_55E28);

INCLUDE_ASM("asm/nonmatchings/54120", func_8005528C_55E8C);

void func_8005546C_5606C(s32 arg0) {
    omObjData* temp_v0;
    unkStruct4* temp_s0;
    s32 i;
    s32 j;

    temp_s0 = &D_800D83A8_D8438[arg0];
    if (temp_s0->unk2C == NULL) {
        temp_v0 = omAddObj(-0x8000, 0, 0, -1, &func_8005528C_55E8C);
        temp_s0->unk2C = temp_v0;
        temp_v0->rot.x = 0.0f;
        temp_v0->work[0] = arg0;
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 0x0B; j++){
                func_80067354_67F54(D_800D83A8_D8438[i].unk_06, j, D_800C5654_C6254[j], D_800C5654_C6254[j]);
            }
            
        }
    }
}

void func_80055544_56144(s32 arg0) {
    unkStruct4* temp_s1;
    s32 i;

    temp_s1 = &D_800D83A8_D8438[arg0];
    
    if (temp_s1->unk2C != NULL) {
        omDelObj(temp_s1->unk2C);
        temp_s1->unk2C = NULL;
        for (i = 0; i < 0xB; i++) {
            func_80067354_67F54(temp_s1->unk_06, i, D_800C5654_C6254[i], D_800C5654_C6254[i]);
        }
    }
}

void func_800555D0_561D0(omObjData* arg0) {
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
            D_800D84D0_D8560[arg0->work[0]] = 0;
            omDelObj(arg0);
            return;
        }
        
        arg0->scale.y += arg0->scale.x;
    }         
    arg0->scale.y = arg0->scale.y - 1.0f;
    arg0->scale.z = arg0->scale.z + 2.0f;
}

INCLUDE_ASM("asm/nonmatchings/54120", func_80055810_56410);

void func_80055960_56560(s32 arg0, s32 arg1) {
    func_80055810_56410(arg0, arg1, 1);
}

s32 func_8005597C(s32 arg0) {
    if (D_800D84D0_D8560[arg0] != 0) {
        return 1;
    } else {
        return 0;
    }
}

void func_80055994_56594(s32 arg0) {
    D_800D83A8_D8438[arg0].unk_04 = 0;
}

s32 func_800559A8_565A8(void) {
    if (D_800D83A8_D8438[0].unk_05 & 1) {
        return 0;
    } else {
        return 1;
    }
}

void func_800559BC_565BC(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D83A8_D8438[i].unk_05 |= 1;
    }
}

void func_800559F8_565F8(void) {
    s32 i;

    for (i = 0; i < 4; i++) {
        D_800D83A8_D8438[i].unk_05 &= ~1;
    }
}

void func_80055A34_56634(s32 arg0) {
    D_800C54D4_C60D4 = arg0;
}

void func_80055A40_56640(s32 arg1) {
    s32 i;
    for (i = 0; i < 4; i++) {
        func_800543D8_54FD8(i);
        func_80054758_55358(i, D_800C54D8_C60D8[i + 4][0], D_800C54D8_C60D8[i + 4][1]);
        func_800546B4_552B4(i, gPlayers[i].turn_status);
    }

    D_800D83A0_D8430 = omAddPrcObj(func_80053A1C_5461C, 0U, 0x2000, 0);
    omPrcSetStatBit(D_800D83A0_D8430, 0x80);
    D_800D84AA_D853A = -1;
    D_800D84A8_D8538 = -1;
}

void func_80055AFC_566FC(void) {
    func_8005456C_5516C(D_800C54D0_C60D0);
    func_8005456C_5516C(D_800C54D4_C60D4);
    HuPrcKill(D_800D83A0_D8430);
    func_80055228_55E28();
    D_800C54D0_C60D0 = -1;
    D_800C54D4_C60D4 = -1;
}

void func_80055B50_56750(s32 arg0, s32 arg1) {
    D_800C54D0_C60D0 = arg0;
    D_800C54D4_C60D4 = arg1;
}

void func_80055B64_56764(void) {
    func_80054868_55468(0x16);
}

void func_80055B80_56780(void) {
    func_80054868_55468(0x17);
}

void func_80055B9C_5679C(void) {
    s32 i;

    while (1) {
        if ((D_800F329A_F332A == -1) || (D_800F3750_F37E0 == -1)) {
            func_800674BC_680BC(D_800D85D4_D8664, 0, 0x8000);
            func_800674BC_680BC(D_800D85D4_D8664, 1, 0x8000);
            
            for (i = 0; i < 5; i++) {
                func_800674BC_680BC(D_800D85EC_D867C.unk_00, i + 1, 0x8000);
            }
            
            func_800674BC_680BC(D_800D8654_D86E4, 1, 0x8000);
        } else {
            func_80067480_68080(D_800D85D4_D8664, 0, 0x8000);
            func_80067480_68080(D_800D85D4_D8664, 1, 0x8000);
            for (i = 0; i < 5; i++) {
                func_80067480_68080(D_800D85EC_D867C.unk_00, i + 1, 0x8000);
            }
            func_80067480_68080(D_800D8654_D86E4, 1, 0x8000);
            func_800672B0_67EB0(D_800D85D4_D8664, 0, 1);
            func_800672DC_67EDC(D_800D85D4_D8664, 0, (u16) D_800F329A_F332A, 0);
            func_800672B0_67EB0(D_800D85D4_D8664, 1, 1);
            func_800672DC_67EDC(D_800D85D4_D8664, 1, (u16) D_800F3750_F37E0, 0);
        }
        HuPrcVSleep();        
    }
}

void func_80055D28_56928(void) {
    s32 lives;

    while (1) {
        lives = D_800F37BB_F384B;
        if (lives < 0) {
            lives = 0;
        }
        
        if (lives >= 100) {
            lives = 99;
        }
        
        func_800672B0_67EB0(D_800D84E4_D8574, 0, 1);
        func_800672DC_67EDC(D_800D84E4_D8574, 0, (lives / 10), 0);
        func_800672B0_67EB0(D_800D84E4_D8574, 1, 1);
        func_800672DC_67EDC(D_800D84E4_D8574, 1, (lives % 10), 0);
        HuPrcVSleep();      
    }
}

void func_80055E08(void) {
    s32 coins;

    while (1) {
        coins = D_800F37C4_F3854;
        if (coins < 0) {
            coins = 0;
        }
        
        if (coins >= 100) {
            coins = 99;
        }
        
        func_800672B0_67EB0(D_800D855C_D85EC, 0, 1);
        func_800672DC_67EDC(D_800D855C_D85EC, 0, (coins / 10), 0);
        func_800672B0_67EB0(D_800D855C_D85EC, 1, 1);
        func_800672DC_67EDC(D_800D855C_D85EC, 1, (coins % 10), 0);
        HuPrcVSleep();      
    }
}

void func_80055EE8_56AE8(void) {
    void* file;
    s32 i;

    func_80076740_77340(D_800D85D8_D8668, "WORLD", 0, -1, -1);
    func_80066DC4_679C4(D_800D85EC_D867C.unk_00, 0, 0xA0, 0x18);
    func_80076740_77340(&D_800D85EC_D867C.unk_54, "=", 0, -1, -1);
    func_80066DC4_679C4(D_800D85EC_D867C.unk_54.unk_14[0], 0, 0xA0, 0x28);
    file = ReadMainFS(0x7C);
    D_800D85D6_D8666 = func_800678A4_684A4(file);
    FreeMainFS(file);
    D_800D85D4_D8664 = func_80064EF4_65AF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208_67E08(D_800D85D4_D8664, i, D_800D85D6_D8666, 0);
        func_800672B0_67EB0(D_800D85D4_D8664, i, 1);
        func_80067384_67F84(D_800D85D4_D8664, i, 0xA);
        func_800674BC_680BC(D_800D85D4_D8664, i, 0x1000);
        if (i == 0) {
            func_80066DC4_679C4(D_800D85D4_D8664, 0, 0x90, 0x28);
        } else {
            func_80066DC4_679C4(D_800D85D4_D8664, i, 0x20, 0);
        }
    }
    
    D_800D86A8_D8738 = omAddPrcObj(&func_80055B9C_5679C, 0U, 0, 0);
    omPrcSetStatBit(D_800D86A8_D8738, 0x80);
}

void func_8005608C_56C8C(void) {
    Process* process;
    void* file;
    s32 i;

    D_800D84E0_D8570 = func_80064EF4_65AF4(1, 5);
    func_80066DC4_679C4(D_800D84E0_D8570, 0, 0x2A, 0x22);
    file = ReadMainFS(D_800C56B0_C62B0[D_800F37B8_F3848]);
    D_800D84E2_D8572 = func_800678A4_684A4(file);
    FreeMainFS(file);
    func_80067208_67E08(D_800D84E0_D8570, 0, D_800D84E2_D8572, 0);
    func_800672B0_67EB0(D_800D84E0_D8570, 0, 1);
    func_80067384_67F84(D_800D84E0_D8570, 0, 0x10);
    func_800674BC_680BC(D_800D84E0_D8570, 0, 0x1000);
    file = ReadMainFS(0xA0163);
    D_800D84EA_D857A = func_800678A4_684A4(file);
    FreeMainFS(file);
    D_800D84E8_D8578 = func_80064EF4_65AF4(1, 5);
    func_80067208_67E08(D_800D84E8_D8578, 0, D_800D84EA_D857A, 0);
    func_800672B0_67EB0(D_800D84E8_D8578, 0, 1);
    func_80067384_67F84(D_800D84E8_D8578, 0, 0x11);
    func_800674BC_680BC(D_800D84E8_D8578, 0, 0x1000);
    func_80067354_67F54(D_800D84E8_D8578, 0, 0.5f, 0.5f);
    func_80066DC4_679C4(D_800D84E8_D8578, 0, 0x2A, 0x22);
    func_80076740_77340(D_800D84F0_D8580, "X", 0, -1, -1);
    func_80066DC4_679C4(D_800D8504_D8594, 0, 0x44, 0x22);
    file = ReadMainFS(0x7C);
    D_800D84E6_D8576 = func_800678A4_684A4(file);
    FreeMainFS(file);
    D_800D84E4_D8574 = func_80064EF4_65AF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208_67E08(D_800D84E4_D8574, i, D_800D84E6_D8576, 0);
        func_800672B0_67EB0(D_800D84E4_D8574, i, 1);
        func_80067384_67F84(D_800D84E4_D8574, i, 0xA);
        func_800674BC_680BC(D_800D84E4_D8574, i, 0x1000);
        if (i == 0) {
            func_80066DC4_679C4(D_800D84E4_D8574, 0, 0x54, 0x22);
        } else {
            func_80066DC4_679C4(D_800D84E4_D8574, i, i * 16, 0);
        }
    }

    D_800D8558_D85E8 = omAddPrcObj(&func_80055D28_56928, 0, 0, 0);
    omPrcSetStatBit(D_800D8558_D85E8, 0x80);
}

void func_80056380_56F80(void) {
    Process* process;
    void* file;
    s32 i;

    file = ReadMainFS(0xA0013);
    D_800D8562_D85F2 = func_800678A4_684A4(file);
    FreeMainFS(file);
    D_800D8560_D85F0 = func_80064EF4_65AF4(1, 5);
    func_80067208_67E08(D_800D8560_D85F0, 0, D_800D8562_D85F2, 0);
    func_800672B0_67EB0(D_800D8560_D85F0, 0, 1);
    func_80067384_67F84(D_800D8560_D85F0, 0, 0x11);
    func_800674BC_680BC(D_800D8560_D85F0, 0, 0x1000);
    func_80066DC4_679C4(D_800D8560_D85F0, 0, 0xE2, 0x22);
    func_80067284_67E84(D_800D8560_D85F0, 0, 0.0f);
    func_80076740_77340(D_800D8568_D85F8, "X", 0, -1, -1);
    func_80066DC4_679C4(D_800D857C_D860C, 0, 0xFC, 0x22);
    file = ReadMainFS(0x7C);
    D_800D855E_D85EE = func_800678A4_684A4(file);
    FreeMainFS(file);
    D_800D855C_D85EC = func_80064EF4_65AF4(2, 5);
    
    for (i = 0; i < 2; i++) {
        func_80067208_67E08(D_800D855C_D85EC, i, D_800D855E_D85EE, 0);
        func_800672B0_67EB0(D_800D855C_D85EC, i, 1);
        func_80067384_67F84(D_800D855C_D85EC, i, 0xA);
        func_800674BC_680BC(D_800D855C_D85EC, i, 0x1000);
        if (i == 0) {
            func_80066DC4_679C4(D_800D855C_D85EC, 0, 0x10C, 0x22);
        } else {
            func_80066DC4_679C4(D_800D855C_D85EC, i, i * 16, 0);
        }
    }

    D_800D85D0_D8660 = omAddPrcObj(func_80055E08, 0, 0, 0);
    omPrcSetStatBit(D_800D85D0_D8660, 0x80);
}

void func_800565B4_571B4(void) {
    func_8005608C_56C8C();
    func_80056380_56F80();
    func_80055EE8_56AE8();
}

void func_800565E0_571E0(void) {
    func_80077044_77C44(D_800D85D8_D8668);
    func_80077044_77C44(D_800D8640_D86D0);
    func_80067704_68304(D_800D85D6_D8666);
    func_80064D38_65938(D_800D85D4_D8664);
    EndProcess(D_800D86A8_D8738);
}

void func_80056630_57230(void) {
    func_80067704_68304(D_800D84E2_D8572);
    func_80064D38_65938(D_800D84E0_D8570);
    func_80077044_77C44(D_800D84F0_D8580);
    func_80067704_68304(D_800D84E6_D8576);
    func_80064D38_65938(D_800D84E4_D8574);
    func_80067704_68304(D_800D84EA_D857A);
    func_80064D38_65938(D_800D84E8_D8578);
    EndProcess(D_800D8558_D85E8);
}


void func_800566A4_572A4(void) {
    func_80077044_77C44(D_800D8568_D85F8);
    func_80067704_68304(D_800D855E_D85EE);
    func_80064D38_65938(D_800D855C_D85EC);
    func_80067704_68304(D_800D8562_D85F2);
    func_80064D38_65938(D_800D8560_D85F0);
    EndProcess(D_800D85D0_D8660);
}

void func_80056700_57300(void) {
    func_80056630_57230();
    func_800566A4_572A4();
    func_800565E0_571E0();
}

// const char D_800CB2A4_CBEA4[] = "X";
const char pad_54120[] = "\0\0\0\0\0";
