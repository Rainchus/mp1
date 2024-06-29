#include "common.h"

s32 func_8000B13C(void);
extern file_1ACF0_struct D_800C18A0;
s32 func_8000B210(void);
extern OSMesg D_800CD9C8;
extern OSMesgQueue D_800CDA90;
extern s8 D_800ECB2C;
void func_800130A4(Addr*);
void alSeqpDelete(s32);
void alSndpDelete(s32);
extern s32 D_800C1870;
extern Addr D_800C1874;
extern s32 D_800CDAD4;
extern s32 D_800CDAEC;
extern s32 D_800CEA8C;
extern s32 D_800CEAA0;
extern s32 D_800CDACC;


//FXDO related
typedef struct FXDO_Unk {
/* 0x00 */ char unk_00[4];
/* 0x04 */ s32 unk_04;
} FXDO_Unk; //unk size

typedef struct unkB980Struct1 {
    /* 0x00 */ char unk_00[0xA];
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ char unk_0C[8];
    /* 0x14 */ s16 unk_14[2]; // unknown array size
    /* 0x18 */ char unk_18[2];
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ char unk_1C[0x38];
} unkB980Struct1; //sizeof 0x54

typedef struct unkB980Struct2 {
    /* 0x00 */ char unk_00[8];
    /* 0x08 */ s32 unk_08;
    /* 0x0C */ s32 unk_0C;
    /* 0x15 */ char unk_10[0x15];
    /* 0x25 */ s8 unk_25;
    /* 0x26 */ char unk_26[3];
    /* 0x29 */ s8 unk_29;
    /* 0x2A */ char unk_2A[2];
} unkB980Struct2; //sizeof 0x2C

extern FXDO_Unk* D_800CDAC8;
extern unkB980Struct2* D_800CEA94;
extern s32 D_800CEAA4;
extern unkB980Struct1* D_800CEAC0;
extern s32 D_800C1870;

typedef struct FXD0_Unk2 {
    void* FXD0_header;
    void* unk_04;
    s32 unk_08;
} FXD0_Unk2;

extern FXD0_Unk2 D_800CDAA8;

void func_8001249C(s16, u8);
s32 func_8000AFF8(s32, s32, s32);
s32 alHeapDBAlloc(s32, s32, FXD0_Unk2*, s32, s32);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AD80);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000ADFC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AE20);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AE50);

s32 func_8000AFA0(s32 arg0) {
    s32 temp_v0 = alHeapDBAlloc(0, 0, &D_800CDAA8, 1, arg0);

    if (temp_v0 == 0) {
        func_8000AFF8(0, 0, 1);
    }
    return temp_v0;
}

s32 func_8000AFF8(s32 arg0, s32 arg1, s32 arg2) {
    return 0;
}

void func_8000B000(s32 arg0) {
    D_800CDACC = arg0;
}

s32 func_8000B00C(s32 arg0, s32 arg1, Addr* arg2, Addr* arg3) {
    D_800C18A0.unk_48 = arg0;
    D_800C18A0.unk_4C = arg1;
    D_800C18A0.unk_50 = 1;
    D_800C18A0.unk_00 = arg2;
    D_800C18A0.unk_04 = arg3;
    return func_8000B13C();
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B044);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B0C0);

s32 func_8000B13C() {
    osCreateMesgQueue(&D_800CDA90, &D_800CD9C8, 50);
    D_800ECB2C = 0;
    if (D_800C18A0.unk_00 != 0) {
        if (D_800C18A0.unk_04 != 0) {
            return func_8000B210();
        }
    }
    return 1;
}

s32 func_8000B198() {
    if (D_800CDAEC == 0) {
        if (D_800CEAA0 == 0) {
            if (D_800C1870 & 0x8000) {
                alSeqpDelete(D_800CDAD4);
                alSndpDelete(D_800CEA8C);
                func_800130A4(&D_800C1874);
                D_800C1870 = 0;
                return 0;
            }
        } else {
            return 1;
        }
        return 0;
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B210);

Addr* func_8000B2BC() {
    return &D_800C1874;
}

s32 func_8000B2C8() {
    if (D_800C1870 & 0x8000) {
        return D_800CDAC8->unk_04;
    }
    return 0;
}

s32 func_8000B2F0() {
    return 0x610032;
}

s32 func_8000B2FC() {
    return D_800CDAA8.unk_08 - (D_800CDAA8.unk_04 - D_800CDAA8.FXD0_header);
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B31C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B328);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B334);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B340);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B34C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B358);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B364);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B3E0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B3E8);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B7EC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B844);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BB30);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BE6C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BE98);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BEBC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BEEC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C144);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C184);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C1AC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C1B8);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C250);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C2D4);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C390);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C414);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C4A0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C4BC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C544);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C5C4);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C64C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C748);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C808);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000CCC0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D600);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D618);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D65C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DA04);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DA7C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DB24);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DC44);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DCCC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DDEC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DE5C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DF98);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E21C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E2D0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E340);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E448);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E818);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E92C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000EC14);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F078);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F118);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F198);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F238);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F294);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F4E0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F780);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F844);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010040);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010110);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010148);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010734);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001085C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800108C8);

void func_80010998(s16 arg0, u8 arg1) {
    unkB980Struct1* temp_s1;
    s16 var_v0;
    s16 temp_a0;

    temp_s1 = &D_800CEAC0[arg0];
    var_v0 = temp_s1->unk_1A;

    while (var_v0 > 0) {
        var_v0--;
        temp_a0 = temp_s1->unk_14[var_v0];
        if (D_800CEAC0[temp_a0].unk_0A == arg0) {
            func_8001249C(temp_a0, arg1);
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/B980", func_80010A68);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010B38);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C08);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C30);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C4C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C78);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010ED4);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011164);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001136C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800113C4);

INCLUDE_ASM("asm/nonmatchings/B980", func_800114A4);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011530);

INCLUDE_ASM("asm/nonmatchings/B980", func_800115BC);

INCLUDE_ASM("asm/nonmatchings/B980", func_800115C8);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011634);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001165C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800117AC);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011A30);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011A80);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011B2C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011C04);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011D48);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012140);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012260);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012394);

INCLUDE_ASM("asm/nonmatchings/B980", func_800123DC);

void func_8001249C(s16 arg0, u8 arg1) {
    unkB980Struct2* temp_s0 = &D_800CEA94[arg0];
    u8 var_s1 = arg1;

    if (temp_s0->unk_0C != 1) {
        return;
    }

    D_800CEAA4 |= 0x10;

    if (var_s1 > 127) {
        var_s1 = 127;
    }

    if (!(temp_s0->unk_08 & 0x1000)) {
        temp_s0->unk_08 |= 4;
        if (temp_s0->unk_29 == 2) {
            func_80010998(arg0, var_s1);
        }
    }

    temp_s0->unk_25 = var_s1;
    D_800CEAA4 &= ~0x10;
}

INCLUDE_ASM("asm/nonmatchings/B980", func_80012574);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012654);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012738);

INCLUDE_ASM("asm/nonmatchings/B980", func_800127A0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001286C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001293C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012A18);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012AF8);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B04);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B10);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B1C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B28);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012C70);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012C7C);