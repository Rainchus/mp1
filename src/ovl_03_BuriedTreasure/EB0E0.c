#include "common.h"
#include "BuriedTreasure.h"

void func_800F8760_EB0E0(void) {
    D_800EE98C = 2000.0f;
    D_800F33EC.y = 0.0f;
    D_800F33EC.x = 0.0f;
    D_800F33EC.z = 0.0f;
    D_800F6524.x = 0.0f;
    D_800F6524.y = 0.0f;
    D_800F6524.z = -100.0f;
}

unkStructSize0x5C* func_800F87A8_EB128(unkObjectStruct* arg0) {
    unkStructSize0x5C* temp_v0;

    D_800FC188[D_800FC140] = temp_v0 = HuMemDirectMalloc(sizeof(unkStructSize0x5C));

    arg0->unk_4C[0] = ((u32) temp_v0 >> 24);
    arg0->unk_4C[1] = ((u32) temp_v0 >> 16);
    arg0->unk_4C[2] = ((u32) temp_v0 >> 8);
    arg0->unk_4C[3] = (u32) temp_v0;

    temp_v0->unk_00 = 0;
    temp_v0->unk_02 = 0;
    temp_v0->unk_08 = 0;
    temp_v0->unk_0A = D_800FC140;
    temp_v0->unk_0C = temp_v0->unk_10 = temp_v0->unk_14 = 0.0f;
    temp_v0->unk_18 = temp_v0->unk_1C = temp_v0->unk_20 = 0.0f;
    temp_v0->unk_24 = temp_v0->unk_28 = temp_v0->unk_2C = 0.0f;
    temp_v0->unk_3C = temp_v0->unk_3E = temp_v0->unk_40 = temp_v0->unk_42 = 0;
    temp_v0->unk_44 = temp_v0->unk_46 = temp_v0->unk_48 = temp_v0->unk_4A = 0;
    temp_v0->unk_4C = temp_v0->unk_4E = temp_v0->unk_50 = temp_v0->unk_52 = 0;
    temp_v0->unk_54 = temp_v0->unk_56 = temp_v0->unk_58 = temp_v0->unk_5A = 0;

    D_800FC140++;
    return temp_v0;
}

void func_800F8894_EB214(void) {
    s16 i;

    for (i = 0; i < D_800FC140; i++) {
        if (D_800FC188[i] != NULL) {
            HuMemDirectFree(D_800FC188[i]);
        }
    }
}

unkStructSize0x5C* func_800F8914_EB294(unkObjectStruct* arg0) {
    return (unkStructSize0x5C*) ((arg0->unk_4C[0] << 24) | (arg0->unk_4C[1] << 16) | (arg0->unk_4C[2] << 8) | arg0->unk_4C[3]);
}

u32 func_800F8940_EB2C0(void) {
    return (rand8() << 8) | rand8();
}

void func_800F8978_EB2F8(Matrix4f arg0) {
    f32 temp_f4;
    f32 temp_f6;
    s32 i;
    s32 j;
    s32 k;

    for (i = 0; i < 4; i++) {
        temp_f6 = arg0[i][i];
        for (k = 0; k < 4; k++) {
            if (temp_f6 != 0.0f) {
                arg0[i][k] /= temp_f6;
            } else {
                arg0[i][k] = 0.0f;
            }
        }

        if (temp_f6 != 0.0f) {
            arg0[i][i] = 1.0f / temp_f6;
        } else {
            arg0[i][i] = 0.0f;
        }

        for (j = 0; j < 4; j++) {
            if (j == i) {
                continue;
            }

            temp_f4 = arg0[j][i];
            for (k = 0; k < 4; k++) {
                if (k != i) {
                    arg0[j][k] -= temp_f4 * arg0[i][k];
                } else if (temp_f6 != 0.0f) {
                    arg0[j][k] = -temp_f4 / temp_f6;
                } else {
                    arg0[j][k] = 0.0f;
                }
            }
        }
    }
}

void func_800F8AE8_EB468(f32* arg0, f32* arg1) {
    Matrix4f sp10;
    f32 temp_f4;
    f32 temp_f0;

    guTranslateF(sp10, arg0[0], arg0[1], arg0[2]);
    guMtxCatF(sp10, D_800FC0C0, sp10);

    temp_f0 = sp10[3][2] * D_800FC5F0;
    temp_f4 = fabsf(temp_f0);

    if (temp_f4 != 0.0) {
        arg1[0] = sp10[3][0] * 160.0f / temp_f4 / 1.3333334f;
        arg1[1] = -sp10[3][1] * 120.0f / temp_f4;
    }
}

void func_800F8BB8_EB538(f32 arg0, f32 arg1, f32 arg2, Vec3f* arg3) {
    Matrix4f sp10;
    f32 temp_f12;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f6;

    temp_f6 = arg2 + D_800FC0C0[3][2];
    temp_f2 = fabsf(temp_f6 * D_800FC5F0);

    guTranslateF(sp10, 2.0f * arg0 * temp_f2 * 1.3333334f / 320.0f, -(2.0f * arg1 * temp_f2 / 240.0f), temp_f6);
    guMtxCatF(sp10, D_800FC148, sp10);

    arg3->x = sp10[3][0];
    arg3->y = sp10[3][1];
    arg3->z = sp10[3][2];
}

void func_800F8C84_EB604(s16 arg0, f32* arg1, f32* arg2, f32* arg3) {
    if (*arg1 < -144.0f) {
        *arg1 = -144.0f;
    }
    if (*arg1 > 144.0f) {
        *arg1 = 144.0f;
    }
    if (*arg2 < -104.0f) {
        *arg2 = -104.0f;
    }
    if (*arg2 > 104.0f) {
        *arg2 = 104.0f;
    }
}

#ifdef NON_MATCHING // missing nop, matches without vr4300mul-off
void func_800F8D1C_EB69C(unkStructSize0x5C* arg0) {
    unkStructSize0x5C* temp_v0;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f4;
    s16 i;

    if (arg0->unk_04 > arg0->unk_06) {
        var_f26 = arg0->unk_04;
    } else {
        var_f26 = arg0->unk_06;
    }

    for (i = 0; i < D_800F2BC0; i++) {
        temp_v0 = func_800F8914_EB294(D_800F3FB0[i]);

        if (temp_v0 == arg0 || temp_v0->unk_08 < 0) {
            continue;
        }

        var_f22 = temp_v0->unk_0C - arg0->unk_0C;
        var_f24 = temp_v0->unk_10 - arg0->unk_10;

        if (temp_v0->unk_04 > temp_v0->unk_06) {
            var_f20 = temp_v0->unk_04;
        } else {
            var_f20 = temp_v0->unk_06;
        }

        var_f4 = sqrtf(SQ(var_f22) + SQ(var_f24));
        if (var_f4 < var_f26 + var_f20) {
            if (var_f4 != 0.0) {
                var_f22 /= var_f4;
                var_f24 /= var_f4;
            }
            arg0->unk_0C -= var_f22 * (var_f26 + var_f20 - var_f4);
            arg0->unk_10 -= var_f24 * (var_f26 + var_f20 - var_f4);
        }
    }
}
#else
INCLUDE_ASM(const s32, "ovl_03_BuriedTreasure/EB0E0", func_800F8D1C_EB69C);
#endif

#ifdef NON_MATCHING // missing nops, doesn't match even without vr4300mul-off
// rodata (func_800F8EF0_EB870)
extern const f64 D_800FBF30_EE8B0; // 1.0

s16 func_800F8EF0_EB870(f32* arg0, f32* arg1, s16 arg2) {
    unkStructSize0xC* temp_s6;
    u8* temp_s5;
    f64 incr;
    f32 var_f20;
    f32 var_f22;
    f32 var_f24;
    f32 var_f26;
    f32 var_f28;
    f32 var_f4;
    s16 temp_s7;
    s16 var_s2;
    s16 i;
    s16 j;

    var_s2 = 0;
    var_f24 = 0.0f;
    var_f28 = 0.0f;
    var_f26 = 65535.0f;
    temp_s6 = D_800EC700[D_800FC198[3]]->unk_00;
    temp_s5 = temp_s6->unk_00 + ((s16) *arg0 + 148) / 2 + ((s16) *arg1 + 108) * temp_s6->unk_04 / 2;

    var_f22 = -12.0f;
    for (i = 0, temp_s7 = ((s16) *arg0) & 1; i < 24; i++) {
        var_f20 = -12.0f;
        for (j = 0; j < 24; j++) {
            if ((*(temp_s5 + (j + temp_s7) / 2 + i * temp_s6->unk_04 / 2) & D_800FBE20_EE7A0[(j + temp_s7) & 1])
                && !(D_800FBD00_EE680[i * 12 + j / 2] & D_800FBE20_EE7A0[j & 1])) {
                var_f4 = sqrtf(SQ(var_f20) + SQ(var_f22));
                var_s2++;
                if (var_f4 < var_f26) {
                    var_f28 = var_f20;
                    var_f24 = var_f22;
                    var_f26 = var_f4;
                }
            }
            var_f20 += incr = D_800FBF30_EE8B0; // necessary to match
        }
        var_f22 += incr;
    }

    if (var_s2 != 0 && var_f26 < arg2) {
        var_f4 = sqrtf(SQ(var_f28) + SQ(var_f24));
        if (var_f4 != 0.0) {
            var_f28 /= var_f4;
            var_f24 /= var_f4;
            *arg0 -= var_f28 * (arg2 - var_f26);
            *arg1 -= var_f24 * (arg2 - var_f26);
        }
        return 1;
    }

    return 0;
}
#else
INCLUDE_ASM(const s32, "ovl_03_BuriedTreasure/EB0E0", func_800F8EF0_EB870);
#endif

s16 func_800F9260_EBBE0(f32* arg0, f32* arg1, s16 arg2) {
    s16 i;

    for (i = 0; func_800F8EF0_EB870(arg0, arg1, arg2) != 0 && i < 8; i++);

    return 1;
}

u16 func_800F92D4_EBC54(f32 arg0, f32 arg1, s16 arg2, void* arg3, s16* arg4) {
    unkStructSize0xC* temp_t3;
    unkStructSize0xC* temp_t7;
    s16 sp10[574];
    s32 temp_a0;
    s32 temp_a1;
    s16 var_s1;
    s16 var_a1;
    s16 var_s0;
    s16 temp_f0;
    u8* temp_t5;
    u8* temp_t9;
    u8* var_a3;
    s16* temp_s5;
    s16* var_a0;
    s16 i;
    s16 j;

    var_a3 = arg3;
    var_s0 = 0;
    var_s1 = 0;
    temp_t3 = D_800EC700[D_800FC198[1]]->unk_00;
    temp_t7 = D_800EC700[D_800FC198[3]]->unk_00;
    temp_t9 = temp_t7->unk_00 + ((s16) arg0 + 148 + ((s16) arg1 + 108) * temp_t7->unk_04) / 2;
    temp_t5 = temp_t3->unk_00 + ((s16) arg0 + 148 + ((s16) arg1 + 108) * temp_t3->unk_04) * 2;
    temp_f0 = (s16) arg0;
    *arg4 = 0;

    for (i = 0; i < 24; i++) {
        for (j = 0; j < 24; j++) {
            if (arg0 + j - 12.0f >= -160.0f && arg0 + j - 12.0f < 160.0f
                && arg1 + i - 12.0f >= -120.0f && arg1 + i - 12.0f < 120.0f) {
                if (!(D_800FBD00_EE680[i * 12 + j / 2] & D_800FBE24_EE7A4[j & 1])) {
                    temp_a1 = j + (temp_f0 & 1);
                    var_a3 = temp_t9 + temp_a1 / 2 + i * temp_t7->unk_04 / 2;
                    if (*var_a3 & D_800FBE24_EE7A4[temp_a1 & 1]) {
                        if (!(temp_a1 & 1)) {
                            var_a1 = *var_a3 >> 4;
                        } else {
                            var_a1 = *var_a3 & 0xF;
                        }
                        if (var_a1 == 4) {
                            var_s0 |= 2;
                        }
                        var_a1 -= arg2;
                        if (var_a1 <= 0) {
                            var_a1 = 0;
                            (*arg4)++;
                        }
                        temp_a0 = (j + (temp_f0 & 1)) & 1;
                        *var_a3 &= D_800FBE24_EE7A4[temp_a0 ^ 1];
                        *var_a3 |= (temp_a0 == 0) ? (var_a1 << 4) : var_a1;
                        var_s0 |= 1;
                    }
                }

                if (D_800FBAB8_EE438[i * 12 + j / 2] & D_800FBE24_EE7A4[j & 1]) {
                    sp10[var_s1++] = (temp_t5[(j + i * temp_t3->unk_04) * 2] << 8) + temp_t5[(j + i * temp_t3->unk_04) * 2 + 1];
                    temp_t5[(j + i * temp_t3->unk_04) * 2 + 1] &= 0xFE;
                }
            }
        }
    }

    if (var_s0 != 0) {
        *((s16*) arg3) = sp10[(func_800F8940_EB2C0() * var_s1) >> 16];
    } else {
        *((s16*) arg3) = 0;
    }

    return var_s0;
}

void func_800F9700_EC080(Gfx* arg0) {
    u8* timg = D_800EC700[D_800FC198[1]]->unk_00->unk_00;
    s16 i;

    gDPPipeSync(arg0++);
    gDPSetCycleType(arg0++, G_CYC_1CYCLE);
    gSPSetGeometryMode(arg0++, G_TEXTURE_GEN_LINEAR);
    gDPSetCombineMode(arg0++, G_CC_DECALRGBA, G_CC_DECALRGBA);
    gDPSetRenderMode(arg0++, G_RM_ZB_XLU_SURF, G_RM_NOOP2);
    gDPSetTextureFilter(arg0++, G_TF_POINT);
    gDPSetTexturePersp(arg0++, G_TP_NONE);
    gDPSetColorDither(arg0++, G_CD_DISABLE);

    for (i = 0; i < 61; i++) {
        gDPLoadTextureTile(arg0++, timg, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0, 0, i * 4, 319, i * 4 + 3, 0,
            G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 2, G_TX_NOLOD, G_TX_NOLOD);
        gSPTextureRectangle(arg0++, 0, (i * 4) * 4, 320 * 4, (i * 4 + 4) * 4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    }

    gSPEndDisplayList(arg0++);
}

void func_800F9990_EC310(void) {
    s16 i;

    D_800FC198[0] = InitSprite(0x150000);
    D_800FC198[1] = InitSprite(0x150001);
    D_800FC198[2] = InitSprite(0x150002);
    D_800FC198[3] = InitSprite(0x150003);
    D_800FC198[4] = InitSprite(0x150004);
    D_800FC198[5] = InitSprite(0x34);

    for (i = 0; i < ARRAY_COUNT(D_800FC040); i++) {
        D_800FC040[i] = func_80064EF4(1, 0);

        func_80067208(D_800FC040[i], 0, D_800FC198[2 - i], 0);
        func_800672B0(D_800FC040[i], 0, 0);

        if (i == 0) {
            func_800674BC(D_800FC040[i], 0, 0x4000);
        } else {
            func_800674BC(D_800FC040[i], 0, 0x1000);
        }

        func_80066DC4(D_800FC040[i], 0, 0xA0, 0x78);
        func_80067354(D_800FC040[i], 0, 1.0f, 1.0f);
        func_800671DC(D_800FC040[i], 0, 0);
        func_80067384(D_800FC040[i], 0, 0x8000);
    }

    D_800FC5E8 = HuMemDirectMalloc(1024 * sizeof(Gfx));
    func_800F9700_EC080(D_800FC5E8);
    func_80024198(0xC0, D_800FC5E8, 4);

    for (i = 0; i < ARRAY_COUNT(D_800FC1C0); i++) {
        D_800FC1C0[i].unk_00 = 0;
        D_800FC1C0[i].unk_02 = 0;
        D_800FC1C0[i].unk_04 = func_80064EF4(1, 0);

        func_80067480(D_800FC1C0[i].unk_04, 0, -1);
        func_800674BC(D_800FC1C0[i].unk_04, 0, 0xC000);

        D_800FC1C0[i].unk_06 = 0;
        D_800FC1C0[i].unk_08 = 0.0f;
        D_800FC1C0[i].unk_0C = 0.0f;
        D_800FC1C0[i].unk_10 = D_800FC1C0[i].unk_12 = D_800FC1C0[i].unk_14 = D_800FC1C0[i].unk_16 = 0;
        D_800FC1C0[i].unk_18 = D_800FC1C0[i].unk_1A = D_800FC1C0[i].unk_1C = D_800FC1C0[i].unk_1E = 0;
    }
}

s16 func_800F9C40_EC5C0(s16 arg0, f32 arg1, f32 arg2, s16 arg3) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_800FC1C0); i++) {
        if (D_800FC1C0[i].unk_00 != 0) {
            continue;
        }

        D_800FC1C0[i].unk_00 = 1;
        D_800FC1C0[i].unk_02 = arg0;
        D_800FC1C0[i].unk_06 = arg3;
        D_800FC1C0[i].unk_08 = arg1;
        D_800FC1C0[i].unk_0C = arg2;

        if (D_800FC1C0[i].unk_04 >= 0) {
            func_8006752C(D_800FC1C0[i].unk_04, 0, 0x100);
            func_80067480(D_800FC1C0[i].unk_04, 0, 0xFFFF);
            func_800674BC(D_800FC1C0[i].unk_04, 0, 0x1000);
            func_80067354(D_800FC1C0[i].unk_04, 0, 1.0f, 1.0f);
            func_800672B0(D_800FC1C0[i].unk_04, 0, 1);
            func_800673B0(D_800FC1C0[i].unk_04, 0, 0.0f);
        }

        D_800FC1C0[i].unk_10 = D_800FC1C0[i].unk_12 = D_800FC1C0[i].unk_14 = D_800FC1C0[i].unk_16 = 0;
        D_800FC1C0[i].unk_18 = D_800FC1C0[i].unk_1A = D_800FC1C0[i].unk_1C = D_800FC1C0[i].unk_1E = 0;

        return i;
    }

    return -1;
}

void func_800F9DCC_EC74C(s16 arg0) {
    D_800FC1C0[arg0].unk_00 = 0;

    if (D_800FC1C0[arg0].unk_04 >= 0) {
        func_800674BC(D_800FC1C0[arg0].unk_04, 0, 0x8000);
    }
}

#ifdef NON_MATCHING // matches but needs rodata (jtbl)
// rodata (func_800F9E10_EC790)
extern const f64 D_800FBF50_EE8D0; // 160.0
extern const f64 D_800FBF58_EE8D8; // 120.0

void func_800F9E10_EC790(void) {
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_800FC1C0); i++) {
        if (D_800FC1C0[i].unk_00 == 0) {
            continue;
        }

        switch (D_800FC1C0[i].unk_02) {
            case 0:
                func_800F7D50_EA6D0(i);
                break;
            case 1:
                func_800F7E48_EA7C8(i);
                break;
            case 2:
                func_800FB918_EE298(i);
                break;
            case 3:
                func_800FB920_EE2A0(i);
                break;
            case 4:
                func_800F815C_EAADC(i);
                break;
        }

        if (D_800FC1C0[i].unk_00 != 0 && D_800FC1C0[i].unk_04 >= 0) {
            func_80066DC4(D_800FC1C0[i].unk_04, 0, D_800FC1C0[i].unk_08 + D_800FBF50_EE8D0, D_800FC1C0[i].unk_0C + D_800FBF58_EE8D8);
        }
    }
}
#else
INCLUDE_ASM(const s32, "ovl_03_BuriedTreasure/EB0E0", func_800F9E10_EC790);
#endif

void func_800F9F90_EC910(void) {
    unkStructSize0xC* var_a0;
    u16 i;

    D_800FC05C = func_8005D384(5, 0, 0, -1, &func_800FA090_ECA10);
    func_800FB998_EE318(rand8());

    D_800FC0B8[0] = InitSprite(0x150000);
    D_800FC0B8[1] = InitSprite(0x150004);
    D_800FC0B8[2] = InitSprite(0x21);
    D_800FC0B8[3] = InitSprite(0x2A);

    var_a0 = D_800EC700[D_800FC0B8[2]]->unk_00;
    for (i = 0; i < D_800EC700[D_800FC0B8[2]]->unk_10; i++) {
        var_a0->unk_08 = 16;
        var_a0->unk_0A = 16;
        var_a0++;
    }

    D_800FC5EC = -1;
}

void func_800FA090_ECA10(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_800FA0B4_ECA34;
    func_800FA138_ECAB8();
}

void func_800FA0B4_ECA34(void) {
    func_800FA90C_ED28C();

    if (D_800FC5EC < 0 && func_800FB780_EE100() == 2) {
        D_800F32B0[D_800FC5EC].unk_0A += 10;
        func_80060F04(D_800FC5EC, 20, 0, 20);
    }
}

// rodata (func_800FA138_ECAB8)
extern const f64 D_800FBF60_EE8E0; // 360.0
extern const f64 D_800FBF68_EE8E8; // 22.5
extern const f64 D_800FBF70_EE8F0; // 45.0
extern const f64 D_800FBF78_EE8F8; // 90.0

void func_800FA138_ECAB8(void) {
    Vec3f sp18;
    unkStructSize0x28* var_s2;
    f32 temp_f12;
    f32 temp_f14;
    s16 temp_s0;
    s16 temp_f2;
    s16 i;
    s16 j;

    D_800FC060 = func_8005D384(0, 3, 2, -1, NULL);

    var_s2 = D_800FC5C0;
    for (i = 0; i < ARRAY_COUNT(D_800FC5C0); i++) {
        if (func_800FB928_EE2A8(0) & 1) {
            var_s2->unk_0C = func_800FB928_EE2A8(64) + 128;
            var_s2->unk_0E = func_800FB928_EE2A8(176) + 32;
        } else {
            var_s2->unk_0C = func_800FB928_EE2A8(256) + 32;
            var_s2->unk_0E = func_800FB928_EE2A8(40) + 100;
        }

        var_s2->unk_10 = 16;
        var_s2->unk_09 = 0;
        var_s2->unk_0A = 1;

        if (func_800FB520_EDEA0(var_s2->unk_0C, var_s2->unk_0E) == 0) {
            i--;
            continue;
        }

        var_s2->unk_08 = 0;
        var_s2->unk_12 = 0;
        var_s2->unk_1C = NULL;

        if (i & 1) {
            var_s2->unk_00 = HuMemDirectMalloc(sizeof(u16));
            var_s2->unk_04 = 1;

            *var_s2->unk_00 = func_800F9C40_EC5C0(2, var_s2->unk_0C - 160, var_s2->unk_0E - 120, 0);
            temp_s0 = D_800FC1C0[*var_s2->unk_00].unk_04;

            func_80067384(temp_s0, 0, 0x7FFE);
            func_80067208(temp_s0, 0, D_800FC0B8[0], 3);
            func_800672B0(temp_s0, 0, 0);
            func_800674BC(temp_s0, 0, 0x4000);
            func_800671DC(temp_s0, 0, 2);
            func_80067354(temp_s0, 0, 0.65f, 0.65f);
        } else {
            var_s2->unk_00 = HuMemDirectMalloc(10 * sizeof(u16));
            var_s2->unk_04 = 10;

            for (j = 0; j < var_s2->unk_04; j++) {
                var_s2->unk_00[j] = func_800F9C40_EC5C0(2, var_s2->unk_0C - 160, var_s2->unk_0E - 120, 0);
                temp_s0 = D_800FC1C0[var_s2->unk_00[j]].unk_04;

                func_80067384(temp_s0, 0, 0x7FFE);
                func_80067208(temp_s0, 0, D_800FC0B8[0], 3);
                func_800672B0(temp_s0, 0, 0);
                func_800674BC(temp_s0, 0, 0x4000);
                func_80067208(temp_s0, 0, D_800FC0B8[2], 0);
                func_800672B0(temp_s0, 0, 0);
                func_80067354(temp_s0, 0, 0.65f, 0.65f);
                func_800674BC(temp_s0, 0, 0xC80C);
            }

            var_s2->unk_24 = 0;
            var_s2->unk_25 = var_s2->unk_04;

            D_800FC060->unk_40[0] = LoadFormFile(0x150005, 0x99);
            D_800FC060->unk_40[1] = LoadFormFile(0x150006, 0x9D);
            D_800FC060->unk_40[2] = LoadFormFile(0x150005, 0x49D);

            D_800F2B7C[D_800FC060->unk_40[0]].unk_4C = 0.0f;
            D_800F2B7C[D_800FC060->unk_40[2]].unk_4C = 0.0f;

            func_800F8BB8_EB538(var_s2->unk_0C - 160, var_s2->unk_0E - 120, -400.0f, &sp18);

            D_800FC060->unk_18 = sp18.x;
            D_800FC060->unk_1C = sp18.y;
            D_800FC060->unk_20 = sp18.z;
            D_800FC060->unk_38 = 0.25f;
            D_800FC060->unk_34 = 0.25f;
            D_800FC060->unk_30 = 0.25f;
            D_800FC060->unk_24 = 0.0f;
            D_800FC060->unk_28 = -30.0f;
            D_800FC060->unk_2C = 0.0f;

            for (j = 0; j < 2; j++) {
                if (j == 0) {
                    func_80025798(D_800FC060->unk_40[1], D_800FC060->unk_18, D_800FC060->unk_1C, D_800FC060->unk_20);
                } else {
                    func_800F8BB8_EB538(var_s2->unk_0C - 160, var_s2->unk_0E - 120, 0.0f, &sp18);
                    func_80025798(D_800FC060->unk_40[j + 1], sp18.x, sp18.y, sp18.z);
                }
                func_80025830(D_800FC060->unk_40[j + 1], D_800FC060->unk_30, D_800FC060->unk_34, D_800FC060->unk_38);
                func_800257E4(D_800FC060->unk_40[j + 1], D_800FC060->unk_24, D_800FC060->unk_28, D_800FC060->unk_2C);
            }

            var_s2->unk_20 = D_800FC060;
            D_800FC060->unk_4C[0] = 0;
            var_s2->unk_06 = D_800FC060->unk_40[0];
            var_s2->unk_08 = 2;
        }

        var_s2++;
    }

    var_s2 = D_800FC068;
    for (i = 0; i < ARRAY_COUNT(D_800FC068); i++) {
        var_s2->unk_0C = func_800FB928_EE2A8(208) + 56;
        var_s2->unk_0E = func_800FB928_EE2A8(128) + 56;

        if (func_800FB520_EDEA0(var_s2->unk_0C, var_s2->unk_0E) == 0) {
            i--;
            continue;
        }

        var_s2->unk_00 = HuMemDirectMalloc(sizeof(u16));
        var_s2->unk_04 = 1;

        *var_s2->unk_00 = func_800F9C40_EC5C0(3, var_s2->unk_0C - 160, var_s2->unk_0E - 120, 0);
        var_s2->unk_08 = 0;
        temp_s0 = D_800FC1C0[*var_s2->unk_00].unk_04;

        func_80067384(temp_s0, 0, 0x7FFE);
        func_80067208(temp_s0, 0, D_800FC198[0], 0);
        func_800672B0(temp_s0, 0, 0);
        func_800674BC(temp_s0, 0, 0x4008);
        func_80067354(temp_s0, 0, 0.65f, 0.65f);

        temp_f12 = var_s2->unk_0E - D_800FC5C0[0].unk_0E;
        temp_f14 = D_800FC5C0[0].unk_0C - var_s2->unk_0C;
        var_s2++;

        temp_f2 = func_8009B618(func_800B0CD8(temp_f12, temp_f14) + D_800FBF60_EE8E0 + D_800FBF68_EE8E8, D_800FBF60_EE8E0) / D_800FBF70_EE8F0;
        func_800673B0(temp_s0, 0, temp_f2 / 2 * D_800FBF78_EE8F8 - D_800FBF78_EE8F8);
        func_800671DC(temp_s0, 0, temp_f2 & 1);
    }
}

#ifdef NON_MATCHING // missing nop, matches without vr4300mul-off
// rodata (func_800FA90C_ED28C)
extern const f64 D_800FBF80_EE900; // 16.0
extern const f64 D_800FBF88_EE908; // 0.25
extern const f64 D_800FBF90_EE910; // 5.625
extern const f64 D_800FBF98_EE918; // 0.1
extern const f64 D_800FBFA0_EE920; // 46.0
extern const f64 D_800FBFA8_EE928; // 90.0
extern const f64 D_800FBFB0_EE930; // 0.5
extern const f64 D_800FBFB8_EE938; // 46.0
extern const f64 D_800FBFC0_EE940; // 0.75
extern const f64 D_800FBFC8_EE948; // 360.0
extern const f64 D_800FBFD0_EE950; // 0.07
extern const f64 D_800FBFD8_EE958; // 1.0
extern const f64 D_800FBFE0_EE960; // 1.0
extern const f64 D_800FBFE8_EE968; // 0.0666
extern const f64 D_800FBFF0_EE970; // 1.966
extern const f64 D_800FBFF8_EE978; // 360.0
extern const f64 D_800FC000_EE980; // 90.0

void func_800FA90C_ED28C(void) {
    unkStructSize0x28* var_s1;
    unkObjectStruct* temp_s0;
    unkStructSize0x5C* var_s4;
    f32 sp18[3];
    f32 sp28[3];
    f32 temp_f20_2;
    f32 temp_f22_2;
    f32 temp_f20_3;
    u16 temp_s3;
    u16 var_v0;
    u16 i;
    u16 j;

    var_s4 = NULL;
    var_s1 = D_800FC5C0;

    for (i = 0; i < 1; i++) {
        if (var_s1->unk_1C != NULL) {
            var_s4 = func_800F8914_EB294(var_s1->unk_1C);
        }

        switch (i) {
            case 0:
                if (var_s1->unk_0A == 1) {
                    temp_s0 = var_s1->unk_20;
                    if (temp_s0->unk_4C[0] & 7) {
                        D_800F2B7C[temp_s0->unk_40[0]].unk_20 &= ~4;
                        D_800F2B7C[temp_s0->unk_40[1]].unk_20 |= 4;
                    } else {
                        D_800F2B7C[temp_s0->unk_40[0]].unk_20 |= 4;
                        D_800F2B7C[temp_s0->unk_40[1]].unk_20 &= ~4;
                    }
                    temp_s0->unk_4C[0]++;
                }

                if (var_s1->unk_0A >= 2 && var_s1->unk_0A < 32) {
                    if (var_s1->unk_0A == 2) {
                        PlaySound(0x196);
                    }
                    var_s1->unk_0A++;
                    temp_s0 = var_s1->unk_20;
                    var_v0 = var_s1->unk_0A;
                    temp_f20_3 = func_800AEAC0((var_v0 - 2) * D_800FBF90_EE910) * D_800FBF98_EE918;
                    func_80025830(temp_s0->unk_40[2], temp_f20_3 + temp_s0->unk_30, temp_f20_3 + temp_s0->unk_34, temp_f20_3 + temp_s0->unk_38);
                } else if (var_s1->unk_0A >= 32) {
                    if (var_s1->unk_0A == 32) {
                        temp_f22_2 = var_s1->unk_0C - 160 - var_s4->unk_0C;
                        temp_f20_2 = var_s1->unk_0E - 120 - D_800FBFA0_EE920 - var_s4->unk_10;

                        var_s1->unk_14 = sqrtf(SQ(temp_f22_2) + SQ(temp_f20_2));
                        var_s1->unk_18 = func_800B0CD8(temp_f22_2, temp_f20_2) - D_800FBFA8_EE928;

                        if (var_s1->unk_18 < 0.0f) {
                            var_s1->unk_18 += 360.0f;
                        }
                    }

                    if ((var_s1->unk_0A & 1) == 0 && var_s1->unk_24 < var_s1->unk_04) {
                        for (j = 0; j < var_s1->unk_24 + 1; j++) {
                            temp_s3 = var_s1->unk_00[j];
                            func_80067480(D_800FC1C0[temp_s3].unk_04, 0, 0xC000);
                            func_800672B0(D_800FC1C0[temp_s3].unk_04, 0, 1);
                            func_80067284(D_800FC1C0[temp_s3].unk_04, 0, 1.0f);
                        }
                        var_s1->unk_24++;
                    }

                    for (j = 0; j < var_s1->unk_24; j++) {
                        temp_s3 = var_s1->unk_00[j];
                        if (!(D_800FC1C0[temp_s3].unk_00 & 0x80)) {
                            if (D_800FC1C0[temp_s3].unk_10 < 16) {
                                temp_f20_3 = D_800FC1C0[temp_s3].unk_10 / D_800FBF80_EE900;
                                func_80067354(D_800FC1C0[temp_s3].unk_04, 0, temp_f20_3 * D_800FBF88_EE908 + D_800FBFB0_EE930, temp_f20_3 * D_800FBF88_EE908 + D_800FBFB0_EE930);
                                D_800FC1C0[temp_s3].unk_08 = var_s1->unk_0C - 160;
                                D_800FC1C0[temp_s3].unk_0C = var_s1->unk_0E - 120 - temp_f20_3 * D_800FBFB8_EE938;
                            } else if (D_800FC1C0[temp_s3].unk_10 < 32) {
                                temp_f20_3 = (D_800FC1C0[temp_s3].unk_10 - 16) / D_800FBF80_EE900;
                                func_80067354(D_800FC1C0[temp_s3].unk_04, 0, D_800FBFC0_EE940 - temp_f20_3 * D_800FBF88_EE908, D_800FBFC0_EE940 - temp_f20_3 * D_800FBF88_EE908);
                                D_800FC1C0[temp_s3].unk_08 = func_800AEFD0(temp_f20_3 * D_800FBFC8_EE948 - var_s1->unk_18) * (var_s1->unk_14 - temp_f20_3 * var_s1->unk_14) + var_s4->unk_0C;
                                D_800FC1C0[temp_s3].unk_0C = func_800AEAC0(temp_f20_3 * D_800FBFC8_EE948 - var_s1->unk_18) * (var_s1->unk_14 - temp_f20_3 * var_s1->unk_14) + var_s4->unk_10;
                            }

                            D_800FC1C0[temp_s3].unk_10++;
                            if (D_800FC1C0[temp_s3].unk_10 == 32) {
                                func_80067208(D_800FC1C0[temp_s3].unk_04, 0, D_800FC0BE, 0);
                                func_800674F4(D_800FC1C0[temp_s3].unk_04, 0, 255, 255, 190);
                                func_800672B0(D_800FC1C0[temp_s3].unk_04, 0, 2);
                                func_80067354(D_800FC1C0[temp_s3].unk_04, 0, 2.0f, 2.0f);
                                PlaySound(0xFC);
                            } else if (D_800FC1C0[temp_s3].unk_10 > 32 && func_80067328(D_800FC1C0[temp_s3].unk_04, 0) & 4) {
                                func_800674BC(D_800FC1C0[temp_s3].unk_04, 0, 0x8000);
                                D_800FC1C0[temp_s3].unk_00 |= 0x80;
                                var_s1->unk_25--;
                            }
                        }
                    }

                    if (var_s1->unk_0A < 63) {
                        temp_s0 = var_s1->unk_20;
                        D_800F2B7C[temp_s0->unk_40[2]].unk_20 ^= 4;
                    }

                    var_s1->unk_0A++;
                    if (var_s1->unk_25 == 0) {
                        var_s1->unk_0A = 0;
                        for (j = 0; j < var_s1->unk_04; j++) {
                            func_800F9DCC_EC74C(var_s1->unk_00[j]);
                        }
                    }
                }

                break;
            case 1:
                if (var_s1->unk_0A >= 2) {
                    func_80067480(D_800FC1C0[*var_s1->unk_00].unk_04, 0, 0x4000);

                    var_s4 = func_800F8914_EB294(var_s1->unk_1C);
                    sp28[0] = var_s4->unk_0C;
                    sp28[1] = var_s4->unk_10;
                    sp28[2] = var_s4->unk_14;

                    func_800F8AE8_EB468(sp28, sp18);

                    if (var_s1->unk_0A >= 2 && var_s1->unk_0A <= 16) {
                        temp_f20_3 = (var_s1->unk_0A - 2) * D_800FBFD0_EE950;
                        if (D_800FBFD8_EE958 < temp_f20_3) {
                            temp_f20_3 = 1.0f;
                        }

                        func_80067354(D_800FC1C0[*var_s1->unk_00].unk_04, 0, temp_f20_3 + D_800FBFE0_EE960, temp_f20_3 + D_800FBFE0_EE960);

                        D_800FC1C0[*var_s1->unk_00].unk_08 = var_s1->unk_0C - 160 + temp_f20_3 * (sp28[0] - (var_s1->unk_0C - 160));
                        D_800FC1C0[*var_s1->unk_00].unk_0C = var_s1->unk_0E - 120 + temp_f20_3 * (sp28[1] - 32.0f - (var_s1->unk_0E - 120));

                        var_s1->unk_0A++;
                    } else if (var_s1->unk_0A > 16 && var_s1->unk_0A < 32) {
                        temp_f20_3 = (var_s1->unk_0A - 17) * D_800FBFE8_EE968;

                        func_80067354(D_800FC1C0[*var_s1->unk_00].unk_04, 0, D_800FBFF0_EE970 - 2.0f * temp_f20_3, D_800FBFF0_EE970 - 2.0f * temp_f20_3);

                        D_800FC1C0[*var_s1->unk_00].unk_08 = func_800AEFD0(temp_f20_3 * D_800FBFF8_EE978 - D_800FC000_EE980) * (32.0f - temp_f20_3 * 32.0f) + sp28[0];
                        D_800FC1C0[*var_s1->unk_00].unk_0C = func_800AEAC0(temp_f20_3 * D_800FBFF8_EE978 - D_800FC000_EE980) * (32.0f - temp_f20_3 * 32.0f) + sp28[1];

                        var_s1->unk_0A++;
                    } else if (var_s1->unk_0A >= 32) {
                        var_s1->unk_0A = 0;
                        func_800F9DCC_EC74C(*var_s1->unk_00);
                    }
                }
                break;
        }

        var_s1++;
    }
}
#else
INCLUDE_ASM(const s32, "ovl_03_BuriedTreasure/EB0E0", func_800FA90C_ED28C);
#endif

s16 func_800FB380_EDD00(u16 arg0, u8* arg1) {
    unkStructSize0x28* temp_t0;
    u32 temp_a0;
    s16 temp_v1;
    s16 var_a2;
    s16 var_a3;
    s16 i;

    temp_t0 = &D_800FC5C0[arg0];
    var_a3 = 0;

    if (temp_t0->unk_0A != 1) {
        return 0;
    }

    for (i = 0; i < 9; i++) {
        temp_v1 = temp_t0->unk_0C + D_800FBE30_EE7B0[i].unk_00 * (temp_t0->unk_10 / 2 - 1);
        var_a2 = temp_t0->unk_0E + D_800FBE30_EE7B0[i].unk_02 * (temp_t0->unk_10 / 2 - 1);

        if (temp_v1 < 0) {
            temp_v1 = 0;
        } else if (temp_v1 > 319) {
            temp_v1 = 319;
        }

        if (var_a2 < 0) {
            var_a2 = 0;
        } else if (var_a2 > 239) {
            var_a2 = 239;
        }

        temp_a0 = temp_v1 + var_a2 * 320;

        if (temp_a0 & 1) {
            if ((arg1[temp_a0 / 2] & 0xF) == 0) {
                var_a3++;
            }
        } else {
            if (arg1[temp_a0 / 2] >> 4 == 0) {
                var_a3++;
            }
        }

    }

    if (var_a3 > 3 && arg0 == 1) {
        temp_t0->unk_0A = 0;
        temp_t0->unk_12 = 0;
        return 1;
    }

    if (var_a3 > 6 && arg0 == 0) {
        temp_t0->unk_0A = 0;
        temp_t0->unk_12 = 0;
        return 1;
    }

    temp_t0->unk_12 = var_a3;
    return 0;
}

s16 func_800FB520_EDEA0(u16 arg0, u16 arg1) {
    s32 temp_v1;
    s32 var_v0;
    s16 var_a2;
    s16 var_v1;
    u16 i;

    for (i = 0; i < D_800FBE58_EE7D8; i++) {
        temp_v1 = D_800FC050[i].unk_00 - arg0;
        var_v1 = (temp_v1 >= 0) ? temp_v1 : -temp_v1;

        var_v0 = D_800FC050[i].unk_02 - arg1;
        var_a2 = (var_v0 >= 0) ? var_v0 : -var_v0;

        if (var_v1 < 16) {
            return 0;
        }

        if (var_a2 < 16) {
            return 0;
        }

        if (SQ(var_v1) + SQ(var_a2) < 2500) {
            return 0;
        }
    }

    D_800FC050[i].unk_00 = arg0;
    D_800FC050[i].unk_02 = arg1;

    D_800FBE58_EE7D8++;
    return 1;
}

// rodata (func_800FB62C_EDFAC)
extern const f64 D_800FC008_EE988; // 160.0
extern const f64 D_800FC010_EE990; // 120.0

unkObjectStruct* func_800FB62C_EDFAC(unkStructSize0x28* arg0) {
    unkStructSize0x5C* temp_v0;
    unkObjectStruct* var_s1;
    s32 temp_f0;
    s32 var_s2;
    s16 i;

    var_s2 = 9999;
    var_s1 = NULL;

    for (i = 0; i < D_800F2BC0; i++) {
        temp_v0 = func_800F8914_EB294(D_800F3FB0[i]);
        temp_f0 = sqrtf(SQ(arg0->unk_0C - D_800FC008_EE988 - temp_v0->unk_0C)
            + SQ(arg0->unk_0E - D_800FC010_EE990 - temp_v0->unk_10));

        if (temp_f0 < var_s2) {
            var_s2 = temp_f0;
            var_s1 = D_800F3FB0[i];
        }
    }

    return var_s1;
}

s16 func_800FB780_EE100(void) {
    unkStructSize0x5C* temp_a3;
    unkObjectStruct* temp_v0;
    u8* temp_s3;
    s16 i;

    temp_s3 = D_800EC700[D_800FC198[3]]->unk_00->unk_00;

    for (i = 0; i < 1; i++) {
        if (func_800FB380_EDD00(i, temp_s3) != 1) {
            continue;
        }

        temp_v0 = func_800FB62C_EDFAC(&D_800FC5C0[i]);
        temp_a3 = func_800F8914_EB294(temp_v0);

        if (i == 0) {
            D_800FC5C0[i].unk_0A = 2;
            D_800FC5C0[i].unk_1C = temp_v0;
            D_800F2B7C[D_800FC060->unk_40[0]].unk_20 |= 4;
            D_800F2B7C[D_800FC060->unk_40[1]].unk_20 |= 4;
            D_800F2B7C[D_800FC060->unk_40[2]].unk_20 &= ~4;
            D_800F2B7C[D_800FC060->unk_40[2]].unk_4C = 1.0f;
            D_800FC5EC = temp_a3->unk_40;
            return 2;
        }
    }

    return 0;
}

void func_800FB918_EE298(s16 arg0) {
}

void func_800FB920_EE2A0(s16 arg0) {
}

u16 func_800FB928_EE2A8(u16 arg0) { //shared overlay func
    D_800FBE54_EE7D4 = (D_800FBE54_EE7D4 * 0x19971204 + 0x19760831) >> 16;

    if (arg0 == 0) {
        return D_800FBE54_EE7D4;
    } else {
        return (D_800FBE54_EE7D4 % arg0);
    }
}

void func_800FB998_EE318(u16 randByte) {
    u16 i;
    
    for (i = 0; i < randByte; i++) {
        func_800FB928_EE2A8(0); //pass 0 to getRand function to shuffle rng
    }
}

void func_800FB9E8_EE368(void) {
    unkStructSize0x28* var_s0;
    s16 i;

    var_s0 = D_800FC5C0;
    for (i = 0; i < ARRAY_COUNT(D_800FC5C0); i++) {
        HuMemDirectFree(var_s0->unk_00);
        var_s0++;
    }

    var_s0 = D_800FC068;
    for (i = 0; i < ARRAY_COUNT(D_800FC068); i++) {
        HuMemDirectFree(var_s0->unk_00);
        var_s0++;
    }
}
