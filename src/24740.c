#include "common.h"
#include "24740.h"

INCLUDE_ASM(s32, "24740", func_80023B40);

s32 LoadFormBinary(u8* arg0, u32 arg1) {
    unk2C0C0StructC0* temp_v0;
    unk_ovl_2D_struct* temp_s0;
    s16 i;
    s16 j;

    for (i = 0; i < 128; i++) {
        if (D_800F2B7C[i].unk_6C == NULL) {
            break;
        }
    }

    if (i == 128) {
        osSyncPrintf(D_800CA8C4);
        return -1;
    }

    D_800F502C = i * 2 + 10000;
    D_800EE32E = i * 2 + 10001;

    temp_s0 = &D_800F2B7C[i];
    temp_v0 = temp_s0->unk_6C = HuMemAlloc(sizeof(unk2C0C0StructC0));
    temp_v0->unk_68 = D_800F502C;

    if (arg0[0] == 77 && arg0[1] == 84 && arg0[2] == 78 && arg0[3] == 88) {
        temp_v0->unk_6E = 0;
        temp_v0->unk_A4 = NULL;
        temp_v0->unk_60 = NULL;
        temp_s0->unk_08 = func_800342BC(arg0);

        arg1 &= ~0x11;
        if (temp_v0->unk_6E == 0) {
            arg1 |= 4;
        }
    } else {
        func_8001AC00(temp_v0, arg0, arg1);

        if (temp_v0->unk_60 != NULL) {
            func_80023AF0(temp_v0->unk_78, D_800EE32E);
            temp_s0->unk_04 = func_80029174(i);
        } else {
            temp_s0->unk_04 = -1;
        }

        temp_v0->unk_28 = (arg1 >> 10) & 7;
        temp_s0->unk_20 = arg1;
        temp_s0->unk_08 = func_800341E8(arg0, temp_v0);

        if (temp_s0->unk_08 != -1) {
            if (temp_v0->unk_6E == 0) {
                func_8001B1D4(temp_v0);
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
        D_800F33A4(arg0);
    }

    if (arg1 & 1) {
        D_800ECB14 = temp_s0->unk_20;
        func_8002B890(temp_v0);
    }

    temp_v0->unk_66 = 1;

    if (arg1 & 0x10) {
        for (j = 0; j < temp_v0->unk_6A; j++) {
            if (temp_v0->unk_80[j].unk_14 & 0x06000000) {
                break;
            }
        }
        if (j == temp_v0->unk_6A) {
            func_800237BC(D_800F502C);
        }
    }

    temp_s0->unk_48 = temp_s0->unk_0A = temp_s0->unk_50 =
        temp_s0->unk_54 = temp_s0->unk_0E = temp_s0->unk_5C =
        temp_s0->unk_60 = temp_s0->unk_16 = temp_s0->unk_68 = 0;
    temp_s0->unk_4C.float32 = temp_s0->unk_58 = temp_s0->unk_64 = 1.0f;
    temp_s0->unk_1A = temp_s0->unk_0C = temp_s0->unk_14 = -1;
    temp_s0->unk_24 = temp_s0->unk_28 = temp_s0->unk_2C = 0.0f;
    temp_s0->unk_30 = temp_s0->unk_34 = temp_s0->unk_38 = 0.0f;
    temp_s0->unk_3C = temp_s0->unk_40 = temp_s0->unk_44 = 1.0f;
    temp_s0->unk_02 = -1;
    temp_s0->unk_00 = 0;

    func_800A2A50(temp_s0->unk7C);
    return i;
}

INCLUDE_ASM(s32, "24740", func_80023FC8);

INCLUDE_ASM(s32, "24740", func_80024198);

INCLUDE_ASM(s32, "24740", func_80024464);

INCLUDE_ASM(s32, "24740", func_800244C4);

INCLUDE_ASM(s32, "24740", func_8002451C);

INCLUDE_ASM(s32, "24740", func_8002456C);

INCLUDE_ASM(s32, "24740", func_80024754);

INCLUDE_ASM(s32, "24740", func_800247FC);

INCLUDE_ASM(s32, "24740", func_800253EC);

INCLUDE_ASM(s32, "24740", func_800255DC);

INCLUDE_ASM(s32, "24740", func_80025658);

INCLUDE_ASM(s32, "24740", func_8002578C);

INCLUDE_ASM(s32, "24740", func_80025798);

INCLUDE_ASM(s32, "24740", func_800257E4);

INCLUDE_ASM(s32, "24740", func_80025830);

INCLUDE_ASM(s32, "24740", func_8002587C);

void func_800258EC(s16 arg0, s32 arg1, s32 arg2) {
    unk_ovl_2D_struct* temp_a0 = &D_800F2B7C[arg0];

    if (temp_a0->unk_6C != NULL) {
        temp_a0->unk_20 &= ~arg1;
        temp_a0->unk_20 |= arg2;
    }
}

INCLUDE_ASM(s32, "24740", func_80025930);

INCLUDE_ASM(s32, "24740", func_800259D0);

INCLUDE_ASM(s32, "24740", func_80025A7C);

void func_80025AD4(s16 arg0) {
    func_800258EC(arg0, 1, 1);
    D_800ECB14 = D_800F2B7C[arg0].unk_20;
    func_8002C030(D_800F2B7C[arg0].unk_6C);
}

INCLUDE_ASM(s32, "24740", func_80025B34);

INCLUDE_ASM(s32, "24740", func_80025BB8);

INCLUDE_ASM(s32, "24740", func_80025C20);

INCLUDE_ASM(s32, "24740", func_80025CA8);

INCLUDE_ASM(s32, "24740", func_80025D18);

INCLUDE_ASM(s32, "24740", func_80025D40);

INCLUDE_ASM(s32, "24740", func_80025D90);

INCLUDE_ASM(s32, "24740", func_80025DD8);

s16 func_80025E48(s16 arg0) {
    return D_800F2B7C[arg0].unk_08;
}

INCLUDE_ASM(s32, "24740", func_80025E70);

INCLUDE_ASM(s32, "24740", func_80025EB4);

INCLUDE_ASM(s32, "24740", func_80025F10);

INCLUDE_ASM(s32, "24740", func_80025F38);

INCLUDE_ASM(s32, "24740", func_80025F60);

INCLUDE_ASM(s32, "24740", func_80025FC8);

INCLUDE_ASM(s32, "24740", func_80025FF0);

INCLUDE_ASM(s32, "24740", func_80026018);

INCLUDE_ASM(s32, "24740", func_80026040);

INCLUDE_ASM(s32, "24740", func_80026174);

void func_80026404(s16 arg0, s16 arg1, f32 arg2, char* arg3, s32 arg4) {
    s16 temp_s0;
    s16 temp_v0;
    unk2C0C0StructC0* temp_s2;
    unk2C0C0StructC0* temp_s3;

    temp_s3 = D_800F2B7C[arg0].unk_6C;
    temp_s2 = D_800F2B7C[arg1].unk_6C;
    temp_s0 = func_80033718(temp_s3, arg3);
    temp_v0 = func_80033718(temp_s2, arg3);

    if (temp_s0 == -1 || temp_v0 == -1) {
        return;
    }

    func_800265EC(temp_s3, temp_s2, arg2, temp_s0, temp_v0, arg4);
}

void func_800264F8(s16 arg0, s16 arg1, f32 arg2, char* arg3, char* arg4, s32 arg5) { //arg4 is char array string ptr?
    s16 temp_s0;
    s16 temp_v0;
    unk2C0C0StructC0* temp_s2;
    unk2C0C0StructC0* temp_s3;

    temp_s3 = D_800F2B7C[arg0].unk_6C;
    temp_s2 = D_800F2B7C[arg1].unk_6C;
    temp_s0 = func_80033718(temp_s3, arg3);
    temp_v0 = func_80033718(temp_s2, arg4);

    if (temp_s0 == -1 || temp_v0 == -1) {
        return;
    }

    func_800265EC(temp_s3, temp_s2, arg2, temp_s0, temp_v0, arg5);
}

void func_800265EC(unk2C0C0StructC0* arg0, unk2C0C0StructC0* arg1, f32 arg2, s16 arg3, s16 arg4, s32 arg5) {
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
        var_a2 = arg0->unk_08[D_800F37F0];
        var_t4 = arg0->unk_80[arg3].unk_0A;

        for (i = 0; i < var_t4; i++) {
            *var_a2 = *var_t0;
            var_t0++;
            var_a2++;
        }
    }

    var_t0 = &arg0->unk_04[arg0->unk_80[arg3].unk_0A];
    var_a3 = &arg1->unk_04[arg1->unk_80[arg4].unk_0A];
    var_a2 = &arg0->unk_08[D_800F37F0][arg0->unk_80[arg3].unk_0A];

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

INCLUDE_ASM(s32, "24740", func_80026A00);

INCLUDE_ASM(s32, "24740", func_80026A0C);

INCLUDE_ASM(s32, "24740", func_80026B8C);

INCLUDE_ASM(s32, "24740", func_80026C6C);

INCLUDE_ASM(s32, "24740", func_80026EA8);

INCLUDE_ASM(s32, "24740", func_80027100);

INCLUDE_ASM(s32, "24740", func_80027440);

INCLUDE_ASM(s32, "24740", func_80027AC8);

INCLUDE_ASM(s32, "24740", func_80027C1C);

INCLUDE_ASM(s32, "24740", func_80027E48);

INCLUDE_ASM(s32, "24740", func_80028180);

INCLUDE_ASM(s32, "24740", func_80028314);

INCLUDE_ASM(s32, "24740", func_80028498);

INCLUDE_ASM(s32, "24740", func_800284E4);

INCLUDE_ASM(s32, "24740", func_80028510);

INCLUDE_ASM(s32, "24740", func_8002854C);

INCLUDE_ASM(s32, "24740", func_80028558);

INCLUDE_ASM(s32, "24740", func_8002859C);

INCLUDE_ASM(s32, "24740", func_8002861C);

INCLUDE_ASM(s32, "24740", func_80028668);

INCLUDE_ASM(s32, "24740", func_80028784);

INCLUDE_ASM(s32, "24740", func_8002888C);

INCLUDE_ASM(s32, "24740", func_800288D8);

INCLUDE_ASM(s32, "24740", func_8002890C);

INCLUDE_ASM(s32, "24740", func_80028928);

INCLUDE_ASM(s32, "24740", func_800289D0);

INCLUDE_ASM(s32, "24740", func_80028A34);

INCLUDE_ASM(s32, "24740", func_80028BE0);

INCLUDE_ASM(s32, "24740", func_80028BEC);

INCLUDE_ASM(s32, "24740", func_80028C28);

INCLUDE_ASM(s32, "24740", func_80028C64);

INCLUDE_ASM(s32, "24740", func_80028E8C);

INCLUDE_ASM(s32, "24740", func_80028EA4);
