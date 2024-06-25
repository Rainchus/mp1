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

u8* func_8001C2E8_1CEE8(s32, u8*, u8*);
u8* func_8001C378_1CF78(u8*);
s16 func_8001CBD8_1D7D8(unk2C0C0StructC0*, u8*, s16);
s16 func_8001CD00_1D900(u8*);
unk2C0C0Struct70* func_80038194_38D94(unk2C0C0StructC0*, u8*);
void func_80038254(void*, unk2C0C0StructC0*, unk2C0C0Struct70*);
void func_800384FC_390FC(unk2C0C0StructC0*);
void func_80038A2C_3962C(void);
void func_80039020_39C20(void);
s32 func_8009B850_9C450(unk2C0C0Struct70*, u8*);
void func_8009B960_9C560(void*, void*);
void func_80038254_38E54(void*, unk2C0C0StructC0*, unk2C0C0Struct70*);

extern s8 D_800ED565_ED5F5;
extern unk388E0Struct80* D_800ED730_ED7C0;
extern unk388E0Struct40* D_800F3708_F3798;
extern unk2C0C0Struct70* D_800F37AC_F383C;
extern unk388E0StructC0* D_800F3F40_F3FD0;

void func_80037CE0_388E0(void) {
    s16 i;

    D_800F37AC_F383C = HuMemAlloc(128 * sizeof(unk2C0C0Struct70));
    D_800ED730_ED7C0 = HuMemAlloc(128 * sizeof(unk388E0Struct80));

    for (i = 0; i < 128; i++) {
        D_800F37AC_F383C[i].unk_20 = 0;
    }

    for (i = 0; i < 128; i++) {
        D_800ED730_ED7C0[i].unk_1C = 0;
    }

    D_800ED565_ED5F5 = 0;
    func_80038A2C_3962C();
}

void func_80037DA0_389A0(unk2C0C0StructC0* arg0) {
    unk2C0C0Struct70* var_s0;
    s16 temp_s4;
    u8* var_s1;
    u8 sp10[24];
    s16 i;

    func_800384FC_390FC(arg0);

    for (var_s1 = arg0->unk_3C; var_s1 < (u8*) arg0->unk_38;) {
        var_s1 = func_8001C2E8_1CEE8(0x424D5031, var_s1, arg0->unk_38);
        if (var_s1 == NULL) {
            break;
        }

        temp_s4 = func_8001CBD8_1D7D8(arg0, sp10, (var_s1[8] << 8) + var_s1[9]);
        for (i = 0; i < 128; i++) {
            if (D_800F37AC_F383C[i].unk_20 == temp_s4 && func_8009B850_9C450(&D_800F37AC_F383C[i], sp10) == 0) {
                break;
            }
        }

        if (i == 128) {
            for (i = 0; i < 128; i++) {
                if (D_800F37AC_F383C[i].unk_20 == 0) {
                    break;
                }
            }
            if (i == 128) {
                break;
            }
            var_s0 = &D_800F37AC_F383C[i];
            var_s0->unk_20 = temp_s4;
            func_8009B960_9C560(var_s0, sp10);
            var_s0->unk_28 = arg0;
            func_80038254_38E54(var_s1, arg0, var_s0);
        } else {
            var_s0 = &D_800F37AC_F383C[i];
            if (D_800ED565_ED5F5 & 2) {
                func_80023888_24488(var_s0->unk_24);
                var_s0->unk_28 = arg0;
                func_80038254_38E54(var_s1, arg0, var_s0);
            }
        }

        var_s1 = func_8001C378_1CF78(var_s1 + 4);
    }
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80037FA0_38BA0);

unk2C0C0Struct70* func_8003813C_38D3C(unk2C0C0StructC0* arg0, s16 arg1) {
    u8 sp10[24];

    func_8001CBD8_1D7D8(arg0, sp10, arg1);
    return func_80038194_38D94(arg0, sp10);
}


INCLUDE_ASM("asm/nonmatchings/388E0", func_80038178_38D78);

unk2C0C0Struct70* func_80038194_38D94(unk2C0C0StructC0* arg0, u8* arg1) {
    u16 temp_s2;
    u16 i;

    temp_s2 = func_8001CD00_1D900(arg1);

    for (i = 0; i < 128; i++) {
        if (D_800F37AC_F383C[i].unk_20 != 0 && D_800F37AC_F383C[i].unk_20 == temp_s2
            && func_8009B850_9C450(&D_800F37AC_F383C[i], arg1) == 0) {
            break;
        }
    }

    if (i == 128) {
        return NULL;
    }

    return &D_800F37AC_F383C[i];
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038254_38E54);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800384FC_390FC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038720_39320);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800387DC_393DC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038864_39464);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038888_39488);

INCLUDE_ASM("asm/nonmatchings/388E0", func_8003897C_3957C);

void func_80038A2C_3962C(void) {
    s16 i;

    D_800F3708_F3798 = HuMemAlloc(128 * sizeof(unk388E0Struct40));

    for (i = 0; i < 128; i++) {
        D_800F3708_F3798[i].unk_00 = -1;
    }

    func_80039020_39C20();
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038A9C_3969C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80038D5C_3995C);

void func_80039020_39C20(void) {
    s16 i;

    D_800F3F40_F3FD0 = HuMemAlloc(32 * sizeof(unk388E0StructC0));

    for (i = 0; i < 32; i++) {
        D_800F3F40_F3FD0[i].unk_0C = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039084_39C84);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039644_3A244);

INCLUDE_ASM("asm/nonmatchings/388E0", func_8003967C_3A27C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800396B0_3A2B0);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039758_3A358);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800397AC_3A3AC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039970_3A570);

INCLUDE_ASM("asm/nonmatchings/388E0", func_800399F0_3A5F0);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039A4C_3A64C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039ACC_3A6CC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039AEC_3A6EC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039BAC_3A7AC);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039C48_3A848);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039D10_3A910);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039F9C_3AB9C);

INCLUDE_ASM("asm/nonmatchings/388E0", func_80039FFC_3ABFC);
