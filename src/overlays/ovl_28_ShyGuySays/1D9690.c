#include "common.h"
#include "1D9690.h"

void func_800F65E0_1D9690(void) {
    u8 temp_s0;

    func_80029090(50);
    omInitObjMan(50, 0);
    func_80060088();
    func_8001DE70(64);
    omSetStatBit(omAddObj(0x7FDA, 0, 0, -1, &func_8005EB1C), 0xA0);
    func_800234B8(0U, 0xFF, 0xFF, 0xFF);
    func_800234B8(1U, 0xFF, 0xFF, 0xFF);
    func_80023504(1, -96.0f, 100.0f, 26.0f);
    func_800178A0(1);
    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 30.0f, 80.0f, 4000.0f);
    func_800F6FC0_1DA070();
    func_800F747C_1DA52C((rand8() << 8) | rand8());
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
    D_800FD998 = omAddObj(0x20, 0, 0, -1, &func_800F67F8_1D98A8);
    func_8007B168(&D_800FD5F0, 1);
    PlaySound(0x1A5);
}

void func_800F67F8_1D98A8(omObjData* arg0) {
    arg0->func_ptr = &func_800F6930_1D99E0;
    func_800F736C_1DA41C();
    func_800F8068_1DB118();
    D_800FDC20 = omAddObj(1, 7, 0, -1, &func_800FBAE4_1DEB94);
    omSetStatBit(D_800FDC20, 0xA0);
    func_800F81A4_1DB254();
    D_800F2AF8[D_800ED440] = omAddObj(0, 0, 0, -1, &func_800FA77C_1DD82C);
    D_800ED440++;
    D_800F2AF8[D_800ED440] = omAddObj(0, 0, 0, -1, &func_800FB6E0_1DE790);
    D_800ED440++;
    func_800FB30C_1DE3BC();
    func_800F71F4_1DA2A4();
    D_800FD9A0 = 1;
    func_80060128(0x19);
    if (IsFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FDC1C = 1;
    }
}

void func_800F6930_1D99E0(omObjData* arg0) {
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
    omOvlReturnEx(1);
}

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F6A38_1D9AE8);
//https://decomp.me/scratch/iuV5i


INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F6E50_1D9F00);
// void func_800F6E50_1D9F00(omObjData* arg0) {
//     unkStruct_ShyGuySays_01* temp_v1_2;

//     func_800F6F98_1DA048(arg0);
//     func_800F72A4_1DA354();
//     switch (D_800FD5CE) {
//     case 0:
//         func_80075CCC(2);
//         temp_v1_2 = &D_800FD9C0[D_800FDC1E];
//         if ((temp_v1_2->unk_00 != 0) && (temp_v1_2->unk_04 != 0x200)) {
//             gPlayers[D_800FDC1E].miniGameCoins += 10;
//         }
//         D_800FD5CE++;
//         return;
//     case 1:
//         if (func_80075FE0() != 2) {
//             return;
//         }
//         D_800FD5CE++;
//         return;
//     case 2:
//         if (func_80076174() == 0) {
//             func_800726AC(0, 20);
//             func_80060398(40);
//             D_800FD5CE++;
//             return;
//         }
//         return;
//     default:
//         if (func_80072718() == 0) {
//             arg0->func_ptr = &func_800F69F8_1D9AA8;
//         }
//         break;
//     }
// }

void func_800F6F98_1DA048(omObjData* arg0) {
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

void func_800F702C_1DA0DC(omObjData* arg0, f32 arg1) {
    s16 temp_s0 = (D_800F2AF8[0]->work[0] << 8) | D_800F2AF8[0]->work[1];

    if (arg1 == 0.0) {
        D_800FD980.x = arg0->trans.x;
        D_800FD980.y = 100.0f;
        D_800FD980.z = arg0->trans.z;
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

    D_800FDC64 = HuMemDirectMalloc(sizeof(unkStruct_ShyGuySays_05));
    D_800FDC64->unk_00[0] = 1.0f;
    
    for (i = 1; i < 100; i++) {
        D_800FDC64->unk_00[i] = func_800FD658_1C8F28 / (f32) i;
    }
}

void func_800F73EC_1DA49C(void) {
    HuMemDirectFree(D_800FDC64);
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

// rodata (func_800F74A0_1DA550)
extern const f64 D_800FD660; // 360.0
extern const f64 D_800FD668; // 360.0
extern const f64 D_800FD670; // 360.0
extern const f64 D_800FD678; // 360.0
extern const f64 D_800FD680; // 360.0
extern const f64 D_800FD688; // 180.0
extern const f64 D_800FD690; // 360.0
extern const f64 D_800FD698; // 360.0

f32 func_800F74A0_1DA550(f32 arg0, f32 arg1, f32 arg2) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f14;

    var_f12 = arg0;
    var_f14 = arg1;

    if (var_f12 >= D_800FD660) {
        var_f12 -= D_800FD660;
    } else if (var_f12 < 0.0) {
        var_f12 += D_800FD668;
    }

    if (var_f14 >= D_800FD670) {
        var_f14 -= D_800FD670;
    } else if (var_f14 < 0.0) {
        var_f14 += D_800FD678;
    }

    temp_f4 = func_8009B618(var_f12 - var_f14 + D_800FD680, D_800FD680);
    if (temp_f4 < D_800FD688) {
        if (temp_f4 <= arg2) {
            return temp_f4;
        } else {
            return arg2;
        }
    } else {
        if (D_800FD690 - temp_f4 <= arg2) {
            return -(D_800FD698 - temp_f4);
        } else {
            return -arg2;
        }
    }
}

// rodata (func_800F7608_1DA6B8)
extern const f64 D_800FD6A0; // 360.0
extern const f64 D_800FD6A8; // 360.0

f32 func_800F7608_1DA6B8(f32 arg0, f32 arg1) {
    f32 var_f4 = func_800B0CD8(arg0, arg1);

    if (var_f4 > D_800FD6A0) {
        var_f4 -= D_800FD6A0;
    } else if (var_f4 < 0.0) {
        var_f4 += D_800FD6A8;
    }

    return var_f4;
}

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F7680_1DA730);

#ifdef NON_MATCHING // matches without --vr4300mul-off flag
// rodata (func_800F7720_1DA7D0)
extern const f64 D_800FD6B0; // 1.0

f32 func_800F7720_1DA7D0(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    f32 temp_f2 = D_800FD6B0 - arg0;
    return temp_f2 * temp_f2 * arg1 + temp_f2 * arg0 * arg2 * 2.0 + arg0 * arg0 * arg3;
}
#else
INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F7720_1DA7D0);
#endif

void func_800F7780_1DA830(f32 arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    f32* var_s4 = &arg1->x;
    f32* var_s3 = &arg2->x;
    f32* var_s2 = &arg3->x;
    f32* var_s1 = &arg4->x;
    s32 i;

    for (i = 0; i < 3; i++) {
        *(var_s1++) = func_800F7720_1DA7D0(arg0, *(var_s4++), *(var_s3++), *(var_s2++));
    }
}

// rodata (func_800F781C_1DA8CC)
extern const f64 D_800FD6B8; // 1.0

f32 func_800F781C_1DA8CC(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return ((arg0 - D_800FD6B8) * arg1 + (D_800FD6B8 - arg0 * 2.0) * arg2 + arg0 * arg3) * 2.0;
}

// rodata (func_800F7874_1DA924)
extern const f64 D_800FD6C0; // 1.0

void func_800F7874_1DA924(f32 arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    f32* var_s4 = &arg1->x;
    f32* var_s3 = &arg2->x;
    f32* var_s2 = &arg3->x;
    f32* var_s1 = &arg4->x;
    f32 var_f2;
    f32 sp10[3];
    s32 i;

    for (i = 0; i < 3; i++) {
        sp10[i] = func_800F781C_1DA8CC(arg0, *(var_s4++), *(var_s3++), *(var_s2++));
    }

    var_f2 = sqrtf(SQ(sp10[0]) + SQ(sp10[1]) + SQ(sp10[2]));

    if (var_f2 != 0.0f) {
        var_f2 = D_800FD6C0 / var_f2;
        for (i = 0; i < 3; i++) {
            *(var_s1++) = var_f2 * sp10[i];
        }
    } else {
        *(var_s1++) = 0.0f;
        *(var_s1++) = 0.0f;
        *(var_s1++) = 1.0f;
    }
}

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

void func_800F7A8C_1DAB3C(s16 arg0, omObjData* arg1) {
    func_80025798(arg0, arg1->trans.x, arg1->trans.y, arg1->trans.z);
    func_800257E4(arg0, arg1->rot.x, arg1->rot.y, arg1->rot.z);
    func_80025830(arg0, arg1->scale.x, arg1->scale.y, arg1->scale.z);
}

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F7AF8_1DABA8);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F7B74_1DAC24);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F7C0C_1DACBC);

void func_800F7D88_1DAE38(s16 arg0, s16 arg1, u16 arg2, f32 arg3) {
    unk2C0C0StructC0* temp_a3;
    unk2C0C0StructC0* temp_t0;
    unk2C0C0StructE0* var_a2;
    unk2C0C0StructE0* var_a3;
    unk2C0C0StructE0* var_t0;
    s16 temp_a2 = arg2;
    s16 temp_v0;
    s16 i;

    temp_t0 = D_800F2B7C[arg0].unk_6C;
    temp_a3 = D_800F2B7C[arg1].unk_6C;

    if (~temp_a2 == 0) {
        return;
    }

    var_a2 = &temp_t0->unk_04[temp_t0->unk_80[temp_a2].unk_0A];
    var_a3 = &temp_a3->unk_04[temp_a3->unk_80[temp_a2].unk_0A];
    var_t0 = &temp_t0->unk_08[D_800F37F0][temp_t0->unk_80[temp_a2].unk_0A];

    temp_v0 = temp_t0->unk_80[temp_a2].unk_0C;
    for (i = 0; i < temp_v0; i++) {
        *var_t0 = *var_a2;
        if (var_a2->unk_00 != var_a3->unk_00 || var_a2->unk_02 != var_a3->unk_02 || var_a2->unk_04 != var_a3->unk_04) {
            var_t0->unk_00 = var_a2->unk_00 * arg3 + var_a3->unk_00 * (1.0f - arg3);
            var_t0->unk_02 = var_a2->unk_02 * arg3 + var_a3->unk_02 * (1.0f - arg3);
            var_t0->unk_04 = var_a2->unk_04 * arg3 + var_a3->unk_04 * (1.0f - arg3);
            var_t0->unk_0C.r = (s32) ((s8) var_a2->unk_0C.r * arg3 + (s8) var_a3->unk_0C.r * (1.0f - arg3));
            var_t0->unk_0C.g = (s32) ((s8) var_a2->unk_0C.g * arg3 + (s8) var_a3->unk_0C.g * (1.0f - arg3));
            var_t0->unk_0C.b = (s32) ((s8) var_a2->unk_0C.b * arg3 + (s8) var_a3->unk_0C.b * (1.0f - arg3));
        }
        var_a2++;
        var_a3++;
        var_t0++;
    }
}

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F8068_1DB118);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F80F8_1DB1A8);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F81A4_1DB254);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F82B0_1DB360);

// rodata (func_800F8818_1DB8C8)
extern const f64 D_800FD708; // 0.025 / 3

void func_800F8818_1DB8C8(omObjData* arg0) {
    struct { u16 unk_00; u16 unk_02; } sp10[5];
    unkStruct_ShyGuySays_01* temp_s2;
    s32 temp_s0;
    u16 var_s0;

    *((UnknownBlock24*) sp10) = D_800FD6C8;
    temp_s2 = &D_800FD9C0[arg0->work[0]];

    if (func_8005FD5C() + D_800F64F8 == 0) {
        temp_s2->unk_90 += 10;
        if (temp_s2->unk_90 >= 180) {
            temp_s2->unk_90 -= 180;
        }
    }

    func_800F7D88_1DAE38(arg0->model[1], arg0->model[2], sp10[D_800FDC10[arg0->work[0]]].unk_00, func_800AEAC0(temp_s2->unk_90));
    func_800F7D88_1DAE38(arg0->model[1], arg0->model[2], sp10[D_800FDC10[arg0->work[0]]].unk_02, func_800AEAC0(temp_s2->unk_90));

    if (func_8005FD5C() + D_800F64F8 != 0 || temp_s2->unk_00 == 0) {
        return;
    }

    if (temp_s2->unk_04 != 0x200 && (D_800FDC4C > 0 && D_800FDC4C < 5) && temp_s2->unk_10 == 1 && temp_s2->unk_14 == 1) {
        temp_s0 = temp_s2->unk_14;
        temp_s2->unk_04 = 0;
        if (temp_s2->unk_08 != -1) {
            if (D_800F5460[temp_s2->unk_08] & 0x4000) {
                func_800F9118_1DC1C8(arg0, 1);
                temp_s2->unk_04 = temp_s0;
            } else if (D_800F5460[temp_s2->unk_08] & 0x8000) {
                func_800F9118_1DC1C8(arg0, 2);
                temp_s2->unk_04 = 2;
            }
        } else {
            func_800F8D58_1DBE08(arg0);
        }
    } else if (D_800FDC4C == 6) {
        func_800F9118_1DC1C8(arg0, 6);
    }

    if ((temp_s2->unk_04 & 0x200) && temp_s2->unk_18 != 0) {
        func_800F9118_1DC1C8(arg0, 11);
        arg0->scale.x -= D_800FD708;
        arg0->scale.y -= D_800FD708;
        arg0->scale.z -= D_800FD708;
        arg0->trans.z -= 20.0f;
        temp_s2->unk_2C.x += func_800F7AF8_1DABA8(arg0->trans.x, temp_s2->unk_2C.x, 6.0f);
        temp_s2->unk_2C.y -= func_800F7AF8_1DABA8(-40.0f, temp_s2->unk_2C.y, 6.0f);
        temp_s2->unk_2C.z -= 20.0f;
        temp_s2->unk_18--;
        if (temp_s2->unk_18 == 0) {
            for (var_s0 = 0; var_s0 < 12; var_s0++) {
                func_800258EC(arg0->model[var_s0], 4, 4);
            }
            temp_s2->unk_00 = 0;
        }
    } else if (D_800FD9A0 == 3 && D_800FDC1A == 1) {
        func_800F9118_1DC1C8(arg0, 10);
    }

    func_800F9F60_1DD010(arg0, &arg0->model[4], 8);
    func_800FA308_1DD3B8(arg0, &arg0->model[12], 4);

    arg0->trans.y -= 20.0f;
    arg0->trans.y = func_800F7AF8_1DABA8(func_800FB190_1DE240(arg0->trans.x, arg0->trans.z), arg0->trans.y, 2.0f) + arg0->trans.y + 20.0f;

    temp_s2->unk_88 += func_800F740C_1DA4BC(0) & 7;
    if (temp_s2->unk_88 >= 360) {
        temp_s2->unk_88 -= 360;
    }

    arg0->trans.x = func_800AEAC0(temp_s2->unk_88) * 20.0f + temp_s2->unk_84;
    arg0->trans.y -= 20.0f;

    if (D_800FDC10[arg0->work[0]] == 4) {
        arg0->trans.z += 20.0f;
    }

    func_800F7A8C_1DAB3C(arg0->model[3], arg0);

    arg0->trans.y += 20.0f;
    if (D_800FDC10[arg0->work[0]] == 4) {
        arg0->trans.z -= 20.0f;
    }
}

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F8D58_1DBE08);
// void func_800F8D58_1DBE08(omObjData* arg0) { //matches but needs rodata support
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

#ifdef NON_MATCHING // matches but needs rodata
void func_800F9118_1DC1C8(omObjData* arg0, s16 arg1) {
    unk_ovl_2D_struct* temp_s1;
    unkStruct_ShyGuySays_01* temp_s0;
    s16 temp_v0;
    s16 var_s3;

    temp_s1 = &D_800F2B7C[arg0->model[0]];
    temp_s0 = &D_800FD9C0[arg0->work[0]];

    switch (arg0->work[0]) {
        case 0:
            var_s3 = 0x20;
            break;
        case 1:
            var_s3 = 0x30;
            break;
        case 2:
            var_s3 = 0x50;
            break;
        default:
            var_s3 = 0x60;
            break;
    }

    if (temp_s1->unk_48 < temp_s1->unk_50 && (arg1 != 10 || arg1 != 11)) {
        return;
    }

    switch (arg1) {
        case 1:
            if (temp_s0->unk_10 == 1 && temp_s0->unk_14 == 1) {
                temp_v0 = func_80060540(0x2F9, arg0->work[0]);
                if (temp_v0 != -1) {
                    func_800607C4(temp_v0, var_s3);
                }
                temp_s0->unk_10 = 2;
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_1C, 1);
            }
            break;
        case 2:
            if (temp_s0->unk_10 == 1 && temp_s0->unk_14 == 1) {
                temp_v0 = func_80060540(0x2FA, arg0->work[0]);
                if (temp_v0 != -1) {
                    func_800607C4(temp_v0, var_s3);
                }
                temp_s0->unk_14 = 2;
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_20, 1);
            }
            break;
        case 6:
            if (temp_s0->unk_10 == 2 && temp_s0->unk_14 == 1) {
                temp_s0->unk_10 = 1;
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_1C, -1);
            } else if (temp_s0->unk_10 == 1 && temp_s0->unk_14 == 2) {
                temp_s0->unk_14 = 1;
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_20, -1);
            }
            break;
        case 10:
            if (temp_s0->unk_92 == 0 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_24, 1);
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_20, -1);
                temp_s1->unk_48 = 0.0f;
                func_80025C20(arg0->model[0], temp_s0->unk_24.unk_00, 0, 0xA, 0);
                temp_s0->unk_92++;
            } else if (temp_s1->unk_0C == -1 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_24, 1);
            }
            break;
        case 11:
            if (temp_s0->unk_92 == 0 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_28, 1);
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_20, -1);
                temp_s1->unk_48 = 0.0f;
                func_80025C20(arg0->model[0], temp_s0->unk_28.unk_00, 0, 0xA, 0);
                temp_s0->unk_92++;
            } else if (temp_s1->unk_0C == -1 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_1DAA94(arg0->model[0], &temp_s0->unk_28, 1);
            }
            break;
    }
}
#else
INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F9118_1DC1C8);
#endif

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F94A8_1DC558);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F95BC_1DC66C);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F96D4_1DC784);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F97A8_1DC858);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F9828_1DC8D8);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F98EC_1DC99C);

#ifdef NON_MATCHING // matches but needs rodata
s16 func_800F99C0_1DCA70(void) {
    s16 i;

    for (i = 0; i < 4; i++) {
        if (D_800FD9C0[i].unk_00 != 0 && D_800FD9C0[i].unk_04 == 512) {
            if (D_800FD9C0[i].unk_18 > 60.0) {
                return 0;
            }
        }
    }

    return 1;
}
#else
INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F99C0_1DCA70);
#endif

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F9A7C_1DCB2C);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F9AFC_1DCBAC);

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

void func_800F9D80_1DCE30(unkStruct_ShyGuySays_01* arg0, u16 playerIndex) {
    func_8009B770(arg0, 0, sizeof(unkStruct_ShyGuySays_01));
    arg0->unk_00 = 1;
    arg0->unk_04 = 0;
    arg0->unk_08 = -1;
    arg0->unk_0A = -1;
    arg0->unk_0C = 0;
    arg0->unk_0E = 4;
    arg0->unk_10 = 1;
    arg0->unk_14 = 1;
    arg0->unk_0A = func_800F740C_1DA4BC(5) + 1;
    arg0->unk_18 = arg0->unk_0A + func_800F740C_1DA4BC(25);
    switch (playerIndex) {
    case 0:
        arg0->unk_2C.x = -110.0f;
        arg0->unk_2C.z = 220.0f;
        arg0->unk_44.x = -110.0f;
        arg0->unk_44.z = 250.0f;
        break;
    case 1:
        arg0->unk_2C.x = -70.0f;
        arg0->unk_2C.z = 150.0f;
        arg0->unk_44.x = -70.0f;
        arg0->unk_44.z = 170.0f;
        break;
    case 2:
        arg0->unk_2C.x = 70.0f;
        arg0->unk_2C.z = 150.0f;
        arg0->unk_44.x = 70.0f;
        arg0->unk_44.z = 170.0f;
        break;
    case 3:
        arg0->unk_2C.x = 110.0f;
        arg0->unk_2C.z = 220.0f;
        arg0->unk_44.x = 110.0f;
        arg0->unk_44.z = 250.0f;
    }
    arg0->unk_2C.y = 90.0f;
    arg0->unk_44.y = 50.0f;
    arg0->unk_80 = func_800F740C_1DA4BC(360);
    arg0->unk_84 = 0;
    arg0->unk_88 = func_800F740C_1DA4BC(360);
    arg0->unk_8A = 0;
    arg0->unk_8C = 0;
    arg0->unk_8E = 0;
    arg0->unk_90 = 0;
    arg0->unk_92 = 0;
}

#ifdef NON_MATCHING // needs rodata; missing nops
void func_800F9F60_1DD010(omObjData* arg0, s16* arg1, u16 arg2) {
    unkStruct_ShyGuySays_01* temp_s2;
    f32 sp18[3];
    f32 temp_f20;
    f32 var_f2;
    u16 i;

    temp_s2 = &D_800FD9C0[arg0->work[0]];

    if (D_800FDC20 == NULL) {
        var_f2 = 0.0f;
    } else {
        var_f2 = D_800FDC20->unk_1C;
    }

    if (arg0->unk_1C == 1.0f || arg0->unk_1C == 2.0f) {
        temp_s2->unk_2C.y = var_f2 - 0.0;
    } else {
        temp_s2->unk_2C.y = var_f2 - 4.0;
    }

    sp18[0] = func_800F7608_1DA6B8(arg0->unk_1C - temp_s2->unk_2C.y, arg0->unk_20 - temp_s2->unk_2C.z);
    sp18[1] = func_800F7608_1DA6B8(arg0->unk_18 - temp_s2->unk_2C.x, arg0->unk_20 - temp_s2->unk_2C.z);
    sp18[2] = 0.0f;

    temp_s2->unk_80 += func_800F740C_1DA4BC(0) & 7;
    if (temp_s2->unk_80 > 360) {
        temp_s2->unk_80 -= 360;
    }

    temp_s2->unk_5C.x = arg0->unk_18;
    temp_s2->unk_5C.y = arg0->unk_1C;
    temp_s2->unk_5C.z = arg0->unk_20;

    temp_s2->unk_50.x = temp_s2->unk_2C.x + func_800AEAC0(sp18[1]) * 20.0f * 20.0f + func_800AEAC0(temp_s2->unk_80) * 20.0f * 2.0f;
    temp_s2->unk_50.y = arg0->unk_1C - 40.0f;
    temp_s2->unk_50.z = temp_s2->unk_2C.z + func_800AEFD0(sp18[1]) * 20.0f * 20.0f;

    for (i = 1; i < arg2 + 1; i++) {
        temp_f20 = i * D_800FDC64->unk_00[arg2];
        func_800F7780_1DA830(temp_f20, &temp_s2->unk_2C, &temp_s2->unk_50, &temp_s2->unk_5C, &temp_s2->unk_68);
        func_800F7874_1DA924(temp_f20, &temp_s2->unk_2C, &temp_s2->unk_50, &temp_s2->unk_5C, &temp_s2->unk_74);

        func_80025798(arg1[i], temp_s2->unk_68.x, temp_s2->unk_68.y, temp_s2->unk_68.z);

        sp18[0] = func_800F7608_1DA6B8(temp_s2->unk_74.y, -temp_s2->unk_74.z);
        sp18[1] = func_800F7608_1DA6B8(-temp_s2->unk_74.x, -temp_s2->unk_74.z);
        sp18[2] = 0.0f;

        func_800257E4(arg1[i], sp18[0], sp18[1], sp18[2]);
        func_80025830(arg1[i], 1.0f, 1.0f, 1.9f);

        if (i == 1) {
            temp_s2->unk_38.x = temp_s2->unk_68.x;
            temp_s2->unk_38.y = temp_s2->unk_68.y + 8.0;
            temp_s2->unk_38.z = temp_s2->unk_68.z + 20.0f;
        }
    }
}
#else
INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800F9F60_1DD010);
#endif

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FA308_1DD3B8);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FA77C_1DD82C);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FA8D4_1DD984);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FA8F4_1DD9A4);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FA960_1DDA10);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FAA80_1DDB30);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FAED8_1DDF88);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB190_1DE240);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB2C8_1DE378);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB30C_1DE3BC);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB424_1DE4D4);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB520_1DE5D0);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FB6E0_1DE790);

void func_800FB840_1DE8F0(omObjData* arg0) {
    u16 phi_v0;
    s32 phi_s3, phi_s4;
    f32 temp_f20;
    s16 sp10[2];
    u16 i;
    u16* temp_a0;
    
    sp10[0] = (arg0->work[0] << 8) | arg0->work[1];
    sp10[1] = (arg0->work[2] << 8) | arg0->work[3];
    
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

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FBAE4_1DEB94);

#if NON_MATCHING // matches but needs rodata
void func_800FBE60_1DEF10(omObjData* arg0) { //main step function?
    u16 sp18[25];
    f32 var_f12;
    u16 var_s3;
    u32 temp_a0;
    u32 temp_a1;
    u16 i;

    *((UnknownBlock8*) sp18) = D_800FD850;
    *((UnknownBlock8*) &sp18[4]) = D_800FD858;
    *((UnknownBlock36*) &sp18[8]) = D_800FD860;
    var_s3 = 0;

    if (func_8005FD5C() + D_800F64F8 == 0) {
        D_800FD5E4 += 15 + (func_800F740C_1DA4BC(0) & 0xF);
        if (D_800FD5E4 >= 360) {
            D_800FD5E4 -= 360;
        }
    }

    func_800FD274_1E0324(arg0->model[0], D_800FDC50, func_800AEAC0(D_800FD5E4), sp18, &sp18[4]);
    func_800FD274_1E0324(arg0->model[0], D_800FDC52, func_800AEFD0(D_800FD5E4), sp18, &sp18[4]);

    if (func_8005FD5C() + D_800F64F8 != 0) {
        return;
    }

    if (D_800FD9A0 == 2) {
        switch (D_800FDC4C) {
            case 0:
                if (D_800FD99C <= D_800FD5EC && func_800F99C0_1DCA70() == 1) {
                    D_800FD99C = 0;
                    D_800FD9A8++;
                    var_s3 = func_800F740C_1DA4BC(2);
                    arg0->work[D_800FD9A8 % 4] = var_s3;
                    temp_a0 = arg0->work[2];
                    temp_a1 = arg0->work[3];
                    if (arg0->work[0] == arg0->work[1] ? (temp_a0 == 1 ? temp_a1 == 1 : temp_a1 == 0)
                                                           : (temp_a0 == 0 ? temp_a1 == 1 : temp_a1 == 0)) {
                        if (var_s3 == 0) {
                            arg0->work[D_800FD9A8 % 4] = 1;
                            var_s3 = 1;
                        } else {
                            arg0->work[D_800FD9A8 % 4] = 0;
                            var_s3 = 0;
                        }
                    }
                    if (D_800FD9A8 < 3) {
                        D_800FD5EC -= 2.5;
                    } else {
                        D_800FD5EC -= 5.0;
                        if (D_800FD5EC < 27.5) {
                            D_800FD5EC = 27.5f;
                            if (6.0 < D_800FDC54) {
                                D_800FDC54 -= 3.0;
                            }
                        }
                        if (!func_800F740C_1DA4BC(4)) {
                            var_s3 = 2;
                        }
                    }
                    if (D_800FD9A8 < 16) {
                        func_80060268(sp18[D_800FD9A8 + 7]);
                    }
                    PlaySound(0x2FC);
                    switch (var_s3) {
                        case 0:
                            var_s3 = 1;
                            D_800FDC4C = 3;
                            break;
                        case 1:
                            var_s3 = 2;
                            D_800FDC4C = 3;
                            break;
                        default:
                            var_s3 = 3;
                            D_800FDC4C = 1;
                            break;
                    }
                    D_800FD5E8 = var_s3;
                }
                break;
            case 1:
                if (func_800FD124_1E01D4(arg0) == 1) {
                    D_800FD99C = 0;
                    D_800FDC4C = 2;
                }
                break;
            case 2:
                if (D_800FD99C > 0) {
                    if (arg0->work[D_800FD9A8 % 4] == 0) {
                        var_s3 = 4;
                        D_800FD5E8 = 2;
                        arg0->work[D_800FD9A8 % 4] = 1;
                    } else {
                        var_s3 = 5;
                        D_800FD5E8 = 1;
                        arg0->work[D_800FD9A8 % 4] = 0;
                    }
                    D_800FD99C = 0;
                    D_800FDC4C = 3;
                }
                break;
            case 3:
                if (func_800FD124_1E01D4(arg0) == 1) {
                    D_800FD99C = 0;
                    D_800FDC4C = 4;
                }
                break;
            case 4:
                if (D_800FDC54 <= D_800FD99C) {
                    func_800F94A8_1DC558();
                    D_800FD99C = 0;
                    D_800FDC4C = 5;
                }
                break;
            case 5:
                if (D_800FD99C >= 8) {
                    func_800F96D4_1DC784();
                    func_800F98EC_1DC99C();
                    for (i = 0; i < 4; i++) {
                        if (func_800F9A7C_1DCB2C(i, D_800FD5E8) == 0) {
                            break;
                        }
                    }
                    D_800FD99C = 0;
                    D_800FDC4C = 6;
                } else {
                    func_800F95BC_1DC66C();
                    var_s3 = 6;
                }
                break;
            case 6:
                if (func_800FD124_1E01D4(arg0) != 0 && func_800F97A8_1DC858() != 0 && func_800F9828_1DC8D8() != 0) {
                    D_800FD99C = 0;
                    D_800FDC4C = 7;
                }
                break;
            case 7:
                for (i = 0; i < 4; i++) {
                    if (func_800F9A7C_1DCB2C(i, D_800FD5E8) != 0) {
                        continue;
                    }
                    if (D_800FDC30 == 2) {
                        if (i == 0) {
                            var_f12 = 325.0f;
                        } else if (i == 1) {
                            var_f12 = 340.0f;
                        } else if (i == 2) {
                            var_f12 = 20.0f;
                        } else {
                            var_f12 = 45.0f;
                        }
                        if (arg0->unk_28 == var_f12) {
                            D_800FDC4C = 9;
                            D_800FD99C = 0;
                            D_800FD5EA = i;
                            var_s3 = 8;
                        } else {
                            arg0->unk_28 += func_800F74A0_1DA550(var_f12, arg0->unk_28, 20.0f);
                            if (arg0->unk_28 > 360.0) {
                                arg0->unk_28 -= 360.0;
                            } else if (arg0->unk_28 < 0.0) {
                                arg0->unk_28 += 360.0;
                            }
                            D_800FD99C = 0;
                        }
                    } else {
                        var_s3 = 7;
                        D_800FDC4C = 8;
                        D_800FD99C = 0;
                    }
                    i = 5;
                }
                if (i == 4) {
                    if (D_800FDC30 == 1) {
                        D_800FD99C = 0;
                        D_800FDC4C = 0;
                    } else if (arg0->unk_28 == 180.0) {
                        if (D_800FD9A4 != 0) {
                            D_800FD9A6 = D_800FD9A4;
                        }
                        func_800F9D14_1DCDC4(D_800FD9A6);
                        if (D_800FDC1C == 0) {
                            if (D_800FD9A4 < 2) {
                                D_800FD9A0 = 3;
                                D_800FD998->func_ptr = &func_800F6A38_1D9AE8;
                                func_800601D4(40);
                            }
                        } else {
                            if (D_800FD9C0[D_800FDC1E].unk_00 != 0 && D_800FD9C0[D_800FDC1E].unk_04 != 512) {
                                if (D_800FD9A4 < 2) {
                                    D_800FD9A0 = 3;
                                    D_800FD998->func_ptr = &func_800F6E50_1D9F00;
                                    func_800601D4(40);
                                }
                            } else {
                                D_800FD9A0 = 3;
                                D_800FD998->func_ptr = &func_800F6E50_1D9F00;
                                func_800601D4(40);
                            }
                        }
                        D_800FD99C = 0;
                        D_800FDC4C = 8;
                        var_s3 = 9;
                    } else {
                        D_800FD99C = 0;
                        arg0->unk_28 += func_800F74A0_1DA550(180.0f, arg0->unk_28, 20.0f);
                    }
                }
                break;
            case 8:
                if (func_800FD124_1E01D4(arg0) == 1) {
                    D_800FD99C = 0;
                    D_800FDC4C = 7;
                }
                break;
            case 9:
                if (D_800FD99C != 10) {
                    if (D_800FD99C >= 15) {
                        D_800FD99C = 0;
                        D_800FDC4C = 8;
                        D_800FD9A4--;
                        func_800F9AFC_1DCBAC(D_800FD5EA);
                    }
                }
                break;
        }

        func_800FCA8C_1DFB3C(arg0, var_s3);
        D_800FD99C++;
    } else {
        func_800FCA8C_1DFB3C(arg0, 0);
    }

    func_800F7A8C_1DAB3C(arg0->model[3], arg0);
    func_800F7A8C_1DAB3C(arg0->model[4], arg0);
    func_800F7A8C_1DAB3C(arg0->model[5], arg0);
    func_80025798(arg0->model[6], arg0->unk_18, arg0->unk_1C, arg0->unk_20);

    D_800FD5E0++;
    if (D_800FD5EC > 360.0f) {
        D_800FD5E0 -= 360;
    }

    arg0->unk_1C = func_800AEAC0(D_800FD5E0) * 24.0 + 100.0;
}
#else
INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FBE60_1DEF10);
#endif

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FCA8C_1DFB3C); //a1 is flag chosen (1 is B, 2 is A, 3 is fake out)

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FD124_1E01D4);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FD1D0_1E0280);

INCLUDE_ASM(s32, "overlays/ovl_28_ShyGuySays/1D9690", func_800FD200_1E02B0);

// rodata (func_800FD274_1E0324)
extern const f64 D_800FD968; // 0.2
extern const f64 D_800FD970; // 1.2

void func_800FD274_1E0324(s16 arg0, s16 arg1, f32 arg2, u16* arg3, u16* arg4) {
    unk2C0C0StructC0* temp_t3;
    unk2C0C0StructE0* temp_a3;
    unk2C0C0StructE0* var_a0;
    unk2C0C0StructE0* var_a2;
    s16 sp[10][4];
    s16 temp_v0;
    s16 var_t1;
    s16 i;
    s16 j;

    temp_t3 = D_800F2B7C[arg0].unk_6C;
    var_t1 = 0;
    var_a2 = &temp_t3->unk_04[temp_t3->unk_80[arg1].unk_0A];
    var_a0 = &temp_t3->unk_08[D_800F37F0][temp_t3->unk_80[arg1].unk_0A];

    temp_v0 = temp_t3->unk_80[arg1].unk_0C;
    for (i = 0; i < temp_v0; var_a2++, var_a0++, i++) {
        if (i == *arg3) {
            var_a0->unk_02 = var_a2->unk_02 + arg2 * 20.0f * D_800FD968;
            var_a0->unk_04 = var_a2->unk_04 - arg2 * 20.0f * D_800FD970;
            sp[var_t1][0] = var_a2->unk_00;
            sp[var_t1][1] = var_a2->unk_02;
            sp[var_t1][2] = var_a2->unk_04;
            sp[var_t1][3] = i;
            arg3++;
            var_t1++;
        } else if (i == *arg4) {
            var_a0->unk_02 = var_a2->unk_02 - arg2 * 20.0f * D_800FD968;
            var_a0->unk_04 = var_a2->unk_04 + arg2 * 20.0f * D_800FD970;
            sp[var_t1][0] = var_a2->unk_00;
            sp[var_t1][1] = var_a2->unk_02;
            sp[var_t1][2] = var_a2->unk_04;
            sp[var_t1][3] = i;
            arg4++;
            var_t1++;
        } else {
            var_a0->unk_02 = var_a2->unk_02;
        }
    }

    for (j = 0; j < var_t1; j++) {
        var_a2 = &temp_t3->unk_04[temp_t3->unk_80[arg1].unk_0A];
        var_a0 = &temp_t3->unk_08[D_800F37F0][temp_t3->unk_80[arg1].unk_0A];
        temp_a3 = var_a0;

        for (i = 0; i < temp_v0; var_a2++, var_a0++, i++) {
            if (sp[j][0] == var_a2->unk_00 && sp[j][1] == var_a2->unk_02 && sp[j][2] == var_a2->unk_04) {
                var_a0->unk_00 = temp_a3[sp[j][3]].unk_00;
                var_a0->unk_02 = temp_a3[sp[j][3]].unk_02;
                var_a0->unk_04 = temp_a3[sp[j][3]].unk_04;
            }
        }
    }
}
