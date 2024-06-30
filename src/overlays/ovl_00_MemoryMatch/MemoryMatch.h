#include "common.h"

#define NUM_OF_TILES 9
extern Vec3f D_800FD7F0_MemoryMatch[NUM_OF_TILES];

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

extern s16 D_800FE158_MemoryMatch[10][2];

void func_800F6858_MemoryMatch(omObjData*);
void func_800F796C_MemoryMatch(omObjData*);
void func_800F71C4_MemoryMatch(omObjData*);
void func_800F68CC_MemoryMatch(s32);
void func_800F7EDC_MemoryMatch(void);
void func_800F8C38_MemoryMatch(void);
void func_800F8E38_MemoryMatch(void);
void func_800F90CC_MemoryMatch(void);
void func_800F963C_MemoryMatch(void);
void func_800FB360_MemoryMatch(void);
void func_800F7B6C_MemoryMatch(u16);
void func_800F7C08_MemoryMatch(void);
void func_800F7D74_MemoryMatch(void);
void func_800F8FEC_MemoryMatch(void);
void func_800F9178_MemoryMatch(void);
void func_800F7350_MemoryMatch(void);
void func_800F73A4_MemoryMatch(void);
void func_800F7874_MemoryMatch(omObjData*);
void func_800F7E20_MemoryMatch(void);
void func_800F8F58_MemoryMatch(void);
u16 func_800F901C_MemoryMatch(void);
s16 func_800F9BC8_MemoryMatch(omObjData*);
void func_800F830C_MemoryMatch(void);
void func_800F94E0_MemoryMatch(void);
void func_800F89A8_MemoryMatch(void);
void func_800FADDC_MemoryMatch(omObjData*);
void func_800FAD94_MemoryMatch(omObjData* arg0, s16 arg1);

extern u32 D_800FD7E0_MemoryMatch;
extern u16 D_800FD7E2_MemoryMatch;
extern s32 D_800FD8D0_MemoryMatch;
extern s32 D_800FD8DC_MemoryMatch;
extern s32 D_800FD8EC_MemoryMatch;
extern omObjData* D_800FDDDC_MemoryMatch;
extern Matrix4f D_800FDDE8_MemoryMatch;
extern f32 D_800FDE28_MemoryMatch;
extern s16 D_800FDE2C_MemoryMatch;
extern s16 D_800FE180_MemoryMatch;
extern s16 D_800FE2C0_MemoryMatch;
extern u16 D_800FE2C2_MemoryMatch;
extern u16 D_800FE2C4_MemoryMatch;
extern u16 D_800F5144;

extern Vec3f D_800FDDC0_MemoryMatch;
extern Vec3f D_800FDDCC_MemoryMatch;

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

u16 func_800F8DF4_MemoryMatch(u32);
extern unk_MemoryMatch_01 D_800FDE30_MemoryMatch;
extern unk_MemoryMatch_00 D_800FE318_MemoryMatch[0x10];

extern tikiThing D_800FDE50_MemoryMatch[8]; //related hitbox of tikis

extern Vec3f D_800FD7E4_MemoryMatch;
extern omObjData* D_800FE2E8_MemoryMatch[9];