#include "common.h"
#include "engine/mallocblock.h"

typedef struct unk34D80Struct40 {
    /* 0x00 */ char unk_00[9];
    /* 0x09 */ s8 unk_09;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ s32 unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ s32 unk_18[1]; // unknown array size
} unk34D80Struct40; //sizeof unknown

typedef struct unk34D80Struct60 {
    char unk_00[8];
    s16 unk_08;
    char unk_0A[6];
} unk34D80Struct60; //sizeof 0x10

typedef struct unk34D80Struct80 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ char unk_01;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ unk34D80Struct60** unk_04;
    /* 0x08 */ u8* unk_08;
    /* 0x0C */ s16* unk_0C;
    /* 0x10 */ s32* unk_10;
    /* 0x14 */ char unk_14[4];
} unk34D80Struct80; //sizeof 0x18

s16 func_8001B608(unk2C0C0StructC0*, s16);
u8* func_8001C2E8(s32, u8*, u8*);
u8* func_8001C378(u8*);
s16 func_800342E0(unk2C0C0StructC0*, u8*, s16);
s32 func_800344BC(unk34D80Struct80*, unk2C0C0StructC0*);
s32 func_80034974(unk34D80Struct80*, s16, u8*);
s32 func_80034C28(unk2C0C0StructC0*, s16, u8*);
s32 func_80034E04(unk34D80Struct80*, unk34D80Struct40*);

extern u16 D_800D6020;
extern u16 D_800D6022;
extern unk34D80Struct80* D_800ED554;
extern s16 D_800F0A28;

INCLUDE_ASM("asm/nonmatchings/34D80", func_80034180);

s16 func_800341E8(u8* arg0, unk2C0C0StructC0* arg1) {
    s16 i;

    for (i = 0; i < 128; i++) {
        if (D_800ED554[i].unk_02 == -1) {
            break;
        }
    }

    if (i == 128) {
        return -1;
    }

    if (func_800342E0(arg1, arg0, i) != 0) {
        if (arg1 == NULL) {
            return i;
        }
        arg1->unk_C0 = 0;
        return i;
    }

    return -1;
}

INCLUDE_ASM("asm/nonmatchings/34D80", func_800342BC);

s16 func_800342E0(unk2C0C0StructC0* arg0, u8* arg1, s16 arg2) {
    unk34D80Struct40* temp_v0;
    s32 temp_s0;
    s32* var_a1;

    var_a1 = (s32*) arg1;

    D_800F0A28 = arg2 + 10356;
    D_800ED554[arg2].unk_00 = 0;

    if (arg0 != NULL) {
        return func_800344BC(&D_800ED554[arg2], arg0) != 0;
    }

    temp_s0 = var_a1[1] + 4;
    temp_v0 = func_80023684(temp_s0, D_800F0A28);

    func_80023A38(arg1, temp_v0, temp_s0);
    func_80034E04(&D_800ED554[arg2], temp_v0);

    return 1;
}

INCLUDE_ASM("asm/nonmatchings/34D80", func_800343C8);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80034420);

s32 func_800344BC(unk34D80Struct80* arg0, unk2C0C0StructC0* arg1) {
    unk2C0C0StructB4* temp_v0;
    unk34D80Struct60* sp14;
    s16 sp1E;
    s16 sp26;
    s16 sp2E;
    s16 sp36;
    s16 var_s0;
    s16 var_s5;
    s16 var_s6;
    s16 temp_a0;
    s16 temp_s3;
    s32* sp3C;
    s16* sp44;
    u8* var_s1;
    u8* var_s2;
    s16 i;

    var_s1 = arg1->unk_3C;
    var_s0 = 0;
    sp2E = 0;

    while (TRUE) {
        var_s1 = func_8001C2E8(0x4D544E31, var_s1, arg1->unk_38);
        if (var_s1 == NULL) {
            break;
        }

        var_s0 += var_s1[10];
        sp2E++;

        var_s1 = func_8001C378(var_s1 + 4);
    }

    if (var_s0 == 0) {
        return 0;
    }

    arg0->unk_04 = func_80023684(var_s0 * sizeof(unk34D80Struct60*), D_800F0A28);
    arg0->unk_08 = func_80023684(var_s0 * sizeof(u8), D_800F0A28);
    sp44 = arg0->unk_0C = func_80023684(4096 * sizeof(s16), D_800F0A28);
    sp3C = arg0->unk_10 = func_80023684(4096 * sizeof(s32), D_800F0A28);

    D_800D6022 = 0;
    D_800D6020 = 0;
    sp36 = 0;

    var_s1 = arg1->unk_3C;
    for (var_s6 = var_s5 = sp1E = 0; sp1E < sp2E; sp1E++) {
        var_s2 = var_s1 = func_8001C2E8(0x4D544E31, var_s1, arg1->unk_38);
        sp26 = func_8001B608(arg1, (var_s2[8] << 8) + var_s2[9]);

        temp_s3 = var_s2[10];
        if (temp_s3 != 0) {
            if ((var_s2[11] << 8) + var_s2[12] > sp36) {
                sp36 = (var_s2[11] << 8) + var_s2[12];
            }

            var_s2 += 13;
            sp14 = func_80023684(temp_s3 * sizeof(unk34D80Struct60), D_800F0A28);

            for (i = 0; i < temp_s3; i++) {
                temp_a0 = var_s2[2];

                arg0->unk_08[var_s5] = temp_a0;
                arg0->unk_04[var_s5] = &sp14[i];

                switch (temp_a0) {
                    case 78:
                        if (func_80034974(arg0, var_s5, var_s2 + 2) != 0) {
                            var_s5++;
                        }
                        break;
                    case 13:
                        if (func_80034974(arg0, var_s5, var_s2 + 2) != 0) {
                            arg0->unk_04[var_s5]->unk_08 = sp26;
                            if (sp26 == -1) {
                                arg0->unk_08[var_s5] = 78;
                            }
                            var_s5++;
                        }
                        break;
                    case 8:
                        if (var_s6 == 0) {
                            arg1->unk_B8 = func_80023684(sizeof(unk2C0C0StructB8), arg1->unk_68 + 1);
                        }
                        if (func_80034C28(arg1, var_s6, var_s2 + 4) != 0) {
                            var_s6++;
                        }
                        break;
                }

                var_s2 += (var_s2[0] << 8) + var_s2[1] + 2;
            }

            var_s1 = func_8001C378(var_s1 + 4);
        }
    }

    if (var_s6 != 0) {
        arg1->unk_B8->unk_00 = var_s6;
        arg1->unk_B8->unk_08 = 0;

        for (sp1E = i = 0; i < var_s6; i++) {
            temp_v0 = &arg1->unk_B8->unk_0C[i];
            if (temp_v0->unk_06 > sp1E) {
                sp1E = temp_v0->unk_06;
            }
        }

        arg1->unk_B8->unk_04 = sp1E;
        arg1->unk_B8->unk_02 = 0;
    }

    arg0->unk_0C = func_80023684(D_800D6020 * sizeof(s16), D_800F0A28);
    func_80023A38(sp44, arg0->unk_0C, D_800D6020 * sizeof(s16));
    func_80023728(sp44);

    arg0->unk_10 = func_80023684(D_800D6022 * sizeof(s32), D_800F0A28);
    func_80023A38(sp3C, arg0->unk_10, D_800D6022 * sizeof(s32));
    func_80023728(sp3C);

    arg0->unk_02 = sp36;
    arg0->unk_00 = var_s5;

    return 1;
}

INCLUDE_ASM("asm/nonmatchings/34D80", func_80034974);

s32 func_80034C28(unk2C0C0StructC0* arg0, s16 arg1, u8* arg2) {
    unk2C0C0StructB4* temp_s3;
    s16 temp_s0;
    s16 var_a3;
    s16 i;

    temp_s3 = &arg0->unk_B8->unk_0C[arg1];

    temp_s3->unk_04 = (arg2[0] << 8) + arg2[1];
    temp_s3->unk_00 = (arg2[2] << 8) + arg2[3];

    arg0->unk_A8[temp_s3->unk_00].unk_0C |= 5;

    temp_s0 = temp_s3->unk_02 = (arg2[6] << 8) + arg2[7];
    temp_s3->unk_08 = func_80023684(temp_s0 * sizeof(u16), arg0->unk_68 + 1);
    temp_s3->unk_0C = func_80023684(temp_s0 * sizeof(s32), arg0->unk_68 + 1);

    arg2 += 8;

    for (var_a3 = i = 0; i < temp_s0; i++) {
        ((u8*) &temp_s3->unk_0C[i])[0] = arg2[0];
        ((u8*) &temp_s3->unk_0C[i])[1] = arg2[1];
        ((u8*) &temp_s3->unk_0C[i])[2] = arg2[2];
        ((u8*) &temp_s3->unk_0C[i])[3] = arg2[3];

        temp_s3->unk_08[i] = (arg2[4] << 8) + arg2[5];
        var_a3 += temp_s3->unk_08[i];

        arg2 += 6;
    }

    temp_s3->unk_08[i - 1]++;
    temp_s3->unk_06 = var_a3 + 1;

    return 1;
}

s32 func_80034E04(unk34D80Struct80* arg0, unk34D80Struct40* arg1) {
    s32* var_a1;
    s16 temp_s3;
    s16 i;

    temp_s3 = arg0->unk_00 = arg1->unk_09;
    arg0->unk_02 = arg1->unk_0A;
    arg0->unk_08 = (void*) arg1 + arg1->unk_0C;
    arg0->unk_0C = (void*) arg1 + arg1->unk_10;
    arg0->unk_10 = (void*) arg1 + arg1->unk_14;
    arg0->unk_04 = func_80023684(temp_s3 * sizeof(unk34D80Struct60*), D_800F0A28);

    var_a1 = arg1->unk_18;
    for (i = 0; i < temp_s3; i++) {
        arg0->unk_04[i] = (void*) arg1 + *var_a1;
        var_a1++;
    }

    return 1;
}

INCLUDE_ASM("asm/nonmatchings/34D80", func_80034ED8);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800354D4);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80035630);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80035824);

INCLUDE_ASM("asm/nonmatchings/34D80", func_8003589C);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800363C8);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800368AC);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036930);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800369A0);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800369FC);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036ABC);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036AC4);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036AE4);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036B00);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80036CC8);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800370D4);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80037178);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80037288);

INCLUDE_ASM("asm/nonmatchings/34D80", func_800373C0);

INCLUDE_ASM("asm/nonmatchings/34D80", func_8003796C);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80037C40);

INCLUDE_ASM("asm/nonmatchings/34D80", func_80037C90);
