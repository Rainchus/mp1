#include "common.h"
#include "engine/graphics.h"
#include "mallocblock.h"
#include "PR/gbi.h"
#include "PR/mbi.h"

typedef struct Color_RGB8 {
    /* 0x00 */ u8 r;
    /* 0x01 */ u8 g;
    /* 0x02 */ u8 b;
} Color_RGB8; //sizeof 3

typedef struct unk2C0C0Struct10 {
    /* 0x00 */ Hilite unk_00;
    /* 0x10 */ char unk_10[0x30];
    /* 0x40 */ LookAt unk_40;
} unk2C0C0Struct10; //sizeof 0x60

typedef struct unk2C0C0Struct20 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ char unk_01[3];
    /* 0x04 */ s16 unk_04[2]; // unknown array size
    /* 0x08 */ char unk_08[4];
    /* 0x0C */ f32 unk_0C[1]; // unknown array size
    /* 0x10 */ char unk_10[0xC];
    /* 0x1C */ f32 unk_1C[1]; // unknown array size
    /* 0x20 */ char unk_20[0xC];
    /* 0x2C */ u8 unk_2C[4]; // unknown array size
    /* 0x30 */ s16 unk_30;
    /* 0x32 */ s16 unk_32;
} unk2C0C0Struct20; //sizeof 0x34

typedef struct unk2C0C0Struct30 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ char unk_06[2];
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ u16 unk_0A;
    /* 0x0C */ u16 unk_0C;
    /* 0x0E */ s16 unk_0E;
    /* 0x10 */ u16 unk_10;
    /* 0x12 */ s16 unk_12;
    /* 0x14 */ u32 unk_14;
    /* 0x18 */ char unk_18[0x18];
    /* 0x30 */ u8 unk_30;
    /* 0x31 */ char unk_31[3];
    /* 0x34 */ unk2C0C0Struct20* unk_34;
    /* 0x38 */ char unk_38[0x12];
    /* 0x4A */ s16 unk_4A;
    /* 0x4C */ s16 unk_4C;
    /* 0x4E */ s16 unk_4E;
    /* 0x50 */ s16 unk_50;
    /* 0x52 */ s16 unk_52;
    /* 0x54 */ s16 unk_54;
    /* 0x56 */ char unk_56[2];
    /* 0x58 */ struct unk2C0C0StructC0* unk_58;
} unk2C0C0Struct30; //sizeof 0x5C

typedef struct unk2C0C0Struct40 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x02 */ char unk_06[2];
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ f32 unk_2C;
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ char unk_44[4];
    /* 0x48 */ struct unk2C0C0StructC0* unk_48;
    /* 0x4C */ Matrix4f unk_4C;
} unk2C0C0Struct40; //sizeof 0x8C

typedef struct unk2C0C0Struct50 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ char unk_02[2];
    /* 0x04 */ s16* unk_04;
    /* 0x08 */ f32 unk_08;
    /* 0x0C */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ f32 unk_18;
    /* 0x1C */ f32 unk_1C;
    /* 0x20 */ f32 unk_20;
    /* 0x24 */ f32 unk_24;
    /* 0x28 */ f32 unk_28;
    /* 0x2C */ char unk_2C[0xC];
    /* 0x38 */ f32 unk_38;
    /* 0x3C */ f32 unk_3C;
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ f32 unk_44;
    /* 0x48 */ f32 unk_48;
    /* 0x4C */ f32 unk_4C;
    /* 0x50 */ f32 unk_50;
    /* 0x54 */ f32 unk_54;
    /* 0x58 */ f32 unk_58;
    /* 0x5C */ char unk_5C[4];
    /* 0x60 */ struct unk2C0C0StructC0* unk_60;
    /* 0x64 */ Matrix4f unk_64;
} unk2C0C0Struct50; //sizeof 0xA4

typedef struct unk2C0C0Struct60 {
    /* 0x00 */ char unk_00[0x1A];
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ char unk_1C[8];
    /* 0x2C */ s32 unk_24;
} unk2C0C0Struct60; //sizeof unknown

typedef struct unk2C0C0Struct70 {
    /* 0x00 */ char unk_00[0x18];
    /* 0x1A */ u8 unk_18;
    /* 0x1B */ u8 unk_19;
    /* 0x1A */ u8 unk_1A;
    /* 0x1B */ u8 unk_1B;
    /* 0x1C */ char unk_1C[8];
    /* 0x24 */ s32 unk_24;
    /* 0x28 */ char unk_28[4];
    /* 0x2C */ unk2C0C0Struct60* unk_2C;
} unk2C0C0Struct70; //sizeof unknown

typedef struct unk2C0C0Struct80 {
    /* 0x00 */ s8 unk_00;
    /* 0x01 */ s8 unk_01;
    /* 0x02 */ s8 unk_02;
    /* 0x03 */ s8 unk_03;
    /* 0x04 */ s8 unk_04;
    /* 0x05 */ u8 unk_05;
    /* 0x06 */ u8 unk_06;
    /* 0x07 */ u8 unk_07;
    /* 0x08 */ char unk_08;
    /* 0x09 */ u8 unk_09;
    /* 0x0A */ char unk_0A[2];
    /* 0x0C */ unk2C0C0Struct70* unk_0C;
} unk2C0C0Struct80 ; //sizeof 0x10

typedef struct unk2C0C0Struct90 {
    /* 0x00 */ char unk_00;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ char unk_04;
    /* 0x05 */ Color_RGB8 unk_05;
    /* 0x08 */ char unk_08;
    /* 0x09 */ s8 unk_09;
    /* 0x0A */ s8 unk_0A;
    /* 0x0B */ s8 unk_0B;
    /* 0x0C */ s8 unk_0C;
    /* 0x0D */ char unk_0D;
} unk2C0C0Struct90; //sizeof 0xE

typedef struct unk2C0C0StructA0 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
} unk2C0C0StructA0; //sizeof 6

typedef struct unk2C0C0StructB0 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ char unk_01;
    /* 0x02 */ s16 unk_02[1]; // unknown array size
    /* 0x04 */ char unk_04[8];
    /* 0x08 */ f32 unk_0C;
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
} unk2C0C0StructB0; //sizeof 0x18

typedef struct unk2C0C0StructC0 {
    /* 0x00 */ Gfx** unk_00;
    /* 0x04 */ struct unk2C0C0StructE0* unk_04;
    /* 0x08 */ struct unk2C0C0StructE0* unk_08[8];
    /* 0x28 */ u8 unk_28;
    /* 0x29 */ char unk_29;
    /* 0x2A */ s8 unk_2A;
    /* 0x2B */ s8 unk_2B;
    /* 0x2C */ s8 unk_2C;
    /* 0x2D */ s8 unk_2D;
    /* 0x2E */ s8 unk_2E;
    /* 0x2F */ s8 unk_2F;
    /* 0x30 */ s8 unk_30;
    /* 0x31 */ s8 unk_31;
    /* 0x32 */ char unk_32[0x32];
    /* 0x64 */ u8 unk_64;
    /* 0x65 */ char unk_65[3];
    /* 0x68 */ u16 unk_68;
    /* 0x6A */ s16 unk_6A;
    /* 0x6C */ s16 unk_6C;
    /* 0x6E */ s16 unk_6E;
    /* 0x70 */ s16 unk_70;
    /* 0x72 */ u16 unk_72;
    /* 0x74 */ s16 unk_74;
    /* 0x76 */ char unk_76[2];
    /* 0x78 */ unk2C0C0StructA0* unk_78;
    /* 0x7C */ Color_RGB8* unk_7C;
    /* 0x80 */ unk2C0C0Struct30* unk_80;
    /* 0x84 */ s16 unk_84;
    /* 0x86 */ char unk_86[2];
    /* 0x88 */ unk2C0C0Struct40* unk_88;
    /* 0x8C */ char unk_8C[0x14];
    /* 0xA0 */ unk2C0C0Struct50* unk_A0;
    /* 0xA4 */ unk2C0C0Struct80* unk_A4;
    /* 0xA8 */ unk2C0C0Struct90* unk_A8;
    /* 0xAC */ s32 unk_AC;
    /* 0xB0 */ s32 unk_B0;
    /* 0xB4 */ s32 unk_B4;
    /* 0xB8 */ s32 unk_B8;
    /* 0xBC */ unk2C0C0Struct70* unk_BC;
    /* 0xC0 */ s32 unk_C0;
    /* 0xC4 */ s32 unk_C4;
    /* 0xC8 */ s32 unk_C8;
    /* 0xCC */ s32 unk_CC;
    /* 0xD0 */ unk2C0C0StructB0* unk_D0;
} unk2C0C0StructC0; //sizeof unknown

typedef struct unk2C0C0StructD0 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02[4];
    /* 0x0A */ s8 unk_0A;
    /* 0x0B */ char unk_0B;
    /* 0x0C */ unk2C0C0Struct90* unk_0C;
    /* 0x10 */ unk2C0C0Struct80* unk_10;
} unk2C0C0StructD0; //sizeof 0x14

typedef struct unk2C0C0StructE0 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s16 unk_04;
    /* 0x06 */ char unk_06[2];
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ Color_RGB8 unk_0C;
    /* 0x0F */ u8 unk_0F;
} unk2C0C0StructE0; //sizeof 0x10

typedef struct unk2C0C0StructF0 {
    /* 0x00 */ char unk_00[0x40];
    /* 0x40 */ f32 unk_40;
    /* 0x44 */ void* unk_44;
    /* 0x48 */ unk2C0C0StructC0* unk_48;
    /* 0x4C */ s32 unk_4C;
    /* 0x50 */ s32 unk_50;
    /* 0x54 */ s16 unk_54;
    /* 0x56 */ char unk_56;
    /* 0x57 */ u8 unk_57;
    /* 0x58 */ u8 unk_58;
    /* 0x59 */ char unk_59[3];
} unk2C0C0StructF0; //sizeof 0x5C

void func_8001AAC4(Gfx*, u16, s32, OSMesgQueue*, s32);
s16 func_8001CD00(u8*);
void func_8001D40C();
void func_8001D7DC(s16, Gfx**);
void func_80023040();
void func_800230D0(s32);
void func_800230D8(s16);
void func_80023370();
void func_800239EC();
void func_8002B890(unk2C0C0StructC0*);
void func_8002BCD4(unk2C0C0StructC0*);
void func_8002BDC0(unk2C0C0StructC0*);
void func_8002BEC4(unk2C0C0StructC0*);
void func_8002C37C(Matrix4f, Matrix4f);
void func_8002C400(unk2C0C0StructC0*, s16);
void func_8002C858(unk2C0C0StructC0*, s32);
void func_8002D2CC(unk2C0C0StructC0*, s32, void*, Matrix4f);
void func_8002DC84(unk2C0C0StructC0*, s16);
void func_8002E488(unk2C0C0StructC0*, u32*);
void func_80030D50(unk2C0C0StructC0*, s16);
void func_80031054(unk2C0C0Struct90*, unk2C0C0Struct80*, s32);
void func_800318D0(u16);
void func_80031BB4();
void func_80031C60(unk2C0C0StructC0*, s32, s16);
void func_80031D78(unk2C0C0StructC0*, s16);
void func_80031F14(unk2C0C0Struct70*, s32, s32);
void func_80032C98(unk2C0C0StructC0*, s16);
s32 func_8003305C(unk2C0C0StructC0*, s16, Matrix4f, Matrix4f);
void func_800339E0(unk2C0C0StructC0*, s16);
void func_80033CBC(unk2C0C0StructC0*, s16);
void func_80033FB0(Gfx**, s16, s32);
void func_80034ED8(unk2C0C0StructC0*, s32, s32, s32);
void func_8003589C(unk2C0C0StructC0*, s32, s32);
void func_80037CE0();
void func_80039D10(unk2C0C0StructC0*);
s16 func_80061228(s32, s32, s32);
void func_80061264(s16);
void func_8009E7E0(Matrix4f, f32, f32, f32);
void func_8009EA40(Matrix4f, f32, f32, f32);
void func_800A0A20(Matrix4f, void*);
void func_800A2A50(Matrix4f);
void guLookAtHilite (Mtx*, LookAt*, Hilite*, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, s32, s32);
void guLookAtReflect(Mtx*, LookAt*, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void guMtxIdentF(Matrix4f);
void* HuMemAlloc(s32);
void MtxMult(Matrix4f, Matrix4f, Matrix4f);
u32 MtxReset(Matrix4f, Matrix4f);
void MtxScale(Matrix4f, f32, f32, f32);
void MtxTranslate(Matrix4f, f32, f32, f32);
void osSyncPrintf(const char*, ...);
u32 osVirtualToPhysical(void*);

extern Gfx D_800C34B0[];
extern u8 D_800C3500[];
extern s16 D_800C3508[];
extern s32* D_800C3510[];
extern Gfx D_800C4140[];
extern s32 D_800C4174[];
extern char D_800CA8F8[];
extern char D_800CA908[];
extern char D_800CA91C[];
extern char D_800CA928[];
extern char D_800CA938[];
extern char D_800CA95C[];
extern unk2C0C0Struct30* D_800D6010;
extern s8 D_800EC6E8;
extern u16 D_800EC6F2;
extern u32 D_800EC6F4;
extern s32 D_800ECB14;
extern Light* D_800ECB28;
extern s8 D_800ECB30;
extern u8 D_800ED0C8;
extern s16 D_800ED0D0;
extern unk2C0C0StructF0* D_800ED0D8[];
extern s16 D_800ED194;
extern s16 D_800ED4AC;
extern s16 D_800ED52C;
extern s32 D_800ED568;
extern void* D_800ED5E8[];
extern u8 D_800ED6D8;
extern u32 D_800ED734;
extern unk2C0C0StructD0 D_800EDA88[];
extern void* D_800EDA94[]; // weird: contains both unk2C0C0Struct80* and unk2C0C0Struct90*
extern u16 D_800EDEB2;
extern u8 D_800EDEBC;
extern u16 D_800EDEC8;
extern u16 D_800EE322;
extern s16 D_800EE32C;
extern s16 D_800EE32E;
extern u16 D_800EE732;
extern u8 D_800EE754;
extern u8 D_800EE988;
extern s16 D_800EE992;
extern s16 D_800EE9A0[];
extern unk2C0C0Struct10* D_800F09FC;
extern s64 D_800F0A60;
extern u8 D_800F2CF9;
extern s16 D_800F3100;
extern s32 D_800F328C;
extern s16 D_800F3292;
extern s8 D_800F329C;
extern s16 D_800F33D4;
extern unk2C0C0Struct10 D_800F3400[];
extern u8 D_800F3710;
extern Gfx* D_800F3720[];
extern void* D_800F374C; // points to something of size 0x40 (Matrix4f?)
extern s32 D_800F375C;
extern u16 D_800F3760;
extern s64 D_800F37B0;
extern s16 D_800F37C8;
extern u16 D_800F37D0;
extern s16 D_800F37D8;
extern u8 D_800F37DA;
extern Gfx* D_800F37DC;
extern Gfx* D_800F37E0;
extern s32 D_800F37E4;
extern u8 D_800F3842;
extern s32 D_800F3848;
extern u16 D_800F3854;
extern u8 D_800F3962;
extern s16 D_800F3F3C;
extern Matrix4f D_800F3FE0[];
extern u8 D_800F3FF4;
extern Matrix4f D_800F4020[];
extern f32 D_800F5028;
extern u16 D_800F502C;
extern s16 D_800F5030;
extern u16 D_800F50BA;
extern unk2C0C0StructE0* D_800F50BC;
extern f32 D_800F524C;
extern s16 D_800F546A;
extern Matrix4f D_800F5480[];
extern Matrix4f D_800F54C0[];
extern Matrix4f D_800F5500;
extern u32 D_800F64C0;
extern s16 D_800F64FA;
extern unk2C0C0StructE0* D_800F6500[];
extern s16 D_800F6538[];
extern s16 D_800F65DA;

void func_8002B4C0(void* (*arg0)(s32), void (*arg1)(unkMallocBlockStruct*), u16 arg2, u16 arg3, u16 arg4, u8 arg5) {
    s16 i;

    D_800F37DA = arg5;
    D_800F37F0 = 0;

    func_800235F0(arg0, arg1);

    D_800F37D8 = arg2;
    D_800EC6F2 = arg4;
    D_800F50BA = arg3;

    for (i = 0; i < arg5; i++) {
        D_800F6500[i] = HuMemAlloc(arg2 * sizeof(unk2C0C0StructE0));
        D_800ED5E8[i] = HuMemAlloc(arg4 * 64);
        D_800F3720[i] = HuMemAlloc(arg3 * sizeof(Gfx));
    }

    for (i = 0; i < 8; i++) {
        D_800ED0D8[i] = HuMemAlloc(D_800C3500[i] * sizeof(unk2C0C0StructF0));
    }

    func_80023040();
    func_80037CE0();

    D_800ECB30 = 1;
    D_800EC6E8 = 2;
    D_800F329C = 2;
    D_800F524C = 1.0f;
    D_800F5028 = 1.0f;
    D_800EE988 = 0;
    D_800EDEBC = 255;
    D_800F3FF4 = 255;
    D_800F2CF9 = 255;
    D_800F65DA = 950;
    D_800ED0D0 = 1000;
    D_800ED0C8 = 1;
}

void func_8002B6C8(void) {
    func_800239EC();

    if (D_800F3854 != 0) {
        s32 temp_v0 = D_800F37F0;

        D_800F50BC = D_800F6500[temp_v0];
        D_800F374C = D_800ED5E8[temp_v0];
        D_800F37E0 = D_800F37DC = D_800F3720[temp_v0];
        D_800F09FC = &D_800F3400[temp_v0];

        if (++D_800F37F0 >= D_800F37DA) {
            D_800F37F0 = 0;
        }

        func_800230D0(temp_v0);

        D_800EE992 = 0;
        D_800ED52C = 0;
        D_800F37C8 = 0;
        D_800F64FA = 0;
        D_800EE754 = 0;
        D_800F3100 = 0;
        D_800F64F6 = 0;
        D_800ED194 = 0;
        D_800F3F3C = 0;
        D_800ED4AC = 0;

        func_8001D40C();

        D_800F3848++;
    }
}

void func_8002B808(void) {
    unk2C0C0StructF0** temp_v1;
    s16 i;

    for (i = 0; i < 8; i++) {
        D_800F6538[i] = 2;

        temp_v1 = &D_800ED0D8[i];
        (*temp_v1)->unk_57 = 1;
        (*temp_v1 + 1)->unk_58 = 0;
        (*temp_v1 + 1)->unk_57 = 0;
        (*temp_v1 + 1)->unk_40 = 200000.0f;
    }
}

void func_8002B890(unk2C0C0StructC0* arg0) {
    unk2C0C0StructE0* temp_v0;
    unk2C0C0StructE0* temp_s7;
    Gfx* temp_fp;
    Gfx* var_s4;
    s32 temp_s0;
    s32 temp_s0_2;
    s16 temp_s6;
    s16 i;

    if (arg0->unk_6A == 0 || arg0->unk_6E == 0) {
        return;
    }

    temp_fp = D_800F37DC;
    temp_s7 = D_800F50BC;
    temp_s6 = D_800EE992;

    // Cast can be removed once func_80023684 is updated to return void*
    arg0->unk_00 = (Gfx**) func_80023684(arg0->unk_6A * sizeof(Gfx*), D_800EE32E);

    D_800F50BC = HuMemAlloc(4096 * sizeof(unk2C0C0StructE0));
    if (D_800F50BC == NULL) {
        D_800F50BC = arg0->unk_04 = (unk2C0C0StructE0*) 0 + D_800EE992;
    }

    var_s4 = HuMemAlloc(8192 * sizeof(Gfx));
    if (var_s4 == NULL) {
        var_s4 = D_800F37DC;
    }

    func_8002BCD4(arg0);

    D_800EE992 = 0;
    D_800F546A = 0;

    func_80023370();
    func_8002BEC4(arg0);

    for (i = 0; i < arg0->unk_6A; i++) {
        D_800F37DC = var_s4;
        D_800EDEC8 = 0;
        D_800EE732 = 0;
        D_800EE322 = 0;
        D_800F37B0 = D_800F0A60 = 0xFFFFFFFF;
        D_800F328C = 0;

        func_80033FB0(&D_800F37DC, 1, 0);

        if (D_800ECB14 & 0x200) {
            gSPLight(D_800F37DC++, D_800ECB28, D_800EE9A0[0] + 1);
            D_800F3760 = D_800ECB28->l.col[0];
            D_800F37D0 = D_800ECB28->l.col[1];
            D_800EDEB2 = D_800ECB28->l.col[2];
        }

        temp_s0 = arg0->unk_80[i].unk_14;

        arg0->unk_80[i].unk_0A = D_800EE992;
        arg0->unk_80[i].unk_0E = D_800F546A;
        arg0->unk_80[i].unk_14 &= ~0x06000000;

        func_8002DC84(arg0, i);

        if (temp_s0 & 0x06000000) {
            arg0->unk_80[i].unk_14 |= 0x06000000;
        }

        arg0->unk_80[i].unk_0C = D_800EE992 - arg0->unk_80[i].unk_0A;
        arg0->unk_80[i].unk_10 = D_800F546A - arg0->unk_80[i].unk_0E;

        gSPEndDisplayList(D_800F37DC++);

        temp_s0_2 = (D_800F37DC - var_s4) * sizeof(Gfx);
        // Cast can be removed once func_80023684 is updated to return void*
        arg0->unk_00[i] = (Gfx*) func_80023684(temp_s0_2, D_800EE32E);
        func_80023A38(var_s4, arg0->unk_00[i], temp_s0_2);
    }

    arg0->unk_72 = D_800EE992;
    arg0->unk_74 = D_800F546A;

    // Cast can be removed once func_80023684 is updated to return void*
    temp_v0 = (unk2C0C0StructE0*) func_80023684(D_800EE992 * sizeof(unk2C0C0StructE0), D_800EE32E);
    func_80023A38(D_800F50BC, temp_v0, D_800EE992 * sizeof(unk2C0C0StructE0));
    arg0->unk_04 = temp_v0;

    func_8002BDC0(arg0);

    for (i = 0; i < 8; i++) {
        arg0->unk_08[i] = temp_v0;
    }

    if (D_800EE992 > 4095) {
        osSyncPrintf(D_800CA8F8);
    }

    func_80023728(D_800F50BC);
    func_80023728(var_s4);

    D_800EE992 = temp_s6;
    D_800F50BC = temp_s7;
    D_800F37DC = temp_fp;
}

void func_8002BCD4(unk2C0C0StructC0* arg0) {
    u16 var_a2;
    s16 var_a3 = 0;
    s16 i;

    for (i = 0, var_a2 = 0; i < arg0->unk_6A; i++) {
        if (arg0->unk_80[i].unk_14 & 0x20000) {
            var_a3 = 1;
        }
        var_a2 += arg0->unk_80[i].unk_04;
    }

    if (var_a3 && arg0->unk_D0 == NULL) {
        // Cast can be removed once func_80023684 is updated to return void*
        arg0->unk_D0 = (unk2C0C0StructB0*) func_80023684(var_a2 * sizeof(unk2C0C0StructB0), D_800EE32E);
    }
}

void func_8002BDC0(unk2C0C0StructC0* arg0) {
    unk2C0C0StructB0* var_a3;
    f32 var_f4;
    f32 var_f6;
    f32 var_f8;
    s16* var_a1;
    u16 temp_t2;
    s16 i;
    s16 j;

    if (arg0->unk_D0 == NULL) {
        return;
    }

    var_a3 = arg0->unk_D0;
    for (i = 0; i < arg0->unk_74; i++, var_a3++) {
        var_a1 = var_a3->unk_02;
        temp_t2 = var_a3->unk_00;

        var_f6 = var_f8 = var_f4 = 0.0f;
        for (j = 0; j < temp_t2; j++, var_a1++) {
            var_f6 += arg0->unk_04[*var_a1].unk_00;
            var_f8 += arg0->unk_04[*var_a1].unk_02;
            var_f4 += arg0->unk_04[*var_a1].unk_04;
        }

        var_a3->unk_0C = var_f6 / temp_t2;
        var_a3->unk_10 = var_f8 / temp_t2;
        var_a3->unk_14 = var_f4 / temp_t2;
    }
}

void func_8002BEC4(unk2C0C0StructC0* arg0) {
    s16 var_t1 = 4;
    s16 i;
    s16 j;

    for (i = 0; i < arg0->unk_6C; i++) {
        if (arg0->unk_A4[i].unk_09 == 255) {
            continue;
        }

        for (j = 0; j < i; j++) {
            if (arg0->unk_A4[i].unk_0C == arg0->unk_A4[j].unk_0C) {
                break;
            }
        }

        if (j != i) {
            arg0->unk_A4[i].unk_03 = arg0->unk_A4[j].unk_03;
            arg0->unk_A4[i].unk_04 = arg0->unk_A4[j].unk_04;
            continue;
        }

        arg0->unk_A4[i].unk_03 = var_t1++;
        if (arg0->unk_A4[i].unk_0C->unk_2C != NULL) {
            arg0->unk_A4[i].unk_04 = var_t1++;
        }

        if (var_t1 > 16) {
            osSyncPrintf(D_800CA908);
            return;
        }
    }
}

void func_8002C030(unk2C0C0StructC0* arg0) {
    s16 i;

    if (arg0->unk_04 != NULL) {
        for (i = 0; i < 8; i++) {
            if (arg0->unk_04 != arg0->unk_08[i]) {
                if (arg0->unk_64 != 0) {
                    func_80023888(arg0->unk_08[i]);
                } else {
                    func_80023728(arg0->unk_08[i]);
                }
            }
        }

        if (arg0->unk_64 != 0) {
            func_80023888(arg0->unk_04);
        } else {
            func_80023728(arg0->unk_04);
        }
    }

    if (arg0->unk_00 != NULL) {
        for (i = 0; i < arg0->unk_6A; i++) {
            if (arg0->unk_64 != 0) {
                func_80023888(arg0->unk_00[i]);
            } else {
                func_80023728(arg0->unk_00[i]);
            }
        }

        if (arg0->unk_64 != 0) {
            func_80023888(arg0->unk_00);
        } else {
            func_80023728(arg0->unk_00);
        }
    }

    D_800F502C = arg0->unk_68;
    D_800EE32E = arg0->unk_68 + 1;

    func_8002B890(arg0);
}

void func_8002C1A8(unk2C0C0StructC0* arg0, Matrix4f arg1, Matrix4f arg2) {
    Matrix4f sp10;

    if (arg0->unk_6E != 0) {
        func_8002C37C(D_800F54C0[0], arg1);
        D_800F33D4 = 1;
        guMtxIdentF(D_800F5500);
        D_800F5030 = 0;
        func_8002C37C(D_800F4020[0], arg2);

        if (arg0->unk_29 & 4) {
            if (arg0->unk_80->unk_14 & 0x70000000) {
                func_8003305C(arg0, 0, arg1, sp10);
                MtxMult(arg2, sp10, arg1);
            }

            func_800A0A20(arg1, D_800F374C + 0x40 * D_800ED52C);
            func_8002D2CC(arg0, 0, D_800F374C + 0x40 * (D_800ED52C++), arg1);

            return;
        }

        if (arg0->unk_AC != 0) {
            func_80034ED8(arg0, arg0->unk_C0, arg0->unk_AC, 1);
            if (arg0->unk_B0 != 0) {
                func_8003589C(arg0, arg0->unk_C4, arg0->unk_C8);
            }
            if (arg0->unk_B4 != 0) {
                func_80034ED8(arg0, arg0->unk_CC, arg0->unk_B4, 0);
            }
        }

        if (arg0->unk_A0 == (unk2C0C0Struct50*) -1) {
            if (arg0->unk_84 != 0) {
                func_8002C400(arg0, 0);
                if (D_800EC6F2 <= D_800ED52C) {
                    osSyncPrintf(D_800CA91C);
                }
            }
        } else if (arg0->unk_70 != 0) {
            func_8002C858(arg0, 0);
            if (D_800EC6F2 <= D_800ED52C) {
                osSyncPrintf(D_800CA91C);
            }
        }
    }
}

void func_8002C37C(Matrix4f arg0, Matrix4f arg1) {
    arg0[0][0] = arg1[0][0];
    arg0[0][1] = arg1[0][1];
    arg0[0][2] = arg1[0][2];
    arg0[0][3] = arg1[0][3];
    arg0[1][0] = arg1[1][0];
    arg0[1][1] = arg1[1][1];
    arg0[1][2] = arg1[1][2];
    arg0[1][3] = arg1[1][3];
    arg0[2][0] = arg1[2][0];
    arg0[2][1] = arg1[2][1];
    arg0[2][2] = arg1[2][2];
    arg0[2][3] = arg1[2][3];
    arg0[3][0] = arg1[3][0];
    arg0[3][1] = arg1[3][1];
    arg0[3][2] = arg1[3][2];
    arg0[3][3] = arg1[3][3];
}

void func_8002C400(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct40* temp_s1;
    s16 var_s3;
    s16 var_s5;
    s16 temp_s4;
    Matrix4f sp10;
    Matrix4f sp50;

    temp_s1 = &arg0->unk_88[arg1];
    temp_s4 = temp_s1->unk_00;
    var_s5 = 0;
    var_s3 = 0;

    if (arg0->unk_AC == 0) {
        MtxMult(temp_s1->unk_4C, D_800F54C0[0], sp10);
        var_s3 = 1;
    } else {
        func_800A2A50(sp10);
        if (temp_s1->unk_2C != 0.0f || temp_s1->unk_30 != 0.0f || temp_s1->unk_34 != 0.0f) {
            MtxTranslate(sp10, temp_s1->unk_2C, temp_s1->unk_30, temp_s1->unk_34);
            var_s3 = 1;
        }
        if (temp_s1->unk_38 != 0.0f || temp_s1->unk_3C != 0.0f || temp_s1->unk_40 != 0.0f) {
            MtxRotate(sp10, temp_s1->unk_38, temp_s1->unk_3C, temp_s1->unk_40);
            var_s3 = 1;
        }
        if (temp_s1->unk_20 != 1.0f || temp_s1->unk_24 != 1.0f || temp_s1->unk_28 != 1.0f) {
            MtxScale(sp10, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);
            func_800A2A50(sp50);
            MtxScale(sp50, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);
            D_800F5030++;
            MtxMult(sp50, D_800F3FE0[D_800F5030], D_800F3FE0[D_800F5030 + 1]);
            var_s5 = 1;
            var_s3 = 1;
        }
        if (var_s3 != 0) {
            D_800F33D4++;
            MtxMult(sp10, D_800F5480[D_800F33D4], D_800F5480[D_800F33D4 + 1]);
        }
        MtxMult(D_800F54C0[D_800F33D4], D_800F54C0[0], sp10);
    }

    if (temp_s4 >= 0) {
        if (temp_s1->unk_48->unk_80[temp_s4].unk_14 & 0x70000000) {
            func_8003305C(temp_s1->unk_48, temp_s4, sp10, sp50);
            MtxMult(D_800F4020[D_800F5030], sp50, sp10);
        }

        D_800F64F6 += arg0->unk_80[temp_s4].unk_04;
        func_800A0A20(sp10, D_800F374C + 0x40 * D_800ED52C);
        func_8002D2CC(temp_s1->unk_48, temp_s4, D_800F374C + 0x40 * D_800ED52C, sp10);
        D_800ED52C++;
    }

    if (temp_s1->unk_04 != 0) {
        func_8002C400(arg0, arg1 + temp_s1->unk_04);
    }

    if (var_s3 != 0) {
        D_800F33D4--;
    }

    if (var_s5 != 0) {
        D_800F5030--;
    }

    if (temp_s4 >= 0 && temp_s1->unk_48 == arg0) {
        if (arg0->unk_80[temp_s4].unk_58 != 0) {
            func_8002C400(arg0->unk_80[temp_s4].unk_58, 0);
        }
    }

    if (temp_s1->unk_02 != 0) {
        func_8002C400(arg0, arg1 + temp_s1->unk_02);
    }
}

void func_8002C858(unk2C0C0StructC0* arg0, s32 arg1) {
    unk2C0C0Struct50* temp_s1;
    s16 temp_v0;
    s16 temp_v1;
    s16 var_s4;
    s16 var_s7;
    s16 var_s3;
    Matrix4f sp10;
    Matrix4f sp50;
    s16 i;

    temp_s1 = &arg0->unk_A0[arg1 & 0x7FFF];
    var_s7 = 0;
    var_s4 = 0;

    if (arg0->unk_AC == 0) {
        MtxMult(temp_s1->unk_64, D_800F54C0[0], sp10);
        if (temp_s1->unk_20 != 1.0f || temp_s1->unk_24 != 1.0f || temp_s1->unk_28 != 1.0f) {
            func_8009E7E0(sp50, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);
            D_800F5030++;
            MtxMult(sp50, D_800F3FE0[D_800F5030], D_800F3FE0[D_800F5030 + 1]);
            var_s7 = 1;
        }
    } else {
        if (temp_s1->unk_38 != 0.0f || temp_s1->unk_3C != 0.0f || temp_s1->unk_40 != 0.0f) {
            if (var_s4 != 0) {
                MtxTranslate(sp10, temp_s1->unk_38, temp_s1->unk_3C, temp_s1->unk_40);
            } else {
                func_8009EA40(sp10, temp_s1->unk_38, temp_s1->unk_3C, temp_s1->unk_40);
            }
            var_s4 = 1;
        }
        if (temp_s1->unk_44 != 0.0f || temp_s1->unk_48 != 0.0f || temp_s1->unk_4C != 0.0f) {
            if (var_s4 != 0) {
                MtxRotate(sp10, temp_s1->unk_44, temp_s1->unk_48, temp_s1->unk_4C);
            } else {
                func_8009ECB0(&sp10[0], temp_s1->unk_44, temp_s1->unk_48, temp_s1->unk_4C);
            }
            var_s4 = 1;
        }
        if (temp_s1->unk_50 != 1.0f || temp_s1->unk_54 != 1.0f || temp_s1->unk_58 != 1.0f) {
            if (var_s4 != 0) {
                MtxScale(sp10, temp_s1->unk_50, temp_s1->unk_54, temp_s1->unk_58);
            } else {
                func_8009E7E0(sp10, temp_s1->unk_50, temp_s1->unk_54, temp_s1->unk_58);
            }
            func_8009E7E0(sp50, temp_s1->unk_50, temp_s1->unk_54, temp_s1->unk_58);
            D_800F5030++;
            MtxMult(sp50, D_800F3FE0[D_800F5030], D_800F3FE0[D_800F5030 + 1]);
            var_s7 = 1;
            var_s4 = 1;
        }
        if (var_s4 != 0) {
            D_800F33D4++;
            MtxMult(sp10, D_800F5480[D_800F33D4], D_800F5480[D_800F33D4 + 1]);
        }
        MtxMult(D_800F54C0[D_800F33D4], D_800F54C0[0], sp10);
    }

    func_800A0A20(sp10, D_800ED52C * 0x40 + D_800F374C);
    var_s3 = D_800ED52C++;

    temp_v0 = temp_s1->unk_00;
    for (i = 0; i < temp_v0; i++) {
        temp_v1 = temp_s1->unk_04[i];
        if (temp_v1 & 0x8000) {
            if (temp_v1 != -1) {
                func_8002C858(arg0, temp_v1 & 0x7FFF);
            }
        } else {
            if (temp_s1->unk_60->unk_80[temp_v1].unk_14 & 0x70000000) {
                func_8003305C(temp_s1->unk_60, temp_v1, sp10, sp50);
                MtxMult(D_800F4020[D_800F5030], sp50, sp10);
                func_800A0A20(sp10, D_800ED52C * 0x40 + D_800F374C);
                var_s3 = D_800ED52C++;
            }
            D_800F64F6 += arg0->unk_80[temp_v1].unk_04;
            func_8002D2CC(temp_s1->unk_60, temp_v1, var_s3 * 0x40 + D_800F374C, sp10);
            if (arg0->unk_80[temp_v1].unk_58 != NULL) {
                if (arg0 == temp_s1->unk_60) {
                    func_8002C858(arg0->unk_80[temp_v1].unk_58, 0);
                }
            }
        }
    }

    if (var_s4 != 0) {
        D_800F33D4--;
    }

    if (var_s7 != 0) {
        D_800F5030--;
    }
}

void func_8002CDEC(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct30* temp_s0;
    s32 temp_v1;

    if (arg0->unk_80[arg1].unk_14 & 0x06000000) {
        if (D_800ECB14 != 0) {
            func_80031C60(arg0, arg0->unk_80[arg1].unk_14 & ~0x06000000, arg1);

            gSPSegment(D_800F37DC++, 0x01, osVirtualToPhysical(arg0->unk_08[D_800F37F0]));
            gSPDisplayList(D_800F37DC++, arg0->unk_00[arg1]);

            func_80031C60(arg0, arg0->unk_80[arg1].unk_14, arg1);

            gSPSegment(D_800F37DC++, 0x01, osVirtualToPhysical(D_800F50BC));

            func_8002DC84(arg0, arg1);
            return;
        }

        temp_v1 = arg0->unk_80[arg1].unk_14;
        arg0->unk_80[arg1].unk_14 &= ~0x06000000;

        gSPSegment(D_800F37DC++, 0x01, osVirtualToPhysical(D_800F50BC));

        func_8002CDEC(arg0, arg1);

        arg0->unk_80[arg1].unk_14 = temp_v1;
    }

    temp_s0 = &arg0->unk_80[arg1];

    func_80031C60(arg0, temp_s0->unk_14, arg1);

    if (temp_s0->unk_14 & 0x40000) {
        func_80039D10(arg0);
    }

    if (temp_s0->unk_02 != -1 || (arg0->unk_B8 != 0 && arg0->unk_A8[temp_s0->unk_00].unk_0C & 4)) {
        unk2C0C0Struct90* temp_a0 = &arg0->unk_A8[temp_s0->unk_00];
        gDPSetPrimColor(D_800F37DC++, 0, 0, temp_a0->unk_05.r, temp_a0->unk_05.g, temp_a0->unk_05.b, temp_s0->unk_02);
    }

    if (D_800ECB14 & 0x10000) {
        gDPSetEnvColor(D_800F37DC++, arg0->unk_2E, arg0->unk_2F, arg0->unk_30, arg0->unk_31);
        gDPSetPrimColor(D_800F37DC++, 0, 0, arg0->unk_2A, arg0->unk_2B, arg0->unk_2C, arg0->unk_2D);
    }

    if (D_800ECB14 & 1) {
        if (arg0->unk_00[arg1] == NULL) {
            return;
        }
        gSPSegment(D_800F37DC++, 0x01, osVirtualToPhysical(arg0->unk_08[D_800F37F0]));
        gSPDisplayList(D_800F37DC++, arg0->unk_00[arg1]);
    } else {
        gSPSegment(D_800F37DC++, 0x01, osVirtualToPhysical(D_800F50BC));
        func_8002DC84(arg0, arg1);
    }

    if (D_800F37DC >= &D_800F37E0[D_800F50BA * 8]) {
        osSyncPrintf(D_800CA928);
    }
}

INCLUDE_ASM(s32, "2C0C0", func_8002D270);

// Matches without --vr4300mul-off
#ifdef NON_MATCHING
void func_8002D2CC(unk2C0C0StructC0* arg0, s16 arg1, void* arg2, Matrix4f arg3) {
    f32 temp_f4;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f12;
    u32 temp_v1;
    s16 temp_v0;
    s16 var_a2;
    s16 temp_s4;
    unk2C0C0StructF0* temp_a0;
    unk2C0C0StructF0* temp_s0;

    temp_s4 = arg0->unk_28;
    temp_v0 = D_800F6538[temp_s4];

    if (temp_v0 >= D_800C3500[temp_s4]) {
        osSyncPrintf(D_800CA938, temp_s4);
        return;
    }

    temp_s0 = D_800ED0D8[temp_s4];

    if (arg0->unk_80[arg1].unk_14 & 0x81210000) {
        temp_f4 = arg3[3][0];
        temp_f0 = arg3[3][1];
        temp_f2 = arg3[3][2];

        var_f12 = SQ(temp_f4) + SQ(temp_f0) + SQ(temp_f2);
        if (var_f12 != 0.0f) {
            var_f12 = func_800B1750(var_f12);
        } else {
            var_f12 = 0.0f;
        }

        temp_v1 = arg0->unk_80[arg1].unk_14;
        if (temp_v1 & 0x80010000) {
            var_f12 = 100000.0f - var_f12;
        } else if (!(temp_v1 & 0x01000000)) {
            var_f12 = -var_f12;
        }

        for (var_a2 = temp_s0->unk_57; temp_s0[var_a2].unk_57 != 0; var_a2 = temp_s0[var_a2].unk_57) {
            if (var_f12 < temp_s0[var_a2].unk_40) {
                break;
            }
        }
    } else {
        var_a2 = temp_s0->unk_57;
        var_f12 = 0.0f;
    }

    arg0->unk_80[arg1].unk_12 = temp_v0;
    var_a2 = temp_s0[var_a2].unk_58;

    temp_a0 = &temp_s0[temp_v0];
    temp_a0->unk_58 = var_a2;
    temp_a0->unk_57 = temp_s0[var_a2].unk_57;

    temp_s0[var_a2].unk_57 = temp_v0;
    temp_s0[temp_a0->unk_57].unk_58 = temp_v0;

    D_800F6538[temp_s4]++;

    temp_a0->unk_44 = arg2;
    temp_a0->unk_48 = arg0;
    temp_a0->unk_54 = arg1;
    temp_a0->unk_50 = D_800ECB14;
    temp_a0->unk_40 = var_f12;
    temp_a0->unk_4C = arg0->unk_80[arg1].unk_14;

    D_800F3100 += arg0->unk_80[arg1].unk_04;
}
#else
INCLUDE_ASM(s32, "2C0C0", func_8002D2CC);
#endif

Gfx* func_8002D614(s16 arg0, Gfx* arg1, Gfx* arg2) {
    unk2C0C0StructF0* temp_s0;
    Gfx* var_s7;
    s32 var_fp;
    s32 var_v1;
    s16 var_a1;
    s16 sp2E;
    s16 sp36;
    u8 sp3F;
    u8 sp47;
    u8 sp4F;
    s16 i;
    s16 j;
    s16 k;

    sp2E = func_80061228(0, 0, 230);
    var_s7 = D_800F37DC;

    if (arg2 != 0) {
        gSPDisplayList(D_800F37DC++, arg2);
    }

    var_fp = (D_800EE754 != 0);

    func_800230D8(arg0);

    sp3F = D_800ECB28->l.col[0];
    sp47 = D_800ECB28->l.col[1];
    sp4F = D_800ECB28->l.col[2];

    for (i = 0, sp36 = 0; i < 8; i++) {
        if (D_800F6538[i] == 2) {
            continue;
        }

        if (var_fp != 0) {
            gDPFullSync(D_800F37DC++);
            gSPEndDisplayList(D_800F37DC++);
            func_8001AAC4(var_s7, D_800EE754, 0, NULL, 0);
            var_s7 = D_800F37DC;
        }

        func_8001D7DC(arg0, &D_800F37DC);

        sp36++;
        var_fp = 1;
        D_800EE754 = i;

        gSPDisplayList(D_800F37DC++, arg1);

        D_800F0A60 = 0xFFFFFFFF;
        D_800F37B0 = 0xFFFFFFFF;
        D_800F375C = 0xFFFFFFFF;
        D_800F328C = 0;

        gSPNumLights(D_800F37DC++, D_800EE9A0[0]);

        for (j = 1; j < D_800EE9A0[0] + 1; j++) {
            gSPLight(D_800F37DC++, D_800ECB28 + j, j);
        }

        gSPLight(D_800F37DC++, D_800ECB28, D_800EE9A0[0] + 1);

        D_800ED6D8 = 255;
        D_800F3962 = 255;
        D_800F3710 = 255;

        func_80031BB4();

        var_a1 = D_800ED0D8[i]->unk_57;
        for (k = 2; k < D_800F6538[i]; k++) {
            temp_s0 = &D_800ED0D8[i][var_a1];

            D_800F3760 = sp3F;
            D_800F37D0 = sp47;
            D_800EDEB2 = sp4F;
            D_800EDEC8 = 0;
            D_800EE732 = 0;
            D_800EE322 = 0;

            func_80033FB0(&D_800F37DC, D_800EE9A0[0] + 1, (D_800F3760 << 0x18) + (D_800F37D0 << 0x10) + (D_800EDEB2 << 8));
            func_80033FB0(&D_800F37DC, 1, 0);
            func_800318D0(temp_s0->unk_4C);

            gSPMatrix(D_800F37DC++, osVirtualToPhysical(temp_s0->unk_44), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            D_800ECB14 = temp_s0->unk_50;
            func_8002CDEC(temp_s0->unk_48, temp_s0->unk_54);

            var_a1 = temp_s0->unk_57;
            if (D_800ED0D8[i][var_a1].unk_57 == 0) {
                break;
            }
        }
    }

    if (sp36 == 0) {
        gSPDisplayList(D_800F37DC++, arg1);
        gSPNumLights(D_800F37DC++, D_800EE9A0[0]);

        for (j = 1; j < D_800EE9A0[0] + 1; j++) {
            gSPLight(D_800F37DC++, D_800ECB28 + j, j);
        }

        gSPLight(D_800F37DC++, D_800ECB28, D_800EE9A0[0] + 1);
    }

    func_80061264(sp2E);

    return var_s7;
}

void func_8002DC84(unk2C0C0StructC0* arg0, s16 arg1) {
    s16 temp_v0_2;
    s16 var_s4;
    s16 var_s6;
    s16 var_t1;
    s16 temp_f2;
    s16 temp_f2_2;
    s16 var_a1;
    s16 var_a2;
    s16 var_a1_2;
    s32 temp_v0;
    s16 sp16;
    unk2C0C0Struct90* sp1C;
    unk2C0C0Struct80* sp24;
    Color_RGB8* var_a3;
    unk2C0C0Struct20* temp_s1;
    unk2C0C0Struct80* var_s0;
    unk2C0C0Struct90* temp_s2;
    unk2C0C0StructD0* temp_t2;
    unk2C0C0StructE0* var_a0;
    unk2C0C0StructA0* temp_t0;
    s16 i;

    D_800D6010 = &arg0->unk_80[arg1];
    sp16 = D_800D6010->unk_04;
    D_800F3292 = 0;
    D_800EE32C = D_800EE992;
    temp_s1 = D_800D6010->unk_34;
    sp1C = &arg0->unk_A8[temp_s1->unk_30];
    temp_v0 = D_800D6010->unk_14 &= ~0x00040000;

    if ((D_800ECB14 & 0x2001) == 0x2001) {
        func_80030D50(arg0, arg1);
    }

    var_s6 = var_s4 = temp_s1->unk_00 & 0x80;
    if (var_s4 != 0) {
        gSPClearGeometryMode(D_800F37DC++, G_LIGHTING);
    } else {
        gSPSetGeometryMode(D_800F37DC++, G_LIGHTING);
    }

    if (temp_s1->unk_32 >= 0) {
        sp24 = &arg0->unk_A4[temp_s1->unk_32];
    } else {
        sp24 = (unk2C0C0Struct80*) -1;
    }

    for (i = 0; i < sp16; i++) {
        temp_s1 = &arg0->unk_80[arg1].unk_34[i];
        if (temp_s1->unk_00 >= 3) {
            temp_s2 = &arg0->unk_A8[temp_s1->unk_30];

            if (temp_s1->unk_32 >= 0) {
                var_s0 = &arg0->unk_A4[temp_s1->unk_32];
            } else {
                var_s0 = (unk2C0C0Struct80*) -1;
            }

            var_s4 = temp_s1->unk_00 & 0x80;

            if (D_800EE992 - D_800EE32C >= 29 || sp1C != temp_s2 || sp24 != var_s0 || D_800F3292 >= 48 || var_s4 != var_s6) {
                sp1C = temp_s2;
                sp24 = var_s0;
                func_8002E488(arg0, &D_800D6010->unk_14);
                if (var_s4 != var_s6) {
                    if (var_s4 != 0) {
                        gSPClearGeometryMode(D_800F37DC++, G_LIGHTING);
                    } else {
                        gSPSetGeometryMode(D_800F37DC++, G_LIGHTING);
                    }
                    var_s6 = var_s4;
                }
                D_800F3292 = 0;
            }

            temp_t2 = &D_800EDA88[D_800F3292];
            temp_v0_2 = temp_t2->unk_00 = temp_s1->unk_00 & 0x7F;

            if (temp_v0_2 == 2) {
                continue;
            }

            temp_t2->unk_0C = temp_s2;
            temp_t2->unk_10 = var_s0;

            if (var_s0 != (unk2C0C0Struct80*) -1) {
                var_a1 = var_s0->unk_0C->unk_1A << 5;
                var_a2 = var_s0->unk_0C->unk_1B << 5;
            } else {
                var_a1 = var_a2 = 0;
            }

            if (temp_v0 & 0x20000) {
                arg0->unk_D0[D_800F546A].unk_00 = temp_v0_2;
            }

            for (var_t1 = 0; var_t1 < temp_v0_2; var_t1++) {
                temp_t0 = &arg0->unk_78[temp_s1->unk_04[var_t1]];

                if (var_s4 != 0) {
                    var_a3 = &arg0->unk_A8[temp_s1->unk_2C[var_t1]].unk_05;
                } else {
                    var_a3 = &arg0->unk_7C[temp_s1->unk_04[var_t1]];
                }

                temp_f2 = temp_s1->unk_0C[var_t1] * var_a1;
                temp_f2_2 = temp_s1->unk_1C[var_t1] * var_a2;

                var_a0 = &D_800F50BC[D_800EE992 - 1];
                if (temp_v0 & 0x20000) {
                    arg0->unk_D0[D_800F546A].unk_02[var_t1] = D_800EE992;
                    var_a1_2 = D_800EE32C;
                } else {
                    for (var_a1_2 = D_800EE992 - 1; var_a1_2 >= D_800EE32C; var_a1_2--, var_a0--) {
                        if (var_a0->unk_00 == temp_t0->unk_00 && var_a0->unk_02 == temp_t0->unk_02 && var_a0->unk_04 == temp_t0->unk_04
                            && (s8) var_a0->unk_0C.r == (s8) var_a3->r && (s8) var_a0->unk_0C.g == (s8) var_a3->g && (s8) var_a0->unk_0C.b == (s8) var_a3->b
                            && var_a0->unk_08 == temp_f2 && var_a0->unk_0A == temp_f2_2) {
                            break;
                        }
                    }
                }

                if (var_a1_2 <= D_800EE32C) {
                    var_a0 = &D_800F50BC[D_800EE992];
                    var_a0->unk_00 = temp_t0->unk_00;
                    var_a0->unk_02 = temp_t0->unk_02;
                    var_a0->unk_04 = temp_t0->unk_04;
                    var_a0->unk_0C.r = var_a3->r;
                    var_a0->unk_0C.g = var_a3->g;
                    var_a0->unk_0C.b = var_a3->b;
                    var_a0->unk_08 = temp_f2;
                    var_a0->unk_0A = temp_f2_2;
                    var_a0->unk_0F = 255;
                    temp_t2->unk_02[var_t1] = D_800EE992 - D_800EE32C;
                    temp_t2->unk_0A = var_s4;
                    D_800EE992++;
                    D_800F3F3C++;
                } else {
                    D_800ED4AC++;
                    temp_t2->unk_02[var_t1] = var_a1_2 - D_800EE32C;
                }
            }

            if (temp_v0 & 0x20000) {
                D_800F546A++;
            }

            D_800F3292++;
        }
    }

    if (D_800EE992 != D_800EE32C) {
        if (var_s4 != var_s6) {
            if (var_s4 != 0) {
                gSPClearGeometryMode(D_800F37DC++, G_LIGHTING);
            } else {
                gSPSetGeometryMode(D_800F37DC++, G_LIGHTING);
            }
        }

        func_8002E488(arg0, &D_800D6010->unk_14);
        gSPSetGeometryMode(D_800F37DC++, G_LIGHTING);
    }
}

void func_8002E488(unk2C0C0StructC0* arg0, u32* arg1) {
    unk2C0C0StructD0* temp_a1;
    unk2C0C0Struct70* temp_a3;
    unk2C0C0Struct90* temp_s3;
    unk2C0C0Struct80* temp_s4;
    u16 var_s0;
    u16 var_s1;
    u16 var_s2;
    s32 var_t0;
    s32 var_a0;
    s16 i;

    if (D_800F3292 == 0) {
        return;
    }

    temp_s3 = D_800EDA94[0];
    temp_s4 = D_800EDA94[1];

    func_80031054(temp_s3, temp_s4, *arg1);

    if (temp_s4 == (unk2C0C0Struct80*) -1) {
        if (D_800ECB14 & 512) {
            var_s2 = temp_s3->unk_01 * D_800F524C;
            if (var_s2 > 255) {
                var_s2 = 255;
            }
            var_s1 = temp_s3->unk_02 * D_800F524C;
            if (var_s1 > 255) {
                var_s1 = 255;
            }
            var_s0 = temp_s3->unk_03 * D_800F524C;
            if (var_s0 > 255) {
                var_s0 = 255;
            }

            if (D_800F3760 != var_s2 || D_800F37D0 != var_s1 || D_800EDEB2 != var_s0) {
                D_800F3760 = var_s2;
                D_800F37D0 = var_s1;
                D_800EDEB2 = var_s0;
                func_80033FB0(&D_800F37DC, D_800EE9A0[0] + 1, (D_800F3760 << 24) + (D_800F37D0 << 16) + (D_800EDEB2 << 8));
            }
        }

        var_s2 = temp_s3->unk_05.r * D_800F5028;
        if (var_s2 > 255) {
            var_s2 = 255;
        }
        var_s1 = temp_s3->unk_05.g * D_800F5028;
        if (var_s1 > 255) {
            var_s1 = 255;
        }
        var_s0 = temp_s3->unk_05.b * D_800F5028;
        if (var_s0 > 255) {
            var_s0 = 255;
        }

        if (D_800EE322 != var_s2 || D_800EE732 != var_s1 || D_800EDEC8 != var_s0) {
            D_800EE322 = var_s2;
            D_800EE732 = var_s1;
            D_800EDEC8 = var_s0;
            func_80033FB0(&D_800F37DC, 1, (D_800EE322 << 24) + (D_800EE732 << 16) + (D_800EDEC8 << 8));
        }
    } else {
        switch (temp_s4->unk_00) {
            case 42:
            case 43:
                var_s2 = temp_s3->unk_01 * D_800F524C;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s3->unk_02 * D_800F524C;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s3->unk_03 * D_800F524C;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
            case 41:
                var_s2 = D_800F524C * 255.0f;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = var_s0 = var_s2;
                break;
        }

        if ((D_800ECB14 & 0x200) && (D_800F3760 != var_s2 || D_800F37D0 != var_s1 || D_800EDEB2 != var_s0)) {
            D_800F3760 = var_s2;
            D_800F37D0 = var_s1;
            D_800EDEB2 = var_s0;
            func_80033FB0(&D_800F37DC, D_800EE9A0[0] + 1, (D_800F3760 << 24) + (D_800F37D0 << 16) + (D_800EDEB2 << 8));
        }

        switch (temp_s4->unk_00) {
            case 43:
                var_s2 = temp_s4->unk_05 * D_800F5028;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s4->unk_06 * D_800F5028;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s4->unk_07 * D_800F5028;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
            case 41:
                var_s2 = D_800F5028 * 255.0f;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s0 = var_s2;
                var_s1 = var_s0;
                break;
            default:
                var_s2 = temp_s3->unk_05.r * D_800F5028;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s3->unk_05.g * D_800F5028;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s3->unk_05.b * D_800F5028;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
        }

        if (D_800EE322 != var_s2 || D_800EE732 != var_s1 || D_800EDEC8 != var_s0) {
            D_800EE322 = var_s2;
            D_800EE732 = var_s1;
            D_800EDEC8 = var_s0;
            func_80033FB0(&D_800F37DC, 1, (D_800EE322 << 24) + (D_800EE732 << 16) + (D_800EDEC8 << 8));
        }

        if (temp_s4->unk_0C->unk_24 != D_800F328C && !(*arg1 & 0x0E000000)) {
            D_800F64FA++;
            temp_a3 = temp_s4->unk_0C;
            D_800F328C = temp_a3->unk_24;

            if (temp_s4->unk_03 != -1) {
                var_t0 = temp_s4->unk_03 << 24;
                *arg1 |= 0x40000;
            } else {
                var_t0 = temp_a3->unk_24;
            }

            if (temp_a3->unk_18 != 2) {
                gDPSetTextureLUT(D_800F37DC++, G_TT_NONE);

                if (temp_a3->unk_19 != 0) {
                    switch (temp_a3->unk_19) {
                        case G_IM_SIZ_16b:
                            D_800ED568 = G_IM_SIZ_16b_LOAD_BLOCK;
                            D_800ED734 = G_IM_SIZ_16b_INCR;
                            D_800F64C0 = G_IM_SIZ_16b_BYTES;
                            D_800EC6F4 = G_IM_SIZ_16b_LINE_BYTES;
                            D_800F37E4 = G_IM_SIZ_16b_SHIFT;
                            break;
                        case G_IM_SIZ_8b:
                            D_800ED568 = G_IM_SIZ_8b_LOAD_BLOCK;
                            D_800ED734 = G_IM_SIZ_8b_INCR;
                            D_800F64C0 = G_IM_SIZ_8b_BYTES;
                            D_800EC6F4 = G_IM_SIZ_8b_LINE_BYTES;
                            D_800F37E4 = G_IM_SIZ_8b_SHIFT;
                            break;
                        case G_IM_SIZ_4b:
                            D_800ED568 = G_IM_SIZ_4b_LOAD_BLOCK;
                            D_800ED734 = G_IM_SIZ_4b_INCR;
                            D_800F64C0 = G_IM_SIZ_4b_BYTES;
                            D_800EC6F4 = G_IM_SIZ_4b_LINE_BYTES;
                            D_800F37E4 = G_IM_SIZ_4b_SHIFT;
                            break;
                        default:
                            D_800ED568 = G_IM_SIZ_32b_LOAD_BLOCK;
                            D_800ED734 = G_IM_SIZ_32b_INCR;
                            D_800F64C0 = G_IM_SIZ_32b_BYTES;
                            D_800EC6F4 = G_IM_SIZ_32b_LINE_BYTES;
                            D_800F37E4 = G_IM_SIZ_32b_SHIFT;
                            break;
                    }

                    gDPSetTextureImage(D_800F37DC++, temp_a3->unk_18, D_800ED568, 1, var_t0);
                    gDPSetTile(D_800F37DC++, temp_a3->unk_18, D_800ED568, 0, 0x0000, G_TX_LOADTILE, 0,
                        temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD,
                        temp_s4->unk_01, INTEGER_LOG2(temp_a3->unk_1A), G_TX_NOLOD);
                    gDPLoadSync(D_800F37DC++);
                    gDPLoadBlock(D_800F37DC++, G_TX_LOADTILE, 0, 0,
                        ((temp_a3->unk_1A * temp_a3->unk_1B + D_800ED734) >> D_800F37E4) - 1,
                        CALC_DXT(temp_a3->unk_1A, D_800F64C0));
                    gDPPipeSync(D_800F37DC++);
                    gDPSetTile(D_800F37DC++, temp_a3->unk_18, temp_a3->unk_19,
                        (temp_a3->unk_1A * D_800EC6F4 + 7) >> 3, 0x0000, G_TX_RENDERTILE, 0,
                        temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD,
                        temp_s4->unk_01, INTEGER_LOG2(temp_a3->unk_1A), G_TX_NOLOD);
                    gDPSetTileSize(D_800F37DC++, G_TX_RENDERTILE, 0, 0, (temp_a3->unk_1A - 1) * 4, (temp_a3->unk_1B - 1) * 4);
                } else if (temp_a3->unk_1A < 16) {
                    gDPLoadTextureTile_4b(D_800F37DC++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B,
                        0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                        INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                } else {
                    gDPLoadTextureBlock_4b(D_800F37DC++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                        temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                        G_TX_NOLOD, G_TX_NOLOD);
                }
            } else {
                gDPSetTextureLUT(D_800F37DC++, G_TT_RGBA16);

                if (temp_s4->unk_04 != -1) {
                    var_a0 = temp_s4->unk_04 << 24;
                    *arg1 |= 0x40000;
                } else {
                    var_a0 = temp_a3->unk_2C->unk_24;
                }

                if (temp_a3->unk_2C->unk_1A < 17) {
                    gDPLoadTLUT_pal16(D_800F37DC++, 0, var_a0);

                    if (temp_a3->unk_1A < 16) {
                        gDPLoadTextureTile_4b(D_800F37DC++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B,
                            0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                            INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                    } else {
                        gDPLoadTextureBlock_4b(D_800F37DC++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                            temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                            G_TX_NOLOD, G_TX_NOLOD);
                    }
                } else {
                    gDPLoadTLUT_pal256(D_800F37DC++, var_a0);

                    if (temp_a3->unk_1A < 8) {
                        gDPLoadTextureTile(D_800F37DC++, var_t0, temp_a3->unk_18, G_IM_SIZ_8b, temp_a3->unk_1A, temp_a3->unk_1B,
                            0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                            INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                    } else {
                        gDPLoadTextureBlockYuv(D_800F37DC++, var_t0, temp_a3->unk_18, G_IM_SIZ_8b, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                            temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                            G_TX_NOLOD, G_TX_NOLOD);
                    }
                }
            }
        }
    }

    gSPVertex(D_800F37DC++, D_800EE32C * 16 + 0x01000000, D_800EE992 - D_800EE32C, 0);

    for (i = 0; i < D_800F3292; i++) {
        temp_a1 = &D_800EDA88[i];
        if (temp_a1->unk_00 == 3) {
            D_800ED194++;
            gSP1Triangle(D_800F37DC++, temp_a1->unk_02[0], temp_a1->unk_02[1], temp_a1->unk_02[2], 0);
        } else {
            D_800ED194 += 2;
            gSP1Quadrangle(D_800F37DC++, temp_a1->unk_02[0], temp_a1->unk_02[1], temp_a1->unk_02[2], temp_a1->unk_02[3], 0);
        }
    }

    D_800EE32C = D_800EE992;
}

void func_80030D50(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0StructE0* temp_t2;

    gSPClearGeometryMode(D_800F37DC++, G_LIGHTING);

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC[D_800EE992++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    gSPVertex(D_800F37DC++, D_800EE32C * 16 + 0x01000000, D_800EE992 - D_800EE32C, 0);

    D_800EE32C = D_800EE992;

    gSPCullDisplayList(D_800F37DC++, 0, 7);
}

INCLUDE_ASM(s32, "2C0C0", func_80031054);

void func_800318D0(u16 arg0) {
    u8 temp_v1;

    temp_v1 = (arg0 >> 7) & 3;
    if (temp_v1 != D_800F3710) {
        D_800F3710 = temp_v1;
        gDPSetTextureFilter(D_800F37DC++, G_TF_POINT | D_800C3508[temp_v1]);
    }

    if (D_800F3842 != D_800F3962) {
        D_800F3962 = D_800F3842;
        if (D_800F3842 == 0) {
            gSPSetGeometryMode(D_800F37DC++, G_SHADING_SMOOTH);
        } else {
            gSPClearGeometryMode(D_800F37DC++, G_SHADING_SMOOTH);
        }
    }

    temp_v1 = (arg0 >> 9) & 3;
    if (temp_v1 != D_800ED6D8) {
        D_800ED6D8 = temp_v1;
        switch (temp_v1) {
            case 0:
                gDPSetColorDither(D_800F37DC++, G_CD_DISABLE);
                break;
            case 1:
                gDPSetColorDither(D_800F37DC++, G_CD_NOISE);
                break;
            case 2:
                gDPSetColorDither(D_800F37DC++, G_CD_BAYER);
                break;
            case 3:
                gDPSetColorDither(D_800F37DC++, G_CD_MAGICSQ);
                break;
            }
    }

    if (D_800EE988 != 0) {
        gSPFogFactor(D_800F37DC++, 500 * 256 / (D_800ED0D0 - D_800F65DA), (500 - D_800F65DA) * 256 / (D_800ED0D0 - D_800F65DA));
        gDPSetFogColor(D_800F37DC++, D_800F2CF9, D_800F3FF4, D_800EDEBC, 255);
    }
}

void func_80031BB4(void) {
    gMoveWd(D_800F37DC++, G_MW_CLIP, G_MWO_CLIP_RNX, *(D_800ED0C8 * 2 + &D_800C3510[0]));
    gMoveWd(D_800F37DC++, G_MW_CLIP, G_MWO_CLIP_RNY, *(D_800ED0C8 * 2 + &D_800C3510[0]));
    gMoveWd(D_800F37DC++, G_MW_CLIP, G_MWO_CLIP_RPX, *(D_800ED0C8 * 2 + &D_800C3510[1]));
    gMoveWd(D_800F37DC++, G_MW_CLIP, G_MWO_CLIP_RPY, *(D_800ED0C8 * 2 + &D_800C3510[1]));
}

void func_80031C60(unk2C0C0StructC0* arg0, s32 arg1, s16 arg2) {
    if (D_800F375C != arg1 || arg1 & 0x0E000000) {
        D_800F375C = arg1;

        gSPDisplayList(D_800F37DC++, D_800C34B0);

        if (arg1 & 0x2000) {
            gSPSetGeometryMode(D_800F37DC++, G_CULL_BACK);
        }

        if (D_800EE988 != 0) {
            gDPSetCycleType(D_800F37DC++, G_CYC_2CYCLE);
            gSPSetGeometryMode(D_800F37DC++, G_FOG);
        }

        if (arg1 & 0x06000000) {
            func_80032C98(arg0, arg2);
        } else if (arg1 & 0x08000000) {
            func_80031D78(arg0, arg2);
        }
    }
}

void func_80031D78(unk2C0C0StructC0* arg0, s16 arg1) {
    Mtx sp30;
    unk2C0C0Struct70* var_a0;

    if (arg0->unk_80[arg1].unk_30 != 255) {
        gDPPipeSync(D_800F37DC++);

        guLookAtReflect(&sp30, &D_800F09FC->unk_40, 0, 40.0f, 200.0f, 0, 0, 0, 0, -1.0f, 0);

        gSPLookAt(D_800F37DC++, &D_800F09FC->unk_40);
        gSPTexture(D_800F37DC++, 1984, 1984, 0, G_TX_RENDERTILE, G_ON);

        if (arg0->unk_BC == 0) {
            var_a0 = arg0->unk_A4[arg0->unk_80[arg1].unk_30].unk_0C;
        } else {
            var_a0 = arg0->unk_BC;
        }

        func_80031F14(var_a0, 0, 0);

        gSPSetGeometryMode(D_800F37DC++, G_LIGHTING | G_TEXTURE_GEN);
    }
}

void func_80031F14(unk2C0C0Struct70* arg0, s32 arg1, s32 arg2) {
    if (arg0->unk_18 != 2) {
        gDPSetTextureLUT(D_800F37DC++, G_TT_NONE);

        switch (arg0->unk_19) {
            case G_IM_SIZ_16b:
                D_800ED568 = G_IM_SIZ_16b_LOAD_BLOCK;
                D_800ED734 = G_IM_SIZ_16b_INCR;
                D_800F64C0 = G_IM_SIZ_16b_BYTES;
                D_800EC6F4 = G_IM_SIZ_16b_LINE_BYTES;
                D_800F37E4 = G_IM_SIZ_16b_SHIFT;
                break;
            case G_IM_SIZ_8b:
                D_800ED568 = G_IM_SIZ_8b_LOAD_BLOCK;
                D_800ED734 = G_IM_SIZ_8b_INCR;
                D_800F64C0 = G_IM_SIZ_8b_BYTES;
                D_800EC6F4 = G_IM_SIZ_8b_LINE_BYTES;
                D_800F37E4 = G_IM_SIZ_8b_SHIFT;
                break;
            case G_IM_SIZ_4b:
                D_800ED568 = G_IM_SIZ_4b_LOAD_BLOCK;
                D_800ED734 = G_IM_SIZ_4b_INCR;
                D_800F64C0 = G_IM_SIZ_4b_BYTES;
                D_800EC6F4 = G_IM_SIZ_4b_LINE_BYTES;
                D_800F37E4 = G_IM_SIZ_4b_SHIFT;
                break;
            default:
                D_800ED568 = G_IM_SIZ_32b_LOAD_BLOCK;
                D_800ED734 = G_IM_SIZ_32b_INCR;
                D_800F64C0 = G_IM_SIZ_32b_BYTES;
                D_800EC6F4 = G_IM_SIZ_32b_LINE_BYTES;
                D_800F37E4 = G_IM_SIZ_32b_SHIFT;
                break;
        }

        gDPSetTextureImage(D_800F37DC++, arg0->unk_18, D_800ED568, 1, arg0->unk_24);
        gDPSetTile(D_800F37DC++, arg0->unk_18, D_800ED568, 0, 0x0000, G_TX_LOADTILE, 0,
            arg2, INTEGER_LOG2(arg0->unk_1B), G_TX_NOLOD, arg1, INTEGER_LOG2(arg0->unk_1A), G_TX_NOLOD);
        gDPLoadSync(D_800F37DC++);
        gDPLoadBlock(D_800F37DC++, G_TX_LOADTILE, 0, 0,
            ((arg0->unk_1A * arg0->unk_1B + D_800ED734) >> D_800F37E4) - 1,
            CALC_DXT(arg0->unk_1A, D_800F64C0));
        gDPPipeSync(D_800F37DC++);
        gDPSetTile(D_800F37DC++, arg0->unk_18, arg0->unk_19, (arg0->unk_1A * D_800EC6F4 + 7) >> 3, 0x0000, G_TX_RENDERTILE, 0,
            arg2, INTEGER_LOG2(arg0->unk_1B), G_TX_NOLOD, arg1, INTEGER_LOG2(arg0->unk_1A), G_TX_NOLOD);
        gDPSetTileSize(D_800F37DC++, G_TX_RENDERTILE, 0, 0, (arg0->unk_1A - 1) * 4, (arg0->unk_1B - 1) * 4);
    } else {
        gDPSetTextureLUT(D_800F37DC++, G_TT_RGBA16);

        if (arg0->unk_2C->unk_1A < 17) {
            gDPLoadTLUT_pal16(D_800F37DC++, 0, arg0->unk_2C->unk_24);
            gDPLoadTextureBlock_4b(D_800F37DC++, arg0->unk_24, arg0->unk_18, arg0->unk_1A, arg0->unk_1B, 0,
                arg1, arg2, INTEGER_LOG2(arg0->unk_1A), INTEGER_LOG2(arg0->unk_1B), 0, 0);
        } else {
            gDPLoadTLUT_pal256(D_800F37DC++, arg0->unk_2C->unk_24);
            gDPLoadTextureBlockYuv(D_800F37DC++, arg0->unk_24, arg0->unk_18, G_IM_SIZ_8b, arg0->unk_1A, arg0->unk_1B, 0,
                arg1, arg2, INTEGER_LOG2(arg0->unk_1A), INTEGER_LOG2(arg0->unk_1B), 0, 0);
        }
    }
}

void func_80032C98(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct90* temp_a0;
    s32 timg;
    Mtx sp50;

    gDPPipeSync(D_800F37DC++);
    guLookAtHilite(&sp50, &D_800F09FC->unk_40, &D_800F09FC->unk_00,
        D_800F32A0->coords.x, D_800F32A0->coords.y, D_800F32A0->coords.z,
        D_800F32A0->unk_0C, D_800F32A0->unk_10, D_800F32A0->unk_14,
        D_800F32A0->unk_18, D_800F32A0->unk_1C, D_800F32A0->unk_20, 0, 0, 115.0f, 0, 0, 115.0f, 32, 32);
    gSPLookAt(D_800F37DC++, &D_800F09FC->unk_40);

    temp_a0 =  &arg0->unk_A8[arg0->unk_80[arg1].unk_34->unk_30];
    gDPSetPrimColor(D_800F37DC++, 0, 0, temp_a0->unk_09, temp_a0->unk_0A, temp_a0->unk_0B, 255);
    gDPSetEnvColor(D_800F37DC++, 64, 64, 64, 128);
    gSPDisplayList(D_800F37DC++, D_800C4140);

    timg = D_800C4174[(arg0->unk_80[arg1].unk_14 >> 25) % 4];
    gDPLoadTextureBlock(D_800F37DC++, timg, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
    gDPSetTileSize(D_800F37DC++, G_TX_RENDERTILE, D_800F09FC->unk_00.h.x1, D_800F09FC->unk_00.h.y1,
        D_800F09FC->unk_00.h.x1 + 124, D_800F09FC->unk_00.h.y1 + 124);

    if (arg0->unk_80[arg1].unk_14 & 0x10000) {
        gDPSetRenderMode(D_800F37DC++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    } else {
        gDPSetRenderMode(D_800F37DC++, G_RM_ZB_OVL_SURF, G_RM_ZB_OVL_SURF2);
    }

    D_800F328C = 0;
    D_800F0A60 = 0xFFFFFFFF;
    D_800F37B0 = 0xFFFFFFFF;
}

s32 func_8003305C(unk2C0C0StructC0* arg0, s16 arg1, Matrix4f arg2, Matrix4f arg3) {
    if (!(arg0->unk_80[arg1].unk_14 & 0x70000000)) {
        return 0;
    }

    MtxReset(arg2, arg3);
    return 1;
}

INCLUDE_ASM(s32, "2C0C0", func_800330BC);

INCLUDE_ASM(s32, "2C0C0", func_80033408);

INCLUDE_ASM(s32, "2C0C0", func_800334A0);

s16 func_80033718(unk2C0C0StructC0* arg0, u8* arg1) {
    s16 temp_a1;
    s16 i;

    temp_a1 = func_8001CD00(arg1);
    for (i = 0; i < arg0->unk_6A; i++) {
        if (arg0->unk_80[i].unk_08 == temp_a1) {
            break;
        }
    }

    if (i == arg0->unk_6A) {
        osSyncPrintf(D_800CA95C, arg1);
        return -1;
    }

    return i;
}

INCLUDE_ASM(s32, "2C0C0", func_800337E4);

INCLUDE_ASM(s32, "2C0C0", func_80033830);

void func_8003394C(unk2C0C0StructC0* arg0) {
    if (arg0->unk_6E != 0) {
        D_800F5030 = 0;
        D_800F33D4 = 0;

        func_800A2A50(D_800F54C0[0]);
        func_800A2A50(D_800F4020[0]);

        if (arg0->unk_A0 == (unk2C0C0Struct50*)-1) {
            if (arg0->unk_84 != 0) {
                func_800339E0(arg0, 0);
            }
        } else if (arg0->unk_70 != 0) {
            func_80033CBC(arg0, 0);
        }
    }
}

void func_800339E0(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct40* temp_s1 = &arg0->unk_88[arg1];
    s16 var_s3 = 0;
    s16 var_s0 = 0;
    Matrix4f sp10;
    Matrix4f sp50;

    func_800A2A50(sp10);

    if (arg0->unk_AC == 0) {
        if (temp_s1->unk_08 != 0.0f || temp_s1->unk_0C != 0.0f || temp_s1->unk_10 != 0.0f) {
            MtxTranslate(sp10, temp_s1->unk_08, temp_s1->unk_0C, temp_s1->unk_10);
            var_s0 = 1;
        }

        if (temp_s1->unk_14 != 0.0f || temp_s1->unk_18 != 0.0f || temp_s1->unk_1C != 0.0f) {
            MtxRotate(sp10, temp_s1->unk_14, temp_s1->unk_18, temp_s1->unk_1C);
            var_s0 = 1;
        }
    }

    if (temp_s1->unk_20 != 1.0f || temp_s1->unk_24 != 1.0f || temp_s1->unk_28 != 1.0f) {
        MtxScale(sp10, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);
        func_800A2A50(sp50);
        MtxScale(sp50, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);

        D_800F5030++;
        MtxMult(sp50, D_800F3FE0[D_800F5030], D_800F3FE0[D_800F5030 + 1]);

        var_s3 = 1;
        var_s0 = 1;
    }

    if (var_s0 != 0) {
        D_800F33D4++;
        MtxMult(sp10, D_800F5480[D_800F33D4], D_800F5480[D_800F33D4 + 1]);
    }

    func_8002C37C(temp_s1->unk_4C, D_800F54C0[D_800F33D4]);

    if (temp_s1->unk_04 != 0) {
        func_800339E0(arg0, arg1 + temp_s1->unk_04);
    }

    if (var_s0) {
        D_800F33D4--;
    }

    if (var_s3) {
        D_800F5030--;
    }

    if (temp_s1->unk_02 != 0) {
        func_800339E0(arg0, arg1 + temp_s1->unk_02);
    }
}

void func_80033CBC(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct50* temp_s1 = &arg0->unk_A0[arg1];
    s16 var_s5 = 0;
    s16 var_s2 = 0;
    s16 i;
    Matrix4f sp10;
    Matrix4f sp50;

    func_800A2A50(sp10);

    if (temp_s1->unk_08 != 0.0f || temp_s1->unk_0C != 0.0f || temp_s1->unk_10 != 0.0f) {
        MtxTranslate(sp10, temp_s1->unk_08, temp_s1->unk_0C, temp_s1->unk_10);
        var_s2 = 1;
    }

    if (temp_s1->unk_14 != 0.0f || temp_s1->unk_18 != 0.0f || temp_s1->unk_1C != 0.0f) {
        MtxRotate(sp10, temp_s1->unk_14, temp_s1->unk_18, temp_s1->unk_1C);
        var_s2 = 1;
    }

    if (temp_s1->unk_20 != 1.0f || temp_s1->unk_24 != 1.0f || temp_s1->unk_28 != 1.0f) {
        MtxScale(sp10, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);
        func_800A2A50(sp50);
        MtxScale(sp50, temp_s1->unk_20, temp_s1->unk_24, temp_s1->unk_28);

        D_800F5030++;
        MtxMult(sp50, D_800F3FE0[D_800F5030], D_800F3FE0[D_800F5030 + 1]);

        var_s5 = 1;
        var_s2 = 1;
    }

    if (var_s2) {
        D_800F33D4++;
        MtxMult(sp10, D_800F5480[D_800F33D4], D_800F5480[D_800F33D4 + 1]);
    }

    func_8002C37C(temp_s1->unk_64, D_800F54C0[D_800F33D4]);

    for (i = 0; i < temp_s1->unk_00; i++) {
        if ((temp_s1->unk_04[i] & 0x8000) && (temp_s1->unk_04[i] != -1)) {
            func_80033CBC(arg0, temp_s1->unk_04[i] & ~0x8000);
        }
    }

    if (var_s2) {
        D_800F33D4--;
    }

    if (var_s5) {
        D_800F5030--;
    }
}

// Matches but needs rodata
#ifdef NON_MATCHING
void func_80033FB0(Gfx** arg0, s16 arg1, s32 arg2) {
    switch (arg1) {
        case 0:
        case 1:
            gSPLightColor((*arg0)++, LIGHT_1, arg2);
            break;
        case 2:
            gSPLightColor((*arg0)++, LIGHT_2, arg2);
            break;
        case 3:
            gSPLightColor((*arg0)++, LIGHT_3, arg2);
            break;
        case 4:
            gSPLightColor((*arg0)++, LIGHT_4, arg2);
            break;
        case 5:
            gSPLightColor((*arg0)++, LIGHT_5, arg2);
            break;
        case 6:
            gSPLightColor((*arg0)++, LIGHT_6, arg2);
            break;
        case 7:
            gSPLightColor((*arg0)++, LIGHT_7, arg2);
            break;
        default:
            gSPLightColor((*arg0)++, LIGHT_8, arg2);
            break;
    }
}
#else
INCLUDE_ASM(s32, "2C0C0", func_80033FB0);
#endif
