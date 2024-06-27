#include "common.h"
#include "MemoryMatch.h"
#include "PR/os.h"
#include "PR/gu.h"

void func_800F8314_CF784(void);
void func_800FADDC_D224C(omObjData*);
void func_800FAD94_D2204(omObjData* arg0, s16 arg1);
extern s16 D_800FE190_D5600;

void func_800F65E0_CDA50(void) {
    f32 temp_f20;
    f64 temp_f22;
    s32 temp_s0;
    unk_Struct00* temp_s0_2;

    func_80029090_29C90(50);
    omInitObjMan(50, 0);
    func_80060088_60C88();
    func_8001DE70_1EA70(64);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_8005EB1C_5F71C), 0xA0);
    func_80023448_24048(2);
    func_800234B8_240B8(0, 0xA0, 0xA0, 0xA0);
    func_800234B8_240B8(1, 0xFF, 0xFF, 0xFF);
    func_80023504_24104(1, -96.0f, 100.0f, 26.0f);
    func_800178A0_184A0(1);
    temp_s0 = func_800178E8_184E8() & 0xFF;
    func_80017660_18260(temp_s0, 0, 0, 320.0f, 240.0f);
    func_800176C4_182C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494_1E094(0, 45.0f, 80.0f, 4000.0f);
    func_800F7C08_CF078();
    temp_s0_2 = D_800C3110_C3D10;
    temp_s0_2->unk_40 = 40.0f;
    temp_f22 = 2.0;
    temp_f20 = func_800AEAC0_AF6C0(20.0f);
    D_800FDE28_D5298 = temp_f20 / func_800AEFD0_AFBD0(temp_s0_2->unk_40 / temp_f22);
    guMtxL2F(D_800FDDE8_D5258, &temp_s0_2->unk_138);
    D_800ED440_ED4D0 = 0;
    D_800F2BC0_F2C50 = 0;
    D_800FDDDC_D524C = omAddObj(0x20, 0, 0, -1, &func_800F6858_CDCC8);
    func_800F7B6C_CEFDC(rand8() & 0xFF);
    func_800F7D74_CF1E4();
    D_800FE2C2_D5732 = -1;
    D_800FDE2C_D529C = 0;
    D_800ED430_ED4C0 = 0;
    D_800FE2C4_D5734 = 0;
    D_800FE2C0_D5730 = 0;
    D_800FE180_D55F0 = 0;
    func_8007B168_7BD68(&D_800FD8D0_D4D40, 1);
    func_8007B168_7BD68(&D_800FD8DC_D4D4C, 1);
    func_8007B168_7BD68(&D_800FD8EC_D4D5C, 1);
    PlaySound(0x1A2);
}

void func_800F6858_CDCC8(omObjData* arg0) {
    arg0->func_ptr = &func_800F68CC_CDD3C;
    D_800FE2C2_D5732 = 0;
    D_800FDE2C_D529C = 0;
    func_800F8C38_D00A8();
    func_800F7EDC_CF34C();
    func_800F963C_D0AAC();
    func_800F8E38_D02A8();
    func_800F90CC_D053C();
    func_800FB360_D27D0();
    if (IsFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FE180_D55F0 = 1;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F68CC_CDD3C);

void func_800F714C_CE5BC(omObjData* arg0) {
    func_800F9178_D05E8();
    func_800F796C_CEDDC(arg0);
    if (func_80075FE0_76BE0() == 0) {
        D_800FDE2C_D529C = 0;
        D_800FE2C2_D5732 = 1;
        arg0->func_ptr = &func_800F71C4_CE634;
        func_800F8FEC_D045C();
        D_800FE150_D55C0 = func_8000C544_D144();
        D_800ED430_ED4C0 = 1;
    }
}

void func_800F71C4_CE634(omObjData* arg0) {
    func_800F8F58_D03C8();
    func_800F9178_D05E8();
    func_800F7E20_CF290();
    func_800F796C_CEDDC(arg0);
    
    if (func_800F901C_D048C() == 0) {
        D_800FE2C4_D5734 = 1;
    }
    
    if (D_800FE30E_D577E < 2) {
        if (D_800FD86E_D4CDE++ >= 0x1F) {
            D_800FE2C2_D5732 = 2;
            D_800ED430_ED4C0 = 0;
            D_800FDE2C_D529C = 0;
            if (D_800FE180_D55F0 == 0) {
                arg0->func_ptr = &func_800F73A4_CE814;
            } else {
                arg0->func_ptr = &func_800F7874_CECE4;
            }
            func_800790C0_79CC0();
            func_80009730_A330();
            func_800601D4_60DD4(0x28);
            return;
        }
    } else if (((u16) D_800FE2C4_D5734 != 0) && func_800F9BC8_D1038(D_800F3FB0_F4040) != 0) {
        D_800FE2C2_D5732 = 2;
        D_800ED430_ED4C0 = 0;
        D_800FDE2C_D529C = 0;
        if (D_800FE180_D55F0 == 0) {
            arg0->func_ptr = &func_800F73A4_CE814;
        } else {
            arg0->func_ptr = &func_800F7874_CECE4;
        }
        
        func_80009730_A330();
        func_800601D4_60DD4(0x28);
    }
}

void func_800F7318_CE788(omObjData* arg0) {
    if (func_80072718_73318() == 0) {
        arg0->func_ptr = &func_800F7350_CE7C0;
    }
}

void func_800F7350_CE7C0(void) {
    D_800C3110_C3D10->unk_40 = 45.0f;
    osViBlack(NULL);
    func_80060198_60D98();
    func_800F94E0_D0950();
    func_800F830C_CF77C();
    omOvlReturnEx(1);
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", D_800FD9D0_D4E40);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", D_800FD9DC_D4E4C);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F73A4_CE814);

void func_800F7874_CECE4(omObjData* arg0) {
    func_800F796C_CEDDC(arg0);
    func_800F9178_D05E8();
    switch (D_800FD878_D4CE8) {
    case 0:
        func_80075CCC_768CC(2);
        if (D_800FE30E_D577E < 2) {
            gPlayers[D_800FE30C_D577C].miniGameCoins += 2;
        }
        D_800FD878_D4CE8++;
        break;
    case 1:
        if (func_80075FE0_76BE0() != 2) {
            return;
        }
        D_800FD878_D4CE8++;
        break;
    default:
        if (func_80076174_76D74() == 0) {
            func_800726AC_732AC(0, 20);
            func_80060398_60F98(40);
            arg0->func_ptr = &func_800F7318_CE788;
            D_800FD878_D4CE8++;
            break;
        }
        break;
    }
}

void func_800F796C_CEDDC(omObjData* arg0) {
    if (D_800F5144_F51D4 == 1) {
        arg0->func_ptr = &func_800F7318_CE788;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F7994_CEE04);

u16 func_800F7AFC_CEF6C(u16 arg0) {
    D_800FD7E0_D4C50 = D_800FD7E0_D4C50 * 0x19971204;
    D_800FD7E0_D4C50 = (D_800FD7E0_D4C50 + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD7E0_D4C50;
    } else {
        return (D_800FD7E0_D4C50 % arg0);
    }
}

void func_800F7B6C_CEFDC(u16 arg0) {
    D_800FD7E0_D4C50 = arg0 * D_800FD7E0_D4C50;
    D_800FD7E0_D4C50 += arg0;
}

f32 func_800F7B90_CF000(f32 arg0, f32 arg1) {
    f32 phi_f4 = func_800B0CD8_B18D8(arg0, arg1);

    if (360.0 < phi_f4) {
        phi_f4 -= 360.0;  
    } else {
        if (phi_f4 < 0.0) {
            phi_f4 += 360.0;
        }
    }
    return phi_f4;
}

void func_800F7C08_CF078(void) {
    D_800F33EC_F347C.y = -41.39f;
    D_800F33EC_F347C.x = 0;
    D_800F33EC_F347C.z = 0;
    D_800F6524_F65B4.x = -5.0f;
    D_800F6524_F65B4.y = -30.0f;
    D_800F6524_F65B4.z = 0;
    D_800EE98C_EEA1C = 1556.0f;
}

void func_800F7C70_CF0E0(f32 arg0) {
    omObjData* temp_a0;

    if (arg0 == 0.0) {
        temp_a0 = D_800F3FB0_F4040;
        D_800FDDC0_D5230.x = D_800F6524_F65B4.x;
        D_800FDDC0_D5230.y = D_800F6524_F65B4.y;
        D_800FDDC0_D5230.z = D_800F6524_F65B4.z;
        D_800FDDCC_D523C.x = temp_a0->trans.x;
        D_800FDDCC_D523C.y = temp_a0->trans.y;
        D_800FDDCC_D523C.z = temp_a0->trans.z;
        return;
    }
    
    D_800F6524_F65B4.x = D_800FDDC0_D5230.x + (arg0 * (D_800FDDCC_D523C.x - D_800FDDC0_D5230.x));
    D_800F6524_F65B4.y = D_800FDDC0_D5230.y + (arg0 * (D_800FDDCC_D523C.y - D_800FDDC0_D5230.y));
    D_800F6524_F65B4.z = D_800FDDC0_D5230.z + (arg0 * (D_800FDDCC_D523C.z - D_800FDDC0_D5230.z));
    D_800EE98C_EEA1C = (1416.3999999999999 - (arg0 * 840.0));
}

void func_800F7D74_CF1E4(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        D_800FE158_D55C8[i][0] = -1;
        D_800FE158_D55C8[i][1] = -1;
    }
}

void func_800F7DC0_CF230(s16 arg0, s16 arg1) {
    s16 i;
    for (i = 0; i < 0x0A; i++) {
        if (D_800FE158_D55C8[i][0] == -1) {
            D_800FE158_D55C8[i][0] = arg0;
            D_800FE158_D55C8[i][1] = arg1;
            return;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F7E20_CF290);

typedef struct unkStruct_01 {
/* 0x00 */ s8 unk_00;
/* 0x01 */ s8 unk_01;
} unkStruct_01;

typedef struct unkStruct_02 {
/* 0x00 */ u16 unk_00;
} unkStruct_02;

void func_800F8D84_D01F4(Vec3f*, Vec2f*);
extern omObjData* D_800F2AF8_F2B88[];
extern u16 D_800FD85C_D4CCC[];
extern Vec3f D_800FDA78_D4EE8;
extern omObjData* D_800FDDE0_D5250;
extern s16 D_800FDE40_D52B0;
extern unkStruct D_800FDE42_D52B2;
extern unkStruct D_800FDE46_D52B6;
void func_800F8130_CF5A0(void);
void func_800F87DC_CFC4C(void);
void func_800FB0A8_D2518(void);

void func_800F7EDC_CF34C(void) {
    omObjData* curObject;
    Vec3f sp18 = {0.0f, 0.0f, 0.0f};
    Vec2f sp24;
    u16 i;

    sp24.x = 0;
    sp24.y = 0;

    func_800090B8_9CB8(D_800ED440_ED4D0);
    D_800F2AF8_F2B88[D_800ED440_ED4D0++] = omAddObj(0, 1, 0, -1, (*func_800FB0A8_D2518));
    D_800FDDE0_D5250 = omAddObj(1, 3, 0, -1, (*func_800F8130_CF5A0));

    curObject = D_800FDDE0_D5250;
    curObject->model[0] = LoadFormFile(0x120000, 0x99);
    curObject->model[1] = LoadFormFile(0x12000A, 0xB9);
    curObject->model[2] = LoadFormFile(0x12000B, 0xB9);

    sp18.x = -540.0f;
    sp18.y = 0.0f;
    sp18.z = -280.0f;
    sp24.x = 160.0f;
    sp24.y = 200.0f;

    func_800F8D84_D01F4(&sp18, &sp24);
    for (i = 0; i < 9; i++) {
        curObject = D_800FE2E8_D5758[i] = omAddObj(0, 1, 0, -1, (*func_800F87DC_CFC4C));
        curObject->work[0] = i;
        curObject->work[1] = D_800FD85C_D4CCC[i];
        curObject->scale.x = curObject->scale.y = curObject->scale.z = 1.0f;
        D_800FE30E_D577E++;
    }

    D_800FDE40_D52B0 = 0;
    D_800FDE46_D52B6.unk0 = -1;
    D_800FDE46_D52B6.unk2 = -1;
    D_800FDE42_D52B2.unk0 = 0;
    D_800FDE42_D52B2.unk2 = 0;
    func_800F8314_CF784();
    SetFadeInTypeAndTime(0, 0x10);
}



INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8130_CF5A0);

void func_800F830C_CF77C(void) {
}

void func_800F8314_CF784(void) {
    Vec3f temp_f0;
    s16 temp_s0;
    s16 phi_v1;
    u16 temp_s3 = func_800F7AFC_CEF6C(512);
    u16 i;

    for (i = 0; i < temp_s3; i++) {
        temp_s0 = func_800F7AFC_CEF6C(NUM_OF_TILES);

        if (temp_s0 >= NUM_OF_TILES) {
            temp_s0 = 0;
        }

        if (func_800F7AFC_CEF6C(0) & 1) {
            phi_v1 = temp_s0 + 1;
        } else {
            phi_v1 = temp_s0 - 1;
        }

        if (phi_v1 >= NUM_OF_TILES) {
            phi_v1 = 0;
        } else if (phi_v1 < 0) {
            phi_v1 = 8;
        }
        
        temp_f0.x = D_800FD7F0_D4C60[phi_v1].x;
        temp_f0.y = D_800FD7F0_D4C60[phi_v1].y;
        temp_f0.z = D_800FD7F0_D4C60[phi_v1].z;
        D_800FD7F0_D4C60[phi_v1].x = D_800FD7F0_D4C60[temp_s0].x;
        D_800FD7F0_D4C60[phi_v1].y = D_800FD7F0_D4C60[temp_s0].y;
        D_800FD7F0_D4C60[phi_v1].z = D_800FD7F0_D4C60[temp_s0].z;
        D_800FD7F0_D4C60[temp_s0].x = temp_f0.x;
        D_800FD7F0_D4C60[temp_s0].y = temp_f0.y;
        D_800FD7F0_D4C60[temp_s0].z = temp_f0.z;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F84A8_CF918);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8654_CFAC4);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F87DC_CFC4C);

// void func_800F87DC_CFC4C(omObjData* arg0) {
//     u16 temp_s1 = arg0->work[0];
    
//     arg0->func_ptr = func_800F89A8_CFE18;
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
//             arg0->model[0] = func_80023FC8(D_800FE2E8_D5758[0]->model);
//             break;
//         case 6:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_D5758[1]->model);
//             break;
//         case 7:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_D5758[2]->model);
//             break;
//         case 8:
//             arg0->model[0] = func_80023FC8(D_800FE2E8_D5758[3]->model);
//             break;
//     }

//     arg0->trans.x = (D_800FD7F0_D4C60[temp_s1].x * D_800FD7E4_D4C54.x);
//     arg0->trans.y = (D_800FD7F0_D4C60[temp_s1].y * D_800FD7E4_D4C54.y);
//     arg0->trans.z = (D_800FD7F0_D4C60[temp_s1].z * D_800FD7E4_D4C54.z);
//     D_800F2B7C_F2C0C[arg0->model[0]].unk_4C.signed32 = 0; //unsure what this should be
//     arg0->work[2] = 0;
//     arg0->work[3] = 0;
// }

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F89A8_CFE18);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8BC0_D0030);

void func_800F8C38_D00A8(void) {
    tikiThing* temp_a0 = D_800FDE50_D52C0;
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

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8C80_D00F0);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8D84_D01F4);

u16 func_800F8DF4_D0264(u32 arg0) {
    void* fsData;
    s16 temp_s1;

    fsData = ReadMainFS(arg0);
    temp_s1 = func_800678A4_684A4(fsData);
    FreeMainFS(fsData);
    return temp_s1;
}

void func_800F8E38_D02A8(void) {
    unk_MemoryMatch_00* phi_s0;
    u16 i;

    D_800FDE30_D52A0.unk_00 = func_800F8DF4_D0264(0x12000F);
    D_800FDE30_D52A0.unk_02 = func_800F8DF4_D0264(0x75);
    D_800FDE30_D52A0.unk_04 = func_800F8DF4_D0264(0x120013);
    D_800FDE30_D52A0.unk_06 = func_800F8DF4_D0264(0x120014);
    D_800FDE30_D52A0.unk_08 = func_800F8DF4_D0264(0x120015);
    D_800FDE30_D52A0.unk_0A = func_800F8DF4_D0264(0x120016);
    phi_s0 = &D_800FE318_D5788[0];
    for (i = 0; i < 0x10; i++) {
        phi_s0->unk_04 = func_80064EF4_65AF4(1, 0);
        func_80067480_68080(phi_s0->unk_04, 0, -1);
        func_800674BC_680BC(phi_s0->unk_04, 0, 0x8000);
        func_800672B0_67EB0(phi_s0->unk_04, 0, 0);
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

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F8F58_D03C8);

void func_800F8FEC_D045C(void) {
    func_80075CCC_768CC(8, 0x2D, 0xA0, 0x20);
    D_800FDE2C_D529C = 0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F901C_D048C);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F90CC_D053C);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9178_D05E8);

void func_800F94E0_D0950(void) {
}

s16 func_800F94E8_D0958(s32 arg0, s32 arg1, s32 arg2) {
    s16 temp_s0;

    temp_s0 = ReadImgPackand(arg0, arg1, arg2);
    func_80025930_26530(D_800ECDE0_ECE70[temp_s0].unk_00, 0x70000000, 0x70000000);
    return temp_s0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F953C_D09AC);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F963C_D0AAC);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F96A8_D0B18);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F97D0_D0C40);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9BC8_D1038);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800F9C50_D10C0);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FA1E4_D1654);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FA400_D1870);

void func_800FAAC4_D1F34(omObjData* arg0) {
    if (((unkGlobalStruct_00*) arg0->unk_50)->unk_5C & 0x6324) {
        func_80005A28_6628(arg0);
        return;
    }
    func_800FADDC_D224C(arg0);
    func_80025798_26398(arg0->model[1], arg0->trans.x, arg0->trans.y, arg0->trans.z);
    if (D_800FE2C2_D5732 == 5) {
        if (D_800FE30E_D577E < 8) {
            func_800FAD94_D2204(arg0, 0x24);
        } else {
            func_800FAD94_D2204(arg0, 0x26);
        }
    } else {
        func_800184BC_190BC(arg0, 0);
    }
    func_80017DB0_189B0(arg0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAB80_D1FF0);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAD18_D2188);


void func_800FAD94_D2204(omObjData* arg0, s16 arg1) {
    if (D_800FE190_D5600 != arg1) {
        func_800184BC_190BC(arg0, arg1);
    }
    D_800FE190_D5600 = arg1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FADDC_D224C);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAEB4_D2324);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FAF9C_D240C);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FB0A8_D2518);

void func_800FB1B0_D2620(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_00_MemoryMatch/CDA50", func_800FB1B8_D2628);