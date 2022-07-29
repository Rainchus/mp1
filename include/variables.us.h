#include "types.h"

#define EXEC_PROCESS_DEFAULT 0
#define EXEC_PROCESS_SLEEPING 1
#define EXEC_PROCESS_WATCH 2
#define EXEC_PROCESS_DEAD 3

extern Addr D_FE2310;
extern u16 D_800F5144;
extern s16 D_800C597A;
extern playerMain gPlayers[4];
extern u8 D_800ED5C3;
extern s16 D_800FE150;
extern u8 D_800FD86E;
extern s16 D_800FE30E;
extern s16 D_800FD878;
extern s16 D_800FE30C;
extern s16 D_800FE30E;
extern s32 D_800ED430;
extern u16 D_800ED440;
extern s8 D_800ED147;
extern f32 D_800EE98C;
extern viewAngle D_800F33EC;
extern cameraPosition D_800F6524;
extern camera* D_800F32A0; //pointer to camera struct
extern u32 D_800FB4D0;
extern u16 D_800F2BC0;
extern unk_Struct00* D_800C3110;
extern u8 D_800ED5DD;
extern u8 D_800F6F20;
extern s32 D_800F6EE0;
extern s16 D_800F6EE2;
extern s32 D_800EDEC0;
extern u8 D_800F37F0;
extern s16 D_800F3FA8;
extern s16 process_count;
extern Process* top_process;
extern jmp_buf process_jmp_buf; // 800E2370
extern Process* current_process;
extern GameStatus D_800ED5C0;
extern f32 D_800C34A4;
extern s8 D_800ECE14[];
extern s16 D_800D6730;
extern u16 D_800ED5C6;
extern u16 D_800ED5C8;
extern Vec2f D_800C51C0[];
extern Vec2f D_800C51E0[];
extern s32 D_800C5200[];
extern s32 D_800C5214;
extern s32 D_800C5210;

extern unk_800ECDE0* D_800ECDE0;
