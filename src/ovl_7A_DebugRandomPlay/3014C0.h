#include "common.h"

typedef struct unkStruct {
s16 unk0;
u16 unk2;
s16 unk4;
s16 unk6;
} unkStruct;

typedef struct unkStruct2 {
    u32 unk_00;
    void* ramAddr;
    u16 unk_08;
    u16 unk_0A;
    s32 unk_0C;
} unkStruct2;

void func_800F7360_302240(u8);
extern unkStruct2 D_800F7DB0[];

extern unkStruct2 D_800F7DB8[];
extern s8 D_800F8F78;
extern u8 D_800F8FB8;  //random minigame id
extern s16 D_800F8FBC;
extern char D_800F8FC0[];

void func_800F750C_3023EC(void);
extern s32 D_800F8F6C; //"RANDOM PLAY" ascii text
extern s16 D_800F8FBA;
extern Process* D_800F91C8;
extern s16 D_800F3778;
void func_800F69FC_3018DC(Object* arg0, u16 arg1);
void func_800F6BC4_301AA4(s32);
void func_800F6DA0_301C80(s32);
extern s32 D_800F88F0[];
extern unkStruct* D_800F8900[];
extern s32 D_800F8902[];
extern s16 D_800F8F90;
extern s16 D_800F8F92;
extern s16 D_800F8F96;
extern s16 D_800F8F98[][4];
void func_800F6BBC_301A9C(void);
