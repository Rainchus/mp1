#include "common.h"
#include "CDA50.h"

#ifdef NON_MATCHING
void func_800F65E0_CDA50(void) { //needs rodata support
    f32 temp_f20;
    f64 temp_f22;
    s32 temp_s0;
    unk_Struct00* temp_s0_2;

    func_80029090(50);
    func_8005CF30 (50, 0);
    func_80060088();
    func_8001DE70(64);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, (*func_8005EB1C)), 0xA0);
    func_80023448(2);
    func_800234B8(0, 0xA0, 0xA0, 0xA0);
    func_800234B8(1, 0xFF, 0xFF, 0xFF);
    func_80023504(1, -96.0f, 100.0f, 26.0f);
    func_800178A0(1);
    temp_s0 = func_800178E8() & 0xFF;
    func_80017660(temp_s0, 0, 0, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 45.0f, 80.0f, 4000.0f);
    func_800F7C08_CF078();
    temp_s0_2 = D_800C3110;
    temp_s0_2->unk_40 = 40.0f;
    temp_f22 = D_800FD900; //temp_f22 = 2.0; (matches with rodata support)
    temp_f20 = func_800AEAC0(20.0f);
    D_800FDE28 = temp_f20 / func_800AEFD0(temp_s0_2->unk_40 / temp_f22);
    func_80086F08(&D_800FDDE8, ++temp_s0_2);
    D_800ED440 = 0;
    D_800F2BC0 = 0;
    D_800FDDDC = func_8005D384(0x20, 0, 0, -1, (*func_800F6858_CDCC8));
    func_800F7B6C_CEFDC(GetRandomByte() & 0xFF);
    func_800F7D74_CF1E4();
    D_800FE2C2 = -1;
    D_800FDE2C = 0;
    D_800ED430 = 0;
    D_800FE2C4 = 0;
    D_800FE2C0 = 0;
    D_800FE180 = 0;
    func_8007B168(&D_800FD8D0, 1);
    func_8007B168(&D_800FD8DC, 1);
    func_8007B168(&D_800FD8EC, 1);
    func_800602AC(0x1A2);
}
#else
INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F65E0_CDA50);
#endif

void func_800F6858_CDCC8(unk_801DEC9C* arg0) {
    arg0->unk_14 = (*func_800F68CC_CDD3C);
    D_800FE2C2 = 0;
    D_800FDE2C = 0;
    func_800F8C38_D00A8();
    func_800F7EDC_CF34C();
    func_800F963C_D0AAC();
    func_800F8E38_D02A8();
    func_800F90CC_D053C();
    func_800FB360_D27D0();
    if (IsBoardFeatureFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FE180 = 1;
    }
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F68CC_CDD3C);

void func_800F714C_CE5BC(unk_801DEC9C* arg0) {
    func_800F9178_D05E8();
    func_800F796C_CEDDC(arg0);
    if (func_80075FE0() == 0) {
        D_800FDE2C = 0;
        D_800FE2C2 = 1;
        arg0->unk_14 = (*func_800F71C4_CE634);
        func_800F8FEC_D045C();
        D_800FE150 = func_8000C544();
        D_800ED430 = 1;
    }
}

void func_800F71C4_CE634(unk_801DEC9C* arg0) {
    func_800F8F58_D03C8();
    func_800F9178_D05E8();
    func_800F7E20_CF290();
    func_800F796C_CEDDC(arg0);
    
    if (func_800F901C_D048C() == 0) {
        D_800FE2C4 = 1;
    }
    
    if (D_800FE30E < 2) {
        if (D_800FD86E++ >= 0x1F) {
            D_800FE2C2 = 2;
            D_800ED430 = 0;
            D_800FDE2C = 0;
            if (D_800FE180 == 0) {
                arg0->unk_14 = (*func_800F73A4_CE814);
            } else {
                arg0->unk_14 = (*func_800F7874_CECE4);
            }
            func_800790C0();
            func_80009730();
            func_800601D4(0x28);
            return;
        }
    } else if (((u16) D_800FE2C4 != 0) && ((func_800F9BC8_D1038(D_800F3FB0) << 0x10) != 0)) {
        D_800FE2C2 = 2;
        D_800ED430 = 0;
        D_800FDE2C = 0;
        if (D_800FE180 == 0) {
            arg0->unk_14 = (*func_800F73A4_CE814);
        } else {
            arg0->unk_14 = (*func_800F7874_CECE4);
        }
        
        func_80009730();
        func_800601D4(0x28);
    }
}

void func_800F7318_CE788(unk_801DEC9C* arg0) {
    if (func_80072718() == 0) {
        arg0->unk_14 = (*func_800F7350_CE7C0);
    }
}

void func_800F7350_CE7C0(void) {
    D_800C3110->unk_40 = 45.0f;
    func_8008B6A0(0);
    func_80060198();
    func_800F94E0_D0950();
    func_800F830C_CF77C();
    func_8005DFB8(1);
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F73A4_CE814);

void func_800F7874_CECE4(unk_801DEC9C* arg0) {
    func_800F796C_CEDDC(arg0);
    func_800F9178_D05E8();
    switch (D_800FD878) {
    case 0:
        func_80075CCC(2);
        if (D_800FE30E < 2) {
            D_800F32B0[D_800FE30C].miniGameCoins += 2;
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
            arg0->unk_14 = (*func_800F7318_CE788);
            D_800FD878++;
            break;
        }
        break;
    }
}

void func_800F796C_CEDDC(unk_801DEC9C* arg0) {
    if (D_800F5144 == 1) {
        arg0->unk_14 = (*func_800F7318_CE788);
    }
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F7994_CEE04);

u16 func_800F7AFC_CEF6C(u16 arg0) {
    D_800FD7E0 = D_800FD7E0 * 0x19971204;
    D_800FD7E0 = (D_800FD7E0 + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD7E0;
    } else {
        return (D_800FD7E0 % arg0);
    }
}

void func_800F7B6C_CEFDC(u16 arg0) {
    D_800FD7E0 = arg0 * D_800FD7E0;
    D_800FD7E0 += arg0;
}

f32 func_800F7B90_CF000(void) {
    f32 phi_f4 = func_800B0CD8();

    if (D_800FDA58 < phi_f4) {
        phi_f4 -= D_800FDA58;  
    } else {
        if (phi_f4 < 0.0) {
            phi_f4 += D_800FDA60;
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
    unk_801DEC9C* temp_a0;

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
    //D_800EE98C = (1416.3999999999999 - (arg0 * 840.0));
    D_800EE98C = (D_800FDA70 - (arg0 * D_800FDA68));
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F7D74_CF1E4);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F7DC0_CF230);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F7E20_CF290);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F7EDC_CF34C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8130_CF5A0);

void func_800F830C_CF77C(void) {
}

void func_800F8314_CF784(void) {
    Vec3f temp_f0;
    s16 temp_s0;
    s16 phi_v1;
    u16 temp_s3 = func_800F7AFC_CEF6C(0x200);
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
        
        temp_f0.x = D_800FD7F0[phi_v1].x;
        temp_f0.y = D_800FD7F0[phi_v1].y;
        temp_f0.z = D_800FD7F0[phi_v1].z;
        D_800FD7F0[phi_v1].x = D_800FD7F0[temp_s0].x;
        D_800FD7F0[phi_v1].y = D_800FD7F0[temp_s0].y;
        D_800FD7F0[phi_v1].z = D_800FD7F0[temp_s0].z;
        D_800FD7F0[temp_s0].x = temp_f0.x;
        D_800FD7F0[temp_s0].y = temp_f0.y;
        D_800FD7F0[temp_s0].z = temp_f0.z;
    }
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F84A8_CF918);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8654_CFAC4);

#ifdef NON_MATCHING
void func_800F87DC_CFC4C(Object* arg0) { //matches but needs rodata support
    u16 temp_s1 = arg0->unk_4C;
    
    arg0->func_ptr = func_800F89A8_CFE18;
    arg0->unk_38 = 1.0f;
    arg0->unk_34 = 1.0f;
    arg0->unk_30 = 1.0f;
    switch (temp_s1) {
    case 0:
        *arg0->unk_40 = LoadFormFile(0x120001, 0xB9);
        break;
    case 1:
        *arg0->unk_40 = LoadFormFile(0x120002, 0xB9);
        break;
    case 2:
        *arg0->unk_40 = LoadFormFile(0x120003, 0xB9);
        break;
    case 3:
        *arg0->unk_40 = LoadFormFile(0x120004, 0xB9);
        break;
    case 4:
        *arg0->unk_40 = LoadFormFile(0x120005, 0xB9);
        break;
    }

    switch(temp_s1) {
        case 5:
            *arg0->unk_40 = func_80023FC8(*D_800FE2E8->unk_40);
            break;
        case 6:
            *arg0->unk_40 = func_80023FC8(*D_800FE2EC->unk_40);
            break;
        case 7:
            *arg0->unk_40 = func_80023FC8(*D_800FE2F0->unk_40);
            break;
        case 8:
            *arg0->unk_40 = func_80023FC8(*D_800FE2F4->unk_40);
            break;
    }

    arg0->unk_18 = (D_800FD7F0[temp_s1].x * D_800FD7E4.x);
    arg0->unk_1C = (D_800FD7F0[temp_s1].y * D_800FD7E4.y);
    arg0->unk_20 = (D_800FD7F0[temp_s1].z * D_800FD7E4.z);
    D_800F2B7C[*arg0->unk_40].unk_4C = 0;
    arg0->unk_4E = 0;
    arg0->unk_4F = 0;
}

#else
INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F87DC_CFC4C);
#endif

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F89A8_CFE18);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8BC0_D0030);

void func_800F8C38_D00A8(void) {
    tikiThing* temp_a0 = D_800FDE50;
    u16 i = 0;
    f32 zero = 0;
    
    for (i = 0; i < 8; i++) {
        temp_a0->unk_00 = 0;
        temp_a0->unk_02 = 0;
        temp_a0->unk_04 = 0;
        temp_a0->unk_08 = 0;
        temp_a0->unk_14 = zero;
        temp_a0->unk_10 = zero;
        temp_a0->unk_0C = zero;
        temp_a0++;
    }
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8C80_D00F0);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8D84_D01F4);

u16 func_800F8DF4_D0264(s32 arg0) {
    void* temp_s0;
    s32 temp_s1;

    temp_s0 = ReadMainFS(arg0);
    temp_s1 = func_800678A4(temp_s0);
    FreeMainFS(temp_s0);
    return temp_s1;
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8E38_D02A8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F8F58_D03C8);

void func_800F8FEC_D045C(void) {
    func_80075CCC(8, 0x2D, 0xA0, 0x20);
    D_800FDE2C = 0;
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F901C_D048C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F90CC_D053C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F9178_D05E8);

void func_800F94E0_D0950(void) {
}

s16 func_800F94E8_D0958(s32 arg0) {
    s16 temp_s0;

    temp_s0 = ReadImgPackand(arg0);
    func_80025930(D_800ECDE0[temp_s0].unk_00, 0x70000000, 0x70000000);
    return temp_s0;
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F953C_D09AC);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F963C_D0AAC);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F96A8_D0B18);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F97D0_D0C40);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F9BC8_D1038);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800F9C50_D10C0);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FA1E4_D1654);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FA400_D1870);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAAC4_D1F34);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAB80_D1FF0);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAD18_D2188);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAD94_D2204);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FADDC_D224C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAEB4_D2324);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FAF9C_D240C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB0A8_D2518);

void func_800FB1B0_D2620(void) {
}

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB1B8_D2628);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB360_D27D0);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB558_D29C8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB570_D29E0);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB588_D29F8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB778_D2BE8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB888_D2CF8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FB9FC_D2E6C);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FBC34_D30A4);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FBF24_D3394);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FC5A4_D3A14);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FC8A0_D3D10);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FC9E4_D3E54);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FCD58_D41C8);

INCLUDE_ASM(s32, "ovl_0_MemoryMatch/CDA50", func_800FD6A0_D4B10);
