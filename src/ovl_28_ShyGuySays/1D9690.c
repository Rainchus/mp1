#include "common.h"
#include "1D9690.h"

void func_800F65E0_1D9690(void) {
    u8 temp_s0;

    func_80029090(50);
    func_8005CF30(50, 0);
    func_80060088();
    func_8001DE70(64);
    func_8005D8B8(func_8005D384(0x7FDA, 0, 0, -1, &func_8005EB1C), 0xA0);
    func_800234B8(0U, 0xFF, 0xFF, 0xFF);
    func_800234B8(1U, 0xFF, 0xFF, 0xFF);
    func_80023504(1, -96.0f, 100.0f, 26.0f);
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 4000.0f);
    func_800F6FC0_1DA070();
    func_800F747C_1DA52C((GetRandomByte() << 8) | GetRandomByte());
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    D_800EE984 = 0;
    D_800FD9A4 = 0;
    D_800FD9A6 = 0;
    D_800FD9A8 = 0;
    D_800FD99C = 0;
    D_800FD9A0 = 0;
    D_800FDC1A = 0;
    D_800FDC1C = 0;
    D_800FDC1E = 0;
    D_800FDD10 = 1;
    D_800FDC20 = NULL;
    D_800FD998 = func_8005D384(0x20, 0, 0, -1, &func_800F67F8_1D98A8);
    func_8007B168(&D_800FD5F0, 1);
    PlaySound(0x1A5);
}

void func_800F67F8_1D98A8(Object* arg0) {
    arg0->func_ptr = &func_800F6930_1D99E0;
    func_800F736C_1DA41C();
    func_800F8068_1DB118();
    D_800FDC20 = func_8005D384(1, 7, 0, -1, &func_800FBAE4_1DEB94);
    func_8005D8B8(D_800FDC20, 0xA0);
    func_800F81A4_1DB254();
    D_800F2AF8[D_800ED440] = func_8005D384(0, 0, 0, -1, &func_800FA77C_1DD82C);
    D_800ED440++;
    D_800F2AF8[D_800ED440] = func_8005D384(0, 0, 0, -1, &func_800FB6E0_1DE790);
    D_800ED440++;
    func_800FB30C_1DE3BC();
    func_800F71F4_1DA2A4();
    D_800FD9A0 = 1;
    func_80060128(0x19);
    if (IsBoardFeatureFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FDC1C = 1;
    }
}

void func_800F6930_1D99E0(Object* arg0) {
    func_800F6F98_1DA048(arg0);
    func_800F72A4_1DA354();
    switch (D_800FD5C4) {
    case 0:
        if (func_80072718() == 0) {
            D_800FDD10 = func_80060288();
            func_80075CCC(0);
            D_800FD5C4 = 1;
            return;
        }
        return;
    case 1:
        if (func_80075FE0() == 0) {
            D_800FD9A0 = 2;
            D_800FD5C4 = 2;
            return;
        }
        break;
    case 2:
        func_800FB424_1DE4D4();
        break;
    }
}

void func_800F69F8_1D9AA8(void) {
    func_800F73EC_1DA49C();
    func_800FA8D4_1DD984();
    func_80060198();
    func_80060268(D_800FDD10);
    func_8005DFB8(1);
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F6A38_1D9AE8);
//https://decomp.me/scratch/iuV5i

void func_800F6E50_1D9F00(Object* arg0) {
    unkStruct_ShyGuySays_01* temp_v1_2;

    func_800F6F98_1DA048(arg0);
    func_800F72A4_1DA354();
    switch (D_800FD5CE) {
    case 0:
        func_80075CCC(2);
        temp_v1_2 = &D_800FD9C0[D_800FDC1E];
        if ((temp_v1_2->unk_00 != 0) && (temp_v1_2->unk_04 != 0x200)) {
            gPlayers[D_800FDC1E].miniGameCoins += 10;
        }
        D_800FD5CE++;
        return;
    case 1:
        if (func_80075FE0() != 2) {
            return;
        }
        D_800FD5CE++;
        return;
    case 2:
        if (func_80076174() == 0) {
            func_800726AC(0, 20);
            func_80060398(40);
            D_800FD5CE++;
            return;
        }
        return;
    default:
        if (func_80072718() == 0) {
            arg0->func_ptr = &func_800F69F8_1D9AA8;
        }
        break;
    }
}

void func_800F6F98_1DA048(Object* arg0) {
    if (D_800F5144 == 1) {
        arg0->func_ptr = &func_800F69F8_1D9AA8;
    }
}

void func_800F6FC0_1DA070(void) {
    D_800F33EC.y = -14.5f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 191.2f;
    D_800F6524.z = 0.2f;
    D_800EE98C = 1069.0f;
}

void func_800F702C_1DA0DC(Object* arg0, f32 arg1) {
    s16 temp_s0 = (D_800F2AF8[0]->unk_4C << 8) | D_800F2AF8[0]->unk_4D;

    if (arg1 == 0.0) {
        D_800FD980.x = arg0->unk_18;
        D_800FD980.y = 100.0f;
        D_800FD980.z = arg0->unk_20;
        D_800FD98C.x = D_800F6524.x;
        D_800FD98C.y = D_800F6524.y;
        D_800FD98C.z = D_800F6524.z;
        return;
    }

    D_800F6524.x = D_800FD98C.x + (arg1 * (D_800FD980.x - D_800FD98C.x));
    D_800F6524.y = D_800FD98C.y + (arg1 * (D_800FD980.y - D_800FD98C.y));
    D_800F6524.z = D_800FD98C.z + (arg1 * (D_800FD980.z - D_800FD98C.z));
    D_800EE98C = (D_800FD638 - (arg1 * D_800FD630));
    func_80066DC4(temp_s0, 0, (D_800FDC64->unk_00[2] * 320.0f), (D_800FD650 - (arg1 * D_800FD648) + 2.0 * func_800AEAC0(arg1 * D_800FD640)));
}

void func_800F71F4_1DA2A4(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        D_800FDCE8[i].unk_00 = D_800FDCE8[i].unk_02 = -1;
    }
}

void func_800F7244_1DA2F4(s16 arg0, s16 arg1) {
    s16 i;

    for (i = 0; i < 10; i++) {
        if (D_800FDCE8[i].unk_00 == -1) {
            D_800FDCE8[i].unk_00 = arg0;  
            D_800FDCE8[i].unk_02 = arg1;
            return;
        }
    }
}

void func_800F72A4_1DA354(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        if (D_800FDCE8[i].unk_00 != -1) {
            D_800FDCE8[i].unk_02 = D_800FDCE8[i].unk_02 - 1;
            if (D_800FDCE8[i].unk_02 <= 0) {         
                PlaySound(D_800FDCE8[i].unk_00);
                D_800FDCE8[i].unk_00 = D_800FDCE8[i].unk_02 = -1;
            }
        }
    }
}

void func_800F736C_1DA41C(void) {
    u16 i;

    D_800FDC64 = MallocPerm(sizeof(unkStruct_ShyGuySays_04));
    D_800FDC64->unk_00[0] = 1.0f;
    
    for (i = 1; i < 100; i++) {
        D_800FDC64->unk_00[i] = func_800FD658_1C8F28 / (f32) i;
    }
}

void func_800F73EC_1DA49C(void) {
    FreePerm(D_800FDC64);
}

u16 func_800F740C_1DA4BC(u16 arg0) { //shared overlay function
    D_800FD5C0 = D_800FD5C0 * 0x19971204;
    D_800FD5C0 = (D_800FD5C0 + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD5C0;
    } else {
        return (D_800FD5C0 % arg0);
    }
}

void func_800F747C_1DA52C(u16 arg0) { //shared overlay function
    D_800FD5C0 = arg0 + (arg0 * D_800FD5C0);
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F74A0_1DA550);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7608_1DA6B8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7680_1DA730);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7720_1DA7D0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7780_1DA830);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F781C_1DA8CC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7874_1DA924);

void func_800F79E4_1DAA94(s16 arg0, unkStructShyGuySays_03* arg1, s16 arg2) {
    D_800F2B7C[arg0].unk_08 = arg1->unk_00;
    D_800F2B7C[arg0].unk_4C = 1.0f;

    if (arg2 >= 0) {
        D_800F2B7C[arg0].unk_0A = 0;
        D_800F2B7C[arg0].unk_48 = 0;
        D_800F2B7C[arg0].unk_50 = arg1->unk_02;
    } else {
        D_800F2B7C[arg0].unk_0A = 4;
        D_800F2B7C[arg0].unk_48 = arg1->unk_02;
        D_800F2B7C[arg0].unk_50 = 0;        
    }
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7A8C_1DAB3C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7AF8_1DABA8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7B74_1DAC24);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7C0C_1DACBC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F7D88_1DAE38);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8068_1DB118);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F80F8_1DB1A8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F81A4_1DB254);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F82B0_1DB360);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8818_1DB8C8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F8D58_1DBE08);
// void func_800F8D58_1DBE08(Object* arg0) { //matches but needs rodata support
//     unkStruct_ShyGuySays_01* temp_s1;
//     s32 phi_a0;
//     s16 phi_s0;

//     temp_s1 = &D_800FD9C0[arg0->unk_4C];
//     if (temp_s1->unk_8C == 0) {
//         temp_s1->unk_8C = 1;
//         temp_s1->unk_8A = 0;
//         phi_a0 = MIN(20, D_800FDC54);
//         temp_s1->unk_18 = temp_s1->unk_0A + func_800F740C_1DA4BC(phi_a0 + 5);
//     }
    
//     switch ( func_800FD200_1E02B0() ) {
//     case 0:
//         break;
//     case 1:
//         if (D_800FDC4C < 3) {
//             return;
//         }
//         if (D_800FDC4C == 3 && func_800FD1D0_1E0280() < D_800FD710) {
//             return;
//         }
//         temp_s1->unk_8A++;
//         if (temp_s1->unk_8A < temp_s1->unk_18) {
//             return;
//         }
//         phi_s0 = 100 - (temp_s1->unk_0C * (D_800FD9A8 - 4));
//         phi_s0 &= (~phi_s0 >> 0x1F);
//         if (D_800FD9A8 < 5) {
//             phi_s0 = 100;
//         }
//         if (func_800F740C_1DA4BC(100) >= phi_s0) {
//             func_800F9118_1DC1C8(arg0, 1);
//             temp_s1->unk_04 = 1;
//             temp_s1->unk_8C = 0;
//         } else {                
//             func_800F9118_1DC1C8(arg0, 2);
//             temp_s1->unk_04 = 2;
//             temp_s1->unk_8C = 0;
//         }
//         break;
//     case 2:
//         if (D_800FDC4C < 3) {
//             return;
//         }
//         if (D_800FDC4C == 3 && func_800FD1D0_1E0280() < D_800FD718) {
//             return;
//         }
//         temp_s1->unk_8A++;
//         if (temp_s1->unk_8A < temp_s1->unk_18) {
//             return;
//         }
//         phi_s0 = 100 - (temp_s1->unk_0C * (D_800FD9A8 - 4));
//         phi_s0 &= (~phi_s0 >> 0x1F);
//         if ((s32) D_800FD9A8 < 5) {
//             phi_s0 = 100;
//         }
//         if (func_800F740C_1DA4BC(100) < phi_s0) {
//             func_800F9118_1DC1C8(arg0, 1);
//             temp_s1->unk_04 = 1;
//             temp_s1->unk_8C = 0;
//         } else {                
//             func_800F9118_1DC1C8(arg0, 2);
//             temp_s1->unk_04 = 2;
//             temp_s1->unk_8C = 0;
//         }
//         break;
//     case 3:
//         if (D_800FDC4C <= 0 || D_800FD99C < 0xA) {
//             return;
//         }
//         if ((temp_s1->unk_0A >= 4) && (func_800F740C_1DA4BC(0) & 3)) {
//             if ((func_800F740C_1DA4BC(0) & 1) != 0) {
//                 func_800F9118_1DC1C8(arg0, 1);
//                 temp_s1->unk_04 = 1;
//                 temp_s1->unk_8C = 0;
//             } else {
//                 func_800F9118_1DC1C8(arg0, 2);
//                 temp_s1->unk_04 = 2;
//                 temp_s1->unk_8C = 0;
//             }
//         }
//         break;
//     }

//     if (temp_s1->unk_18 >= D_800FDC54 + 4.0f) {
//         temp_s1->unk_18 = D_800FDC54 + 4.0f;
//     }
// }

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9118_1DC1C8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F94A8_1DC558);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F95BC_1DC66C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F96D4_1DC784);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F97A8_1DC858);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9828_1DC8D8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F98EC_1DC99C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F99C0_1DCA70);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9A7C_1DCB2C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9AFC_1DCBAC);

void func_800F9C50_1DCD00(u16 arg0[]) {
    u16 i;
    D_800FD9A6--;
    
    if (D_800FD9A6 > 0) {
        for (i = 0; i < 4; i++) {
            D_800FD9CE[i].unk_00 -= D_800FD9A6;
        }
    }

    for (i = 0; i < 4; i++) {
        arg0[i] = D_800FD9CE[i].unk_00;
    }

}

void func_800F9D14_1DCDC4(s16 arg0) {   
    u16 i;

    for (i = 0; i < 4; i++) {
        if ((D_800FD9C0[i].unk_00 != 0) && (D_800FD9C0[i].unk_04 != 0x200)) {
            D_800FD9CE[i].unk_00 = arg0;
        }
    }
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9D80_1DCE30);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800F9F60_1DD010);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA308_1DD3B8);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA77C_1DD82C);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA8D4_1DD984);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA8F4_1DD9A4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FA960_1DDA10);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FAA80_1DDB30);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FAED8_1DDF88);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB190_1DE240);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB2C8_1DE378);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB30C_1DE3BC);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB424_1DE4D4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB520_1DE5D0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FB6E0_1DE790);

void func_800FB840_1DE8F0(Object* arg0) {
    u16 phi_v0;
    s32 phi_s3, phi_s4;
    f32 temp_f20;
    s16 sp10[2];
    u16 i;
    u16* temp_a0;
    
    sp10[0] = (arg0->unk_4C << 8) | arg0->unk_4D;
    sp10[1] = (arg0->unk_4E << 8) | arg0->unk_4F;
    
    for (i = 0; i < ARRAY_COUNT(D_800FD5DC); i++) {
        phi_v0 = func_800F740C_1DA4BC(0);
        temp_a0 = &D_800FD5DC[i];
        phi_v0 = (*temp_a0) + (phi_v0 & 0x3);
        *temp_a0 = phi_v0;
        
        if (phi_v0 >= 0x169) {
            *temp_a0 = phi_v0 - 0x168;
        }
        
        if (i == 0) {
            phi_s3 = func_800AEAC0(D_800FD5DC[i] * 2) * 10.0f + 120.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC[i]) * 6.0f + 15.0f;
        } else {
            phi_s3 = func_800AEAC0(D_800FD5DC[i] * 2) * 10.0f + 160.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC[i]) * 6.0f + 30.0f;
        }
        
        if (D_800FD5DC[i] < 0xB4) {
            func_800672B0(sp10[i], 0, 3);
        } else {
            func_800672B0(sp10[i], 0, 0);
            func_800671DC(sp10[i], 0, 3);
        }
        
        temp_f20 = func_800AEAC0(D_800FD5DC[i]) * D_800FD818 + D_800FD820;
        //temp_f20 = func_800AEAC0(D_800FD5DC[i]) * 0.2 + 0.5;
        func_80066DC4(sp10[i], 0, phi_s3, phi_s4);
        func_80067354(sp10[i], 0, temp_f20, temp_f20);
    }
}

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FBAE4_1DEB94);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FBE60_1DEF10); //main step function?

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FCA8C_1DFB3C); //a1 is flag chosen (1 is B, 2 is A, 3 is fake out)

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD124_1E01D4);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD1D0_1E0280);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD200_1E02B0);

INCLUDE_ASM(s32, "ovl_28_ShyGuySays/1D9690", func_800FD274_1E0324);
