#include "common.h"
#include "engine/mallocblock.h"

s16 func_8001B290_1BE90(unk2C0C0StructC0*, u8*);
s16 func_8001B608_1C208(unk2C0C0StructC0*, s16);
void func_8001B6FC_1C2FC(unk2C0C0StructC0*);
s16 func_8001B900_1C500(unk2C0C0StructC0*);
s16 func_8001BD60_1C960(unk2C0C0StructC0*);
s16 func_8001BF64_1CB64(unk2C0C0StructC0*, u16, u8*);
u8* func_8001C2E8_1CEE8(s32, u8*, u8*);
u8* func_8001C378_1CF78(u8*);
void func_8001C3A8_1CFA8(unk2C0C0StructC0*, s16, s16, s16);
s16 func_8001CBD8_1D7D8(unk2C0C0StructC0*, u8*, s16);
void func_8001CD60_1D960(unk2C0C0StructC0*);
void func_8003394C_3454C(unk2C0C0StructC0*);
void func_80037DA0_389A0(unk2C0C0StructC0*);
unk2C0C0Struct70* func_8003813C_38D3C(unk2C0C0StructC0*, s16);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001A600_1B200);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001A750_1B350);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001A7DC_1B3DC);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001AA70_1B670);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001AAC4_1B6C4);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001AB84_1B784);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001ABA0_1B7A0);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001ABAC_1B7AC);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001ABE8_1B7E8);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001ABF4_1B7F4);

void func_8001AC00_1B800(unk2C0C0StructC0* arg0, u8* arg1, s16 arg2) {
    s32 temp_a2;
    s16 temp_s7;
    s16 temp_v0;
    s16 var_fp;
    s16 var_s6;
    s16 temp_s0;
    u8* temp_s5;
    u8* var_s3;
    s8* var_a1;
    s16 i;
    s16 sp1E;

    var_a1 = (s8*) arg1;
    if (var_a1[0] != 70 || var_a1[1] != 79) {
        osSyncPrintf("Unknown Hmf Format!\n");
    }

    arg0->unk_34 = arg1;
    arg0->unk_3C = arg1 + 12;

    arg0->unk_38 = arg0->unk_34 + (arg0->unk_34[5] << 16) + (arg0->unk_34[6] << 8) + arg0->unk_34[7] + 8;
    arg0->unk_40 = func_8001C2E8_1CEE8(0x56545831, arg0->unk_3C, arg0->unk_38);
    arg0->unk_44 = func_8001C2E8_1CEE8(0x46414331, arg0->unk_3C, arg0->unk_38);
    arg0->unk_48 = func_8001C2E8_1CEE8(0x4F424A31, arg0->unk_3C, arg0->unk_38);
    arg0->unk_4C = func_8001C2E8_1CEE8(0x4D415431, arg0->unk_3C, arg0->unk_38);
    arg0->unk_50 = func_8001C2E8_1CEE8(0x434F4C31, arg0->unk_3C, arg0->unk_38);
    arg0->unk_54 = func_8001C2E8_1CEE8(0x41545231, arg0->unk_3C, arg0->unk_38);
    arg0->unk_58 = func_8001C2E8_1CEE8(0x4D544E31, arg0->unk_3C, arg0->unk_38);
    arg0->unk_5C = func_8001C2E8_1CEE8(0x53545247, arg0->unk_3C, arg0->unk_38);
    arg0->unk_60 = func_8001C2E8_1CEE8(0x4D415031, arg0->unk_3C, arg0->unk_38);
    arg0->unk_6E = arg0->unk_70 = 0;
    arg0->unk_6A = arg0->unk_6C = 0;
    arg0->unk_04 = NULL;
    arg0->unk_00 = NULL;
    arg0->unk_D0 = NULL;
    arg0->unk_BC = NULL;
    arg0->unk_64 = 0;

    func_8001CD60_1D960(arg0);

    if (arg0->unk_40 != NULL) {
        func_8001B6FC_1C2FC(arg0);
    }

    if (arg0->unk_4C != NULL) {
        func_8001B900_1C500(arg0);
    }

    D_800ED565_ED5F5 = arg2;
    func_80037DA0_389A0(arg0);

    if (arg0->unk_54 != NULL) {
        func_8001BD60_1C960(arg0);
    }

    arg0->unk_B0 = 0;
    arg0->unk_AC = 0;
    arg0->unk_B8 = NULL;

    var_s3 = arg0->unk_48 + 8;
    temp_v0 = (var_s3[0] << 8) + var_s3[1];
    arg0->unk_84 = 0;
    arg0->unk_A0 = (unk2C0C0Struct50*) -1;

    if (temp_v0 == 0) {
        arg0->unk_70 = 0;
        arg0->unk_6A = 0;
        return;
    }

    arg0->unk_80 = func_80023684_24284(temp_v0 * sizeof(unk2C0C0Struct30), D_800EE32E_EE3BE);
    var_s3 += 4;

    for (var_fp = var_s6 = i = 0; i < temp_v0; i++) {
        switch (var_s3[2]) {
            case 58:
                sp1E = (var_s3[0] << 8) + var_s3[1];
                temp_s5 = var_s3 + 5;
                temp_s7 = (temp_s5[1] << 8) + temp_s5[2];

                arg0->unk_80[var_s6].unk_08 = func_8001CBD8_1D7D8(arg0, arg0->unk_80[var_s6].unk_18, (var_s3[3] << 8) + var_s3[4]);
                arg0->unk_80[var_s6].unk_04 = temp_s0 = (temp_s5[3] << 8) + temp_s5[4];
                arg0->unk_80[var_s6].unk_14 = 11008;
                arg0->unk_80[var_s6].unk_58 = NULL;
                arg0->unk_80[var_s6].unk_02 = -1;

                if (arg0->unk_6E != 0) {
                    func_8001C3A8_1CFA8(arg0, var_s6, temp_s7, temp_s0);
                    if (temp_s0 != 0) {
                        arg0->unk_80[var_s6].unk_30 = arg0->unk_80[var_s6].unk_34->unk_32;
                    } else {
                        arg0->unk_80[var_s6].unk_30 = 255;
                    }
                }

                temp_a2 = arg0->unk_80[var_s6].unk_14 & 0x10000;
                if (D_800ECB30_ECBC0 > 0 && sp1E >= 58 && temp_s5[53] != 0 && temp_s5[54] == 0) {
                    if (sp1E == 62) {
                        arg0->unk_80[var_s6].unk_14 = (temp_s5[55] << 24) | (temp_s5[57] << 8) | temp_s5[58] | temp_a2;
                    } else {
                        arg0->unk_80[var_s6].unk_14 = (temp_s5[55] << 24) | temp_a2;
                    }
                    arg0->unk_80[var_s6].unk_06 = temp_s5[56];
                }

                var_s6++;
                break;
            case 16:
                func_8001B290_1BE90(arg0, var_s3 + 5);
                break;
            case 61:
                if (var_fp == 0) {
                    arg0->unk_A0 = func_80023684_24284(temp_v0 * sizeof(unk2C0C0Struct50), D_800EE32E_EE3BE);
                }
                func_8001BF64_1CB64(arg0, var_fp, var_s3 + 5);
                var_fp++;
                break;
        }

        var_s3 += (var_s3[0] << 8) + var_s3[1] + 2;
    }

    arg0->unk_6A = var_s6;
    arg0->unk_70 = var_fp;

    func_8003394C_3454C(arg0);
}

void func_8001B1D4_1BDD4(unk2C0C0StructC0* arg0) {
    s16 i;

    if (arg0->unk_A0 != (unk2C0C0Struct50*) -1) {
        for (i = 0; i < arg0->unk_70; i++) {
            func_80023728_24328(arg0->unk_A0[i].unk_04);
        }
        func_80023728_24328(arg0->unk_A0);
    } else if (arg0->unk_84 != 0) {
        func_80023728_24328(arg0->unk_88);
    }

    func_80023728_24328(arg0->unk_80);
}

s16 func_8001B290_1BE90(unk2C0C0StructC0* arg0, u8* arg1) {
    s16 temp_s0;
    s16 temp_s4;
    u8* var_s1;
    s16 i;

    temp_s0 = (arg1[0] << 8) + arg1[1];

    for (var_s1 = arg0->unk_3C; var_s1 < arg0->unk_38;) {
        var_s1 = func_8001C2E8_1CEE8(0x534B4C31, var_s1, arg0->unk_38);
        if (var_s1 == NULL) {
            return 0;
        }
        if ((var_s1[8] << 8) + var_s1[9] == temp_s0) {
            break;
        }
        var_s1 = func_8001C378_1CF78(var_s1 + 4);
    }

    arg0->unk_84 = temp_s4 = *(var_s1 + 10);
    arg0->unk_88 = func_80023684_24284(temp_s4 * sizeof(unk2C0C0Struct40), D_800EE32E_EE3BE);
    var_s1 += 11;

    for (i = 0; i < temp_s4; i++) {
        unk2C0C0Struct40* temp_s0_2 = &arg0->unk_88[i];
        union { s32 s; f32 f; } temp_v0;

        temp_s0_2->unk_00 = func_8001B608_1C208(arg0, (var_s1[1] << 8) + var_s1[2]);
        temp_s0_2->unk_48 = arg0;
        var_s1 += var_s1[0] * 2 + 1;

        temp_v0.s = (var_s1[0] << 24) + (var_s1[1] << 16) + (var_s1[2] << 8) + var_s1[3];
        temp_s0_2->unk_08.x = temp_v0.f;
        temp_v0.s = (var_s1[4] << 24) + (var_s1[5] << 16) + (var_s1[6] << 8) + var_s1[7];
        temp_s0_2->unk_08.y = temp_v0.f;
        temp_v0.s = (var_s1[8] << 24) + (var_s1[9] << 16) + (var_s1[10] << 8) + var_s1[11];
        temp_s0_2->unk_08.z = temp_v0.f;
        var_s1 += 12;

        temp_v0.s = (var_s1[0] << 24) + (var_s1[1] << 16) + (var_s1[2] << 8) + var_s1[3];
        temp_s0_2->unk_14.x = temp_v0.f;
        temp_v0.s = (var_s1[4] << 24) + (var_s1[5] << 16) + (var_s1[6] << 8) + var_s1[7];
        temp_s0_2->unk_14.y = temp_v0.f;
        temp_v0.s = (var_s1[8] << 24) + (var_s1[9] << 16) + (var_s1[10] << 8) + var_s1[11];
        temp_s0_2->unk_14.z = temp_v0.f;
        var_s1 += 12;

        temp_v0.s = (var_s1[0] << 24) + (var_s1[1] << 16) + (var_s1[2] << 8) + var_s1[3];
        temp_s0_2->unk_20.x = temp_v0.f;
        temp_v0.s = (var_s1[4] << 24) + (var_s1[5] << 16) + (var_s1[6] << 8) + var_s1[7];
        temp_s0_2->unk_20.y = temp_v0.f;
        temp_v0.s = (var_s1[8] << 24) + (var_s1[9] << 16) + (var_s1[10] << 8) + var_s1[11];
        temp_s0_2->unk_20.z = temp_v0.f;
        var_s1 += 24;

        temp_s0_2->unk_02 = (var_s1[0] << 8) + var_s1[1];
        temp_s0_2->unk_04 = (var_s1[2] << 8) + var_s1[3];
        temp_s0_2->unk_2C = temp_s0_2->unk_08;
        temp_s0_2->unk_38 = temp_s0_2->unk_14;
        temp_s0_2->unk_44 = temp_s0_2->unk_45 = 0;

        var_s1 += 5;
    }

    return temp_s4;
}

s16 func_8001B608_1C208(unk2C0C0StructC0* arg0, s16 arg1) {
    s16 temp_v1;
    s16 var_t0;
    s16 var_a3;
    u8* temp_v0;
    u8* var_a2;
    s16 i;

    temp_v0 = arg0->unk_48;
    temp_v1 = (temp_v0[8] << 8) + temp_v0[9];
    var_a2 = temp_v0 + 12;

    for (var_a3 = var_t0 = i = 0; i < temp_v1; i++) {
        switch (var_a2[2]) {
            case 58:
                if (arg1 == (var_a2[3] << 8) + var_a2[4]) {
                    return var_t0;
                }
                var_t0++;
                break;
            case 61:
                if (arg1 == (var_a2[3] << 8) + var_a2[4]) {
                    return var_a3 | 0x8000;
                }
                var_a3++;
                break;
        }

        var_a2 += (var_a2[0] << 8) + var_a2[1] + 2;
    }

    return -1;
}

void func_8001B6FC_1C2FC(unk2C0C0StructC0* arg0) {
    union { s32 s; f32 f; } temp_a1;
    s16 temp_v0;
    s16* var_s2;
    u8* var_a0;
    u8* var_s1;
    s16 i;

    var_s1 = arg0->unk_40;
    arg0->unk_6E = temp_v0 = (var_s1[8] << 8) + var_s1[9];

    if (temp_v0 == 0) {
        return;
    }

    arg0->unk_78 = func_80023684_24284(temp_v0 * sizeof(unk2C0C0StructA0), D_800F502C_F50BC);
    var_s2 = (s16*) arg0->unk_78;

    arg0->unk_7C = func_80023684_24284(temp_v0 * sizeof(Color_RGB8), D_800F502C_F50BC);
    var_a0 = (u8*) arg0->unk_7C;

    temp_a1.s = (var_s1[12] << 24) + (var_s1[13] << 16) + (var_s1[14] << 8) + var_s1[15];
    var_s1 += 16;

    for (i = 0; i < temp_v0; i++) {
        *var_s2 = (s16) ((var_s1[0] << 8) + var_s1[1]) * temp_a1.f;
        var_s2++;
        var_s1 += 2;

        *var_s2 = (s16) ((var_s1[0] << 8) + var_s1[1]) * temp_a1.f;
        var_s2++;
        var_s1 += 2;

        *var_s2 = (s16) ((var_s1[0] << 8) + var_s1[1]) * temp_a1.f;
        var_s2++;
        var_s1 += 2;

        *var_a0 = *var_s1;
        var_s1++;
        var_a0++;

        *var_a0 = *var_s1;
        var_s1++;
        var_a0++;

        *var_a0 = *var_s1;
        var_s1++;
        var_a0++;
    }
}

s16 func_8001B900_1C500(unk2C0C0StructC0* arg0) {
    s16 temp_v0;
    u8 var_v0;
    u8* temp_a0;
    u8* temp_v0_2;
    u8* var_a2;
    s16 i;

    temp_v0_2 = arg0->unk_4C;
    temp_v0 = (temp_v0_2[8] << 8) + temp_v0_2[9];

    if (temp_v0 == 0) {
        arg0->unk_4C = NULL;
        return 0;
    }

    arg0->unk_76 = temp_v0;
    arg0->unk_A8 = func_80023684_24284(temp_v0 * sizeof(unk2C0C0Struct90), D_800EE32E_EE3BE);
    var_a2 = arg0->unk_4C + 0xA;

    for (i = 0; i < temp_v0; i++) {
        unk2C0C0Struct90* temp_a1 = &arg0->unk_A8[i];

        temp_a1->unk_00 = i;
        temp_a1->unk_0C = 0;
        temp_a0 = ((var_a2[0] << 8) + var_a2[1]) * 4 + 0xA + arg0->unk_50;

        temp_a1->unk_01 = (255.0f < temp_a0[0]) ? 255.0f : temp_a0[0];
        temp_a1->unk_02 = (255.0f < temp_a0[1]) ? 255.0f : temp_a0[1];
        temp_a1->unk_03 = (255.0f < temp_a0[2]) ? 255.0f : temp_a0[2];

        temp_a1->unk_04 = temp_a0[3];
        temp_a0 = ((var_a2[2] << 8) + var_a2[3]) * 4 + 0xA + arg0->unk_50;

        temp_a1->unk_05.r = (255.0f < temp_a0[0]) ? 255.0f : temp_a0[0];
        temp_a1->unk_05.g = (255.0f < temp_a0[1]) ? 255.0f : temp_a0[1];
        temp_a1->unk_05.b = (255.0f < temp_a0[2]) ? 255.0f : temp_a0[2];

        temp_a1->unk_08 = temp_a0[3];
        if (temp_a1->unk_08 != 255) {
            temp_a1->unk_0C |= 1;
            temp_a1->unk_0D = 255 - temp_a1->unk_08;
        } else {
            temp_a1->unk_0D = 255;
        }

        temp_a0 = ((var_a2[4] << 8) + var_a2[5]) * 4 + 0xA + arg0->unk_50;
        temp_a1->unk_09 = temp_a0[0];
        temp_a1->unk_0A = temp_a0[1];
        temp_a1->unk_0B = temp_a0[2];

        var_a2 += 12;
    }

    return temp_v0;
}

s16 func_8001BD60_1C960(unk2C0C0StructC0* arg0) {
    s32 var_v0;
    s16 temp_s0;
    u8* temp_v0;
    u8* temp_v1;
    u8* var_s1;
    void* sp14;
    s16 i;

    temp_v0 = arg0->unk_54;
    temp_s0 = (temp_v0[8] << 8) + temp_v0[9];

    arg0->unk_A4 = func_80023684_24284(temp_s0 * sizeof(unk2C0C0Struct80), D_800EE32E_EE3BE);
    sp14 = func_80023668_24268(temp_s0 * 2);

    var_s1 = arg0->unk_54 + 0xA;
    arg0->unk_6C = temp_s0;

    for (i = 0; i < temp_s0; i++) {
        unk2C0C0Struct80* temp_s0_2 = &arg0->unk_A4[i];

        temp_s0_2->unk_00 = var_s1[2];
        temp_v1 = ((var_s1[3] << 8) + var_s1[4]) * 4 + 0xA + arg0->unk_50;

        if (temp_s0_2->unk_00 == 43) {
            temp_s0_2->unk_05 = temp_v1[0];
            temp_s0_2->unk_06 = temp_v1[1];
            temp_s0_2->unk_07 = temp_v1[2];
            temp_s0_2->unk_08 = temp_v1[3];
        } else {
            temp_s0_2->unk_08 = 0;
            temp_s0_2->unk_07 = 0;
            temp_s0_2->unk_06 = 0;
            temp_s0_2->unk_05 = 0;
        }

        switch (var_s1[5]) {
            case 45:
                temp_s0_2->unk_01 = 0;
                break;
            case 46:
                temp_s0_2->unk_01 = 2;
                break;
            default:
                temp_s0_2->unk_01 = 1;
                break;
        }

        switch (var_s1[6]) {
            case 45:
                temp_s0_2->unk_02 = 0;
                break;
            case 46:
                temp_s0_2->unk_02 = 2;
                break;
            default:
                temp_s0_2->unk_02 = 1;
                break;
        }

        temp_s0_2->unk_0C = func_8003813C_38D3C(arg0, (var_s1[10] << 8) + var_s1[11]);
        temp_s0_2->unk_03 = -1;
        temp_s0_2->unk_04 = -1;
        temp_s0_2->unk_09 = 255;

        var_s1 += (var_s1[0] << 8) + var_s1[1] + 2;
    }

    func_80023728_24328(sp14);
    return temp_s0;
}

s16 func_8001BF64_1CB64(unk2C0C0StructC0* arg0, u16 arg1, u8* arg2) {
    unk2C0C0Struct50* temp_s2;
    union { s32 s; f32 f; } temp_v0;
    s16 temp_s0;
    s16 i;

    temp_s2 = &arg0->unk_A0[arg1];

    temp_s0 = temp_s2->unk_00 = (arg2[0] << 8) + arg2[1];
    temp_s2->unk_04 = func_80023684_24284(temp_s0 * sizeof(s16), D_800EE32E_EE3BE);
    arg2 += 2;

    for (i = 0; i < temp_s0; i++) {
        temp_s2->unk_04[i] = func_8001B608_1C208(arg0, (arg2[0] << 8) + arg2[1]);
        arg2 += 2;
    }

    temp_s2->unk_60 = arg0;

    temp_v0.s = (arg2[0] << 24) + (arg2[1] << 16) + (arg2[2] << 8) + arg2[3];
    temp_s2->unk_08.x = temp_v0.f;
    temp_v0.s = (arg2[4] << 24) + (arg2[5] << 16) + (arg2[6] << 8) + arg2[7];
    temp_s2->unk_08.y = temp_v0.f;
    temp_v0.s = (arg2[8] << 24) + (arg2[9] << 16) + (arg2[10] << 8) + arg2[11];
    temp_s2->unk_08.z = temp_v0.f;
    arg2 += 12;

    temp_v0.s = (arg2[0] << 24) + (arg2[1] << 16) + (arg2[2] << 8) + arg2[3];
    temp_s2->unk_14.x = temp_v0.f;
    temp_v0.s = (arg2[4] << 24) + (arg2[5] << 16) + (arg2[6] << 8) + arg2[7];
    temp_s2->unk_14.y = temp_v0.f;
    temp_v0.s = (arg2[8] << 24) + (arg2[9] << 16) + (arg2[10] << 8) + arg2[11];
    temp_s2->unk_14.z = temp_v0.f;
    arg2 += 12;

    temp_v0.s = (arg2[0] << 24) + (arg2[1] << 16) + (arg2[2] << 8) + arg2[3];
    temp_s2->unk_20.x = temp_v0.f;
    temp_v0.s = (arg2[4] << 24) + (arg2[5] << 16) + (arg2[6] << 8) + arg2[7];
    temp_s2->unk_20.y = temp_v0.f;
    temp_v0.s = (arg2[8] << 24) + (arg2[9] << 16) + (arg2[10] << 8) + arg2[11];
    temp_s2->unk_20.z = temp_v0.f;
    arg2 += 12;

    temp_v0.s = (arg2[0] << 24) + (arg2[1] << 16) + (arg2[2] << 8) + arg2[3];
    temp_s2->unk_2C.x = temp_v0.f;
    temp_v0.s = (arg2[4] << 24) + (arg2[5] << 16) + (arg2[6] << 8) + arg2[7];
    temp_s2->unk_2C.y = temp_v0.f;
    temp_v0.s = (arg2[8] << 24) + (arg2[9] << 16) + (arg2[10] << 8) + arg2[11];
    temp_s2->unk_2C.z = temp_v0.f;

    temp_s2->unk_38 = temp_s2->unk_08;
    temp_s2->unk_44 = temp_s2->unk_14;
    temp_s2->unk_50 = temp_s2->unk_20;
    temp_s2->unk_5C = temp_s2->unk_5D = temp_s2->unk_5E = 0;

    return temp_s0;
}

u8* func_8001C2E8_1CEE8(s32 arg0, u8* arg1, u8* arg2) {
    while (arg1 < arg2) {
        if (arg0 == (arg1[0] << 24) + (arg1[1] << 16) + (arg1[2] << 8) + arg1[3]) {
            return arg1;
        }
        arg1 += 4;
        arg1 += (arg1[0] << 24) + (arg1[1] << 16) + (arg1[2] << 8) + arg1[3] + 4;
        arg1 += (s32) arg1 & 1;
    }

    return NULL;
}

u8* func_8001C378_1CF78(u8* arg0) {
    arg0 += (arg0[1] << 16) + (arg0[2] << 8) + arg0[3] + 4;
    arg0 += (s32) arg0 & 1;

    return arg0;
}

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001C3A8_1CFA8);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001C75C_1D35C);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001C9F4_1D5F4);

s16 func_8001CBD8_1D7D8(unk2C0C0StructC0* arg0, u8* arg1, s16 arg2) {
    s16 var_a0_2;
    s16 var_t0;
    s16 temp_v0;
    u8* var_a0;
    u8* var_a2;
    u8* var_a3;
    s16 i;

    var_a0 = arg0->unk_5C;
    var_t0 = (var_a0[8] << 8) + var_a0[9];

    if (var_t0 == 0) {
        *arg1 = 0;
        return 0;
    }

    var_a0 = var_a0 + 0xA;
    var_a3 = var_a0 + var_t0;

    for (i = 0; i < arg2; i++) {
        var_a3 += *var_a0;
        var_a0++;
    }

    temp_v0 = *var_a0;
    var_a2 = arg1;

    for (var_a0_2 = var_t0 = i = 0; i < temp_v0; i++) {
        if (var_a0_2 >= 23) {
            break;
        }

        if (*var_a3 == 47) {
            var_a2 = arg1;
            var_t0 = 0;
            var_a0_2 = 0;
            var_a3++;
        } else {
            *var_a2 = *var_a3;
            var_a3++;
            var_t0 += (var_a0_2 + 1) * *var_a2;
            var_a2++;
            var_a0_2++;
        }
    }

    *var_a2 = 0;
    return var_t0;
}

s16 func_8001CD00_1D900(u8* arg0) {
    s16 var_a3 = 0;
    s16 i;

    for (i = 1; *arg0 != 0 && i < 24; i++) {
        var_a3 += i * (*arg0);
        arg0++;
    }

    return var_a3;
}


INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001CD60_1D960);

INCLUDE_ASM("asm/nonmatchings/engine/graphics", func_8001CEB4_1DAB4);
