#include "common.h"
#include "ShyGuySays.h"

void func_800F65E0_ShyGuySays(void) {
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
    func_800F6FC0_ShyGuySays();
    func_800F747C_ShyGuySays((rand8() << 8) | rand8());
    D_800F2BC0 = 0;
    D_800ED440 = 0;
    D_800EE984 = 0;
    D_800FD9A4_ShyGuySays = 0;
    D_800FD9A6_ShyGuySays = 0;
    D_800FD9A8_ShyGuySays = 0;
    D_800FD99C_ShyGuySays = 0;
    D_800FD9A0_ShyGuySays = 0;
    D_800FDC1A_ShyGuySays = 0;
    D_800FDC1C_ShyGuySays = 0;
    D_800FDC1E_ShyGuySays = 0;
    D_800FDD10_ShyGuySays = 1;
    D_800FDC20_ShyGuySays = NULL;
    D_800FD998_ShyGuySays = omAddObj(0x20, 0, 0, -1, &func_800F67F8_ShyGuySays);
    func_8007B168("\x82\x72\x82\x73\x82\x60\x82\x71\x82\x73\x00", 1);
    PlaySound(0x1A5);
}

void func_800F67F8_ShyGuySays(omObjData* arg0) {
    arg0->func_ptr = &func_800F6930_ShyGuySays;
    func_800F736C_ShyGuySays();
    func_800F8068_ShyGuySays();
    D_800FDC20_ShyGuySays = omAddObj(1, 7, 0, -1, &func_800FBAE4_ShyGuySays);
    omSetStatBit(D_800FDC20_ShyGuySays, 0xA0);
    func_800F81A4_ShyGuySays();
    D_800F2AF8[D_800ED440] = omAddObj(0, 0, 0, -1, &func_800FA77C_ShyGuySays);
    D_800ED440++;
    D_800F2AF8[D_800ED440] = omAddObj(0, 0, 0, -1, &func_800FB6E0_ShyGuySays);
    D_800ED440++;
    func_800FB30C_ShyGuySays();
    func_800F71F4_ShyGuySays();
    D_800FD9A0_ShyGuySays = 1;
    func_80060128(0x19);
    if (IsFlagSet(MINIGAME_ISLAND_ENDING) != 0) {
        D_800FDC1C_ShyGuySays = 1;
    }
}

void func_800F6930_ShyGuySays(omObjData* arg0) {
    func_800F6F98_ShyGuySays(arg0);
    func_800F72A4_ShyGuySays();
    switch (D_800FD5C4_ShyGuySays) {
    case 0:
        if (func_80072718() == 0) {
            D_800FDD10_ShyGuySays = func_80060288();
            func_80075CCC(0);
            D_800FD5C4_ShyGuySays = 1;
            return;
        }
        return;
    case 1:
        if (func_80075FE0() == 0) {
            D_800FD9A0_ShyGuySays = 2;
            D_800FD5C4_ShyGuySays = 2;
            return;
        }
        break;
    case 2:
        func_800FB424_ShyGuySays();
        break;
    }
}

void func_800F69F8_ShyGuySays(void) {
    func_800F73EC_ShyGuySays();
    func_800FA8D4_ShyGuySays();
    func_80060198();
    func_80060268(D_800FDD10_ShyGuySays);
    omOvlReturnEx(1);
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD5FC_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F6A38_ShyGuySays);

void func_800F6E50_ShyGuySays(omObjData* arg0) {
    unkStruct_ShyGuySays_01* temp_v1_2;

    func_800F6F98_ShyGuySays(arg0);
    func_800F72A4_ShyGuySays();
    switch (D_800FD5CE_ShyGuySays) {
    case 0:
        func_80075CCC(2);
        temp_v1_2 = &D_800FD9C0_ShyGuySays[D_800FDC1E_ShyGuySays];
        if ((temp_v1_2->unk_00 != 0) && (temp_v1_2->unk_04 != 0x200)) {
            gPlayers[D_800FDC1E_ShyGuySays].miniGameCoins += 10;
        }
        D_800FD5CE_ShyGuySays++;
        return;
    case 1:
        if (func_80075FE0() != 2) {
            return;
        }
        D_800FD5CE_ShyGuySays++;
        return;
    case 2:
        if (func_80076174() == 0) {
            func_800726AC(0, 20);
            func_80060398(40);
            D_800FD5CE_ShyGuySays++;
            return;
        }
        return;
    default:
        if (func_80072718() == 0) {
            arg0->func_ptr = &func_800F69F8_ShyGuySays;
        }
        break;
    }
}

void func_800F6F98_ShyGuySays(omObjData* arg0) {
    if (D_800F5144 == 1) {
        arg0->func_ptr = &func_800F69F8_ShyGuySays;
    }
}

void func_800F6FC0_ShyGuySays(void) {
    D_800F33EC.y = -14.5f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 191.2f;
    D_800F6524.z = 0.2f;
    D_800EE98C = 1069.0f;
}

void func_800F702C_ShyGuySays(omObjData* arg0, f32 arg1) {
    s16 temp_s0 = (D_800F2AF8[0]->work[0] << 8) | D_800F2AF8[0]->work[1];

    if (arg1 == 0.0) {
        D_800FD980_ShyGuySays.x = arg0->trans.x;
        D_800FD980_ShyGuySays.y = 100.0f;
        D_800FD980_ShyGuySays.z = arg0->trans.z;
        D_800FD98C_ShyGuySays.x = D_800F6524.x;
        D_800FD98C_ShyGuySays.y = D_800F6524.y;
        D_800FD98C_ShyGuySays.z = D_800F6524.z;
        return;
    }

    D_800F6524.x = D_800FD98C_ShyGuySays.x + (arg1 * (D_800FD980_ShyGuySays.x - D_800FD98C_ShyGuySays.x));
    D_800F6524.y = D_800FD98C_ShyGuySays.y + (arg1 * (D_800FD980_ShyGuySays.y - D_800FD98C_ShyGuySays.y));
    D_800F6524.z = D_800FD98C_ShyGuySays.z + (arg1 * (D_800FD980_ShyGuySays.z - D_800FD98C_ShyGuySays.z));
    D_800EE98C = (1069.0 - (arg1 * 400.0));
    func_80066DC4(temp_s0, 0, (D_800FDC64_ShyGuySays->unk_00[2] * 320.0f), (60.0 - (arg1 * 4.0) + 2.0 * func_800AEAC0(arg1 * 180.0)));
}

void func_800F71F4_ShyGuySays(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        D_800FDCE8_ShyGuySays[i].unk_00 = D_800FDCE8_ShyGuySays[i].unk_02 = -1;
    }
}

void func_800F7244_ShyGuySays(s16 arg0, s16 arg1) {
    s16 i;

    for (i = 0; i < 10; i++) {
        if (D_800FDCE8_ShyGuySays[i].unk_00 == -1) {
            D_800FDCE8_ShyGuySays[i].unk_00 = arg0;  
            D_800FDCE8_ShyGuySays[i].unk_02 = arg1;
            return;
        }
    }
}

void func_800F72A4_ShyGuySays(void) {
    s16 i;

    for (i = 0; i < 10; i++) {
        if (D_800FDCE8_ShyGuySays[i].unk_00 != -1) {
            D_800FDCE8_ShyGuySays[i].unk_02 = D_800FDCE8_ShyGuySays[i].unk_02 - 1;
            if (D_800FDCE8_ShyGuySays[i].unk_02 <= 0) {         
                PlaySound(D_800FDCE8_ShyGuySays[i].unk_00);
                D_800FDCE8_ShyGuySays[i].unk_00 = D_800FDCE8_ShyGuySays[i].unk_02 = -1;
            }
        }
    }
}

void func_800F736C_ShyGuySays(void) {
    u16 i;

    D_800FDC64_ShyGuySays = HuMemDirectMalloc(sizeof(unkStruct_ShyGuySays_04));
    D_800FDC64_ShyGuySays->unk_00[0] = 1.0f;
    
    for (i = 1; i < 100; i++) {
        D_800FDC64_ShyGuySays->unk_00[i] = 1.0 / (f32) i;
    }
}

void func_800F73EC_ShyGuySays(void) {
    HuMemDirectFree(D_800FDC64_ShyGuySays);
}

u16 func_800F740C_ShyGuySays(u16 arg0) { //shared overlay function
    D_800FD5C0_ShyGuySays = D_800FD5C0_ShyGuySays * 0x19971204;
    D_800FD5C0_ShyGuySays = (D_800FD5C0_ShyGuySays + 0x19760831) >> 0x10;
    if (arg0 == 0) {
        return D_800FD5C0_ShyGuySays;
    } else {
        return (D_800FD5C0_ShyGuySays % arg0);
    }
}

void func_800F747C_ShyGuySays(u16 arg0) { //shared overlay function
    D_800FD5C0_ShyGuySays = arg0 + (arg0 * D_800FD5C0_ShyGuySays);
}

f32 func_800F74A0_ShyGuySays(f32 arg0, f32 arg1, f32 arg2) {
    f32 temp_f4;
    f32 var_f12;
    f32 var_f14;

    var_f12 = arg0;
    var_f14 = arg1;

    if (var_f12 >= 360.0) {
        var_f12 -= 360.0;
    } else if (var_f12 < 0.0) {
        var_f12 += 360.0;
    }

    if (var_f14 >= 360.0) {
        var_f14 -= 360.0;
    } else if (var_f14 < 0.0) {
        var_f14 += 360.0;
    }

    temp_f4 = func_8009B618(var_f12 - var_f14 + 360.0, 360.0);
    if (temp_f4 < 180.0) {
        if (temp_f4 <= arg2) {
            return temp_f4;
        } else {
            return arg2;
        }
    } else {
        if (360.0 - temp_f4 <= arg2) {
            return -(360.0 - temp_f4);
        } else {
            return -arg2;
        }
    }
}

f32 func_800F7608_ShyGuySays(f32 arg0, f32 arg1) {
    f32 var_f4 = func_800B0CD8(arg0, arg1);

    if (var_f4 > 360.0) {
        var_f4 -= 360.0;
    } else if (var_f4 < 0.0) {
        var_f4 += 360.0;
    }

    return var_f4;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F7680_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F7720_ShyGuySays);
//TODO: NOP problem
// f32 func_800F7720_ShyGuySays(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
//     f32 temp_f2 = 1.0 - arg0;
//     return temp_f2 * temp_f2 * arg1 + temp_f2 * arg0 * arg2 * 2.0 + arg0 * arg0 * arg3;
// }

void func_800F7780_ShyGuySays(f32 arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    f32* var_s4 = &arg1->x;
    f32* var_s3 = &arg2->x;
    f32* var_s2 = &arg3->x;
    f32* var_s1 = &arg4->x;
    s32 i;

    for (i = 0; i < 3; i++) {
        *(var_s1++) = func_800F7720_ShyGuySays(arg0, *(var_s4++), *(var_s3++), *(var_s2++));
    }
}

f32 func_800F781C_ShyGuySays(f32 arg0, f32 arg1, f32 arg2, f32 arg3) {
    return ((arg0 - 1.0) * arg1 + (1.0 - arg0 * 2.0) * arg2 + arg0 * arg3) * 2.0;
}

void func_800F7874_ShyGuySays(f32 arg0, Vec3f* arg1, Vec3f* arg2, Vec3f* arg3, Vec3f* arg4) {
    f32* var_s4 = &arg1->x;
    f32* var_s3 = &arg2->x;
    f32* var_s2 = &arg3->x;
    f32* var_s1 = &arg4->x;
    f32 var_f2;
    f32 sp10[3];
    s32 i;

    for (i = 0; i < 3; i++) {
        sp10[i] = func_800F781C_ShyGuySays(arg0, *(var_s4++), *(var_s3++), *(var_s2++));
    }

    var_f2 = sqrtf(SQ(sp10[0]) + SQ(sp10[1]) + SQ(sp10[2]));

    if (var_f2 != 0.0f) {
        var_f2 = 1.0 / var_f2;
        for (i = 0; i < 3; i++) {
            *(var_s1++) = var_f2 * sp10[i];
        }
    } else {
        *(var_s1++) = 0.0f;
        *(var_s1++) = 0.0f;
        *(var_s1++) = 1.0f;
    }
}

void func_800F79E4_ShyGuySays(s16 arg0, unkStructShyGuySays_03* arg1, s16 arg2) {
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

void func_800F7A8C_ShyGuySays(s16 arg0, omObjData* arg1) {
    func_80025798(arg0, arg1->trans.x, arg1->trans.y, arg1->trans.z);
    func_800257E4(arg0, arg1->rot.x, arg1->rot.y, arg1->rot.z);
    func_80025830(arg0, arg1->scale.x, arg1->scale.y, arg1->scale.z);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F7AF8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F7B74_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F7C0C_ShyGuySays);

void func_800F7D88_ShyGuySays(s16 arg0, s16 arg1, u16 arg2, f32 arg3) {
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

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F8068_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F80F8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F81A4_ShyGuySays);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD6C8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F82B0_ShyGuySays);

void func_800F8818_ShyGuySays(omObjData* arg0) {
    struct { u16 unk_00; u16 unk_02; } sp10[5];
    unkStruct_ShyGuySays_01* temp_s2;
    s32 temp_s0;
    u16 var_s0;

    *((UnknownBlock24*) sp10) = D_800FD6C8_ShyGuySays;
    temp_s2 = &D_800FD9C0_ShyGuySays[arg0->work[0]];

    if (func_8005FD5C() + D_800F64F8 == 0) {
        temp_s2->unk_90 += 10;
        if (temp_s2->unk_90 >= 180) {
            temp_s2->unk_90 -= 180;
        }
    }

    func_800F7D88_ShyGuySays(arg0->model[1], arg0->model[2], sp10[D_800FDC10_ShyGuySays[arg0->work[0]]].unk_00, func_800AEAC0(temp_s2->unk_90));
    func_800F7D88_ShyGuySays(arg0->model[1], arg0->model[2], sp10[D_800FDC10_ShyGuySays[arg0->work[0]]].unk_02, func_800AEAC0(temp_s2->unk_90));

    if (func_8005FD5C() + D_800F64F8 != 0 || temp_s2->unk_00 == 0) {
        return;
    }

    if (temp_s2->unk_04 != 0x200 && (D_800FDC4C_ShyGuySays > 0 && D_800FDC4C_ShyGuySays < 5) && temp_s2->unk_10 == 1 && temp_s2->unk_14 == 1) {
        temp_s0 = temp_s2->unk_14;
        temp_s2->unk_04 = 0;
        if (temp_s2->unk_08 != -1) {
            if (D_800F5460[temp_s2->unk_08] & 0x4000) {
                func_800F9118_ShyGuySays(arg0, 1);
                temp_s2->unk_04 = temp_s0;
            } else if (D_800F5460[temp_s2->unk_08] & 0x8000) {
                func_800F9118_ShyGuySays(arg0, 2);
                temp_s2->unk_04 = 2;
            }
        } else {
            func_800F8D58_ShyGuySays(arg0);
        }
    } else if (D_800FDC4C_ShyGuySays == 6) {
        func_800F9118_ShyGuySays(arg0, 6);
    }

    if ((temp_s2->unk_04 & 0x200) && temp_s2->unk_18 != 0) {
        func_800F9118_ShyGuySays(arg0, 11);
        arg0->scale.x -= 0.025 / 3;
        arg0->scale.y -= 0.025 / 3;
        arg0->scale.z -= 0.025 / 3;
        arg0->trans.z -= 20.0f;
        temp_s2->unk_2C.x += func_800F7AF8_ShyGuySays(arg0->trans.x, temp_s2->unk_2C.x, 6.0f);
        temp_s2->unk_2C.y -= func_800F7AF8_ShyGuySays(-40.0f, temp_s2->unk_2C.y, 6.0f);
        temp_s2->unk_2C.z -= 20.0f;
        temp_s2->unk_18--;
        if (temp_s2->unk_18 == 0) {
            for (var_s0 = 0; var_s0 < 12; var_s0++) {
                func_800258EC(arg0->model[var_s0], 4, 4);
            }
            temp_s2->unk_00 = 0;
        }
    } else if (D_800FD9A0_ShyGuySays == 3 && D_800FDC1A_ShyGuySays == 1) {
        func_800F9118_ShyGuySays(arg0, 10);
    }

    func_800F9F60_ShyGuySays(arg0, &arg0->model[4], 8);
    func_800FA308_ShyGuySays(arg0, &arg0->model[12], 4);

    arg0->trans.y -= 20.0f;
    arg0->trans.y = func_800F7AF8_ShyGuySays(func_800FB190_ShyGuySays(arg0->trans.x, arg0->trans.z), arg0->trans.y, 2.0f) + arg0->trans.y + 20.0f;

    temp_s2->unk_88 += func_800F740C_ShyGuySays(0) & 7;
    if (temp_s2->unk_88 >= 360) {
        temp_s2->unk_88 -= 360;
    }

    arg0->trans.x = func_800AEAC0(temp_s2->unk_88) * 20.0f + temp_s2->unk_84;
    arg0->trans.y -= 20.0f;

    if (D_800FDC10_ShyGuySays[arg0->work[0]] == 4) {
        arg0->trans.z += 20.0f;
    }

    func_800F7A8C_ShyGuySays(arg0->model[3], arg0);

    arg0->trans.y += 20.0f;
    if (D_800FDC10_ShyGuySays[arg0->work[0]] == 4) {
        arg0->trans.z -= 20.0f;
    }
}

void func_800F8D58_ShyGuySays(omObjData* arg0) { //matches but needs rodata support
    unkStruct_ShyGuySays_01* temp_s1;
    s32 phi_a0;
    s16 phi_s0;

    temp_s1 = &D_800FD9C0_ShyGuySays[arg0->work[0]];
    if (temp_s1->unk_8C == 0) {
        temp_s1->unk_8C = 1;
        temp_s1->unk_8A = 0;
        phi_a0 = MIN(20, D_800FDC54_ShyGuySays);
        temp_s1->unk_18 = temp_s1->unk_0A + func_800F740C_ShyGuySays(phi_a0 + 5);
    }
    
    switch ( func_800FD200_ShyGuySays() ) {
    case 0:
        break;
    case 1:
        if (D_800FDC4C_ShyGuySays < 3) {
            return;
        }
        if (D_800FDC4C_ShyGuySays == 3 && func_800FD1D0_ShyGuySays() < 20.0) {
            return;
        }
        temp_s1->unk_8A++;
        if (temp_s1->unk_8A < temp_s1->unk_18) {
            return;
        }
        phi_s0 = 100 - (temp_s1->unk_0C * (D_800FD9A8_ShyGuySays - 4));
        phi_s0 &= (~phi_s0 >> 0x1F);
        if (D_800FD9A8_ShyGuySays < 5) {
            phi_s0 = 100;
        }
        if (func_800F740C_ShyGuySays(100) >= phi_s0) {
            func_800F9118_ShyGuySays(arg0, 1);
            temp_s1->unk_04 = 1;
            temp_s1->unk_8C = 0;
        } else {                
            func_800F9118_ShyGuySays(arg0, 2);
            temp_s1->unk_04 = 2;
            temp_s1->unk_8C = 0;
        }
        break;
    case 2:
        if (D_800FDC4C_ShyGuySays < 3) {
            return;
        }
        if (D_800FDC4C_ShyGuySays == 3 && func_800FD1D0_ShyGuySays() < 20.0) {
            return;
        }
        temp_s1->unk_8A++;
        if (temp_s1->unk_8A < temp_s1->unk_18) {
            return;
        }
        phi_s0 = 100 - (temp_s1->unk_0C * (D_800FD9A8_ShyGuySays - 4));
        phi_s0 &= (~phi_s0 >> 0x1F);
        if ((s32) D_800FD9A8_ShyGuySays < 5) {
            phi_s0 = 100;
        }
        if (func_800F740C_ShyGuySays(100) < phi_s0) {
            func_800F9118_ShyGuySays(arg0, 1);
            temp_s1->unk_04 = 1;
            temp_s1->unk_8C = 0;
        } else {                
            func_800F9118_ShyGuySays(arg0, 2);
            temp_s1->unk_04 = 2;
            temp_s1->unk_8C = 0;
        }
        break;
    case 3:
        if (D_800FDC4C_ShyGuySays <= 0 || D_800FD99C_ShyGuySays < 0xA) {
            return;
        }
        if ((temp_s1->unk_0A >= 4) && (func_800F740C_ShyGuySays(0) & 3)) {
            if ((func_800F740C_ShyGuySays(0) & 1) != 0) {
                func_800F9118_ShyGuySays(arg0, 1);
                temp_s1->unk_04 = 1;
                temp_s1->unk_8C = 0;
            } else {
                func_800F9118_ShyGuySays(arg0, 2);
                temp_s1->unk_04 = 2;
                temp_s1->unk_8C = 0;
            }
        }
        break;
    }

    if (temp_s1->unk_18 >= D_800FDC54_ShyGuySays + 4.0f) {
        temp_s1->unk_18 = D_800FDC54_ShyGuySays + 4.0f;
    }
}

void func_800F9118_ShyGuySays(omObjData* arg0, s16 arg1) {
    unk_ovl_2D_struct* temp_s1;
    unkStruct_ShyGuySays_01* temp_s0;
    s16 temp_v0;
    s16 var_s3;

    temp_s1 = &D_800F2B7C[arg0->model[0]];
    temp_s0 = &D_800FD9C0_ShyGuySays[arg0->work[0]];

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
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_1C, 1);
            }
            break;
        case 2:
            if (temp_s0->unk_10 == 1 && temp_s0->unk_14 == 1) {
                temp_v0 = func_80060540(0x2FA, arg0->work[0]);
                if (temp_v0 != -1) {
                    func_800607C4(temp_v0, var_s3);
                }
                temp_s0->unk_14 = 2;
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_20, 1);
            }
            break;
        case 6:
            if (temp_s0->unk_10 == 2 && temp_s0->unk_14 == 1) {
                temp_s0->unk_10 = 1;
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_1C, -1);
            } else if (temp_s0->unk_10 == 1 && temp_s0->unk_14 == 2) {
                temp_s0->unk_14 = 1;
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_20, -1);
            }
            break;
        case 10:
            if (temp_s0->unk_92 == 0 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_24, 1);
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_20, -1);
                temp_s1->unk_48 = 0.0f;
                func_80025C20(arg0->model[0], temp_s0->unk_24.unk_00, 0, 0xA, 0);
                temp_s0->unk_92++;
            } else if (temp_s1->unk_0C == -1 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_24, 1);
            }
            break;
        case 11:
            if (temp_s0->unk_92 == 0 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_28, 1);
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_20, -1);
                temp_s1->unk_48 = 0.0f;
                func_80025C20(arg0->model[0], temp_s0->unk_28.unk_00, 0, 0xA, 0);
                temp_s0->unk_92++;
            } else if (temp_s1->unk_0C == -1 && temp_s1->unk_48 >= temp_s1->unk_50) {
                func_800F79E4_ShyGuySays(arg0->model[0], &temp_s0->unk_28, 1);
            }
            break;
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F94A8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F95BC_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F96D4_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F97A8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F9828_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F98EC_ShyGuySays);

s16 func_800F99C0_ShyGuySays(void) {
    s16 i;

    for (i = 0; i < 4; i++) {
        if (D_800FD9C0_ShyGuySays[i].unk_00 != 0 && D_800FD9C0_ShyGuySays[i].unk_04 == 512) {
            if (D_800FD9C0_ShyGuySays[i].unk_18 > 60.0) {
                return 0;
            }
        }
    }

    return 1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F9A7C_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F9AFC_ShyGuySays);

void func_800F9C50_ShyGuySays(u16 arg0[]) {
    u16 i;
    
    if (--D_800FD9A6_ShyGuySays > 0) {
        for (i = 0; i < 4; i++) {
            D_800FD9CE_ShyGuySays[i].unk_00 -= D_800FD9A6_ShyGuySays;
        }
    }

    for (i = 0; i < 4; i++) {
        arg0[i] = D_800FD9CE_ShyGuySays[i].unk_00;
    }

}

void func_800F9D14_ShyGuySays(s16 arg0) {   
    u16 i;

    for (i = 0; i < 4; i++) {
        if ((D_800FD9C0_ShyGuySays[i].unk_00 != 0) && (D_800FD9C0_ShyGuySays[i].unk_04 != 0x200)) {
            D_800FD9CE_ShyGuySays[i].unk_00 = arg0;
        }
    }
}

void func_800F9D80_ShyGuySays(unkShyGuySaysStruct* arg0, u16 playerIndex) {
    func_8009B770((unkGlobalStruct_00* ) arg0, 0, 0x94);
    arg0->unk0 = 1;
    arg0->unk4 = 0;
    arg0->unk8 = -1;
    arg0->unkA = -1;
    arg0->unkC = 0;
    arg0->unkE = 4;
    arg0->unk10 = 1;
    arg0->unk14 = 1;
    arg0->unkA = (s16) (func_800F740C_ShyGuySays(5U) + 1);
    arg0->unk18 = (s32) (arg0->unkA + (func_800F740C_ShyGuySays(0x19U) & 0xFFFF));
    switch (playerIndex) {
    case 0:
        arg0->unk2C = -110.0f;
        arg0->unk34 = 220.0f;
        arg0->unk44 = -110.0f;
        arg0->unk4C = 250.0f;
        break;
    case 1:
        arg0->unk2C = -70.0f;
        arg0->unk34 = 150.0f;
        arg0->unk44 = -70.0f;
        arg0->unk4C = 170.0f;
        break;
    case 2:
        arg0->unk2C = 70.0f;
        arg0->unk34 = 150.0f;
        arg0->unk44 = 70.0f;
        arg0->unk4C = 170.0f;
        break;
    case 3:
        arg0->unk2C = 110.0f;
        arg0->unk34 = 220.0f;
        arg0->unk44 = 110.0f;
        arg0->unk4C = 250.0f;
    }
    arg0->unk30 = 90.0f;
    arg0->unk48 = 50.0f;
    arg0->unk80 = (s32) (func_800F740C_ShyGuySays(0x168U) & 0xFFFF);
    arg0->unk84 = 0;
    arg0->unk88 = func_800F740C_ShyGuySays(0x168U);
    arg0->unk8A = 0;
    arg0->unk8C = 0;
    arg0->unk8E = 0;
    arg0->unk90 = 0;
    arg0->unk92 = 0;
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD768_ShyGuySays);

#ifdef NON_MATCHING // needs rodata; missing nops
void func_800F9F60_ShyGuySays(unkObjectStruct* arg0, s16* arg1, u16 arg2) {
    unkStruct_ShyGuySays_01* temp_s2;
    f32 sp18[3];
    f32 temp_f20;
    f32 var_f2;
    u16 i;

    temp_s2 = &D_800FD9C0_ShyGuySays[arg0->unk_4C[0]];

    if (D_800FDC20_ShyGuySays == NULL) {
        var_f2 = 0.0f;
    } else {
        var_f2 = D_800FDC20_ShyGuySays->unk_1C;
    }

    if (arg0->unk_1C == 1.0f || arg0->unk_1C == 2.0f) {
        temp_s2->unk_2C.y = var_f2 - 0.0;
    } else {
        temp_s2->unk_2C.y = var_f2 - 4.0;
    }

    sp18[0] = func_800F7608_ShyGuySays(arg0->unk_1C - temp_s2->unk_2C.y, arg0->unk_20 - temp_s2->unk_2C.z);
    sp18[1] = func_800F7608_ShyGuySays(arg0->unk_18 - temp_s2->unk_2C.x, arg0->unk_20 - temp_s2->unk_2C.z);
    sp18[2] = 0.0f;

    temp_s2->unk_80 += func_800F740C_ShyGuySays(0) & 7;
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
        temp_f20 = i * D_800FDC64_ShyGuySays->unk_00[arg2];
        func_800F7780_ShyGuySays(temp_f20, &temp_s2->unk_2C, &temp_s2->unk_50, &temp_s2->unk_5C, &temp_s2->unk_68);
        func_800F7874_ShyGuySays(temp_f20, &temp_s2->unk_2C, &temp_s2->unk_50, &temp_s2->unk_5C, &temp_s2->unk_74);

        func_80025798(arg1[i], temp_s2->unk_68.x, temp_s2->unk_68.y, temp_s2->unk_68.z);

        sp18[0] = func_800F7608_ShyGuySays(temp_s2->unk_74.y, -temp_s2->unk_74.z);
        sp18[1] = func_800F7608_ShyGuySays(-temp_s2->unk_74.x, -temp_s2->unk_74.z);
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
INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800F9F60_ShyGuySays);
#endif

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FA308_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FA77C_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FA8D4_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FA8F4_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FA960_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FAA80_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FAED8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB190_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB2C8_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB30C_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB424_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB520_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FB6E0_ShyGuySays);

void func_800FB840_ShyGuySays(omObjData* arg0) {
    u16 phi_v0;
    s32 phi_s3, phi_s4;
    f32 temp_f20;
    s16 sp10[2];
    u16 i;
    u16* temp_a0;
    
    sp10[0] = (arg0->work[0] << 8) | arg0->work[1];
    sp10[1] = (arg0->work[2] << 8) | arg0->work[3];
    
    for (i = 0; i < ARRAY_COUNT(D_800FD5DC_ShyGuySays); i++) {
        phi_v0 = func_800F740C_ShyGuySays(0);
        temp_a0 = &D_800FD5DC_ShyGuySays[i];
        phi_v0 = (*temp_a0) + (phi_v0 & 0x3);
        *temp_a0 = phi_v0;
        
        if (phi_v0 >= 0x169) {
            *temp_a0 = phi_v0 - 0x168;
        }
        
        if (i == 0) {
            phi_s3 = func_800AEAC0(D_800FD5DC_ShyGuySays[i] * 2) * 10.0f + 120.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC_ShyGuySays[i]) * 6.0f + 15.0f;
        } else {
            phi_s3 = func_800AEAC0(D_800FD5DC_ShyGuySays[i] * 2) * 10.0f + 160.0f;
            phi_s4 = func_800AEFD0(D_800FD5DC_ShyGuySays[i]) * 6.0f + 30.0f;
        }
        
        if (D_800FD5DC_ShyGuySays[i] < 0xB4) {
            func_800672B0(sp10[i], 0, 3);
        } else {
            func_800672B0(sp10[i], 0, 0);
            func_800671DC(sp10[i], 0, 3);
        }
        
        temp_f20 = func_800AEAC0(D_800FD5DC_ShyGuySays[i]) * 0.2 + 0.5;
        func_80066DC4(sp10[i], 0, phi_s3, phi_s4);
        func_80067354(sp10[i], 0, temp_f20, temp_f20);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FBAE4_ShyGuySays);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD850_ShyGuySays);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD858_ShyGuySays);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", D_800FD860_ShyGuySays);

void func_800FBE60_ShyGuySays(omObjData* arg0) {
    UnknownBlock8 sp18;
    UnknownBlockCombo48 sp1C;
    f64 var_f12;
    f32 var_f12_2;
    u16 var_s3;
    u32 temp_a0;
    u32 temp_a1;
    u16 i;

    sp18 = D_800FD850_ShyGuySays;
    sp1C.unk_00 = D_800FD858_ShyGuySays;
    sp1C.unk_08 = D_800FD860_ShyGuySays;
    var_s3 = 0;

    if (func_8005FD5C() + D_800F64F8 == 0) {
        D_800FD5E4_ShyGuySays += 15 + (func_800F740C_ShyGuySays(0) & 0xF);
        if (D_800FD5E4_ShyGuySays < 0 || D_800FD5E4_ShyGuySays >= 360) {
            D_800FD5E4_ShyGuySays -= 360;
        }
    }

    var_f12 = D_800FD5E4_ShyGuySays;
    func_800FD274_ShyGuySays(arg0->model[0], D_800FDC50_ShyGuySays, func_800AEAC0(var_f12), sp18.unk_00, sp1C.unk_00.unk_00);

    var_f12 = D_800FD5E4_ShyGuySays;
    func_800FD274_ShyGuySays(arg0->model[0], D_800FDC52_ShyGuySays, func_800AEFD0(var_f12), sp18.unk_00, sp1C.unk_00.unk_00);

    if (func_8005FD5C() + D_800F64F8 != 0) {
        return;
    }

    if (D_800FD9A0_ShyGuySays == 2) {
        switch (D_800FDC4C_ShyGuySays) {
            case 0:
                if (D_800FD99C_ShyGuySays <= D_800FD5EC_ShyGuySays && func_800F99C0_ShyGuySays() == 1) {
                    D_800FD99C_ShyGuySays = 0;
                    D_800FD9A8_ShyGuySays++;
                    var_s3 = func_800F740C_ShyGuySays(2);
                    arg0->work[D_800FD9A8_ShyGuySays % 4] = var_s3;
                    temp_a0 = arg0->work[2];
                    temp_a1 = arg0->work[3];
                    if (arg0->work[0] == arg0->work[1] ? (temp_a0 == 1 ? temp_a1 == 1 : temp_a1 == 0)
                                                           : (temp_a0 == 0 ? temp_a1 == 1 : temp_a1 == 0)) {
                        if (var_s3 == 0) {
                            arg0->work[D_800FD9A8_ShyGuySays % 4] = 1;
                            var_s3 = 1;
                        } else {
                            arg0->work[D_800FD9A8_ShyGuySays % 4] = 0;
                            var_s3 = 0;
                        }
                    }
                    if (D_800FD9A8_ShyGuySays < 3) {
                        D_800FD5EC_ShyGuySays -= 2.5;
                    } else {
                        D_800FD5EC_ShyGuySays -= 5.0;
                        if (D_800FD5EC_ShyGuySays < 27.5) {
                            D_800FD5EC_ShyGuySays = 27.5f;
                            if (6.0 < D_800FDC54_ShyGuySays) {
                                D_800FDC54_ShyGuySays -= 3.0;
                            }
                        }
                        if (!func_800F740C_ShyGuySays(4)) {
                            var_s3 = 2;
                        }
                    }
                    if (D_800FD9A8_ShyGuySays < 16) {
                        func_80060268(sp18.unk_00[D_800FD9A8_ShyGuySays + 7]);
                    }
                    PlaySound(0x2FC);
                    switch (var_s3) {
                        case 0:
                            var_s3 = 1;
                            D_800FDC4C_ShyGuySays = 3;
                            break;
                        case 1:
                            var_s3 = 2;
                            D_800FDC4C_ShyGuySays = 3;
                            break;
                        default:
                            var_s3 = 3;
                            D_800FDC4C_ShyGuySays = 1;
                            break;
                    }
                    D_800FD5E8_ShyGuySays = var_s3;
                }
                break;
            case 1:
                if (func_800FD124_ShyGuySays(arg0) == 1) {
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 2;
                }
                break;
            case 2:
                if (D_800FD99C_ShyGuySays > 0) {
                    if (arg0->work[D_800FD9A8_ShyGuySays % 4] == 0) {
                        var_s3 = 4;
                        D_800FD5E8_ShyGuySays = 2;
                        arg0->work[D_800FD9A8_ShyGuySays % 4] = 1;
                    } else {
                        var_s3 = 5;
                        D_800FD5E8_ShyGuySays = 1;
                        arg0->work[D_800FD9A8_ShyGuySays % 4] = 0;
                    }
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 3;
                }
                break;
            case 3:
                if (func_800FD124_ShyGuySays(arg0) == 1) {
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 4;
                }
                break;
            case 4:
                if (D_800FDC54_ShyGuySays <= D_800FD99C_ShyGuySays) {
                    func_800F94A8_ShyGuySays();
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 5;
                }
                break;
            case 5:
                if (D_800FD99C_ShyGuySays >= 8) {
                    func_800F96D4_ShyGuySays();
                    func_800F98EC_ShyGuySays();
                    for (i = 0; i < 4; i++) {
                        if (func_800F9A7C_ShyGuySays(i, D_800FD5E8_ShyGuySays) == 0) {
                            break;
                        }
                    }
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 6;
                } else {
                    func_800F95BC_ShyGuySays();
                    var_s3 = 6;
                }
                break;
            case 6:
                if (func_800FD124_ShyGuySays(arg0) != 0 && func_800F97A8_ShyGuySays() != 0 && func_800F9828_ShyGuySays() != 0) {
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 7;
                }
                break;
            case 7:
                for (i = 0; i < 4; i++) {
                    if (func_800F9A7C_ShyGuySays(i, D_800FD5E8_ShyGuySays) != 0) {
                        continue;
                    }
                    if (D_800FDC30_ShyGuySays == 2) {
                        if (i == 0) {
                            var_f12_2 = 325.0f;
                        } else if (i == 1) {
                            var_f12_2 = 340.0f;
                        } else if (i == 2) {
                            var_f12_2 = 20.0f;
                        } else {
                            var_f12_2 = 45.0f;
                        }
                        if (arg0->rot.y == var_f12_2) {
                            D_800FDC4C_ShyGuySays = 9;
                            D_800FD99C_ShyGuySays = 0;
                            D_800FD5EA_ShyGuySays = i;
                            var_s3 = 8;
                        } else {
                            arg0->rot.y += func_800F74A0_ShyGuySays(var_f12_2, arg0->rot.y, 20.0f);
                            if (360.0 < arg0->rot.y) {
                                arg0->rot.y -= 360.0;
                            } else if (arg0->rot.y < 0.0) {
                                arg0->rot.y += 360.0;
                            }
                            D_800FD99C_ShyGuySays = 0;
                        }
                    } else {
                        var_s3 = 7;
                        D_800FDC4C_ShyGuySays = 8;
                        D_800FD99C_ShyGuySays = 0;
                    }
                    i = 5;
                }
                if (i == 4) {
                    if (D_800FDC30_ShyGuySays == 1) {
                        D_800FD99C_ShyGuySays = 0;
                        D_800FDC4C_ShyGuySays = 0;
                    } else if (arg0->rot.y == 180.0) {
                        if (D_800FD9A4_ShyGuySays != 0) {
                            D_800FD9A6_ShyGuySays = D_800FD9A4_ShyGuySays;
                        }
                        func_800F9D14_ShyGuySays(D_800FD9A6_ShyGuySays);
                        if (D_800FDC1C_ShyGuySays == 0) {
                            if (D_800FD9A4_ShyGuySays < 2) {
                                D_800FD9A0_ShyGuySays = 3;
                                D_800FD998_ShyGuySays->func_ptr = &func_800F6A38_ShyGuySays;
                                func_800601D4(40);
                            }
                        } else {
                            if (D_800FD9C0_ShyGuySays[D_800FDC1E_ShyGuySays].unk_00 != 0 && D_800FD9C0_ShyGuySays[D_800FDC1E_ShyGuySays].unk_04 != 512) {
                                if (D_800FD9A4_ShyGuySays < 2) {
                                    D_800FD9A0_ShyGuySays = 3;
                                    D_800FD998_ShyGuySays->func_ptr = &func_800F6E50_ShyGuySays;
                                    func_800601D4(40);
                                }
                            } else {
                                D_800FD9A0_ShyGuySays = 3;
                                D_800FD998_ShyGuySays->func_ptr = &func_800F6E50_ShyGuySays;
                                func_800601D4(40);
                            }
                        }
                        D_800FD99C_ShyGuySays = 0;
                        D_800FDC4C_ShyGuySays = 8;
                        var_s3 = 9;
                    } else {
                        D_800FD99C_ShyGuySays = 0;
                        arg0->rot.y += func_800F74A0_ShyGuySays(180.0f, arg0->rot.y, 20.0f);
                    }
                }
                break;
            case 8:
                if (func_800FD124_ShyGuySays(arg0) == 1) {
                    D_800FD99C_ShyGuySays = 0;
                    D_800FDC4C_ShyGuySays = 7;
                }
                break;
            case 9:
                if (D_800FD99C_ShyGuySays != 10) {
                    if (D_800FD99C_ShyGuySays >= 15) {
                        D_800FD99C_ShyGuySays = 0;
                        D_800FDC4C_ShyGuySays = 8;
                        D_800FD9A4_ShyGuySays--;
                        func_800F9AFC_ShyGuySays(D_800FD5EA_ShyGuySays);
                    }
                }
                break;
        }
        
        func_800FCA8C_ShyGuySays(arg0, var_s3);
        D_800FD99C_ShyGuySays++;
    } else {
        func_800FCA8C_ShyGuySays(arg0, 0);
    }

    func_800F7A8C_ShyGuySays(arg0->model[3], arg0);
    func_800F7A8C_ShyGuySays(arg0->model[4], arg0);
    func_800F7A8C_ShyGuySays(arg0->model[5], arg0);
    func_80025798(arg0->model[6], arg0->trans.x, arg0->trans.y, arg0->trans.z);

    D_800FD5E0_ShyGuySays++;
    if (D_800FD5EC_ShyGuySays > 360.0f) {
        D_800FD5E0_ShyGuySays -= 360;
    }

    var_f12 = D_800FD5E0_ShyGuySays;
    arg0->trans.y = func_800AEAC0(var_f12) * 24.0 + 100.0;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FCA8C_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FD124_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FD1D0_ShyGuySays);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_28_ShyGuySays/1D9690", func_800FD200_ShyGuySays);

void func_800FD274_ShyGuySays(s16 arg0, s16 arg1, f32 arg2, u16* arg3, u16* arg4) {
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
            var_a0->unk_02 = var_a2->unk_02 + arg2 * 20.0f * 0.2;
            var_a0->unk_04 = var_a2->unk_04 - arg2 * 20.0f * 1.2;
            sp[var_t1][0] = var_a2->unk_00;
            sp[var_t1][1] = var_a2->unk_02;
            sp[var_t1][2] = var_a2->unk_04;
            sp[var_t1][3] = i;
            arg3++;
            var_t1++;
        } else if (i == *arg4) {
            var_a0->unk_02 = var_a2->unk_02 - arg2 * 20.0f * 0.2;
            var_a0->unk_04 = var_a2->unk_04 + arg2 * 20.0f * 1.2;
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
