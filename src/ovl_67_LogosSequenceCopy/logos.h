#include "common.h"

//typing issues all over 2BAA10.c where this header file is included
//global functions defined in this file are not typed correctly, fix later (before removing definitions from this file)

extern board_overlay_entrypoint D_800F6F50[];

typedef struct unkLogoStruct {
s16 unk0;
s16 unk2;
s32 unk4;
s16 unk8;
s16 unkA;
s16* unkC;
} unkLogoStruct;

typedef struct someStruct {
char unk_00[0x20];
} someStruct;

void func_800F6AD4_2BAED4(void);
void func_800F6E10_2BB210(void);
void osSendMesg(void*, s32, s32);
extern s32 D_800F7980;
void func_800819F0(someStruct*, s32, s32, s32, s32, void*);
void osRecvMesg(void*, s32*, s32);
extern s32 D_800F6F90;
s32 LeoDriveExist(s32, s32, s32*, s32);
s32 func_800827C0(void);
u32 osGetMemSize(void); //getMemSize
void func_800F6778_2BAB78(void);
extern s32 LeoDriveExistBool;
extern s32 D_800ECDE8;
extern s32 D_800F6F70;
void func_800639F8(void*, void*, s32);
void func_80063A5C(void*);
void func_8007FEA4(void);
void osCreateMesgQueue(void*, void*, s32);
void osDestroyThread(s32);
extern s32 D_800F7980;
extern s32 D_800F7998;

extern u8 D_800F5038[];
extern s32 D_800F6F80;