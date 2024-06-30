#include "PR/os.h"
#include "common.h"

//typing issues all over 2BAA10.c where this header file is included
//global functions defined in this file are not typed correctly, fix later (before removing definitions from this file)

extern board_overlay_entrypoint D_800F6F50_LogosSequenceCopy[];

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

void func_800F6AD4_LogosSequenceCopy(void);
void func_800F6E10_LogosSequenceCopy(void);
void func_800819F0(someStruct*, s32, s32, s32, s32, OSMesgQueue*);

s32 LeoDriveExist(s32, s32, s32*, s32);
s32 func_800827C0(void);
void func_800F6778_LogosSequenceCopy(void);
extern s32 LeoDriveExistBool;
extern s32 D_800ECDE8;
extern s32 D_800F6F70_LogosSequenceCopy;
void func_80063A5C(void*);
void func_8007FEA4(void);


extern char D_800F5038[];
extern const char D_800F6F80_LogosSequenceCopy[];
extern OSMesgQueue D_800F7980_LogosSequenceCopy;
extern OSMesgQueue D_800F6F90_LogosSequenceCopy;
extern OSMesg D_800F7998_LogosSequenceCopy;