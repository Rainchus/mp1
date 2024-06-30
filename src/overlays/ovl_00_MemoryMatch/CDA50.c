#include "common.h"
#include "MemoryMatch.h"
#include "PR/os.h"
#include "PR/gu.h"

void func_800F8314_MemoryMatch(void);
void func_800FADDC_MemoryMatch(omObjData*);
void func_800FAD94_MemoryMatch(omObjData* arg0, s16 arg1);
extern s16 D_800FE190_MemoryMatch;
extern s16 D_800FE30E_MemoryMatch;
extern u8 D_800FD86E_MemoryMatch;
extern s16 D_800FD878_MemoryMatch;
extern s16 D_800FE30C_MemoryMatch;
extern s16 D_800FE150_MemoryMatch;

void func_800F65E0_MemoryMatch(void) {
    f32 temp_f20;
    f64 temp_f22;
    s32 temp_s0;
    unk_Struct00* temp_s0_2;

    func_80029090(50);
    omInitObjMan(50, 0);
    func_80060088();
    func_8001DE70(64);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_8005EB1C), 0xA0);
    func_80023448(2);
    func_800234B8(0, 0xA0, 0xA0, 0xA0);
    func_800234B8(1, 0xFF, 0xFF, 0xFF);
    func_80023504(1, -96.0f, 100.0f, 26.0f);
    func_800178A0(1);
    temp_s0 = func_800178E8() & 0xFF;
    func_80017660(temp_s0, 0, 0, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 45.0f, 80.0f, 4000.0f);
    func_800F7C08_MemoryMatch();
    temp_s0_2 = D_800C3110;
    temp_s0_2->unk_40 = 40.0f;
    temp_f22 = 2.0;
    temp_f20 = func_800AEAC0(20.0f);
    D_800FDE28_MemoryMatch = temp_f20 / func_800AEFD0(temp_s0_2->unk_40 / temp_f22);
    guMtxL2F(D_800FDDE8_MemoryMatch, &temp_s0_2->unk_138);
    D_800ED440 = 0;
    D_800F2BC0 = 0;
    D_800FDDDC_MemoryMatch = omAddObj(0x20, 0, 0, -1, &func_800F6858_MemoryMatch);
    func_800F7B6C_MemoryMatch(rand8() & 0xFF);
    func_800F7D74_MemoryMatch();
    D_800FE2C2_MemoryMatch = -1;
    D_800FDE2C_MemoryMatch = 0;
    D_800ED430 = 0;
    D_800FE2C4_MemoryMatch = 0;
    D_800FE2C0_MemoryMatch = 0;
    D_800FE180_MemoryMatch = 0;
    func_8007B168(&D_800FD8D0_MemoryMatch, 1);
    func_8007B168(&D_800FD8DC_MemoryMatch, 1);
    func_8007B168(&D_800FD8EC_MemoryMatch, 1);
    PlaySound(0x1A2);
}

void func_800F6858_MemoryMatch(omObjData* arg0) {
    arg0->func_ptr = &func_800F68CC_MemoryMatch;
    D_800FE2C2_MemoryMatch = 0;
    D_800FDE2C_MemoryMatch = 0;
    func_800F8C38_MemoryMatch();
    func_800F7EDC_MemoryMatch();
    func_800F963C_MemoryMatch();
    func_800F8E38_MemoryMatch();
    func_800F90CC_MemoryMatch();
    func_800FB360_MemoryMatch();
    if (IsFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FE180_MemoryMatch = 1;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F68CC_MemoryMatch);

void func_800F714C_MemoryMatch(omObjData* arg0) {
    func_800F9178_MemoryMatch();
    func_800F796C_MemoryMatch(arg0);
    if (func_80075FE0() == 0) {
        D_800FDE2C_MemoryMatch = 0;
        D_800FE2C2_MemoryMatch = 1;
        arg0->func_ptr = &func_800F71C4_MemoryMatch;
        func_800F8FEC_MemoryMatch();
        D_800FE150_MemoryMatch = func_8000C544();
        D_800ED430 = 1;
    }
}

void func_800F71C4_MemoryMatch(omObjData* arg0) {
    func_800F8F58_MemoryMatch();
    func_800F9178_MemoryMatch();
    func_800F7E20_MemoryMatch();
    func_800F796C_MemoryMatch(arg0);
    
    if (func_800F901C_MemoryMatch() == 0) {
        D_800FE2C4_MemoryMatch = 1;
    }
    
    if (D_800FE30E_MemoryMatch < 2) {
        if (D_800FD86E_MemoryMatch++ >= 0x1F) {
            D_800FE2C2_MemoryMatch = 2;
            D_800ED430 = 0;
            D_800FDE2C_MemoryMatch = 0;
            if (D_800FE180_MemoryMatch == 0) {
                arg0->func_ptr = &func_800F73A4_MemoryMatch;
            } else {
                arg0->func_ptr = &func_800F7874_MemoryMatch;
            }
            func_800790C0();
            func_80009730();
            func_800601D4(0x28);
            return;
        }
    } else if (((u16) D_800FE2C4_MemoryMatch != 0) && func_800F9BC8_MemoryMatch(D_800F3FB0[0]) != 0) {
        D_800FE2C2_MemoryMatch = 2;
        D_800ED430 = 0;
        D_800FDE2C_MemoryMatch = 0;
        if (D_800FE180_MemoryMatch == 0) {
            arg0->func_ptr = &func_800F73A4_MemoryMatch;
        } else {
            arg0->func_ptr = &func_800F7874_MemoryMatch;
        }
        
        func_80009730();
        func_800601D4(0x28);
    }
}

void func_800F7318_MemoryMatch(omObjData* arg0) {
    if (func_80072718() == 0) {
        arg0->func_ptr = &func_800F7350_MemoryMatch;
    }
}

void func_800F7350_MemoryMatch(void) {
    D_800C3110->unk_40 = 45.0f;
    osViBlack(NULL);
    func_80060198();
    func_800F94E0_MemoryMatch();
    func_800F830C_MemoryMatch();
    omOvlReturnEx(1);
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", D_800FD9D0_MemoryMatch);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", D_800FD9DC_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F73A4_MemoryMatch);

void func_800F7874_MemoryMatch(omObjData* arg0) {
    func_800F796C_MemoryMatch(arg0);
    func_800F9178_MemoryMatch();
    switch (D_800FD878_MemoryMatch) {
    case 0:
        func_80075CCC(2);
        if (D_800FE30E_MemoryMatch < 2) {
            gPlayers[D_800FE30C_MemoryMatch].miniGameCoins += 2;
        }
        D_800FD878_MemoryMatch++;
        break;
    case 1:
        if (func_80075FE0() != 2) {
            return;
        }
        D_800FD878_MemoryMatch++;
        break;
    default:
        if (func_80076174() == 0) {
            func_800726AC(0, 20);
            func_80060398(40);
            arg0->func_ptr = &func_800F7318_MemoryMatch;
            D_800FD878_MemoryMatch++;
            break;
        }
        break;
    }
}

void func_800F796C_MemoryMatch(omObjData* arg0) {
    if (D_800F5144 == 1) {
        arg0->func_ptr = &func_800F7318_MemoryMatch;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F7994_MemoryMatch);

u16 func_800F7AFC_MemoryMatch(u16 arg0) {
    D_800FD7E0_MemoryMatch = D_800FD7E0_MemoryMatch * 0x19971204;
    D_800FD7E0_MemoryMatch = (D_800FD7E0_MemoryMatch + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD7E0_MemoryMatch;
    } else {
        return (D_800FD7E0_MemoryMatch % arg0);
    }
}

void func_800F7B6C_MemoryMatch(u16 arg0) {
    D_800FD7E0_MemoryMatch = arg0 * D_800FD7E0_MemoryMatch;
    D_800FD7E0_MemoryMatch += arg0;
}

f32 func_800F7B90_MemoryMatch(f32 arg0, f32 arg1) {
    f32 phi_f4 = func_800B0CD8(arg0, arg1);

    if (360.0 < phi_f4) {
        phi_f4 -= 360.0;  
    } else {
        if (phi_f4 < 0.0) {
            phi_f4 += 360.0;
        }
    }
    return phi_f4;
}

void func_800F7C08_MemoryMatch(void) {
    D_800F33EC.y = -41.39f;
    D_800F33EC.x = 0;
    D_800F33EC.z = 0;
    D_800F6524.x = -5.0f;
    D_800F6524.y = -30.0f;
    D_800F6524.z = 0;
    D_800EE98C = 1556.0f;
}

void func_800F7C70_MemoryMatch(f32 arg0) {
    omObjData* temp_a0;

    if (arg0 == 0.0) {
        temp_a0 = D_800F3FB0[0];
        D_800FDDC0_MemoryMatch.x = D_800F6524.x;
        D_800FDDC0_MemoryMatch.y = D_800F6524.y;
        D_800FDDC0_MemoryMatch.z = D_800F6524.z;
        D_800FDDCC_MemoryMatch.x = temp_a0->trans.x;
        D_800FDDCC_MemoryMatch.y = temp_a0->trans.y;
        D_800FDDCC_MemoryMatch.z = temp_a0->trans.z;
        return;
    }
    
    D_800F6524.x = D_800FDDC0_MemoryMatch.x + (arg0 * (D_800FDDCC_MemoryMatch.x - D_800FDDC0_MemoryMatch.x));
    D_800F6524.y = D_800FDDC0_MemoryMatch.y + (arg0 * (D_800FDDCC_MemoryMatch.y - D_800FDDC0_MemoryMatch.y));
    D_800F6524.z = D_800FDDC0_MemoryMatch.z + (arg0 * (D_800FDDCC_MemoryMatch.z - D_800FDDC0_MemoryMatch.z));
    D_800EE98C = (1416.3999999999999 - (arg0 * 840.0));
}

void func_800F7D74_MemoryMatch(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        D_800FE158_MemoryMatch[i][0] = -1;
        D_800FE158_MemoryMatch[i][1] = -1;
    }
}

void func_800F7DC0_MemoryMatch(s16 arg0, s16 arg1) {
    s16 i;
    for (i = 0; i < 0x0A; i++) {
        if (D_800FE158_MemoryMatch[i][0] == -1) {
            D_800FE158_MemoryMatch[i][0] = arg0;
            D_800FE158_MemoryMatch[i][1] = arg1;
            return;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F7E20_MemoryMatch);

typedef struct unkStruct_01 {
/* 0x00 */ s8 unk_00;
/* 0x01 */ s8 unk_01;
} unkStruct_01;

typedef struct unkStruct_02 {
/* 0x00 */ u16 unk_00;
} unkStruct_02;

void func_800F8D84_MemoryMatch(Vec3f*, Vec2f*);
extern omObjData* D_800F2AF8[];
extern u16 D_800FD85C_MemoryMatch[];
extern Vec3f D_800FDA78_MemoryMatch;
extern omObjData* D_800FDDE0_MemoryMatch;
extern s16 D_800FDE40_MemoryMatch;
extern unkStruct D_800FDE42_MemoryMatch;
extern unkStruct D_800FDE46_MemoryMatch;
void func_800F8130_MemoryMatch(void);
void func_800F87DC_MemoryMatch(void);
void func_800FB0A8_MemoryMatch(void);

void func_800F7EDC_MemoryMatch(void) {
    omObjData* curObject;
    Vec3f sp18 = {0.0f, 0.0f, 0.0f};
    Vec2f sp24;
    u16 i;

    sp24.x = 0;
    sp24.y = 0;

    func_800090B8(D_800ED440);
    D_800F2AF8[D_800ED440++] = omAddObj(0, 1, 0, -1, (*func_800FB0A8_MemoryMatch));
    D_800FDDE0_MemoryMatch = omAddObj(1, 3, 0, -1, (*func_800F8130_MemoryMatch));

    curObject = D_800FDDE0_MemoryMatch;
    curObject->model[0] = LoadFormFile(0x120000, 0x99);
    curObject->model[1] = LoadFormFile(0x12000A, 0xB9);
    curObject->model[2] = LoadFormFile(0x12000B, 0xB9);

    sp18.x = -540.0f;
    sp18.y = 0.0f;
    sp18.z = -280.0f;
    sp24.x = 160.0f;
    sp24.y = 200.0f;

    func_800F8D84_MemoryMatch(&sp18, &sp24);
    for (i = 0; i < 9; i++) {
        curObject = D_800FE2E8_MemoryMatch[i] = omAddObj(0, 1, 0, -1, (*func_800F87DC_MemoryMatch));
        curObject->work[0] = i;
        curObject->work[1] = D_800FD85C_MemoryMatch[i];
        curObject->scale.x = curObject->scale.y = curObject->scale.z = 1.0f;
        D_800FE30E_MemoryMatch++;
    }

    D_800FDE40_MemoryMatch = 0;
    D_800FDE46_MemoryMatch.unk0 = -1;
    D_800FDE46_MemoryMatch.unk2 = -1;
    D_800FDE42_MemoryMatch.unk0 = 0;
    D_800FDE42_MemoryMatch.unk2 = 0;
    func_800F8314_MemoryMatch();
    SetFadeInTypeAndTime(0, 0x10);
}



INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8130_MemoryMatch);

void func_800F830C_MemoryMatch(void) {
}

void func_800F8314_MemoryMatch(void) {
    Vec3f temp_f0;
    s16 temp_s0;
    s16 phi_v1;
    u16 temp_s3 = func_800F7AFC_MemoryMatch(512);
    u16 i;

    for (i = 0; i < temp_s3; i++) {
        temp_s0 = func_800F7AFC_MemoryMatch(NUM_OF_TILES);

        if (temp_s0 >= NUM_OF_TILES) {
            temp_s0 = 0;
        }

        if (func_800F7AFC_MemoryMatch(0) & 1) {
            phi_v1 = temp_s0 + 1;
        } else {
            phi_v1 = temp_s0 - 1;
        }

        if (phi_v1 >= NUM_OF_TILES) {
            phi_v1 = 0;
        } else if (phi_v1 < 0) {
            phi_v1 = 8;
        }
        
        temp_f0.x = D_800FD7F0_MemoryMatch[phi_v1].x;
        temp_f0.y = D_800FD7F0_MemoryMatch[phi_v1].y;
        temp_f0.z = D_800FD7F0_MemoryMatch[phi_v1].z;
        D_800FD7F0_MemoryMatch[phi_v1].x = D_800FD7F0_MemoryMatch[temp_s0].x;
        D_800FD7F0_MemoryMatch[phi_v1].y = D_800FD7F0_MemoryMatch[temp_s0].y;
        D_800FD7F0_MemoryMatch[phi_v1].z = D_800FD7F0_MemoryMatch[temp_s0].z;
        D_800FD7F0_MemoryMatch[temp_s0].x = temp_f0.x;
        D_800FD7F0_MemoryMatch[temp_s0].y = temp_f0.y;
        D_800FD7F0_MemoryMatch[temp_s0].z = temp_f0.z;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F84A8_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8654_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F87DC_MemoryMatch);

// void func_800F87DC_MemoryMatch(omObjData* arg0) {
//     u16 temp_s1 = arg0->work[0];
    
//     arg0->func_ptr = func_800F89A8_MemoryMatch;
//     arg0->scale.x = arg0->scale.y = arg0->scale.z = 1.0f;
//     switch (temp_s1) {
//         case 0:
//             arg0->model[0] = LoadFormFile(0x120001, 0xB9);
//             break;
//         case 1:
//             arg0->model[0] = LoadFormFile(0x120002, 0xB9);
//             break;
//         case 2:
//             arg0->model[0] = LoadFormFile(0x120003, 0xB9);
//             break;
//         case 3:
//             arg0->model[0] = LoadFormFile(0x120004, 0xB9);
//             break;
//         case 4:
//             arg0->model[0] = LoadFormFile(0x120005, 0xB9);
//             break;
//     }

//     switch(temp_s1) {
//         case 5:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_MemoryMatch[0]->model);
//             break;
//         case 6:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_MemoryMatch[1]->model);
//             break;
//         case 7:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_MemoryMatch[2]->model);
//             break;
//         case 8:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_MemoryMatch[3]->model);
//             break;
//     }

//     arg0->trans.x = (D_800FD7F0_MemoryMatch[temp_s1].x * D_800FD7E4_MemoryMatch.x);
//     arg0->trans.y = (D_800FD7F0_MemoryMatch[temp_s1].y * D_800FD7E4_MemoryMatch.y);
//     arg0->trans.z = (D_800FD7F0_MemoryMatch[temp_s1].z * D_800FD7E4_MemoryMatch.z);
//     D_800F2B7C[arg0->model[0]].unk_4C.signed32 = 0; //unsure what this should be
//     arg0->work[2] = 0;
//     arg0->work[3] = 0;
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F89A8_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8BC0_MemoryMatch);

void func_800F8C38_MemoryMatch(void) {
    tikiThing* temp_a0 = D_800FDE50_MemoryMatch;
    u16 i = 0;
    
    for (i = 0; i < 8; i++) {
        temp_a0->unk_00 = 0;
        temp_a0->unk_02 = 0;
        temp_a0->unk_04 = 0;
        temp_a0->unk_08 = 0;
        temp_a0->unk_0C = temp_a0->unk_10 = temp_a0->unk_14 = 0;
        temp_a0++;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8C80_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8D84_MemoryMatch);

u16 func_800F8DF4_MemoryMatch(u32 arg0) {
    void* fsData;
    s16 temp_s1;

    fsData = ReadMainFS(arg0);
    temp_s1 = func_800678A4(fsData);
    FreeMainFS(fsData);
    return temp_s1;
}

void func_800F8E38_MemoryMatch(void) {
    unk_MemoryMatch_00* phi_s0;
    u16 i;

    D_800FDE30_MemoryMatch.unk_00 = func_800F8DF4_MemoryMatch(0x12000F);
    D_800FDE30_MemoryMatch.unk_02 = func_800F8DF4_MemoryMatch(0x75);
    D_800FDE30_MemoryMatch.unk_04 = func_800F8DF4_MemoryMatch(0x120013);
    D_800FDE30_MemoryMatch.unk_06 = func_800F8DF4_MemoryMatch(0x120014);
    D_800FDE30_MemoryMatch.unk_08 = func_800F8DF4_MemoryMatch(0x120015);
    D_800FDE30_MemoryMatch.unk_0A = func_800F8DF4_MemoryMatch(0x120016);
    phi_s0 = &D_800FE318_MemoryMatch[0];
    for (i = 0; i < 0x10; i++) {
        phi_s0->unk_04 = func_80064EF4(1, 0);
        func_80067480(phi_s0->unk_04, 0, -1);
        func_800674BC(phi_s0->unk_04, 0, 0x8000);
        func_800672B0(phi_s0->unk_04, 0, 0);
        phi_s0->unk_00 = 0;
        phi_s0->unk_02 = 0;
        phi_s0->unk_06 = 0;
        phi_s0->unk_08 = 0;
        phi_s0->unk_0C = 0;
        phi_s0->unk_10 = phi_s0->unk_12 = phi_s0->unk_14 = phi_s0->unk_16 = 0;
        phi_s0->unk_18 = phi_s0->unk_1A = phi_s0->unk_1C = phi_s0->unk_1E = 0;
        phi_s0++;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8F58_MemoryMatch);

void func_800F8FEC_MemoryMatch(void) {
    func_80075CCC(8, 0x2D, 0xA0, 0x20);
    D_800FDE2C_MemoryMatch = 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F901C_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F90CC_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9178_MemoryMatch);

void func_800F94E0_MemoryMatch(void) {
}

s16 func_800F94E8_MemoryMatch(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_s0;

    temp_s0 = ReadImgPackand(arg0, arg1, arg2);
    func_80025930(D_800ECDE0[temp_s0].unk_00, 0x70000000, 0x70000000);
    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F953C_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F963C_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F96A8_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F97D0_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9BC8_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9C50_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FA1E4_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FA400_MemoryMatch);

void func_800FAAC4_MemoryMatch(omObjData* arg0) {
    if (((unkGlobalStruct_00*) arg0->unk_50)->unk_5C & 0x6324) {
        func_80005A28(arg0);
        return;
    }
    func_800FADDC_MemoryMatch(arg0);
    func_80025798(arg0->model[1], arg0->trans.x, arg0->trans.y, arg0->trans.z);
    if (D_800FE2C2_MemoryMatch == 5) {
        if (D_800FE30E_MemoryMatch < 8) {
            func_800FAD94_MemoryMatch(arg0, 0x24);
        } else {
            func_800FAD94_MemoryMatch(arg0, 0x26);
        }
    } else {
        func_800184BC(arg0, 0);
    }
    func_80017DB0(arg0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAB80_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAD18_MemoryMatch);


void func_800FAD94_MemoryMatch(omObjData* arg0, s16 arg1) {
    if (D_800FE190_MemoryMatch != arg1) {
        func_800184BC(arg0, arg1);
    }
    D_800FE190_MemoryMatch = arg1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FADDC_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAEB4_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAF9C_MemoryMatch);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FB0A8_MemoryMatch);

void func_800FB1B0_MemoryMatch(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FB1B8_MemoryMatch);