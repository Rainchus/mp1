#include "common.h"

typedef struct unk_ovl_2BStruct {
/* 0x000 */ char unk_00[4];
/* 0x004 */ s16 unk_04;
/* 0x006 */ char unk_06[0x146];
/* 0x14C */ s16 unk_14C;
} unk_ovl_2BStruct; //unknown size

typedef struct unk_ovl_2BStruct2 {
/* 0x00 */ char unk_00[0x4C];
/* 0x4C */ s32 unk_4C;
/* 0x50 */ char unk_50[0x70];
} unk_ovl_2BStruct2; //unknown size

extern s16 D_800F3778; // true extern data

extern s32 D_800FB9A4_1F6164[];
extern u16 D_800FB9C4_1F6184[];
extern f32 D_800FBA30_1F61F0[];

/* BSS DATA */
extern char D_800FBA64_1F62C0;
extern s16 D_800FBB04_1F62C0[];
extern s16 D_800FBB40_1F62C0;
extern s16 D_800FBB42_1F62C0;
extern s16 D_800FBB44_1F62C0;
extern s16 D_800FBB46_1F62C0;
extern unkObjectStruct* D_800FBB48_1F62C0[];
extern s16 D_800FBB50_1F62C0[];
extern u16 D_800FBB58_1F62C0;
extern u16 D_800FBB5A_1F62C0;
extern u16 D_800FBB5C_1F62C0;
extern u16 D_800FBB5E_1F62C0;
extern s16 D_800FBB60_1F62C0;
extern f32 D_800FBB64_1F62C0;
extern f32 D_800FBB68_1F62C0;
extern s16 D_800FBB6C_1F62C0;
extern Vec3f D_800FBB70_1F62C0;
extern u16 D_800FBB78_1F62C0[];
extern u16 D_800FBB7C_1F62C0;
extern Vec3f D_800FBB80_1F62C0;
extern s16 D_800FBB8C_1F62C0;
extern s16 D_800FBB98_1F62C0;
extern Vec3f D_800FBB9C_1F62C0[];

void func_800FB5B4_1F5D74(s32);
void func_800F8194_1F2954(unkObjectStruct*, s32);
void func_800F7308_1F1AC8(void);
void func_800F73AC_1F1B6C(unkObjectStruct*, s32);
void func_800F76B8_1F1E78(unkObjectStruct*);
void func_800FA198_1F4958(void);
void func_800FA410_1F4BD0(void);
void func_800F70C4_1F1884(void);
void func_800F7014_1F17D4(void);
void func_800F704C_1F180C(unkObjectStruct*);
void func_800F71AC_1F196C(unkObjectStruct*);
void func_800F761C_1F1DDC(unkObjectStruct*);
void func_800F7650_1F1E10(unkObjectStruct*);
void func_800F7684_1F1E44(unkObjectStruct*);
void func_800F8AAC_1F326C(unkObjectStruct*);
void func_800F8AC8_1F3288(unkObjectStruct*);
void func_800F8AE4_1F32A4(unkObjectStruct*);
void func_800F8B00_1F32C0(unkObjectStruct*);
void func_800FACA8_1F5468(void);
void func_800FB884_1F6044(void);