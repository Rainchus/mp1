#include "common.h"

extern u8 D_800F6EC0;
extern u8 D_800F6EC1;

extern s32 D_800F6E64[];

void func_800F692C_29AE7C(void);
void func_800F6B58_29B0A8(void);
void func_800F6D04_29B254(void);
void func_800F69BC_29AF0C(void);
void func_800F6B8C_29B0DC(void);
void func_800F66C4_29AC14(void);
void func_800F6978_29AEC8(Object*);

typedef struct camera {
    f32 unk_00;
    f32 unk_04;
    f32 unk_08;
    f32 unk_0C;
} camera;

typedef struct unknownMallocStruct {
    f32 unk_00;
    s32 unk_04;
    s32 unk_08;
    f32 unk_0C;
    s32 unk_10;
    s8 unk_14;
    s8 unk_15;
    s8 unk_16;
    s8 unk_17;
    f32 unk_18;
} unknownMallocStruct; //sizeof 0x18 ??

typedef struct unknownMallocStruct2 {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} unknownMallocStruct2; //sizeof 0x18 ??

extern camera* D_800F32A0; //pointer to camera struct
extern f32 D_800F6E10;
extern u8 D_800F6EC1;
extern unk_Struct03* D_800F6EC4;
extern unk_Struct03* D_800F6EC8;
extern s32 D_800F6ECC;
extern s32 D_800F6ED0;
extern s32 D_800F6ED4;
extern s32 D_800F6ED8;
extern s32 D_800F6EDC;
