#include "common.h"
#include "engine/mallocblock.h"

extern const char D_800CA8C4_CB4C4[];
extern s32 D_800ECB14_ECBA4;

INCLUDE_ASM("asm/nonmatchings/24740", func_80023B40_24740);

s32 LoadFormBinary(u8* arg0, u32 arg1) {
    unk2C0C0StructC0* temp_v0;
    unk_ovl_2D_struct* temp_s0;
    s16 i;
    s16 j;

    for (i = 0; i < 128; i++) {
        if (D_800F2B7C_F2C0C[i].unk_6C == NULL) {
            break;
        }
    }

    if (i == 128) {
        osSyncPrintf(D_800CA8C4_CB4C4);
        return -1;
    }

    D_800F502C_F50BC = i * 2 + 10000;
    D_800EE32E_EE3BE = i * 2 + 10001;

    temp_s0 = &D_800F2B7C_F2C0C[i];
    temp_v0 = temp_s0->unk_6C = HuMemAlloc(sizeof(unk2C0C0StructC0));
    temp_v0->unk_68 = D_800F502C_F50BC;

    if (arg0[0] == 77 && arg0[1] == 84 && arg0[2] == 78 && arg0[3] == 88) {
        temp_v0->unk_6E = 0;
        temp_v0->unk_A4 = NULL;
        temp_v0->unk_60 = NULL;
        temp_s0->unk_08 = func_800342BC_34EBC(arg0);

        arg1 &= ~0x11;
        if (temp_v0->unk_6E == 0) {
            arg1 |= 4;
        }
    } else {
        func_8001AC00_1B800(temp_v0, arg0, arg1);

        if (temp_v0->unk_60 != NULL) {
            func_80023AF0_246F0(temp_v0->unk_78, D_800EE32E_EE3BE);
            temp_s0->unk_04 = func_80029174_29D74(i);
        } else {
            temp_s0->unk_04 = -1;
        }

        temp_v0->unk_28 = (arg1 >> 10) & 7;
        temp_s0->unk_20 = arg1;
        temp_s0->unk_08 = func_800341E8_34DE8(arg0, temp_v0);

        if (temp_s0->unk_08 != -1) {
            if (temp_v0->unk_6E == 0) {
                func_8001B1D4_1BDD4(temp_v0);
                if (temp_v0->unk_6E == 0) {
                    arg1 |= 4;
                }
            }
        } else {
            if (temp_v0->unk_6E == 0) {
                arg1 |= 4;
            }
        }
    }

    temp_s0->unk_20 = arg1;

    if (arg1 & 8) {
        D_800F33A4_F3434(arg0);
    }

    if (arg1 & 1) {
        D_800ECB14_ECBA4 = temp_s0->unk_20;
        func_8002B890_2C490(temp_v0);
    }

    temp_v0->unk_66 = 1;

    if (arg1 & 0x10) {
        for (j = 0; j < temp_v0->unk_6A; j++) {
            if (temp_v0->unk_80[j].unk_14 & 0x06000000) {
                break;
            }
        }
        if (j == temp_v0->unk_6A) {
            HuMemTempDirectFree(D_800F502C_F50BC);
        }
    }

    temp_s0->unk_48 = temp_s0->unk_0A = temp_s0->unk_50 =
        temp_s0->unk_54 = temp_s0->unk_0E = temp_s0->unk_5C =
        temp_s0->unk_60 = temp_s0->unk_16 = temp_s0->unk_68 = 0;
    temp_s0->unk_4C = temp_s0->unk_58 = temp_s0->unk_64 = 1.0f;
    temp_s0->unk_1A = temp_s0->unk_0C = temp_s0->unk_14 = -1;
    temp_s0->unk_24 = temp_s0->unk_28 = temp_s0->unk_2C = 0.0f;
    temp_s0->unk_30 = temp_s0->unk_34 = temp_s0->unk_38 = 0.0f;
    temp_s0->unk_3C = temp_s0->unk_40 = temp_s0->unk_44 = 1.0f;
    temp_s0->unk_02 = -1;
    temp_s0->unk_00 = 0;

    func_800A2A50_A3650(temp_s0->unk7C);
    return i;
}

INCLUDE_ASM("asm/nonmatchings/24740", func_80023FC8_24BC8);

INCLUDE_ASM("asm/nonmatchings/24740", func_80024198_24D98);

INCLUDE_ASM("asm/nonmatchings/24740", func_80024464_25064);

INCLUDE_ASM("asm/nonmatchings/24740", func_800244C4_250C4);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002451C_2511C);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002456C_2516C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80024754_25354);

INCLUDE_ASM("asm/nonmatchings/24740", func_800247FC_253FC);

INCLUDE_ASM("asm/nonmatchings/24740", func_800253EC_25FEC);

INCLUDE_ASM("asm/nonmatchings/24740", func_800255DC_261DC);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025658_26258);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002578C_2638C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025798_26398);

INCLUDE_ASM("asm/nonmatchings/24740", func_800257E4_263E4);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025830_26430);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002587C_2647C);

void func_800258EC_264EC(s16 arg0, s32 arg1, s32 arg2) {
    unk_ovl_2D_struct* temp_a0 = &D_800F2B7C_F2C0C[arg0];

    if (temp_a0->unk_6C != NULL) {
        temp_a0->unk_20 &= ~arg1;
        temp_a0->unk_20 |= arg2;
    }
}

INCLUDE_ASM("asm/nonmatchings/24740", func_80025930_26530);

INCLUDE_ASM("asm/nonmatchings/24740", func_800259D0_265D0);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025A7C_2667C);

void func_80025AD4_266D4(s16 arg0) {
    func_800258EC_264EC(arg0, 1, 1);
    D_800ECB14_ECBA4 = D_800F2B7C_F2C0C[arg0].unk_20;
    func_8002C030_2CC30(D_800F2B7C_F2C0C[arg0].unk_6C);
}


INCLUDE_ASM("asm/nonmatchings/24740", func_80025B34_26734);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025BB8_267B8);

void func_80025C20_26820(s16 arg0, s16 arg1, s16 arg2, s16 arg3, s16 arg4) {
    unk_ovl_2D_struct* temp_a0 = &D_800F2B7C_F2C0C[arg0];

    if (temp_a0->unk_0C != -1) {
        temp_a0->unk_08 = temp_a0->unk_0C;
        temp_a0->unk_48 = temp_a0->unk_54;
        temp_a0->unk_0A = temp_a0->unk_0E;
        temp_a0->unk_50 = temp_a0->unk_5C;
    }

    temp_a0->unk_0C = arg1;
    temp_a0->unk_54 = arg2;
    temp_a0->unk_12 = 0;
    temp_a0->unk_10 = arg3;
    temp_a0->unk_0E = arg4;
    temp_a0->unk_5C = 0.0f;
}

INCLUDE_ASM("asm/nonmatchings/24740", func_80025CA8_268A8);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025D18_26918);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025D40_26940);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025D90_26990);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025DD8_269D8);

s16 func_80025E48_26A48(s16 arg0) {
    return D_800F2B7C_F2C0C[arg0].unk_08;
}

INCLUDE_ASM("asm/nonmatchings/24740", func_80025E70_26A70);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025EB4_26AB4);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025F10_26B10);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025F38_26B38);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025F60_26B60);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025FC8_26BC8);

INCLUDE_ASM("asm/nonmatchings/24740", func_80025FF0_26BF0);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026018_26C18);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026040_26C40);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026174_26D74);

void func_80026404_27004(s16 arg0, s16 arg1, f32 arg2, char* arg3, s32 arg4) {
    s16 temp_s0;
    s16 temp_v0;
    unk2C0C0StructC0* temp_s2;
    unk2C0C0StructC0* temp_s3;

    temp_s3 = D_800F2B7C_F2C0C[arg0].unk_6C;
    temp_s2 = D_800F2B7C_F2C0C[arg1].unk_6C;
    temp_s0 = func_80033718_34318(temp_s3, arg3);
    temp_v0 = func_80033718_34318(temp_s2, arg3);

    if (temp_s0 == -1 || temp_v0 == -1) {
        return;
    }

    func_800265EC_271EC(temp_s3, temp_s2, arg2, temp_s0, temp_v0, arg4);
}

void func_800264F8_270F8(s16 arg0, s16 arg1, f32 arg2, char* arg3, char* arg4, s32 arg5) { //arg4 is char array string ptr?
    s16 temp_s0;
    s16 temp_v0;
    unk2C0C0StructC0* temp_s2;
    unk2C0C0StructC0* temp_s3;

    temp_s3 = D_800F2B7C_F2C0C[arg0].unk_6C;
    temp_s2 = D_800F2B7C_F2C0C[arg1].unk_6C;
    temp_s0 = func_80033718_34318(temp_s3, arg3);
    temp_v0 = func_80033718_34318(temp_s2, arg4);

    if (temp_s0 == -1 || temp_v0 == -1) {
        return;
    }

    func_800265EC_271EC(temp_s3, temp_s2, arg2, temp_s0, temp_v0, arg5);
}

void func_800265EC_271EC(unk2C0C0StructC0* arg0, unk2C0C0StructC0* arg1, f32 arg2, s16 arg3, s16 arg4, s32 arg5) {
    unk2C0C0StructE0* var_a2;
    unk2C0C0StructE0* var_a3;
    unk2C0C0StructE0* var_t0;
    s16 temp_v1;
    s16 temp_t3;
    s16 var_t4;
    s16 i;

    var_t4 = 0;

    if (arg5 != 0) {
        var_t0 = arg0->unk_04;
        var_a2 = arg0->unk_08[D_800F37F0_F3880];
        var_t4 = arg0->unk_80[arg3].unk_0A;

        for (i = 0; i < var_t4; i++) {
            *var_a2 = *var_t0;
            var_t0++;
            var_a2++;
        }
    }

    var_t0 = &arg0->unk_04[arg0->unk_80[arg3].unk_0A];
    var_a3 = &arg1->unk_04[arg1->unk_80[arg4].unk_0A];
    var_a2 = &arg0->unk_08[D_800F37F0_F3880][arg0->unk_80[arg3].unk_0A];

    temp_t3 = arg0->unk_80[arg3].unk_0C;
    for (i = 0; i < temp_t3; i++) {
        *var_a2 = *var_t0;
        if (var_t0->unk_00 != var_a3->unk_00 || var_t0->unk_02 != var_a3->unk_02 || var_t0->unk_04 != var_a3->unk_04) {
            var_a2->unk_00 = var_t0->unk_00 * arg2 + var_a3->unk_00 * (1.0f - arg2);
            var_a2->unk_02 = var_t0->unk_02 * arg2 + var_a3->unk_02 * (1.0f - arg2);
            var_a2->unk_04 = var_t0->unk_04 * arg2 + var_a3->unk_04 * (1.0f - arg2);
            var_a2->unk_0C.r = (s32) ((s8) var_t0->unk_0C.r * arg2 + (s8) var_a3->unk_0C.r * (1.0f - arg2));
            var_a2->unk_0C.g = (s32) ((s8) var_t0->unk_0C.g * arg2 + (s8) var_a3->unk_0C.g * (1.0f - arg2));
            var_a2->unk_0C.b = (s32) ((s8) var_t0->unk_0C.b * arg2 + (s8) var_a3->unk_0C.b * (1.0f - arg2));
        }
        var_t0++;
        var_a3++;
        var_a2++;
    }

    if (arg5 != 0) {
        temp_v1 = var_t4 + temp_t3;
        temp_t3 = arg0->unk_72;
        for (i = temp_v1; i < temp_t3; i++) {
            *var_a2 = *var_t0;
            var_t0++;
            var_a2++;
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/24740", func_80026A00_27600);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026A0C_2760C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026B8C_2778C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026C6C_2786C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80026EA8_27AA8);

INCLUDE_ASM("asm/nonmatchings/24740", func_80027100_27D00);

INCLUDE_ASM("asm/nonmatchings/24740", func_80027440_28040);

INCLUDE_ASM("asm/nonmatchings/24740", func_80027AC8_286C8);

INCLUDE_ASM("asm/nonmatchings/24740", func_80027C1C_2881C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80027E48_28A48);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028180_28D80);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028314_28F14);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028498_29098);

INCLUDE_ASM("asm/nonmatchings/24740", func_800284E4_290E4);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028510_29110);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002854C_2914C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028558_29158);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002859C_2919C);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002861C_2921C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028668_29268);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028784_29384);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002888C_2948C);

INCLUDE_ASM("asm/nonmatchings/24740", func_800288D8_294D8);

INCLUDE_ASM("asm/nonmatchings/24740", func_8002890C_2950C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028928_29528);

INCLUDE_ASM("asm/nonmatchings/24740", func_800289D0_295D0);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028A34_29634);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028BE0_297E0);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028BEC_297EC);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028C28_29828);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028C64_29864);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028E8C_29A8C);

INCLUDE_ASM("asm/nonmatchings/24740", func_80028EA4_29AA4);

const char D_800CA810_CB410[] = "donky4_DEF";
const char D_800CA81C_CB41C[] = "wario_kao_DEF";
const char D_800CA82C_CB42C[] = "c003t000._DEF";
const char D_800CA83C_CB43C[] = "pe_lod1c_DEF";
const char D_800CA84C_CB44C[] = "luigi_kao_DEF";
const char D_800CA85C_CB45C[] = "ma_l_3a_DEF";
const char D_800CA868_CB468[] = "donky_kao_3_DEF";
const char D_800CA878_CB478[] = "wario_kao2_DEF";
const char D_800CA888_CB488[] = "c003_400b_DEF";
const char D_800CA898_CB498[] = "pe_lod1a_DEF";
const char D_800CA8A8_CB4A8[] = "luigi_lod_DEF";
const char D_800CA8B8_CB4B8[] = "ma_l_3_DEF";
const char D_800CA8C4_CB4C4[] = "Model Entry Over!\n";

const f32 D_800CA8D8_CB4D8[] = {
    1.0f, 0.8f, 1.1f, 1.3f, 0.5f, 1.2f
};
