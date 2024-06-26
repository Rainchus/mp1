#include "types.h"

#define EXEC_PROCESS_DEFAULT 0
#define EXEC_PROCESS_SLEEPING 1
#define EXEC_PROCESS_WATCH 2
#define EXEC_PROCESS_DEAD 3

#define CURRENT_PLAYER -1

extern s16 D_800F64F6_F6586; //matrix stack position
extern u16 D_800EC6EA_EC77A[];
extern s8 D_800ECC22_ECCB2;
extern u8 D_800ED0D2_ED162;
extern s16 D_800ED5DC_ED66C;
//extern s16 D_800ED15E;
extern Addr D_FE2310;
extern u16 D_800F5144_F51D4;
extern s16 D_800C597A_C657A;
extern playerMain gPlayers[4];
//extern u8 D_800ED5C3_ED653;
extern s16 D_800FE150_D55C0;
extern u8 D_800FD86E_D4CDE;
extern s16 D_800FE30E_D577E;
extern s16 D_800FD878_D4CE8;
extern s16 D_800FE30C_D577C;
extern s32 D_800ED430_ED4C0;
extern u16 D_800ED440_ED4D0;
extern s8 D_800ED147_ED1D7;
extern f32 D_800EE98C_EEA1C;
extern viewAngle D_800F33EC_F347C;
extern cameraPosition D_800F6524_F65B4;
extern camera* D_800F32A0_F3330; //pointer to camera struct
extern u32 D_800FB4D0_121700;
extern u16 D_800F2BC0_F2C50;
extern unk_Struct00* D_800C3110_C3D10;
//extern u8 D_800ED5DD_ED66D;
extern u8 D_800F6F20_285B70;
extern s16 D_800F6EE2_285B32;
extern s32 D_800EDEC0_EDF50;
extern u8 D_800F37F0_F3880;
extern s16 D_800F3FA8_F4038;
extern s16 processcnt;
extern Process* processtop;
extern jmp_buf process_jmp_buf; // 800E2370
extern Process* processcur;
extern GameStatus D_800ED5C0_ED650;
extern f32 D_800C34A4_C40A4;
extern s8 D_800ECE14_ECEA4[];
extern Vec2s D_800ED5C6_ED656;
extern Vec2f D_800C51C0_C5DC0[];
extern Vec2f D_800C51E0_C5DE0[];
extern s32 D_800C5200_C5E00[];
extern s32 D_800C5214_C5E14;
extern s32 D_800C5210_C5E10;
extern unk_ovl_2D_struct* D_800F2B7C_F2C0C;
extern u8 D_800C5DF0_C69F0;
extern u8 D_800C5DF2_C69F2;
extern u8 D_800C5E34_C6A34[0x100];
extern u8 D_800C5F34_C6B34[0x100];
extern omOvlHisData omovlhis[8];
extern char D_800CA7E0_CB3E0[];
extern u8 D_800ECB30_ECBC0;
extern s8 D_800ED565_ED5F5;
extern s16 D_800EE32E_EE3BE;
extern s16 D_800F502C_F50BC;
extern unk_800ECDE0* D_800ECDE0_ECE70;
