#include "common.h"
#include "BuriedTreasure.h"

#define U32_MAX 0xFFFFFFFF

// rodata (func_800F65E0_E8F60)
extern const f64 D_800FBE60_EE7E0; // 2.0

void func_800F65E0_E8F60(void) {
    u8 temp_s0;
    unk_Struct00* temp_s0_2;
    unkObjectStruct* temp_s1;
    s16 i;

    func_80029090(0x32);
    func_8001DE70(0x20);
    InitObjSystem(0x32, 0);
    func_80060088();

    temp_s1 = func_8005D384(0x7FDA, 0, 0, -1, func_8005EB1C);
    func_8005D8B8(temp_s1, 0xA0);
    func_800178A0(1);

    temp_s0 = func_800178E8();
    func_80017660(temp_s0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(temp_s0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_8001D494(0, 5.0f, 80.0f, 4000.0f);

    D_800F2BC0 = 0;
    D_800FC020 = 0;
    D_800FC022 = 0x5A;
    D_800FC026 = 0;
    D_800FC024 = 1;
    D_800FC028 = 0x708;
    D_800FC02A = IsFlagSet(0x2B);

    for (i = 0; i < ARRAY_COUNT(D_800FC188); i++) {
        D_800FC188[i] = NULL;
    }

    D_800FC02C = 0;
    D_800FC034 = -1;
    D_800FC140 = 0;

    for (i = 0; i < ARRAY_COUNT(D_800FC100); i++) {
        D_800FC100[i] = 0;
    }

    func_800F8760_EB0E0();
    func_8005EB1C(temp_s1);

    temp_s0_2 = D_800C3110;
    D_800FC5F0 = func_800AEAC0(temp_s0_2->unk_40 / D_800FBE60_EE7E0) / func_800AEFD0(temp_s0_2->unk_40 / D_800FBE60_EE7E0);

    guMtxL2F(D_800FC0C0, &temp_s0_2->unk_138);
    guMtxL2F(D_800FC148, &temp_s0_2->unk_138);

    func_800F8978_EB2F8(D_800FC148);
    func_800F9990_EC310();

    D_800FC144 = func_8005D384(0xA, 0, 0, -1, &func_800F692C_E92AC);

    for (i = 0; i < 4; i++) {
        D_800F3FB0[D_800F2BC0++] = func_8005D384(3, 1, 2, -1, &func_800F6EC4_E9844);
    }

    D_800FC030 = func_8005D384(0, 0, 0, -1, &func_800F6DCC_E974C);
    func_800F9F90_EC910();
}

void func_800F692C_E92AC(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_800F6958_E92D8;
    SetFadeInTypeAndTime(0, 16);
}

#ifdef NON_MATCHING // matches but needs rodata (jtbl)
void func_800F6958_E92D8(void) {
    switch (D_800FC020) {
        case 0:
            D_800FC022--;
            if (D_800FC022 == 0) {
                D_800FC020++;
                D_800FC022 = 60;
                func_80075CCC(0);
            }
            if (D_800FC022 == 24) {
                func_80060128(0x1D);
            }
            break;
        case 1:
            D_800FC022--;
            if (D_800FC022 == 0) {
                D_800FC020++;
                D_800FC024 = 0;
            }
            break;
        case 2:
            if (D_800FC026 == 0 && D_800FC5EC >= 0) {
                D_800FC026 = 1;
                D_800FC024 = 1;
                D_800FC034 = D_800FC5EC;
            }
            if (D_800FC026 == 0 && D_800FC028 != 0) {
                D_800FC028--;
            }
            if ((D_800FC028 == 0 || D_800FC026 != 0) && (D_800FC034 < 0 || D_800FC5C0[0].unk_0A == 0)) {
                D_800FC026++;
                D_800FC024 = 1;
                if (D_800FC02A == 0) {
                    D_800FC020++;
                    if (D_800FC034 < 0) {
                        func_80075CCC(0x10);
                    } else {
                        func_80075CCC(2);
                    }
                } else {
                    D_800FC020 = 6;
                    func_80075CCC(2);
                }
                func_800601D4(0x28);
            }
            break;
        case 3:
            if (func_80075FE0() == 2) {
                D_800FC020++;
                if (D_800FC034 >= 0) {
                    func_80060128(0x32);
                    D_800FC022 = 18;
                } else {
                    func_80060128(0x34);
                    D_800FC022 = 21;
                }
            }
            break;
        case 4:
            D_800FC022--;
            if (D_800FC022 == 0) {
                D_800FC020++;
                if (D_800FC034 >= 0) {
                    func_80075CCC(4, D_800F32B0[D_800FC034].unk_04);
                    D_800FC022 = 84;
                } else {
                    func_80075CCC(0x11);
                    D_800FC022 = 77;
                }
            }
            break;
        case 5:
            if (D_800FC022 != 0) {
                D_800FC022--;
            }
            if (D_800FBA72_EE3F2 != 0) {
                D_800FBA72_EE3F2--;
            }
            if (func_80076174() == 0) {
                D_800FBA70_EE3F0 = 1;
            }
            if (D_800FC022 == 0 || (D_800FBA70_EE3F0 != 0 && D_800FBA72_EE3F2 == 0)) {
                D_800FC020 = -1;
                D_800FC026 = -1;
                if (D_800FC02A != 0) {
                    func_80060398(0x28);
                }
                func_800726AC(0, 0x14);
            }
            break;
        case 6:
            if (func_80075FE0() == 2) {
                D_800FC020 = 5;
                D_800FC022 = 60;
                D_800FBA72_EE3F2 = 0;
            }
            break;
    }

    func_800F9E10_EC790();

    if (D_800F5144 != 0) {
        D_800FC026 = -1;
    }

    func_800F6D6C_E96EC();
}
#else
INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6958_E92D8);
#endif

void func_800F6D6C_E96EC(void) {
    if (D_800FC026 < 0 && func_80072718() == 0) {
        func_800F8894_EB214();
        FreePerm(D_800FC5E8);
        func_800FB9E8_EE368();
        func_80060198();
        func_8005DFB8(1);
    }
}

void func_800F6DCC_E974C(unkObjectStruct* arg0) {
    arg0->unk_4C[0] = func_80075CCC(8, D_800FC028 / 30, 160, 24);
    arg0->func_ptr = &func_800F6E44_E97C4;
}

void func_800F6E44_E97C4(unkObjectStruct* arg0) {
    func_80079078((D_800FC028 + 29) / 30);
    if (D_800FC028 == 0 || D_800FC026 == 2) {
        arg0->func_ptr = NULL;
        func_800790C0();
    }
}

void func_800F6EC4_E9844(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1;
    s32 temp_s2;
    s16 temp_v1;

    temp_v1 = D_800F32B0[D_800FBA74_EE3F4[D_800FC02C]].unk_04;
    temp_s2 = D_800C59AC[temp_v1].unk_00;

    arg0->unk_40[0] = LoadFormFile(temp_s2 | D_800C59AC[temp_v1].unk_04, 0x69D);
    arg0->func_ptr = &func_800F7164_E9AE4;
    arg0->unk_18 = D_800FBA7C_EE3FC[D_800FC02C].unk_00;
    arg0->unk_1C = D_800FBA7C_EE3FC[D_800FC02C].unk_02;
    arg0->unk_20 = D_800FBA7C_EE3FC[D_800FC02C].unk_04;
    arg0->unk_24 = 90.0f;
    arg0->unk_2C = D_800FBA94_EE414[D_800FC02C];
    arg0->unk_38 = 0.14f;
    arg0->unk_34 = 0.14f;
    arg0->unk_30 = 0.14f;

    func_80025798(arg0->unk_40[0], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_800257E4(arg0->unk_40[0], arg0->unk_24, arg0->unk_28, arg0->unk_2C);
    func_80025830(arg0->unk_40[0], arg0->unk_30, arg0->unk_34, arg0->unk_38);

    arg0->unk_50 = func_80023684(sizeof(unkGlobalStruct_00), 31000);
    func_8009B770(arg0->unk_50, 0, sizeof(unkGlobalStruct_00));

    temp_s1 = arg0->unk_50;
    temp_s1->unk_3C = arg0->unk_2C + 180.0f;

    temp_s1->unk_D8 = func_80023684(arg0->unk_44 * sizeof(unkGlobalStruct_00), 31000);
    func_8009B770(temp_s1->unk_D8, 0, arg0->unk_44 * sizeof(unkGlobalStruct_00));

    temp_s1->unk_50 = 0;
    temp_s1->unk_52 = 0;
    temp_s1->unk_56 = D_800F32B0[D_800FC02C].unk_03;
    temp_s1->unk_C0 = 65535;

    func_8001874C(arg0, 0, temp_s2 | 0x40, 1, 0);
    func_8001874C(arg0, 1, temp_s2 | 0x17, 1, 0x13);

    func_800F87A8_EB128(arg0)->unk_40 = D_800FC02C++;
}

#ifdef NON_MATCHING // matches but needs rodata
// rodata (func_800F7164_E9AE4)
extern const f64 D_800FBE88_EE808; // 6.0
extern const f64 D_800FBE90_EE810; // 16.0
extern const f64 D_800FBE98_EE818; // 1.5
extern const f64 D_800FBEA0_EE820; // 8.0
extern const f64 D_800FBEA8_EE828; // 180.0
extern const f64 D_800FBEB0_EE830; // 360.0
extern const f64 D_800FBEB8_EE838; // 360.0
extern const f64 D_800FBEC0_EE840; // 360.0
extern const f64 D_800FBEC8_EE848; // 180.0
extern const f64 D_800FBED0_EE850; // 10.0
extern const f64 D_800FBED8_EE858; // 180.0

void func_800F7164_E9AE4(unkObjectStruct* arg0) {
    unkGlobalStruct_00* temp_s1;
    unkStructSize0x5C* temp_v0;
    Vec3f sp18;
    f32 temp_f20_2;
    f32 temp_f24;
    f32 var_f20;
    f32 var_f22;
    f32 var_f4;
    u32 temp_v0_4;
    s16 sp28;
    s16 temp_v0_6;
    s16 var_s4;
    s16 var_s5;
    u16 temp_v1_2;
    u16 var_s0;
    s8 temp_s0;

    temp_s1 = arg0->unk_50;
    temp_v0 = func_800F8914_EB294(arg0);

    if (temp_v0->unk_00 >= 0) {
        temp_v0->unk_00 |= 0x80C0;
        temp_v0->unk_02 = 1;
        temp_v0->unk_06 = 14;
        temp_v0->unk_04 = 14;
        temp_v0->unk_0C = D_800F2B7C[*arg0->unk_40].unk_24;
        temp_v0->unk_10 = D_800F2B7C[*arg0->unk_40].unk_28;
        temp_v0->unk_14 = D_800F2B7C[*arg0->unk_40].unk_2C;
        temp_v0->unk_3C = 64;
        temp_v0->unk_3E = arg0->unk_2C + 180.0f;
        temp_v0->unk_44 = 0;
        temp_v0->unk_46 = 0;
        temp_v0->unk_48 = 0;
        temp_v0->unk_4C = 0;
        temp_v0->unk_4E = 0;
        temp_v0->unk_50 = 2;
        temp_v0->unk_54 = 0;

        D_800F2B7C[*arg0->unk_40].unk_20 &= ~4;
    }

    func_800184BC(arg0, 0);

    var_f20 = temp_s1->unk_3C;
    temp_s0 = temp_s1->unk_56;

    func_80017A60(arg0);

    temp_v0->unk_18 = temp_v0->unk_0C;
    temp_v0->unk_1C = temp_v0->unk_10;

    if (D_800FC024 == 0) {
        if (!(D_800F32B0[temp_v0->unk_40].unk_06 & 1)) {
            temp_v0_4 = func_80009C90(arg0, D_800ECE14[temp_s0], D_800F3843[temp_s0]);
            var_s4 = temp_v0_4 >> 16;
            var_s5 = temp_v0_4;
            var_s0 = D_800EDEB4[temp_s0] & ~temp_v0->unk_56;
            temp_v0->unk_56 = D_800EDEB4[temp_s0];
        } else {
            var_s4 = var_s5 = 32;
            var_s0 = func_800F85B4_EAF34(arg0);
        }
    } else {
        if (temp_v0->unk_08 == 0) {
            var_s4 = var_s5 = 32;
            var_s0 = !(temp_v0->unk_3C & 3) << 15;
        } else {
            var_s4 = var_s5 = 0;
            var_s0 = 0;
        }
    }

    if (temp_v0->unk_54 != 0) {
        temp_v0->unk_54--;
    }

    if (var_s0 & 0x8000 && temp_v0->unk_4C == 0) {
        temp_v0->unk_4C = 8;
    }

    temp_s1->unk_40 = (sqrtf(SQ(var_s4) + SQ(var_s5))) / D_800FBE88_EE808;
    if (temp_s1->unk_40 > D_800FBE90_EE810) {
        temp_s1->unk_40 = 16.0f;
    }

    if (temp_v0->unk_02 & 2) {
        temp_s1->unk_40 *= D_800FBE98_EE818;
    }

    if (temp_v0->unk_4C == 0) {
        D_800F2B7C[*arg0->unk_40].unk_4C = temp_s1->unk_40 / D_800FBEA0_EE820;
    } else {
        if (temp_v0->unk_02 & 2) {
            D_800F2B7C[*arg0->unk_40].unk_4C = 6.0f;
        } else {
            D_800F2B7C[*arg0->unk_40].unk_4C = 2.0f;
        }
        temp_v0->unk_4C--;
    }

    if (temp_s1->unk_40 != 0.0) {
        if (!(D_800F32B0[temp_v0->unk_40].unk_06 & 1) && temp_v0->unk_08 != 0) {
            var_f22 = func_800B0CD8(var_s4, -var_s5) + D_800FBEA8_EE828;
        } else {
            var_f22 = temp_v0->unk_3E;
        }

        if (var_f22 >= D_800FBEB0_EE830) {
            var_f22 -= D_800FBEB0_EE830;
        }

        if (var_f22 != var_f20) {
            if ((var_f22 - var_f20 < -180.0f && var_f22 - var_f20 < 0.0f) || (var_f22 - var_f20 < 180.0f && var_f22 - var_f20 > 0.0f)) {
                var_f20 += 20.0f;
                if ((var_f22 - var_f20 > -180.0f && var_f22 - var_f20 < 0.0f) || (var_f22 - var_f20 > 180.0f && var_f22 - var_f20 > 0.0f)) {
                    var_f20 = var_f22;
                }
                if (D_800FBEB8_EE838 < var_f20) {
                    var_f20 -= D_800FBEB8_EE838;
                }
            } else {
                var_f20 -= 20.0f;
                if ((var_f22 - var_f20 < -180.0f && var_f22 - var_f20 < 0.0f) || (var_f22 - var_f20 < 180.0f && var_f22 - var_f20 > 0.0f)) {
                    var_f20 = var_f22;
                }
                if (var_f20 < 0.0) {
                    var_f20 += D_800FBEC0_EE840;
                }
            }
        }

        temp_s1->unk_3C = var_f20;
        arg0->unk_2C = var_f20 - D_800FBEC8_EE848;
        temp_v0->unk_0C -= func_800AEAC0(var_f22) * temp_s1->unk_40 / D_800FBED0_EE850;
        temp_v0->unk_10 -= func_800AEFD0(var_f22) * temp_s1->unk_40 / D_800FBED0_EE850;
    }

    if (var_s0 & 0x8000) {
        temp_f20_2 = temp_v0->unk_0C - temp_v0->unk_18;
        temp_f24 = temp_v0->unk_10 - temp_v0->unk_1C;

        var_f4 = sqrtf(SQ(temp_f20_2) + SQ(temp_f24));
        if (var_f4 != 0.0) {
            temp_f20_2 /= var_f4;
            temp_f24 /= var_f4;

            if (temp_v0->unk_02 & 2) {
                var_f22 = 2.0f;
            } else {
                var_f22 = 1.0f;
            }

            temp_v0_6 = func_800F92D4_EBC54(temp_f20_2 * var_f22 + temp_v0->unk_18, temp_f24 * var_f22 + temp_v0->unk_1C, temp_v0->unk_50, &temp_v0->unk_5A, &sp28);
            if (temp_v0_6 != 0) {
                if (temp_v0->unk_54 == 0 && D_800FC024 == 0) {
                    func_80060F04(temp_v0->unk_40, 5, 0, 5);
                    temp_v0->unk_54 = 16;
                }

                sp28 = -1;
                if (temp_v0->unk_02 & 2) {
                    sp28 = func_80060540(0x1DF, temp_v0->unk_40);
                } else if (temp_v0_6 == 1) {
                    sp28 = func_80060540(0x1DD, temp_v0->unk_40);
                } else {
                    sp28 = func_80060540(0x1DE, temp_v0->unk_40);
                }

                if (sp28 >= 0) {
                    func_80060440(sp28, func_800F8940_EB2C0() * 600 / 65536 - 300);
                }

                temp_v1_2 = ((s16) temp_v0->unk_0C + 160) / 80 + ((s16) temp_v0->unk_10 + 120) / 60 * 4;
                if (temp_v1_2 < ARRAY_COUNT(D_800FC100)) {
                    D_800FC100[(s16) temp_v1_2] += sp28;
                }

                temp_v0->unk_2C = arg0->unk_2C + D_800FBED8_EE858;
                func_800F9C40_EC5C0(1, temp_v0->unk_0C, temp_v0->unk_10, temp_v0->unk_0A);
            }
        }
    }

    if (temp_v0->unk_08 != 0) {
        func_800F8D1C_EB69C(temp_v0);
        func_800F9260_EBBE0(&temp_v0->unk_0C, &temp_v0->unk_10, temp_v0->unk_04 - 4);
        func_800F8C84_EB604(0, &temp_v0->unk_0C, &temp_v0->unk_10, &temp_v0->unk_14);
    } else {
        temp_v0->unk_3C--;
        if (temp_v0->unk_3C == 0) {
            temp_v0->unk_08++;
        }
    }

    func_800F8BB8_EB538(temp_v0->unk_0C, temp_v0->unk_10, temp_v0->unk_14, &sp18);
    arg0->unk_18 = sp18.x;
    arg0->unk_1C = sp18.y;
    arg0->unk_20 = sp18.z;

    if (temp_v0->unk_4E != 0) {
        D_800F2B7C[*arg0->unk_40].unk_20 ^= 4;

        temp_v0->unk_4E--;
        if (temp_v0->unk_4E == 0) {
            temp_v0->unk_02 &= 0xFFFD;
            D_800F2B7C[*arg0->unk_40].unk_20 &= ~4;
            temp_v0->unk_50 = 2;
        }

        if (D_800FC024 == 0 && !(temp_v0->unk_4E & 1)) {
            func_800F9C40_EC5C0(4,
                (func_800F8940_EB2C0() * 16 >> 16) + temp_v0->unk_0C - 8.0f,
                (func_800F8940_EB2C0() * 16 >> 16) + temp_v0->unk_10 - 8.0f, 0);
        }
    }

    func_80017DB0(arg0);
}
#else
INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F7164_E9AE4);
#endif

void func_800F7D50_EA6D0(s16 arg0) {
    if (D_800FC1C0[arg0].unk_00 >= 0) {
        D_800FC1C0[arg0].unk_00 |= 0x8000;
        D_800FC1C0[arg0].unk_10 = 60;
        func_80067208(D_800FC1C0[arg0].unk_04, 0, D_800FC198[0], 0);
        func_800672B0(D_800FC1C0[arg0].unk_04, 0, 0);
        func_800671DC(D_800FC1C0[arg0].unk_04, 0, D_800FC1C0[arg0].unk_06);
    } else if (--D_800FC1C0[arg0].unk_10 == 0) {
        func_800F9DCC_EC74C(arg0);
    }
}

#ifdef NON_MATCHING // matches but needs rodata
// rodata (func_800F7E48_EA7C8)
extern const f64 D_800FBEF0_EE870; // 0.75
extern const f64 D_800FBF00_EE880; // 0.75
extern const f64 D_800FBF10_EE890; // 0.75

void func_800F7E48_EA7C8(s16 arg0) {
    unkStructSize0x5C* temp_s1;
    u8 temp_a2;
    u8 temp_a3;
    u8 temp_a1;

    if (D_800FC1C0[arg0].unk_00 >= 0) {
        D_800FC1C0[arg0].unk_00 |= 0x8000;
        D_800FC1C0[arg0].unk_10 = 0;

        func_80067208(D_800FC1C0[arg0].unk_04, 0, D_800FC198[4], 0);
        func_800672B0(D_800FC1C0[arg0].unk_04, 0, 0);
        func_800671DC(D_800FC1C0[arg0].unk_04, 0, 0);

        temp_s1 = D_800FC188[D_800FC1C0[arg0].unk_06];
        temp_a2 = (f32) ((temp_s1->unk_5A & 0xF800) >> 8) * D_800FBEF0_EE870;
        temp_a3 = (f32) ((temp_s1->unk_5A & 0x7C0) >> 3) * D_800FBF00_EE880;
        temp_a1 = (f32) ((temp_s1->unk_5A & 0x3E) << 2) * D_800FBF10_EE890;

        func_80067558(D_800FC1C0[arg0].unk_04, 0, temp_a2, temp_a3, temp_a1, 256);
        func_800673B0(D_800FC1C0[arg0].unk_04, 0, temp_s1->unk_2C);
        func_80067384(D_800FC1C0[arg0].unk_04, 0, 0x9000);

        if (temp_s1->unk_02 & 2) {
            func_80067354(D_800FC1C0[arg0].unk_04, 0, 1.5f, 1.5f);
        }
    } else if (++D_800FC1C0[arg0].unk_10 >= 16) {
        func_800F9DCC_EC74C(arg0);
    } else {
        func_800671DC(D_800FC1C0[arg0].unk_04, 0, D_800FC1C0[arg0].unk_10);
    }
}
#else
INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F7E48_EA7C8);
#endif

void func_800F815C_EAADC(s16 arg0) {
    if (D_800FC1C0[arg0].unk_00 >= 0) {
        D_800FC1C0[arg0].unk_00 |= 0x8000;
        func_80067208(D_800FC1C0[arg0].unk_04, 0, D_800FC198[5], 0);
        func_800672B0(D_800FC1C0[arg0].unk_04, 0, 1);
        func_80067354(D_800FC1C0[arg0].unk_04, 0, 0.2f, 0.2f);
        func_80067284(D_800FC1C0[arg0].unk_04, 0, 2.0f);
        func_80067384(D_800FC1C0[arg0].unk_04, 0, 0x9000);
    } else if (func_80067328(D_800FC1C0[arg0].unk_04, 0) & 2) {
        func_800F9DCC_EC74C(arg0);
    }
}

s16 func_800F826C_EABEC(void) {
    s16 sp10[ARRAY_COUNT(D_800FC100)];
    s16 var_s0 = 0;
    u32 var_a1 = U32_MAX;
    s16 i;

    for (i = 0; i < ARRAY_COUNT(D_800FC100); i++) {
        if (D_800FC100[i] < var_a1) {
            var_s0 = 0;
            var_a1 = D_800FC100[i];
        }
        if (D_800FC100[i] == var_a1) {
            sp10[var_s0++] = i;
        }
    }

    return sp10[func_800F8940_EB2C0() * var_s0 >> 16];
}

s16 func_800F8334_EACB4(unkStructSize0x5C* arg0) {
    unkStructSize0x28* temp_s1;
    s16 var_s5 = 0;
    s16 temp_s0_2;
    s16 temp_s1_2;
    s16 temp_s0;
    s16 i;

    if (!(arg0->unk_02 & 4)) {
        for (i = 0; i < ARRAY_COUNT(D_800FC5C0); i++) {
            temp_s1 = &D_800FC5C0[i];
            temp_s0 = temp_s1->unk_12;
            if ((func_800F8940_EB2C0() & 0xFF) < temp_s0 * 28 + D_800F32B0[arg0->unk_40].unk_01 * 8) {
                arg0->unk_02 |= 4;
                arg0->unk_44 = temp_s1->unk_0C - 160;
                arg0->unk_46 = temp_s1->unk_0E - 120;
                arg0->unk_4A = i;
                break;
            }
        }
        if (i == ARRAY_COUNT(D_800FC5C0)) {
            i = func_800F826C_EABEC();
            arg0->unk_44 = (func_800F8940_EB2C0() * 80 >> 16) + (i % 4) * 80 - 160;
            arg0->unk_46 = (func_800F8940_EB2C0() * 60 >> 16) + (i / 4) * 60 - 120;
        }
    } else {
        temp_s1 = &D_800FC5C0[arg0->unk_4A];
        if (temp_s1->unk_12 == 0) {
            arg0->unk_02 &= 0xFFFB;
            arg0->unk_44 = (func_800F8940_EB2C0() * 288 >> 16) - 144;
            arg0->unk_46 = (func_800F8940_EB2C0() * 208 >> 16) - 104;
        } else {
            temp_s0_2 = temp_s1->unk_0C - 160;
            temp_s1_2 = temp_s1->unk_0E - 120;
            arg0->unk_44 = temp_s0_2 + (func_800F8940_EB2C0() * 32 >> 16) - 16;
            arg0->unk_46 = temp_s1_2 + (func_800F8940_EB2C0() * 32 >> 16) - 16;
            var_s5 = 1;
        }
    }

    return var_s5;
}

// rodata (func_800F85B4_EAF34)
extern const f64 D_800FBF20_EE8A0; // 4.0

s32 func_800F85B4_EAF34(unkObjectStruct* arg0) {
    unkStructSize0x5C* temp_v0;
    f32 temp_f0;
    f32 temp_f12;
    s32 temp_f2;
    u16 var_s1;

    var_s1 = 0;
    temp_v0 = func_800F8914_EB294(arg0);

    temp_f12 = SQ(temp_v0->unk_44 - temp_v0->unk_0C) + SQ(temp_v0->unk_46 - temp_v0->unk_10);
    temp_f0 = sqrtf(temp_f12);

    if (temp_v0->unk_48 != 0) {
        temp_v0->unk_48--;
    }

    if (temp_f0 < D_800FBF20_EE8A0 || temp_v0->unk_48 == 0) {
        if (func_800F8334_EACB4(temp_v0) == 0) {
            temp_v0->unk_48 = (func_800F8940_EB2C0() & 63) + 64;
        } else {
            temp_v0->unk_48 = (func_800F8940_EB2C0() & 7) + 8;
        }
    }

    temp_f2 = func_800B0CD8(temp_v0->unk_44 - temp_v0->unk_0C, temp_v0->unk_46 - temp_v0->unk_10);

    temp_v0->unk_3E = temp_f2 + 180;
    if (temp_v0->unk_3E < 0) {
        temp_v0->unk_3E += 360;
    }

    if ((func_800F8940_EB2C0() & 0xFF) < D_800F32B0[temp_v0->unk_40].unk_01 * 8 + 56) {
        var_s1 |= 0x8000;
    }

    return var_s1;
}
