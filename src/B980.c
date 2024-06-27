#include "common.h"

s32 func_8000B13C_BD3C(void);
extern file_1ACF0_struct D_800C18A0_C24A0;
s32 func_8000B210_BE10(void);
extern OSMesg D_800CD9C8_CDA58;
extern OSMesgQueue D_800CDA90_CDB20;
extern s8 D_800ECB2C_ECBBC;
void func_800130A4_13CA4(Addr*);
void alSeqpDelete(s32);
void alSndpDelete(s32);
extern s32 D_800C1870_C2470;
extern Addr D_800C1874_C2474;
extern s32 D_800CDAD4_CDB64;
extern s32 D_800CDAEC_CDB7C;
extern s32 D_800CEA8C_CEB1C;
extern s32 D_800CEAA0_CEB30;
extern s32 D_800CDACC_CDB5C;


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

extern FXDO_Unk* D_800CDAC8_CDB58;
extern unkB980Struct2* D_800CEA94_CEB24;
extern s32 D_800CEAA4_CEB34;
extern unkB980Struct1* D_800CEAC0_CEB50;
extern s32 D_800C1870_C2470;

typedef struct FXD0_Unk2 {
    void* FXD0_header;
    void* unk_04;
    s32 unk_08;
} FXD0_Unk2;

extern FXD0_Unk2 D_800CDAA8_CDB38;

void func_8001249C_1309C(s16, u8);
s32 func_8000AFF8_BBF8(s32, s32, s32);
s32 alHeapDBAlloc(s32, s32, FXD0_Unk2*, s32, s32);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AD80_B980);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000ADFC_B9FC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AE20_BA20);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000AE50_BA50);

s32 func_8000AFA0_BBA0(s32 arg0) {
    s32 temp_v0 = alHeapDBAlloc(0, 0, &D_800CDAA8_CDB38, 1, arg0);

    if (temp_v0 == 0) {
        func_8000AFF8_BBF8(0, 0, 1);
    }
    return temp_v0;
}

s32 func_8000AFF8_BBF8(s32 arg0, s32 arg1, s32 arg2) {
    return 0;
}

void func_8000B000_BC00(s32 arg0) {
    D_800CDACC_CDB5C = arg0;
}

s32 func_8000B00C_BC0C(s32 arg0, s32 arg1, Addr* arg2, Addr* arg3) {
    D_800C18A0_C24A0.unk_48 = arg0;
    D_800C18A0_C24A0.unk_4C = arg1;
    D_800C18A0_C24A0.unk_50 = 1;
    D_800C18A0_C24A0.unk_00 = arg2;
    D_800C18A0_C24A0.unk_04 = arg3;
    return func_8000B13C_BD3C();
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B044_BC44);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B0C0_BCC0);

s32 func_8000B13C_BD3C() {
    osCreateMesgQueue(&D_800CDA90_CDB20, &D_800CD9C8_CDA58, 50);
    D_800ECB2C_ECBBC = 0;
    if (D_800C18A0_C24A0.unk_00 != 0) {
        if (D_800C18A0_C24A0.unk_04 != 0) {
            return func_8000B210_BE10();
        }
    }
    return 1;
}

s32 func_8000B198_BD98() {
    if (D_800CDAEC_CDB7C == 0) {
        if (D_800CEAA0_CEB30 == 0) {
            if (D_800C1870_C2470 & 0x8000) {
                alSeqpDelete(D_800CDAD4_CDB64);
                alSndpDelete(D_800CEA8C_CEB1C);
                func_800130A4_13CA4(&D_800C1874_C2474);
                D_800C1870_C2470 = 0;
                return 0;
            }
        } else {
            return 1;
        }
        return 0;
    }
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B210_BE10);

Addr* func_8000B2BC_BEBC() {
    return &D_800C1874_C2474;
}

s32 func_8000B2C8_BEC8() {
    if (D_800C1870_C2470 & 0x8000) {
        return D_800CDAC8_CDB58->unk_04;
    }
    return 0;
}

s32 func_8000B2F0_BEF0() {
    return 0x610032;
}

s32 func_8000B2FC_BEFC() {
    return D_800CDAA8_CDB38.unk_08 - (D_800CDAA8_CDB38.unk_04 - D_800CDAA8_CDB38.FXD0_header);
}

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B31C_BF1C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B328_BF28);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B334_BF34);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B340_BF40);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B34C_BF4C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B358_BF58);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B364_BF64);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B3E0_BFE0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B3E8_BFE8);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B7EC_C3EC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000B844_C444);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BB30_C730);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BE6C_CA6C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BE98_CA98);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BEBC_CABC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000BEEC_CAEC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C144_CD44);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C184_CD84);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C1AC_CDAC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C1B8_CDB8);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C250_CE50);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C2D4_CED4);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C390_CF90);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C414_D014);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C4A0_D0A0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C4BC_D0BC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C544_D144);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C5C4_D1C4);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C64C_D24C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C748_D348);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000C808_D408);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000CCC0_D8C0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D600_E200);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D618_E218);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000D65C_E25C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DA04_E604);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DA7C_E67C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DB24_E724);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DC44_E844);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DCCC_E8CC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DDEC_E9EC);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DE5C_EA5C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000DF98_EB98);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E21C_EE1C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E2D0_EED0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E340_EF40);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E448_F048);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E818_F418);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000E92C_F52C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000EC14_F814);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F078_FC78);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F118_FD18);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F198_FD98);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F238_FE38);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F294_FE94);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F4E0_100E0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F780_10380);

INCLUDE_ASM("asm/nonmatchings/B980", func_8000F844_10444);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010040_10C40);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010110_10D10);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010148_10D48);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010734_11334);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001085C_1145C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800108C8_114C8);

void func_80010998_11598(s16 arg0, u8 arg1) {
    unkB980Struct1* temp_s1;
    s16 var_v0;
    s16 temp_a0;

    temp_s1 = &D_800CEAC0_CEB50[arg0];
    var_v0 = temp_s1->unk_1A;

    while (var_v0 > 0) {
        var_v0--;
        temp_a0 = temp_s1->unk_14[var_v0];
        if (D_800CEAC0_CEB50[temp_a0].unk_0A == arg0) {
            func_8001249C_1309C(temp_a0, arg1);
        }
    }
}

INCLUDE_ASM("asm/nonmatchings/B980", func_80010A68_11668);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010B38_11738);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C08_11808);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C30_11830);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C4C_1184C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010C78_11878);

INCLUDE_ASM("asm/nonmatchings/B980", func_80010ED4_11AD4);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011164_11D64);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001136C_11F6C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800113C4_11FC4);

INCLUDE_ASM("asm/nonmatchings/B980", func_800114A4_120A4);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011530_12130);

INCLUDE_ASM("asm/nonmatchings/B980", func_800115BC_121BC);

INCLUDE_ASM("asm/nonmatchings/B980", func_800115C8_121C8);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011634_12234);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001165C_1225C);

INCLUDE_ASM("asm/nonmatchings/B980", func_800117AC_123AC);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011A30_12630);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011A80_12680);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011B2C_1272C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011C04_12804);

INCLUDE_ASM("asm/nonmatchings/B980", func_80011D48_12948);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012140_12D40);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012260_12E60);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012394_12F94);

INCLUDE_ASM("asm/nonmatchings/B980", func_800123DC_12FDC);

void func_8001249C_1309C(s16 arg0, u8 arg1) {
    unkB980Struct2* temp_s0 = &D_800CEA94_CEB24[arg0];
    u8 var_s1 = arg1;

    if (temp_s0->unk_0C != 1) {
        return;
    }

    D_800CEAA4_CEB34 |= 0x10;

    if (var_s1 > 127) {
        var_s1 = 127;
    }

    if (!(temp_s0->unk_08 & 0x1000)) {
        temp_s0->unk_08 |= 4;
        if (temp_s0->unk_29 == 2) {
            func_80010998_11598(arg0, var_s1);
        }
    }

    temp_s0->unk_25 = var_s1;
    D_800CEAA4_CEB34 &= ~0x10;
}

INCLUDE_ASM("asm/nonmatchings/B980", func_80012574_13174);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012654_13254);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012738_13338);

INCLUDE_ASM("asm/nonmatchings/B980", func_800127A0_133A0);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001286C_1346C);

INCLUDE_ASM("asm/nonmatchings/B980", func_8001293C_1353C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012A18_13618);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012AF8_136F8);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B04_13704);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B10_13710);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B1C_1371C);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012B28_13728);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012C70_13870);

INCLUDE_ASM("asm/nonmatchings/B980", func_80012C7C_1387C);