#include "common.h"
#include "engine/mallocblock.h"

typedef struct unk388E0Struct40 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ char unk_02[0xA];
} unk388E0Struct40; //sizeof 0xC

typedef struct unk388E0Struct80 {
    /* 0x00 */ char unk_00[0x1C];
    /* 0x1C */ s16 unk_1C;
    /* 0x1E */ char unk_1E[0xA];
} unk388E0Struct80; //sizeof 0x28

typedef struct unk388E0StructC0 {
    /* 0x00 */ char unk_00[0xC];
    /* 0x0C */ s32 unk_0C;
    /* 0x10 */ char unk_10[8];
} unk388E0StructC0; //sizeof 0x18

u8* func_8001C2E8(s32, u8*, u8*);
u8* func_8001C378(u8*);
s16 func_8001CBD8(unk2C0C0StructC0*, u8*, s16);
s16 func_8001CD00(u8*);
unk2C0C0Struct70* func_80038194(unk2C0C0StructC0*, u8*);
void func_80038254(void*, unk2C0C0StructC0*, unk2C0C0Struct70*);
void func_800384FC(unk2C0C0StructC0*);
void func_80038A2C(void);
void func_80039020(void);
s32 func_8009B850(unk2C0C0Struct70*, u8*);
void func_8009B960(void*, void*);
void func_80038254(void*, unk2C0C0StructC0*, unk2C0C0Struct70*);

extern s8 D_800ED565;
extern unk388E0Struct80* D_800ED730;
extern unk388E0Struct40* D_800F3708;
extern unk2C0C0Struct70* D_800F37AC;
extern unk388E0StructC0* D_800F3F40;

void func_80037CE0(void) {
    s16 i;

    D_800F37AC = func_80023668(128 * sizeof(unk2C0C0Struct70));
    D_800ED730 = func_80023668(128 * sizeof(unk388E0Struct80));

    for (i = 0; i < 128; i++) {
        D_800F37AC[i].unk_20 = 0;
    }

    for (i = 0; i < 128; i++) {
        D_800ED730[i].unk_1C = 0;
    }

    D_800ED565 = 0;
    func_80038A2C();
}

void func_80037DA0(unk2C0C0StructC0* arg0) {
    unk2C0C0Struct70* var_s0;
    s16 temp_s4;
    u8* var_s1;
    u8 sp10[24];
    s16 i;

    func_800384FC(arg0);

    for (var_s1 = arg0->unk_3C; var_s1 < (u8*) arg0->unk_38;) {
        var_s1 = func_8001C2E8(0x424D5031, var_s1, arg0->unk_38);
        if (var_s1 == NULL) {
            break;
        }

        temp_s4 = func_8001CBD8(arg0, sp10, (var_s1[8] << 8) + var_s1[9]);
        for (i = 0; i < 128; i++) {
            if (D_800F37AC[i].unk_20 == temp_s4 && func_8009B850(&D_800F37AC[i], sp10) == 0) {
                break;
            }
        }

        if (i == 128) {
            for (i = 0; i < 128; i++) {
                if (D_800F37AC[i].unk_20 == 0) {
                    break;
                }
            }
            if (i == 128) {
                break;
            }
            var_s0 = &D_800F37AC[i];
            var_s0->unk_20 = temp_s4;
            func_8009B960(var_s0, sp10);
            var_s0->unk_28 = arg0;
            func_80038254(var_s1, arg0, var_s0);
        } else {
            var_s0 = &D_800F37AC[i];
            if (D_800ED565 & 2) {
                func_80023888(var_s0->unk_24);
                var_s0->unk_28 = arg0;
                func_80038254(var_s1, arg0, var_s0);
            }
        }

        var_s1 = func_8001C378(var_s1 + 4);
    }
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80037FA0);

unk2C0C0Struct70* func_8003813C(unk2C0C0StructC0* arg0, s16 arg1) {
    u8 sp10[24];

    func_8001CBD8(arg0, sp10, arg1);
    return func_80038194(arg0, sp10);
}


INCLUDE_ASM("asm/nonmatchings/388E0", func_80038178);

unk2C0C0Struct70* func_80038194(unk2C0C0StructC0* arg0, u8* arg1) {
    u16 temp_s2;
    u16 i;

    temp_s2 = func_8001CD00(arg1);

    for (i = 0; i < 128; i++) {
        if (D_800F37AC[i].unk_20 != 0 && D_800F37AC[i].unk_20 == temp_s2
            && func_8009B850(&D_800F37AC[i], arg1) == 0) {
            break;
        }
    }

    if (i == 128) {
        return NULL;
    }

    return &D_800F37AC[i];
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038254);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800384FC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038720);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800387DC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038864);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038888);

INCLUDE_ASM("asm/nonmatchings/388E0", func_8003897C);

void func_80038A2C(void) {
    s16 i;

    D_800F3708 = func_80023668(128 * sizeof(unk388E0Struct40));

    for (i = 0; i < 128; i++) {
        D_800F3708[i].unk_00 = -1;
    }

    func_80039020();
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038A9C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038D5C);

void func_80039020(void) {
    s16 i;

    D_800F3F40 = func_80023668(32 * sizeof(unk388E0StructC0));

    for (i = 0; i < 32; i++) {
        D_800F3F40[i].unk_0C = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039084);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039644);

INCLUDE_ASM("asm/nonmatchings/388E0", func_8003967C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800396B0);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039758);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800397AC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039970);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800399F0);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039A4C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039ACC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039AEC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039BAC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039C48);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039D10);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039F9C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039FFC);
