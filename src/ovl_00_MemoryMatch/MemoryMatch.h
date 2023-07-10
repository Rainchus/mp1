#include "common.h"

#define NUM_OF_TILES 9
extern Vec3f D_800FD7F0[NUM_OF_TILES];

// typedef struct unk_801DEC9C {
// /* 0x00 */ u16 unk_00;
// /* 0x02 */ u16 unk_02;
// /* 0x04 */ u16 unk_04;
// /* 0x06 */ u16 unk_06;
// /* 0x08 */ u16 unk_08;
// /* 0x0A */ u16 unk_0A;
// /* 0x0C */ s32 unk_0C;
// /* 0x10 */ s32 unk_10;
// /* 0x14 */ void* unk_14;
// /* 0x18 */ f32 unk_18;
// /* 0x1C */ f32 unk_1C;
// /* 0x20 */ f32 unk_20;
// /* 0x24 */ char unk_24[0x0C];
// /* 0x30 */ f32 unk_30;
// /* 0x34 */ f32 unk_34;
// /* 0x38 */ f32 unk_38;
// /* 0x3C */ s32 unk_3C;
// /* 0x40 */ s32 unk_40;
// /* 0x44 */ s32 unk_44;
// /* 0x48 */ s32 unk_48;
// /* 0x4C */ u8 unk_4C;
// /* 0x4D */ u8 unk_4D;
// /* 0x4E */ u8 unk_4E;
// /* 0x4F */ u8 unk_4F;
// /* 0x50 */ void* unk_50;
// } unk_801DEC9C; //sizeof 0x54

typedef struct unkStruct {
    s16 unk0;
    s16 unk2;
} unkStruct;

extern s16 D_800FE158[10][2];

void func_800F6858_CDCC8(unkObjectStruct*);
void func_800F796C_CEDDC(unkObjectStruct*);
void func_800F71C4_CE634(unkObjectStruct*);
void func_800F68CC_CDD3C(s32);
void func_800F7EDC_CF34C(void);
void func_800F8C38_D00A8(void);
void func_800F8E38_D02A8(void);
void func_800F90CC_D053C(void);
void func_800F963C_D0AAC(void);
void func_800FB360_D27D0(void);
void func_800F7B6C_CEFDC(u16);
void func_800F7C08_CF078(void);
void func_800F7D74_CF1E4(void);
void func_800F8FEC_D045C(void);
void func_800F9178_D05E8(void);
void func_800F7350_CE7C0(void);
void func_800F73A4_CE814(void);
void func_800F7874_CECE4(unkObjectStruct*);
void func_800F7E20_CF290(void);
void func_800F8F58_D03C8(void);
u16 func_800F901C_D048C(void);
s16 func_800F9BC8_D1038(unkObjectStruct*);
void func_800F830C_CF77C(void);
void func_800F94E0_D0950(void);
void func_800F89A8_CFE18(void);

extern u32 D_800FD7E0;
extern u16 D_800FD7E2;
extern s32 D_800FD8D0;
extern s32 D_800FD8DC;
extern s32 D_800FD8EC;
extern s32 D_800FDDDC;
extern f32 D_800FDDE8;
extern f32 D_800FDE28;
extern s16 D_800FDE2C;
extern s16 D_800FE180;
extern s16 D_800FE2C0;
extern u16 D_800FE2C2;
extern u16 D_800FE2C4;
extern u16 D_800F5144;

extern unkObjectStruct* D_800F3FB0;
extern Vec3f D_800FDDC0;
extern Vec3f D_800FDDCC;

typedef struct tikiThing {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ f32 unk_04;
/* 0x08 */ s32 unk_08;
/* 0x0C */ f32 unk_0C;
/* 0x10 */ f32 unk_10;
/* 0x14 */ f32 unk_14;
} tikiThing;

typedef struct unk_MemoryMatch_00 {
/* 0x00 */ s16 unk_00;
/* 0x02 */ s16 unk_02;
/* 0x04 */ s16 unk_04;
/* 0x06 */ s16 unk_06;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s32 unk_0C;
/* 0x10 */ s16 unk_10;
/* 0x12 */ s16 unk_12;
/* 0x14 */ s16 unk_14;
/* 0x16 */ s16 unk_16;
/* 0x18 */ s16 unk_18;
/* 0x1A */ s16 unk_1A;
/* 0x1C */ s16 unk_1C;
/* 0x1E */ s16 unk_1E;
} unk_MemoryMatch_00;

typedef struct unk_MemoryMatch_01 {
/* 0x00 */ u16 unk_00;
/* 0x02 */ u16 unk_02;
/* 0x04 */ u16 unk_04;
/* 0x06 */ u16 unk_06;
/* 0x08 */ u16 unk_08;
/* 0x0A */ u16 unk_0A;
} unk_MemoryMatch_01;

u16 func_800F8DF4_D0264(u32);
extern unk_MemoryMatch_01 D_800FDE30;
extern unk_MemoryMatch_00 D_800FE318[0x10];

extern tikiThing D_800FDE50[8]; //related hitbox of tikis

extern Vec3f D_800FD7E4;
extern unkObjectStruct* D_800FE2E8;
extern unkObjectStruct* D_800FE2EC;
extern unkObjectStruct* D_800FE2F0;
extern unkObjectStruct* D_800FE2F4;

//likely rodata
extern f64 D_800FD900;
extern f64 D_800FDA58_D4EC8;
extern f64 D_800FDA60_D4ED0;
extern f64 D_800FDA68_D4ED8;
extern f64 D_800FDA70_D4EE0;