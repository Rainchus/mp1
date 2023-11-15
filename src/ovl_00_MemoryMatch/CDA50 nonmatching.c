#include "MemoryMatch.h"

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD870_D4CE0);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD874_D4CE4);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD878_D4CE8);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD87C_D4CEC);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD880_D4CF0);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD884_D4CF4);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD888_D4CF8);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD89C_D4D0C);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8A0_D4D10);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8A4_D4D14);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8A8_D4D18);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8B0_D4D20);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8C0_D4D30);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8D0_D4D40);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8DC_D4D4C);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD8EC_D4D5C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F65E0_CDA50);
// void func_800F65E0_CDA50(void) {
//     f32 temp_f20;
//     f64 temp_f22;
//     s32 temp_s0;
//     unk_Struct00* temp_s0_2;

//     func_80029090(50);
//     InitObjSystem (50, 0);
//     func_80060088();
//     func_8001DE70(64);
//     func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_8005EB1C), 0xA0);
//     func_80023448(2);
//     func_800234B8(0, 0xA0, 0xA0, 0xA0);
//     func_800234B8(1, 0xFF, 0xFF, 0xFF);
//     func_80023504(1, -96.0f, 100.0f, 26.0f);
//     func_800178A0(1);
//     temp_s0 = func_800178E8();
//     func_80017660(temp_s0, 0, 0, 320.0f, 240.0f);
//     func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
//     func_8001D494(0, 45.0f, 80.0f, 4000.0f);
//     func_800F7C08_CF078();
//     temp_s0_2 = D_800C3110;
//     temp_s0_2->unk_40 = 40.0f;
//     temp_f22 = 2.0;
//     temp_f20 = func_800AEAC0(20.0f);
//     D_800FDE28 = temp_f20 / func_800AEFD0(temp_s0_2->unk_40 / temp_f22);
//     guMtxL2F(&D_800FDDE8, &temp_s0_2->unk_138);
//     D_800ED440 = 0;
//     D_800F2BC0 = 0;
//     D_800FDDDC = func_8005D384(0x20, 0, 0, -1, &func_800F6858_CDCC8);
//     func_800F7B6C_CEFDC(GetRandomByte() & 0xFF);
//     func_800F7D74_CF1E4();
//     D_800FE2C2 = -1;
//     D_800FDE2C = 0;
//     D_800ED430 = 0;
//     D_800FE2C4 = 0;
//     D_800FE2C0 = 0;
//     D_800FE180 = 0;
//     func_8007B168(&D_800FD8D0_D4D40, 1);
//     func_8007B168(&D_800FD8DC_D4D4C, 1);
//     func_8007B168(&D_800FD8EC_D4D5C, 1);
//     PlaySound(0x1A2);
// }

void func_800F6858_CDCC8(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_800F68CC_CDD3C;
    D_800FE2C2 = 0;
    D_800FDE2C = 0;
    func_800F8C38_D00A8();
    func_800F7EDC_CF34C();
    func_800F963C_D0AAC();
    func_800F8E38_D02A8();
    func_800F90CC_D053C();
    func_800FB360_D27D0();
    if (IsFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FE180 = 1;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F68CC_CDD3C);

void func_800F714C_CE5BC(unkObjectStruct* arg0) {
    func_800F9178_D05E8();
    func_800F796C_CEDDC(arg0);
    if (func_80075FE0() == 0) {
        D_800FDE2C = 0;
        D_800FE2C2 = 1;
        arg0->func_ptr = &func_800F71C4_CE634;
        func_800F8FEC_D045C();
        D_800FE150 = func_8000C544();
        D_800ED430 = 1;
    }
}

void func_800F71C4_CE634(unkObjectStruct* arg0) {
    func_800F8F58_D03C8();
    func_800F9178_D05E8();
    func_800F7E20_CF290();
    func_800F796C_CEDDC(arg0);
    
    if (func_800F901C_D048C() == 0) {
        D_800FE2C4 = 1;
    }
    
    if (D_800FE30E < 2) {
        if (D_800FD86E_D4CDE++ >= 0x1F) {
            D_800FE2C2 = 2;
            D_800ED430 = 0;
            D_800FDE2C = 0;
            if (D_800FE180 == 0) {
                arg0->func_ptr = &func_800F73A4_CE814;
            } else {
                arg0->func_ptr = &func_800F7874_CECE4;
            }
            func_800790C0();
            func_80009730();
            func_800601D4(0x28);
            return;
        }
    } else if (((u16) D_800FE2C4 != 0) && func_800F9BC8_D1038(D_800F3FB0) != 0) {
        D_800FE2C2 = 2;
        D_800ED430 = 0;
        D_800FDE2C = 0;
        if (D_800FE180 == 0) {
            arg0->func_ptr = &func_800F73A4_CE814;
        } else {
            arg0->func_ptr = &func_800F7874_CECE4;
        }
        
        func_80009730();
        func_800601D4(0x28);
    }
}

void func_800F7318_CE788(unkObjectStruct* arg0) {
    if (func_80072718() == 0) {
        arg0->func_ptr = &func_800F7350_CE7C0;
    }
}

void func_800F7350_CE7C0(void) {
    D_800C3110->unk_40 = 45.0f;
    osViBlack(NULL);
    func_80060198();
    func_800F94E0_D0950();
    func_800F830C_CF77C();
    func_8005DFB8(1);
}

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD9D0_D4E40);

INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FD9DC_D4E4C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F73A4_CE814);

void func_800F7874_CECE4(unkObjectStruct* arg0) {
    func_800F796C_CEDDC(arg0);
    func_800F9178_D05E8();
    switch (D_800FD878) {
    case 0:
        func_80075CCC(2);
        if (D_800FE30E < 2) {
            gPlayers[D_800FE30C].miniGameCoins += 2;
        }
        D_800FD878++;
        break;
    case 1:
        if (func_80075FE0() != 2) {
            return;
        }
        D_800FD878++;
        break;
    default:
        if (func_80076174() == 0) {
            func_800726AC(0, 20);
            func_80060398(40);
            arg0->func_ptr = &func_800F7318_CE788;
            D_800FD878++;
            break;
        }
        break;
    }
}

void func_800F796C_CEDDC(unkObjectStruct* arg0) {
    if (D_800F5144 == 1) {
        arg0->func_ptr = &func_800F7318_CE788;
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F7994_CEE04);

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

void func_800F7C08_CF078(void) {
    D_800F33EC.y = -41.39f;
    D_800F33EC.x = 0;
    D_800F33EC.z = 0;
    D_800F6524.x = -5.0f;
    D_800F6524.y = -30.0f;
    D_800F6524.z = 0;
    D_800EE98C = 1556.0f;
}


void func_800F7C70_CF0E0(f32 arg0) { //uses rodata
    unkObjectStruct* temp_a0;

    if (arg0 == 0.0) {
        temp_a0 = D_800F3FB0;
        D_800FDDC0.x = D_800F6524.x;
        D_800FDDC0.y = D_800F6524.y;
        D_800FDDC0.z = D_800F6524.z;
        D_800FDDCC.x = temp_a0->unk_18;
        D_800FDDCC.y = temp_a0->unk_1C;
        D_800FDDCC.z = temp_a0->unk_20;
        return;
    }
    
    D_800F6524.x = D_800FDDC0.x + (arg0 * (D_800FDDCC.x - D_800FDDC0.x));
    D_800F6524.y = D_800FDDC0.y + (arg0 * (D_800FDDCC.y - D_800FDDC0.y));
    D_800F6524.z = D_800FDDC0.z + (arg0 * (D_800FDDCC.z - D_800FDDC0.z));
    D_800EE98C = (1416.3999999999999 - (arg0 * 840.0));
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F7D74_CF1E4);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F7DC0_CF230);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F7E20_CF290);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F7EDC_CF34C);
// void func_800F7EDC_CF34C(void) {
//     unkObjectStruct* curObject;
//     Vec2f sp24;
//     u16 i;

//     Vec3f sp18 = { 0.0f, 0.0f, 0.0f };
//     sp24.x = 0;
//     sp24.y = 0;
//     func_800090B8(D_800ED440);
//     D_800F2AF8[D_800ED440++] = func_8005D384(0, 1, 0, -1, (*func_800FB0A8_D2518));
//     D_800FDDE0 = func_8005D384(1, 3, 0, -1, (*func_800F8130_CF5A0));
//     curObject = D_800FDDE0;
//     curObject->unk_40->pos.x = LoadFormFile(0x120000, 0x99);
//     curObject->unk_40->pos.y = LoadFormFile(0x12000A, 0xB9);
//     curObject->unk_40->pos.z = LoadFormFile(0x12000B, 0xB9);
//     sp18.x = -540.0f;
//     sp18.y = 0.0f;
//     sp18.z = -280.0f;
//     sp24.x = 160.0f;
//     sp24.y = 200.0f;
//     func_800F8D84_D01F4(&sp18, &sp24);
//     for (i = 0; i < 9; i++) {
//         curObject = D_800FE2E8[i] = func_8005D384(0, 1, 0, -1, (*func_800F87DC_CFC4C));
//         curObject->unk_4C[0] = i;
//         curObject->unk_4C[1] = D_800FD85C_D4CCC[i];
//         curObject->unk_38 = 1.0f;
//         curObject->unk_34 = 1.0f;
//         curObject->unk_30 = 1.0f;
//         D_800FE30E++;
//     }

//     D_800FDE40 = 0;
//     D_800FDE46.x = -1;
//     D_800FDE46.y = -1;
//     D_800FDE42.x = 0;
//     D_800FDE42.y = 0;
//     func_800F8314_CF784();
//     SetFadeInTypeAndTime(0, 0x10);
// }


INCLUDE_RODATA("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", D_800FDA78_D4EE8);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8130_CF5A0);

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

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F84A8_CF918);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8654_CFAC4);

void func_800F87DC_CFC4C(unkObjectStruct* arg0) {
    u16 temp_s1 = arg0->unk_4C[0];
    
    arg0->func_ptr = &func_800F89A8_CFE18;
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 1.0f;
    switch (temp_s1) {
    case 0:
        *arg0->unk_40 = LoadFormFile(MM_FIRE_FLOWER, 0xB9);
        break;
    case 1:
        *arg0->unk_40 = LoadFormFile(MM_SHELL, 0xB9);
        break;
    case 2:
        *arg0->unk_40 = LoadFormFile(MM_1UP, 0xB9);
        break;
    case 3:
        *arg0->unk_40 = LoadFormFile(MM_MUSHROOM, 0xB9);
        break;
    case 4:
        *arg0->unk_40 = LoadFormFile(MM_BOWSER, 0xB9);
        break;
    }

    switch(temp_s1) {
        case 5:
            *arg0->unk_40 = func_80023FC8(*D_800FE2E8[0]->unk_40);
            break;
        case 6:
            *arg0->unk_40 = func_80023FC8(*D_800FE2E8[1]->unk_40);
            break;
        case 7:
            *arg0->unk_40 = func_80023FC8(*D_800FE2E8[2]->unk_40);
            break;
        case 8:
            *arg0->unk_40 = func_80023FC8(*D_800FE2E8[3]->unk_40);
            break;
    }

    arg0->unk_18 = (D_800FD7F0_D4C60[temp_s1].x * D_800FD7E4_D4C54.x);
    arg0->unk_1C = (D_800FD7F0_D4C60[temp_s1].y * D_800FD7E4_D4C54.y);
    arg0->unk_20 = (D_800FD7F0_D4C60[temp_s1].z * D_800FD7E4_D4C54.z);
    D_800F2B7C[*arg0->unk_40].unk_4C.signed32 = 0;
    arg0->unk_4C[2] = 0;
    arg0->unk_4C[3] = 0;
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F89A8_CFE18);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8BC0_D0030);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8C38_D00A8);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8C80_D00F0);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8D84_D01F4);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8DF4_D0264);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8E38_D02A8);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8F58_D03C8);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F8FEC_D045C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F901C_D048C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F90CC_D053C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F9178_D05E8);

void func_800F94E0_D0950(void) {
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F94E8_D0958);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F953C_D09AC);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F963C_D0AAC);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F96A8_D0B18);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F97D0_D0C40);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F9BC8_D1038);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800F9C50_D10C0);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FA1E4_D1654);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FA400_D1870);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAAC4_D1F34);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAB80_D1FF0);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAD18_D2188);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAD94_D2204);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FADDC_D224C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAEB4_D2324);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FAF9C_D240C);

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FB0A8_D2518);

void func_800FB1B0_D2620(void) {
}

INCLUDE_ASM("asm/nonmatchings/ovl_00_MemoryMatch/CDA50", func_800FB1B8_D2628);
