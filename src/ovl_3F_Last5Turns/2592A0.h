#include "common.h"

typedef struct unknownLast5Turns_03 {
    /* 0x00 */ Vec3f pos;
    /* 0x0C */ char unk_0C[0x34];
    /* 0x40 */ u16* unk_40;
} unknownLast5Turns_03; //sizeof 0xAC?

typedef struct unknownLast5Turns_02 {
    /* 0x00 */ Vec3f pos;
} unknownLast5Turns_02; //sizeof 0xAC?

typedef struct unknownLast5Turns_01 {
    /* 0x00 */ char unk_00[0x0C];
    /* 0x0C */ Vec3f pos;
} unknownLast5Turns_01;

typedef struct unknownLast5Turns_00 {
    /* 0x00 */ unknownLast5Turns_02* unk_00;
    /* 0x00 */ char unk_04[0x08];
    /* 0x0C */ Vec3f pos;
    /* 0x18 */ char unk_18[0x24];
    /* 0x3C */ unknownLast5Turns_03* unk_3C;
} unknownLast5Turns_00; //sizeof 0xAC?

void func_8003E694(unknownLast5Turns_00*); //should probably be global, indicating that unknownLast5Turns_00 is also probably global
unknownLast5Turns_00* func_8003DBE0(s32, unknownLast5Turns_01*);
unknownLast5Turns_00* D_800F71F4_1DA2A4;
extern Vec3f D_800F7130;
extern unknownLast5Turns_01 D_800F7154;

void func_800F6FA8_259C68(void);
void func_800F7034_259CF4(void);
void func_800F66AC_25936C(s32);
void func_800F6F5C_259C1C(Object*);
extern u8 D_800F71F0_222F30;

extern u16 D_800F5144;
void func_800F700C_259CCC(void);
void func_800F70E8_259DA8(void);
void func_800F6F10_259BD0(void);
extern s32 D_800F7110_111AC0[];
extern u8 D_800F71F0_222F30;
extern Addr D_FE2310;
