#include "common.h"

typedef struct someStruct {
    u16 unk_00[9];
} someStruct;

typedef struct tempTest {
    u16 unk0[7];
} tempTest;

extern tempTest D_800CB028; //{00170018 0019001A 001B001C 001D}
extern someStruct D_800CB010; //{0x0016, 0x0017, 0x0018, 0x0019, 0x001A, 0x001B, 0x001C, 0x001D, 0x001E};

typedef struct unkUserData {
s32 unk0;
s32 unk4;
s32 unk8;
s32 unkC;
} unkUserData;

void func_800477AC(void);
void func_80048060(void);
void func_80046B24(void);
void func_80067598(s16, s32, s32);
void func_80047348(Object*);
void func_80046E84(void);
void func_80047DBC(void);
void func_800479B8(s32);
void func_8004388C(s32);
void func_8004746C(s32);
s32 func_80054FE4(void);
s16 func_80076740(s8*, s32, s32, s32, s32);


extern s32 D_800C4ED0[];
extern s8 D_800C4EEC[];
extern s16 D_800D64A4[];
extern s32 D_800D64FC;
extern s8 D_800C4EF0[];
extern s8 D_800C4EF6;
extern s32 D_800D64FC;
extern s16 D_800D64A4[];
extern s32 D_800D64FC;
extern s32 D_800F383C;
extern f64 D_800CB008;
extern s16 D_800D64A4[];
extern s8 D_800D6510;
extern f64 D_800CAFF0;
extern s8 D_800D6518;
extern s16 D_800D652C[];
extern s8 D_800D6580;
extern s16 D_800D6594[];
extern s8 D_800D65E8;
extern s16 D_800D65FC[];
extern Vec2s D_800D6650;
extern s16 D_800D6654;
extern s32 D_800D6658;
extern s8 D_800D6490[];
extern s16 D_800D64F8;
extern u8 D_800D6500;
extern s16 D_800D6502;
extern Vec2s D_800D6504;
extern Object* D_800D6508;
extern Object* D_800D650C;
