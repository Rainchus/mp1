#include "common.h"

typedef struct unkStructGroundPound_00 {
/* 0x00 */ f32 unk_00;
/* 0x04 */ f32 unk_04;
/* 0x06 */ u16 unk_08;
/* 0x08 */ u16 unk_0A;
} unkStructGroundPound_00;

s32 func_800184A8(unkGlobalStruct_00*, s32);
void func_800F9870_149490(unkObjectStruct*);
void func_800F9B18_149738(unkObjectStruct*);
void func_800F7FEC_147C0C(void);
void func_800F9E80_149AA0(f32, f32, f32, f32, f32, f32, f32);
void func_800F67E0_146400(unkObjectStruct* arg0);
void func_800F6EE4_146B04(void);
void func_800F8C20_148840(unkObjectStruct*);
void func_800F6814_146434(void);
void func_80079078(s16);
void func_800F6924_146544(void);
void func_800F6B0C_14672C(void);
s32 osGetCount(void);
void func_800090C4(unkObjectStruct*, s32, u8);
void func_800F9908_149528(unkObjectStruct*);
u32 func_800F9FEC_149C0C(void);
void func_800F9094_148CB4(unkObjectStruct*);


extern s32 D_800FA1D0_149DF0;

extern f32 D_800B895C; // true extern data
extern u8 D_800C5982; // true extern data

// These two arrays are only 8 bytes apart, but their elements are more than 8 bytes large
// Therefore, they are the same array and the references to both just mean access to different members in the actual array
extern unkStructSize14 D_800C59AC[]; // true extern data 
extern unkStructSize14 D_800C59B4[]; // true extern data 

extern s16 D_800EDEB4[]; // true extern data
extern s16 D_800EE984; // true extern data
extern u8 D_800F3843[]; // true extern data
extern unkObjectStruct* D_800F3FB0[]; // true extern data
extern s16 D_800F5460[]; // true extern data

/* BSS DATA */
extern f64 D_800FA250_149E80;
extern u16 D_800FA260_149E80;
extern s16 D_800FA262_149E80;
extern s16 D_800FA264_149E80;
extern u16 D_800FA266_149E80;
extern u16 D_800FA268_149E80;
extern s16 D_800FA26C_149E80;
extern s32 D_800FA2D0_149E80;
extern s16 D_800FA2D4_149E80;
extern u8 D_800FA2D6_149E80;
extern s32 D_800FA2D8_149E80;
extern f32 D_800FA2DC_149E80;
extern s32 D_800FA2E0_149E80;
extern f32 D_800FA2E8_149E80;
extern s32 D_800FA2F0_149E80;
extern s32 D_800FA2F4_149E80;
extern s32 D_800FA2F8_149E80;
extern s32 D_800FA2FC_149E80;
extern s32 D_800FA310_149E80;
extern Vec3f D_800FA36C_149E80;
extern unkStructGroundPound_00 D_800FA380_149E80[];
extern unkObjectStruct* D_800FA43C_149E80;
