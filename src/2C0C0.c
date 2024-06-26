#include "common.h"
#include "PR/os.h"
#include "engine/mallocblock.h"

typedef struct unk2C0C0Struct10 {
    /* 0x00 */ Hilite unk_00;
    /* 0x10 */ char unk_10[0x30];
    /* 0x40 */ LookAt unk_40;
} unk2C0C0Struct10; //sizeof 0x60

typedef struct unk2C0C0StructD0 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02[4];
    /* 0x0A */ s8 unk_0A;
    /* 0x0B */ char unk_0B;
    /* 0x0C */ unk2C0C0Struct90* unk_0C;
    /* 0x10 */ unk2C0C0Struct80* unk_10;
} unk2C0C0StructD0; //sizeof 0x14

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
void func_800230D0_23CD0(s32);
void func_8001AAC4_1B6C4(Gfx*, u16, s32, OSMesgQueue*, s32);
s16 func_8001CD00_1D900(char*);
void func_8001D40C_1E00C(void);
void func_8001D7DC_1E3DC(s16, Gfx**);
void func_80023040_23C40(void);
void func_800230D0(s32);
void func_800230D8_23CD8(s16);
void func_80023370_23F70();
void func_800239EC_245EC(void);
void func_8002B890_2C490(unk2C0C0StructC0*);
void func_8002BCD4_2C8D4(unk2C0C0StructC0*);
void func_8002BDC0_2C9C0(unk2C0C0StructC0*);
void func_8002BEC4_2CAC4(unk2C0C0StructC0*);
void func_8002C37C_2CF7C(Matrix4f, Matrix4f);
void func_8002C400_2D000(unk2C0C0StructC0*, s16);
void func_8002C858_2D458(unk2C0C0StructC0*, s32);
void func_8002D2CC_2DECC(unk2C0C0StructC0*, s32, void*, Matrix4f);
void func_8002DC84_2E884(unk2C0C0StructC0*, s16);
void func_8002E488_2F088(unk2C0C0StructC0*, u32*);
void func_80030D50_31950(unk2C0C0StructC0*, s16);
void func_80031054_31C54(unk2C0C0Struct90*, unk2C0C0Struct80*, s32);
void func_800318D0_324D0(u16);
void func_80031BB4_327B4(void);
void func_80031C60_32860(unk2C0C0StructC0*, s32, s16);
void func_80031F14_32B14(unk2C0C0Struct70*, s32, s32);
void func_80032C98_33898(unk2C0C0StructC0*, s16);
s32 func_8003305C_33C5C(unk2C0C0StructC0*, s16, Matrix4f, Matrix4f);
void func_800339E0(unk2C0C0StructC0*, s16);
void func_80033CBC_348BC(unk2C0C0StructC0*, s16);
void func_80033FB0_34BB0(Gfx**, s16, s32);
void func_80034ED8_35AD8(unk2C0C0StructC0*, s32, s32, s32);
void func_8003589C_3649C(unk2C0C0StructC0*, s32, s32);
void func_80037CE0_388E0(void);
void func_80039D10_3A910(unk2C0C0StructC0*);
s16 func_80061228_61E28(s32, s32, s32);
void func_80061264_61E64(s16);
void func_8009E7E0_9F3E0(Matrix4f, f32, f32, f32);
void func_8009EA40_9F640(Matrix4f, f32, f32, f32);
void func_800A0A20_A1620(Matrix4f, void*);
void func_800A2A50_A3650(Matrix4f);
void guLookAtHilite (Mtx*, LookAt*, Hilite*, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, s32, s32);
void guLookAtReflect(Mtx*, LookAt*, f32, f32, f32, f32, f32, f32, f32, f32, f32);
void guMtxIdentF(Matrix4f);
void* func_80023668_24268(s32);
void MtxMult(Matrix4f, Matrix4f, Matrix4f);
u32 MtxReset(Matrix4f, Matrix4f);
void MtxScale(Matrix4f, f32, f32, f32);
void MtxTranslate(Matrix4f, f32, f32, f32);
void osSyncPrintf(const char*, ...);
u32 osVirtualToPhysical(void*);
void func_80031D78_32978(unk2C0C0StructC0* arg0, s16 arg1);

extern Gfx D_800C34B0_C40B0[];
extern u8 D_800C3500_C4100[];
extern s16 D_800C3508_C4108[];
extern s32* D_800C3510_C4110[];
extern Gfx D_800C4140_C4D40[];
extern s32 D_800C4174_C4D74[];
extern char D_800CA8F8_CB4F8[];
extern char D_800CA908[];
extern char D_800CA91C[];
extern char D_800CA928[];
extern char D_800CA938[];
extern char D_800CA95C[];
extern unk2C0C0Struct30* D_800D6010_D60A0;
extern s8 D_800EC6E8_EC778;
extern u16 D_800EC6F2_EC782;
extern u32 D_800EC6F4_EC784;
extern s32 D_800ECB14_ECBA4;
extern Light* D_800ECB28_ECBB8;
extern u8 D_800ECB30_ECBC0;
extern u8 D_800ED0C8_ED158;
extern s16 D_800ED0D0_ED160;
extern unk2C0C0StructF0* D_800ED0D8_ED168[];
extern s16 D_800ED194_ED224;
extern s16 D_800ED4AC_ED53C;
extern s16 D_800ED52C_ED5BC;
extern s32 D_800ED568_ED5F8;
extern void* D_800ED5E8_ED678[];
extern u8 D_800ED6D8_ED768;
extern u32 D_800ED734_ED7C4;
extern unk2C0C0StructD0 D_800EDA88_EDB18[];
extern void* D_800EDA94_EDB24[]; // weird: contains both unk2C0C0Struct80* and unk2C0C0Struct90*
extern u16 D_800EDEB2_EDF42;
extern u8 D_800EDEBC_EDF4C;
extern u16 D_800EDEC8_EDF58;
extern u16 D_800EE322_EE3B2;
extern s16 D_800EE32C_EE3BC;
extern s16 D_800EE32E_EE3BE;
extern u16 D_800EE732_EE7C2;
extern u8 D_800EE754_EE7E4;
extern u8 D_800EE988_EEA18;
extern s16 D_800EE992_EEA22;
extern s16 D_800EE9A0_EEA30[];
extern unk2C0C0Struct10* D_800F09FC_F0A8C;
extern s64 D_800F0A60_F0AF0;
extern u8 D_800F2CF9_F2D89;
extern s16 D_800F3100_F3190;
extern u8* D_800F328C_F331C;
extern s16 D_800F3292_F3322;
extern s8 D_800F329C_F332C;
extern s16 D_800F33D4_F3464;
extern unk2C0C0Struct10 D_800F3400_F3490[];
extern u8 D_800F3710_F37A0;
extern Gfx* D_800F3720_F37B0[];
extern void* D_800F374C_F37DC; // points to something of size 0x40 (Matrix4f?)
extern s32 D_800F375C_F37EC;
extern u16 D_800F3760_F37F0;
extern s64 D_800F37B0_F3840;
extern s16 D_800F37C8_F3858;
extern u16 D_800F37D0_F3860;
extern s16 D_800F37D8_F3868;
extern u8 D_800F37DA_F386A;
extern Gfx* D_800F37DC_F386C;
extern Gfx* D_800F37E0_F3870;
extern s32 D_800F37E4_F3874;
extern u8 D_800F3842_F38D2;
extern s32 D_800F3848_F38D8;
extern u16 D_800F3854_F38E4;
extern u8 D_800F3962_F39F2;
extern s16 D_800F3F3C_F3FCC;
extern Matrix4f D_800F3FE0_F4070[];
extern u8 D_800F3FF4_F4084;
extern Matrix4f D_800F4020_F40B0[];
extern f32 D_800F5028_F50B8;
// extern u16 D_800F502C_F50BC;
extern s16 D_800F5030_F50C0;
extern u16 D_800F50BA_F514A;
extern unk2C0C0StructE0* D_800F50BC_F514C;
extern f32 D_800F524C_F52DC;
extern s16 D_800F546A_F54FA;
extern Matrix4f D_800F5480_F5510[];
extern Matrix4f D_800F54C0_F5550[];
extern Matrix4f D_800F5500_F5590;
extern u32 D_800F64C0_F6550;
extern s16 D_800F64FA_F658A;
extern unk2C0C0StructE0* D_800F6500_F6590[];
extern s16 D_800F6538_F65C8[];
extern s16 D_800F65DA_F666A;

void func_8002B4C0_2C0C0(void* (*arg0)(s32), void (*arg1)(void*), u16 arg2, u16 arg3, u16 arg4, u8 arg5) {
    s16 i;

    D_800F37DA_F386A = arg5;
    D_800F37F0_F3880 = 0;

    func_800235F0_241F0(arg0, arg1);

    D_800F37D8_F3868 = arg2;
    D_800EC6F2_EC782 = arg4;
    D_800F50BA_F514A = arg3;

    for (i = 0; i < arg5; i++) {
        D_800F6500_F6590[i] = func_80023668_24268(arg2 * sizeof(unk2C0C0StructE0));
        D_800ED5E8_ED678[i] = func_80023668_24268(arg4 * 64);
        D_800F3720_F37B0[i] = func_80023668_24268(arg3 * sizeof(Gfx));
    }

    for (i = 0; i < 8; i++) {
        D_800ED0D8_ED168[i] = func_80023668_24268(D_800C3500_C4100[i] * sizeof(unk2C0C0StructF0));
    }

    func_80023040_23C40();
    func_80037CE0_388E0();

    D_800ECB30_ECBC0 = 1;
    D_800EC6E8_EC778 = 2;
    D_800F329C_F332C = 2;
    D_800F524C_F52DC = 1.0f;
    D_800F5028_F50B8 = 1.0f;
    D_800EE988_EEA18 = 0;
    D_800EDEBC_EDF4C = 255;
    D_800F3FF4_F4084 = 255;
    D_800F2CF9_F2D89 = 255;
    D_800F65DA_F666A = 950;
    D_800ED0D0_ED160 = 1000;
    D_800ED0C8_ED158 = 1;
}

void func_8002B6C8_2C2C8(void) {
    func_800239EC_245EC();

    if (D_800F3854_F38E4 != 0) {
        s32 temp_v0 = D_800F37F0_F3880;

        D_800F50BC_F514C = D_800F6500_F6590[temp_v0];
        D_800F374C_F37DC = D_800ED5E8_ED678[temp_v0];
        D_800F37E0_F3870 = D_800F37DC_F386C = D_800F3720_F37B0[temp_v0];
        D_800F09FC_F0A8C = &D_800F3400_F3490[temp_v0];

        if (++D_800F37F0_F3880 >= D_800F37DA_F386A) {
            D_800F37F0_F3880 = 0;
        }

        func_800230D0_23CD0(temp_v0);

        D_800EE992_EEA22 = 0;
        D_800ED52C_ED5BC = 0;
        D_800F37C8_F3858 = 0;
        D_800F64FA_F658A = 0;
        D_800EE754_EE7E4 = 0;
        D_800F3100_F3190 = 0;
        D_800F64F6_F6586 = 0;
        D_800ED194_ED224 = 0;
        D_800F3F3C_F3FCC = 0;
        D_800ED4AC_ED53C = 0;

        func_8001D40C_1E00C();

        D_800F3848_F38D8++;
    }
}

void func_8002B808_2C408(void) {
    unk2C0C0StructF0** temp_v1;
    s16 i;

    for (i = 0; i < 8; i++) {
        D_800F6538_F65C8[i] = 2;

        temp_v1 = &D_800ED0D8_ED168[i];
        (*temp_v1)->unk_57 = 1;
        (*temp_v1 + 1)->unk_58 = 0;
        (*temp_v1 + 1)->unk_57 = 0;
        (*temp_v1 + 1)->unk_40 = 200000.0f;
    }
}

const f32 D_800CA8F0_CB4F0 = 0.9f;
const f32 D_800CA8F4_CB4F4 = 1.5f;

void func_8002B890_2C490(unk2C0C0StructC0* arg0) {
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

    temp_fp = D_800F37DC_F386C;
    temp_s7 = D_800F50BC_F514C;
    temp_s6 = D_800EE992_EEA22;

    arg0->unk_00 = func_80023684_24284(arg0->unk_6A * sizeof(Gfx*), D_800EE32E_EE3BE);

    D_800F50BC_F514C = func_80023668_24268(4096 * sizeof(unk2C0C0StructE0));
    if (D_800F50BC_F514C == NULL) {
        D_800F50BC_F514C = arg0->unk_04 = (unk2C0C0StructE0*) 0 + D_800EE992_EEA22;
    }

    var_s4 = func_80023668_24268(8192 * sizeof(Gfx));
    if (var_s4 == NULL) {
        var_s4 = D_800F37DC_F386C;
    }

    func_8002BCD4_2C8D4(arg0);

    D_800EE992_EEA22 = 0;
    D_800F546A_F54FA = 0;

    func_80023370_23F70();
    func_8002BEC4_2CAC4(arg0);

    for (i = 0; i < arg0->unk_6A; i++) {
        D_800F37DC_F386C = var_s4;
        D_800EDEC8_EDF58 = 0;
        D_800EE732_EE7C2 = 0;
        D_800EE322_EE3B2 = 0;
        D_800F37B0_F3840 = D_800F0A60_F0AF0 = 0xFFFFFFFF;
        D_800F328C_F331C = NULL;

        func_80033FB0_34BB0(&D_800F37DC_F386C, 1, 0);

        if (D_800ECB14_ECBA4 & 0x200) {
            gSPLight(D_800F37DC_F386C++, D_800ECB28_ECBB8, D_800EE9A0_EEA30[0] + 1);
            D_800F3760_F37F0 = D_800ECB28_ECBB8->l.col[0];
            D_800F37D0_F3860 = D_800ECB28_ECBB8->l.col[1];
            D_800EDEB2_EDF42 = D_800ECB28_ECBB8->l.col[2];
        }

        temp_s0 = arg0->unk_80[i].unk_14;

        arg0->unk_80[i].unk_0A = D_800EE992_EEA22;
        arg0->unk_80[i].unk_0E = D_800F546A_F54FA;
        arg0->unk_80[i].unk_14 &= ~0x06000000;

        func_8002DC84_2E884(arg0, i);

        if (temp_s0 & 0x06000000) {
            arg0->unk_80[i].unk_14 |= 0x06000000;
        }

        arg0->unk_80[i].unk_0C = D_800EE992_EEA22 - arg0->unk_80[i].unk_0A;
        arg0->unk_80[i].unk_10 = D_800F546A_F54FA - arg0->unk_80[i].unk_0E;

        gSPEndDisplayList(D_800F37DC_F386C++);

        temp_s0_2 = (D_800F37DC_F386C - var_s4) * sizeof(Gfx);
        arg0->unk_00[i] = func_80023684_24284(temp_s0_2, D_800EE32E_EE3BE);
        func_80023A38_24638(var_s4, arg0->unk_00[i], temp_s0_2);
    }

    arg0->unk_72 = D_800EE992_EEA22;
    arg0->unk_74 = D_800F546A_F54FA;

    temp_v0 = func_80023684_24284(D_800EE992_EEA22 * sizeof(unk2C0C0StructE0), D_800EE32E_EE3BE);
    func_80023A38_24638(D_800F50BC_F514C, temp_v0, D_800EE992_EEA22 * sizeof(unk2C0C0StructE0));
    arg0->unk_04 = temp_v0;

    func_8002BDC0_2C9C0(arg0);

    for (i = 0; i < 8; i++) {
        arg0->unk_08[i] = temp_v0;
    }

    if (D_800EE992_EEA22 > 4095) {
        osSyncPrintf("Vertex Over!\n");
    }

    func_80023728_24328(D_800F50BC_F514C);
    func_80023728_24328(var_s4);

    D_800EE992_EEA22 = temp_s6;
    D_800F50BC_F514C = temp_s7;
    D_800F37DC_F386C = temp_fp;
}

void func_8002BCD4_2C8D4(unk2C0C0StructC0* arg0) {
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
        arg0->unk_D0 = func_80023684_24284(var_a2 * sizeof(unk2C0C0StructB0), D_800EE32E_EE3BE);
    }
}

void func_8002BDC0_2C9C0(unk2C0C0StructC0* arg0) {
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

void func_8002BEC4_2CAC4(unk2C0C0StructC0* arg0) {
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
            osSyncPrintf("Texture Anime Over\n");
            return;
        }
    }
}

void func_8002C030_2CC30(unk2C0C0StructC0* arg0) {
    s16 i;

    if (arg0->unk_04 != NULL) {
        for (i = 0; i < 8; i++) {
            if (arg0->unk_04 != arg0->unk_08[i]) {
                if (arg0->unk_64 != 0) {
                    func_80023888_24488(arg0->unk_08[i]);
                } else {
                    func_80023728_24328(arg0->unk_08[i]);
                }
            }
        }

        if (arg0->unk_64 != 0) {
            func_80023888_24488(arg0->unk_04);
        } else {
            func_80023728_24328(arg0->unk_04);
        }
    }

    if (arg0->unk_00 != NULL) {
        for (i = 0; i < arg0->unk_6A; i++) {
            if (arg0->unk_64 != 0) {
                func_80023888_24488(arg0->unk_00[i]);
            } else {
                func_80023728_24328(arg0->unk_00[i]);
            }
        }

        if (arg0->unk_64 != 0) {
            func_80023888_24488(arg0->unk_00);
        } else {
            func_80023728_24328(arg0->unk_00);
        }
    }

    D_800F502C_F50BC = arg0->unk_68;
    D_800EE32E_EE3BE = arg0->unk_68 + 1;

    func_8002B890_2C490(arg0);
}

void func_8002C1A8_2CDA8(unk2C0C0StructC0* arg0, Matrix4f arg1, Matrix4f arg2) {
    Matrix4f sp10;

    if (arg0->unk_6E != 0) {
        func_8002C37C_2CF7C(D_800F54C0_F5550[0], arg1);
        D_800F33D4_F3464 = 1;
        guMtxIdentF(D_800F5500_F5590);
        D_800F5030_F50C0 = 0;
        func_8002C37C_2CF7C(D_800F4020_F40B0[0], arg2);

        if (arg0->unk_29 & 4) {
            if (arg0->unk_80->unk_14 & 0x70000000) {
                func_8003305C_33C5C(arg0, 0, arg1, sp10);
                MtxMult(arg2, sp10, arg1);
            }

            func_800A0A20_A1620(arg1, D_800F374C_F37DC + 0x40 * D_800ED52C_ED5BC);
            func_8002D2CC_2DECC(arg0, 0, D_800F374C_F37DC + 0x40 * (D_800ED52C_ED5BC++), arg1);

            return;
        }

        if (arg0->unk_AC != 0) {
            func_80034ED8_35AD8(arg0, arg0->unk_C0, arg0->unk_AC, 1);
            if (arg0->unk_B0 != 0) {
                func_8003589C_3649C(arg0, arg0->unk_C4, arg0->unk_C8);
            }
            if (arg0->unk_B4 != 0) {
                func_80034ED8_35AD8(arg0, arg0->unk_CC, arg0->unk_B4, 0);
            }
        }

        if (arg0->unk_A0 == (unk2C0C0Struct50*) -1) {
            if (arg0->unk_84 != 0) {
                func_8002C400_2D000(arg0, 0);
                if (D_800EC6F2_EC782 <= D_800ED52C_ED5BC) {
                    osSyncPrintf("Mtx Over\n");
                }
            }
        } else if (arg0->unk_70 != 0) {
            func_8002C858_2D458(arg0, 0);
            if (D_800EC6F2_EC782 <= D_800ED52C_ED5BC) {
                osSyncPrintf("Mtx Over\n");
            }
        }
    }
}

void func_8002C37C_2CF7C(Matrix4f arg0, Matrix4f arg1) {
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

void func_8002C400_2D000(unk2C0C0StructC0* arg0, s16 arg1) {
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
        MtxMult(temp_s1->unk_4C, D_800F54C0_F5550[0], sp10);
        var_s3 = 1;
    } else {
        func_800A2A50_A3650(sp10);
        if (temp_s1->unk_2C.x != 0.0f || temp_s1->unk_2C.y != 0.0f || temp_s1->unk_2C.z != 0.0f) {
            MtxTranslate(sp10, temp_s1->unk_2C.x, temp_s1->unk_2C.y, temp_s1->unk_2C.z);
            var_s3 = 1;
        }
        if (temp_s1->unk_38.x != 0.0f || temp_s1->unk_38.y != 0.0f || temp_s1->unk_38.z != 0.0f) {
            MtxRotate(sp10, temp_s1->unk_38.x, temp_s1->unk_38.y, temp_s1->unk_38.z);
            var_s3 = 1;
        }
        if (temp_s1->unk_20.x != 1.0f || temp_s1->unk_20.y != 1.0f || temp_s1->unk_20.z != 1.0f) {
            MtxScale(sp10, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);
            func_800A2A50_A3650(sp50);
            MtxScale(sp50, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);
            D_800F5030_F50C0++;
            MtxMult(sp50, D_800F3FE0_F4070[D_800F5030_F50C0], D_800F3FE0_F4070[D_800F5030_F50C0 + 1]);
            var_s5 = 1;
            var_s3 = 1;
        }
        if (var_s3 != 0) {
            D_800F33D4_F3464++;
            MtxMult(sp10, D_800F5480_F5510[D_800F33D4_F3464], D_800F5480_F5510[D_800F33D4_F3464 + 1]);
        }
        MtxMult(D_800F54C0_F5550[D_800F33D4_F3464], D_800F54C0_F5550[0], sp10);
    }

    if (temp_s4 >= 0) {
        if (temp_s1->unk_48->unk_80[temp_s4].unk_14 & 0x70000000) {
            func_8003305C_33C5C(temp_s1->unk_48, temp_s4, sp10, sp50);
            MtxMult(D_800F4020_F40B0[D_800F5030_F50C0], sp50, sp10);
        }

        D_800F64F6_F6586 += arg0->unk_80[temp_s4].unk_04;
        func_800A0A20_A1620(sp10, D_800F374C_F37DC + 0x40 * D_800ED52C_ED5BC);
        func_8002D2CC_2DECC(temp_s1->unk_48, temp_s4, D_800F374C_F37DC + 0x40 * D_800ED52C_ED5BC, sp10);
        D_800ED52C_ED5BC++;
    }

    if (temp_s1->unk_04 != 0) {
        func_8002C400_2D000(arg0, arg1 + temp_s1->unk_04);
    }

    if (var_s3 != 0) {
        D_800F33D4_F3464--;
    }

    if (var_s5 != 0) {
        D_800F5030_F50C0--;
    }

    if (temp_s4 >= 0 && temp_s1->unk_48 == arg0) {
        if (arg0->unk_80[temp_s4].unk_58 != 0) {
            func_8002C400_2D000(arg0->unk_80[temp_s4].unk_58, 0);
        }
    }

    if (temp_s1->unk_02 != 0) {
        func_8002C400_2D000(arg0, arg1 + temp_s1->unk_02);
    }
}

void func_8002C858_2D458(unk2C0C0StructC0* arg0, s32 arg1) {
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
        MtxMult(temp_s1->unk_64, D_800F54C0_F5550[0], sp10);
        if (temp_s1->unk_20.x != 1.0f || temp_s1->unk_20.y != 1.0f || temp_s1->unk_20.z != 1.0f) {
            func_8009E7E0_9F3E0(sp50, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);
            D_800F5030_F50C0++;
            MtxMult(sp50, D_800F3FE0_F4070[D_800F5030_F50C0], D_800F3FE0_F4070[D_800F5030_F50C0 + 1]);
            var_s7 = 1;
        }
    } else {
        if (temp_s1->unk_38.x != 0.0f || temp_s1->unk_38.y != 0.0f || temp_s1->unk_38.z != 0.0f) {
            if (var_s4 != 0) {
                MtxTranslate(sp10, temp_s1->unk_38.x, temp_s1->unk_38.y, temp_s1->unk_38.z);
            } else {
                func_8009EA40_9F640(sp10, temp_s1->unk_38.x, temp_s1->unk_38.y, temp_s1->unk_38.z);
            }
            var_s4 = 1;
        }
        if (temp_s1->unk_44.x != 0.0f || temp_s1->unk_44.y != 0.0f || temp_s1->unk_44.z != 0.0f) {
            if (var_s4 != 0) {
                MtxRotate(sp10, temp_s1->unk_44.x, temp_s1->unk_44.y, temp_s1->unk_44.z);
            } else {
                func_8009ECB0_9F8B0(&sp10[0], temp_s1->unk_44.x, temp_s1->unk_44.y, temp_s1->unk_44.z);
            }
            var_s4 = 1;
        }
        if (temp_s1->unk_50.x != 1.0f || temp_s1->unk_50.y != 1.0f || temp_s1->unk_50.z != 1.0f) {
            if (var_s4 != 0) {
                MtxScale(sp10, temp_s1->unk_50.x, temp_s1->unk_50.y, temp_s1->unk_50.z);
            } else {
                func_8009E7E0_9F3E0(sp10, temp_s1->unk_50.x, temp_s1->unk_50.y, temp_s1->unk_50.z);
            }
            func_8009E7E0_9F3E0(sp50, temp_s1->unk_50.x, temp_s1->unk_50.y, temp_s1->unk_50.z);
            D_800F5030_F50C0++;
            MtxMult(sp50, D_800F3FE0_F4070[D_800F5030_F50C0], D_800F3FE0_F4070[D_800F5030_F50C0 + 1]);
            var_s7 = 1;
            var_s4 = 1;
        }
        if (var_s4 != 0) {
            D_800F33D4_F3464++;
            MtxMult(sp10, D_800F5480_F5510[D_800F33D4_F3464], D_800F5480_F5510[D_800F33D4_F3464 + 1]);
        }
        MtxMult(D_800F54C0_F5550[D_800F33D4_F3464], D_800F54C0_F5550[0], sp10);
    }

    func_800A0A20_A1620(sp10, D_800ED52C_ED5BC * 0x40 + D_800F374C_F37DC);
    var_s3 = D_800ED52C_ED5BC++;

    temp_v0 = temp_s1->unk_00;
    for (i = 0; i < temp_v0; i++) {
        temp_v1 = temp_s1->unk_04[i];
        if (temp_v1 & 0x8000) {
            if (temp_v1 != -1) {
                func_8002C858_2D458(arg0, temp_v1 & 0x7FFF);
            }
        } else {
            if (temp_s1->unk_60->unk_80[temp_v1].unk_14 & 0x70000000) {
                func_8003305C_33C5C(temp_s1->unk_60, temp_v1, sp10, sp50);
                MtxMult(D_800F4020_F40B0[D_800F5030_F50C0], sp50, sp10);
                func_800A0A20_A1620(sp10, D_800ED52C_ED5BC * 0x40 + D_800F374C_F37DC);
                var_s3 = D_800ED52C_ED5BC++;
            }
            D_800F64F6_F6586 += arg0->unk_80[temp_v1].unk_04;
            func_8002D2CC_2DECC(temp_s1->unk_60, temp_v1, var_s3 * 0x40 + D_800F374C_F37DC, sp10);
            if (arg0->unk_80[temp_v1].unk_58 != NULL) {
                if (arg0 == temp_s1->unk_60) {
                    func_8002C858_2D458(arg0->unk_80[temp_v1].unk_58, 0);
                }
            }
        }
    }

    if (var_s4 != 0) {
        D_800F33D4_F3464--;
    }

    if (var_s7 != 0) {
        D_800F5030_F50C0--;
    }
}

void func_8002CDEC_2D9EC(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct30* temp_s0;
    s32 temp_v1;

    if (arg0->unk_80[arg1].unk_14 & 0x06000000) {
        if (D_800ECB14_ECBA4 != 0) {
            func_80031C60_32860(arg0, arg0->unk_80[arg1].unk_14 & ~0x06000000, arg1);

            gSPSegment(D_800F37DC_F386C++, 0x01, osVirtualToPhysical(arg0->unk_08[D_800F37F0_F3880]));
            gSPDisplayList(D_800F37DC_F386C++, arg0->unk_00[arg1]);

            func_80031C60_32860(arg0, arg0->unk_80[arg1].unk_14, arg1);

            gSPSegment(D_800F37DC_F386C++, 0x01, osVirtualToPhysical(D_800F50BC_F514C));

            func_8002DC84_2E884(arg0, arg1);
            return;
        }

        temp_v1 = arg0->unk_80[arg1].unk_14;
        arg0->unk_80[arg1].unk_14 &= ~0x06000000;

        gSPSegment(D_800F37DC_F386C++, 0x01, osVirtualToPhysical(D_800F50BC_F514C));

        func_8002CDEC_2D9EC(arg0, arg1);

        arg0->unk_80[arg1].unk_14 = temp_v1;
    }

    temp_s0 = &arg0->unk_80[arg1];

    func_80031C60_32860(arg0, temp_s0->unk_14, arg1);

    if (temp_s0->unk_14 & 0x40000) {
        func_80039D10_3A910(arg0);
    }

    if (temp_s0->unk_02 != -1 || (arg0->unk_B8 != NULL && arg0->unk_A8[temp_s0->unk_00].unk_0C & 4)) {
        unk2C0C0Struct90* temp_a0 = &arg0->unk_A8[temp_s0->unk_00];
        gDPSetPrimColor(D_800F37DC_F386C++, 0, 0, temp_a0->unk_05.r, temp_a0->unk_05.g, temp_a0->unk_05.b, temp_s0->unk_02);
    }

    if (D_800ECB14_ECBA4 & 0x10000) {
        gDPSetEnvColor(D_800F37DC_F386C++, arg0->unk_2E, arg0->unk_2F, arg0->unk_30, arg0->unk_31);
        gDPSetPrimColor(D_800F37DC_F386C++, 0, 0, arg0->unk_2A, arg0->unk_2B, arg0->unk_2C, arg0->unk_2D);
    }

    if (D_800ECB14_ECBA4 & 1) {
        if (arg0->unk_00[arg1] == NULL) {
            return;
        }
        gSPSegment(D_800F37DC_F386C++, 0x01, osVirtualToPhysical(arg0->unk_08[D_800F37F0_F3880]));
        gSPDisplayList(D_800F37DC_F386C++, arg0->unk_00[arg1]);
    } else {
        gSPSegment(D_800F37DC_F386C++, 0x01, osVirtualToPhysical(D_800F50BC_F514C));
        func_8002DC84_2E884(arg0, arg1);
    }

    if (D_800F37DC_F386C >= &D_800F37E0_F3870[D_800F50BA_F514A * 8]) {
        osSyncPrintf("GfxMax Over\n");
    }
}

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_8002D270_2DE70);

// Matches without --vr4300mul-off
#ifdef NON_MATCHING
void func_8002D2CC_2DECC(unk2C0C0StructC0* arg0, s16 arg1, void* arg2, Matrix4f arg3) {
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
    temp_v0 = D_800F6538_F65C8[temp_s4];

    if (temp_v0 >= D_800C3500[temp_s4]) {
        osSyncPrintf(D_800CA938, temp_s4);
        return;
    }

    temp_s0 = D_800ED0D8_ED168[temp_s4];

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

    D_800F6538_F65C8[temp_s4]++;

    temp_a0->unk_44 = arg2;
    temp_a0->unk_48 = arg0;
    temp_a0->unk_54 = arg1;
    temp_a0->unk_50 = D_800ECB14_ECBA4;
    temp_a0->unk_40 = var_f12;
    temp_a0->unk_4C = arg0->unk_80[arg1].unk_14;

    D_800F3100 += arg0->unk_80[arg1].unk_04;
}
#else
INCLUDE_ASM("asm/nonmatchings/2C0C0", func_8002D2CC_2DECC);
#endif

Gfx* func_8002D614_2E214(s16 arg0, Gfx* arg1, Gfx* arg2) {
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

    sp2E = func_80061228_61E28(0, 0, 230);
    var_s7 = D_800F37DC_F386C;

    if (arg2 != 0) {
        gSPDisplayList(D_800F37DC_F386C++, arg2);
    }

    var_fp = (D_800EE754_EE7E4 != 0);

    func_800230D8_23CD8(arg0);

    sp3F = D_800ECB28_ECBB8->l.col[0];
    sp47 = D_800ECB28_ECBB8->l.col[1];
    sp4F = D_800ECB28_ECBB8->l.col[2];

    for (i = 0, sp36 = 0; i < 8; i++) {
        if (D_800F6538_F65C8[i] == 2) {
            continue;
        }

        if (var_fp != 0) {
            gDPFullSync(D_800F37DC_F386C++);
            gSPEndDisplayList(D_800F37DC_F386C++);
            func_8001AAC4_1B6C4(var_s7, D_800EE754_EE7E4, 0, NULL, 0);
            var_s7 = D_800F37DC_F386C;
        }

        func_8001D7DC_1E3DC(arg0, &D_800F37DC_F386C);

        sp36++;
        var_fp = 1;
        D_800EE754_EE7E4 = i;

        gSPDisplayList(D_800F37DC_F386C++, arg1);

        D_800F0A60_F0AF0 = 0xFFFFFFFF;
        D_800F37B0_F3840 = 0xFFFFFFFF;
        D_800F375C_F37EC = 0xFFFFFFFF;
        D_800F328C_F331C = NULL;

        gSPNumLights(D_800F37DC_F386C++, D_800EE9A0_EEA30[0]);

        for (j = 1; j < D_800EE9A0_EEA30[0] + 1; j++) {
            gSPLight(D_800F37DC_F386C++, D_800ECB28_ECBB8 + j, j);
        }

        gSPLight(D_800F37DC_F386C++, D_800ECB28_ECBB8, D_800EE9A0_EEA30[0] + 1);

        D_800ED6D8_ED768 = 255;
        D_800F3962_F39F2 = 255;
        D_800F3710_F37A0 = 255;

        func_80031BB4_327B4();

        var_a1 = D_800ED0D8_ED168[i]->unk_57;
        for (k = 2; k < D_800F6538_F65C8[i]; k++) {
            temp_s0 = &D_800ED0D8_ED168[i][var_a1];

            D_800F3760_F37F0 = sp3F;
            D_800F37D0_F3860 = sp47;
            D_800EDEB2_EDF42 = sp4F;
            D_800EDEC8_EDF58 = 0;
            D_800EE732_EE7C2 = 0;
            D_800EE322_EE3B2 = 0;

            func_80033FB0_34BB0(&D_800F37DC_F386C, D_800EE9A0_EEA30[0] + 1, (D_800F3760_F37F0 << 0x18) + (D_800F37D0_F3860 << 0x10) + (D_800EDEB2_EDF42 << 8));
            func_80033FB0_34BB0(&D_800F37DC_F386C, 1, 0);
            func_800318D0_324D0(temp_s0->unk_4C);

            gSPMatrix(D_800F37DC_F386C++, osVirtualToPhysical(temp_s0->unk_44), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);

            D_800ECB14_ECBA4 = temp_s0->unk_50;
            func_8002CDEC_2D9EC(temp_s0->unk_48, temp_s0->unk_54);

            var_a1 = temp_s0->unk_57;
            if (D_800ED0D8_ED168[i][var_a1].unk_57 == 0) {
                break;
            }
        }
    }

    if (sp36 == 0) {
        gSPDisplayList(D_800F37DC_F386C++, arg1);
        gSPNumLights(D_800F37DC_F386C++, D_800EE9A0_EEA30[0]);

        for (j = 1; j < D_800EE9A0_EEA30[0] + 1; j++) {
            gSPLight(D_800F37DC_F386C++, D_800ECB28_ECBB8 + j, j);
        }

        gSPLight(D_800F37DC_F386C++, D_800ECB28_ECBB8, D_800EE9A0_EEA30[0] + 1);
    }

    func_80061264_61E64(sp2E);

    return var_s7;
}

void func_8002DC84_2E884(unk2C0C0StructC0* arg0, s16 arg1) {
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

    D_800D6010_D60A0 = &arg0->unk_80[arg1];
    sp16 = D_800D6010_D60A0->unk_04;
    D_800F3292_F3322 = 0;
    D_800EE32C_EE3BC = D_800EE992_EEA22;
    temp_s1 = D_800D6010_D60A0->unk_34;
    sp1C = &arg0->unk_A8[temp_s1->unk_30];
    temp_v0 = D_800D6010_D60A0->unk_14 &= ~0x00040000;

    if ((D_800ECB14_ECBA4 & 0x2001) == 0x2001) {
        func_80030D50_31950(arg0, arg1);
    }

    var_s6 = var_s4 = temp_s1->unk_00 & 0x80;
    if (var_s4 != 0) {
        gSPClearGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
    } else {
        gSPSetGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
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

            if (D_800EE992_EEA22 - D_800EE32C_EE3BC >= 29 || sp1C != temp_s2 || sp24 != var_s0 || D_800F3292_F3322 >= 48 || var_s4 != var_s6) {
                sp1C = temp_s2;
                sp24 = var_s0;
                func_8002E488_2F088(arg0, &D_800D6010_D60A0->unk_14);
                if (var_s4 != var_s6) {
                    if (var_s4 != 0) {
                        gSPClearGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
                    } else {
                        gSPSetGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
                    }
                    var_s6 = var_s4;
                }
                D_800F3292_F3322 = 0;
            }

            temp_t2 = &D_800EDA88_EDB18[D_800F3292_F3322];
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
                arg0->unk_D0[D_800F546A_F54FA].unk_00 = temp_v0_2;
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

                var_a0 = &D_800F50BC_F514C[D_800EE992_EEA22 - 1];
                if (temp_v0 & 0x20000) {
                    arg0->unk_D0[D_800F546A_F54FA].unk_02[var_t1] = D_800EE992_EEA22;
                    var_a1_2 = D_800EE32C_EE3BC;
                } else {
                    for (var_a1_2 = D_800EE992_EEA22 - 1; var_a1_2 >= D_800EE32C_EE3BC; var_a1_2--, var_a0--) {
                        if (var_a0->unk_00 == temp_t0->unk_00 && var_a0->unk_02 == temp_t0->unk_02 && var_a0->unk_04 == temp_t0->unk_04
                            && (s8) var_a0->unk_0C.r == (s8) var_a3->r && (s8) var_a0->unk_0C.g == (s8) var_a3->g && (s8) var_a0->unk_0C.b == (s8) var_a3->b
                            && var_a0->unk_08 == temp_f2 && var_a0->unk_0A == temp_f2_2) {
                            break;
                        }
                    }
                }

                if (var_a1_2 <= D_800EE32C_EE3BC) {
                    var_a0 = &D_800F50BC_F514C[D_800EE992_EEA22];
                    var_a0->unk_00 = temp_t0->unk_00;
                    var_a0->unk_02 = temp_t0->unk_02;
                    var_a0->unk_04 = temp_t0->unk_04;
                    var_a0->unk_0C.r = var_a3->r;
                    var_a0->unk_0C.g = var_a3->g;
                    var_a0->unk_0C.b = var_a3->b;
                    var_a0->unk_08 = temp_f2;
                    var_a0->unk_0A = temp_f2_2;
                    var_a0->unk_0F = 255;
                    temp_t2->unk_02[var_t1] = D_800EE992_EEA22 - D_800EE32C_EE3BC;
                    temp_t2->unk_0A = var_s4;
                    D_800EE992_EEA22++;
                    D_800F3F3C_F3FCC++;
                } else {
                    D_800ED4AC_ED53C++;
                    temp_t2->unk_02[var_t1] = var_a1_2 - D_800EE32C_EE3BC;
                }
            }

            if (temp_v0 & 0x20000) {
                D_800F546A_F54FA++;
            }

            D_800F3292_F3322++;
        }
    }

    if (D_800EE992_EEA22 != D_800EE32C_EE3BC) {
        if (var_s4 != var_s6) {
            if (var_s4 != 0) {
                gSPClearGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
            } else {
                gSPSetGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
            }
        }

        func_8002E488_2F088(arg0, &D_800D6010_D60A0->unk_14);
        gSPSetGeometryMode(D_800F37DC_F386C++, G_LIGHTING);
    }
}

void func_8002E488_2F088(unk2C0C0StructC0* arg0, u32* arg1) {
    unk2C0C0StructD0* temp_a1;
    unk2C0C0Struct70* temp_a3;
    unk2C0C0Struct90* temp_s3;
    unk2C0C0Struct80* temp_s4;
    u16 var_s0;
    u16 var_s1;
    u16 var_s2;
    u8* var_t0;
    s32 var_a0;
    s16 i;

    if (D_800F3292_F3322 == 0) {
        return;
    }

    temp_s3 = D_800EDA94_EDB24[0];
    temp_s4 = D_800EDA94_EDB24[1];

    func_80031054_31C54(temp_s3, temp_s4, *arg1);

    if (temp_s4 == (unk2C0C0Struct80*) -1) {
        if (D_800ECB14_ECBA4 & 512) {
            var_s2 = temp_s3->unk_01 * D_800F524C_F52DC;
            if (var_s2 > 255) {
                var_s2 = 255;
            }
            var_s1 = temp_s3->unk_02 * D_800F524C_F52DC;
            if (var_s1 > 255) {
                var_s1 = 255;
            }
            var_s0 = temp_s3->unk_03 * D_800F524C_F52DC;
            if (var_s0 > 255) {
                var_s0 = 255;
            }

            if (D_800F3760_F37F0 != var_s2 || D_800F37D0_F3860 != var_s1 || D_800EDEB2_EDF42 != var_s0) {
                D_800F3760_F37F0 = var_s2;
                D_800F37D0_F3860 = var_s1;
                D_800EDEB2_EDF42 = var_s0;
                func_80033FB0_34BB0(&D_800F37DC_F386C, D_800EE9A0_EEA30[0] + 1, (D_800F3760_F37F0 << 24) + (D_800F37D0_F3860 << 16) + (D_800EDEB2_EDF42 << 8));
            }
        }

        var_s2 = temp_s3->unk_05.r * D_800F5028_F50B8;
        if (var_s2 > 255) {
            var_s2 = 255;
        }
        var_s1 = temp_s3->unk_05.g * D_800F5028_F50B8;
        if (var_s1 > 255) {
            var_s1 = 255;
        }
        var_s0 = temp_s3->unk_05.b * D_800F5028_F50B8;
        if (var_s0 > 255) {
            var_s0 = 255;
        }

        if (D_800EE322_EE3B2 != var_s2 || D_800EE732_EE7C2 != var_s1 || D_800EDEC8_EDF58 != var_s0) {
            D_800EE322_EE3B2 = var_s2;
            D_800EE732_EE7C2 = var_s1;
            D_800EDEC8_EDF58 = var_s0;
            func_80033FB0_34BB0(&D_800F37DC_F386C, 1, (D_800EE322_EE3B2 << 24) + (D_800EE732_EE7C2 << 16) + (D_800EDEC8_EDF58 << 8));
        }
    } else {
        switch (temp_s4->unk_00) {
            case 42:
            case 43:
                var_s2 = temp_s3->unk_01 * D_800F524C_F52DC;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s3->unk_02 * D_800F524C_F52DC;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s3->unk_03 * D_800F524C_F52DC;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
            case 41:
                var_s2 = D_800F524C_F52DC * 255.0f;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = var_s0 = var_s2;
                break;
        }

        if ((D_800ECB14_ECBA4 & 0x200) && (D_800F3760_F37F0 != var_s2 || D_800F37D0_F3860 != var_s1 || D_800EDEB2_EDF42 != var_s0)) {
            D_800F3760_F37F0 = var_s2;
            D_800F37D0_F3860 = var_s1;
            D_800EDEB2_EDF42 = var_s0;
            func_80033FB0_34BB0(&D_800F37DC_F386C, D_800EE9A0_EEA30[0] + 1, (D_800F3760_F37F0 << 24) + (D_800F37D0_F3860 << 16) + (D_800EDEB2_EDF42 << 8));
        }

        switch (temp_s4->unk_00) {
            case 43:
                var_s2 = temp_s4->unk_05 * D_800F5028_F50B8;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s4->unk_06 * D_800F5028_F50B8;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s4->unk_07 * D_800F5028_F50B8;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
            case 41:
                var_s2 = D_800F5028_F50B8 * 255.0f;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s0 = var_s2;
                var_s1 = var_s0;
                break;
            default:
                var_s2 = temp_s3->unk_05.r * D_800F5028_F50B8;
                if (var_s2 > 255) {
                    var_s2 = 255;
                }
                var_s1 = temp_s3->unk_05.g * D_800F5028_F50B8;
                if (var_s1 > 255) {
                    var_s1 = 255;
                }
                var_s0 = temp_s3->unk_05.b * D_800F5028_F50B8;
                if (var_s0 > 255) {
                    var_s0 = 255;
                }
                break;
        }

        if (D_800EE322_EE3B2 != var_s2 || D_800EE732_EE7C2 != var_s1 || D_800EDEC8_EDF58 != var_s0) {
            D_800EE322_EE3B2 = var_s2;
            D_800EE732_EE7C2 = var_s1;
            D_800EDEC8_EDF58 = var_s0;
            func_80033FB0_34BB0(&D_800F37DC_F386C, 1, (D_800EE322_EE3B2 << 24) + (D_800EE732_EE7C2 << 16) + (D_800EDEC8_EDF58 << 8));
        }

        if (temp_s4->unk_0C->unk_24 != D_800F328C_F331C && !(*arg1 & 0x0E000000)) {
            D_800F64FA_F658A++;
            temp_a3 = temp_s4->unk_0C;
            D_800F328C_F331C = temp_a3->unk_24;

            if (temp_s4->unk_03 != -1) {
                var_t0 = (u8*) (temp_s4->unk_03 << 24);
                *arg1 |= 0x40000;
            } else {
                var_t0 = temp_a3->unk_24;
            }

            if (temp_a3->unk_18 != 2) {
                gDPSetTextureLUT(D_800F37DC_F386C++, G_TT_NONE);

                if (temp_a3->unk_19 != 0) {
                    switch (temp_a3->unk_19) {
                        case G_IM_SIZ_16b:
                            D_800ED568_ED5F8 = G_IM_SIZ_16b_LOAD_BLOCK;
                            D_800ED734_ED7C4 = G_IM_SIZ_16b_INCR;
                            D_800F64C0_F6550 = G_IM_SIZ_16b_BYTES;
                            D_800EC6F4_EC784 = G_IM_SIZ_16b_LINE_BYTES;
                            D_800F37E4_F3874 = G_IM_SIZ_16b_SHIFT;
                            break;
                        case G_IM_SIZ_8b:
                            D_800ED568_ED5F8 = G_IM_SIZ_8b_LOAD_BLOCK;
                            D_800ED734_ED7C4 = G_IM_SIZ_8b_INCR;
                            D_800F64C0_F6550 = G_IM_SIZ_8b_BYTES;
                            D_800EC6F4_EC784 = G_IM_SIZ_8b_LINE_BYTES;
                            D_800F37E4_F3874 = G_IM_SIZ_8b_SHIFT;
                            break;
                        case G_IM_SIZ_4b:
                            D_800ED568_ED5F8 = G_IM_SIZ_4b_LOAD_BLOCK;
                            D_800ED734_ED7C4 = G_IM_SIZ_4b_INCR;
                            D_800F64C0_F6550 = G_IM_SIZ_4b_BYTES;
                            D_800EC6F4_EC784 = G_IM_SIZ_4b_LINE_BYTES;
                            D_800F37E4_F3874 = G_IM_SIZ_4b_SHIFT;
                            break;
                        default:
                            D_800ED568_ED5F8 = G_IM_SIZ_32b_LOAD_BLOCK;
                            D_800ED734_ED7C4 = G_IM_SIZ_32b_INCR;
                            D_800F64C0_F6550 = G_IM_SIZ_32b_BYTES;
                            D_800EC6F4_EC784 = G_IM_SIZ_32b_LINE_BYTES;
                            D_800F37E4_F3874 = G_IM_SIZ_32b_SHIFT;
                            break;
                    }

                    gDPSetTextureImage(D_800F37DC_F386C++, temp_a3->unk_18, D_800ED568_ED5F8, 1, var_t0);
                    gDPSetTile(D_800F37DC_F386C++, temp_a3->unk_18, D_800ED568_ED5F8, 0, 0x0000, G_TX_LOADTILE, 0,
                        temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD,
                        temp_s4->unk_01, INTEGER_LOG2(temp_a3->unk_1A), G_TX_NOLOD);
                    gDPLoadSync(D_800F37DC_F386C++);
                    gDPLoadBlock(D_800F37DC_F386C++, G_TX_LOADTILE, 0, 0,
                        ((temp_a3->unk_1A * temp_a3->unk_1B + D_800ED734_ED7C4) >> D_800F37E4_F3874) - 1,
                        CALC_DXT(temp_a3->unk_1A, D_800F64C0_F6550));
                    gDPPipeSync(D_800F37DC_F386C++);
                    gDPSetTile(D_800F37DC_F386C++, temp_a3->unk_18, temp_a3->unk_19,
                        (temp_a3->unk_1A * D_800EC6F4_EC784 + 7) >> 3, 0x0000, G_TX_RENDERTILE, 0,
                        temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD,
                        temp_s4->unk_01, INTEGER_LOG2(temp_a3->unk_1A), G_TX_NOLOD);
                    gDPSetTileSize(D_800F37DC_F386C++, G_TX_RENDERTILE, 0, 0, (temp_a3->unk_1A - 1) * 4, (temp_a3->unk_1B - 1) * 4);
                } else if (temp_a3->unk_1A < 16) {
                    gDPLoadTextureTile_4b(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B,
                        0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                        INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                } else {
                    gDPLoadTextureBlock_4b(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                        temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                        G_TX_NOLOD, G_TX_NOLOD);
                }
            } else {
                gDPSetTextureLUT(D_800F37DC_F386C++, G_TT_RGBA16);

                if (temp_s4->unk_04 != -1) {
                    var_a0 = temp_s4->unk_04 << 24;
                    *arg1 |= 0x40000;
                } else {
                    var_a0 = temp_a3->unk_2C->unk_24;
                }

                if (temp_a3->unk_2C->unk_1A < 17) {
                    gDPLoadTLUT_pal16(D_800F37DC_F386C++, 0, var_a0);

                    if (temp_a3->unk_1A < 16) {
                        gDPLoadTextureTile_4b(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B,
                            0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                            INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                    } else {
                        gDPLoadTextureBlock_4b(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                            temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                            G_TX_NOLOD, G_TX_NOLOD);
                    }
                } else {
                    gDPLoadTLUT_pal256(D_800F37DC_F386C++, var_a0);

                    if (temp_a3->unk_1A < 8) {
                        gDPLoadTextureTile(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, G_IM_SIZ_8b, temp_a3->unk_1A, temp_a3->unk_1B,
                            0, 0, temp_a3->unk_1A, temp_a3->unk_1B, 0, temp_s4->unk_01, temp_s4->unk_02,
                            INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B), G_TX_NOLOD, G_TX_NOLOD);
                    } else {
                        gDPLoadTextureBlockYuv(D_800F37DC_F386C++, var_t0, temp_a3->unk_18, G_IM_SIZ_8b, temp_a3->unk_1A, temp_a3->unk_1B, 0,
                            temp_s4->unk_01, temp_s4->unk_02, INTEGER_LOG2(temp_a3->unk_1A), INTEGER_LOG2(temp_a3->unk_1B),
                            G_TX_NOLOD, G_TX_NOLOD);
                    }
                }
            }
        }
    }

    gSPVertex(D_800F37DC_F386C++, D_800EE32C_EE3BC * 16 + 0x01000000, D_800EE992_EEA22 - D_800EE32C_EE3BC, 0);

    for (i = 0; i < D_800F3292_F3322; i++) {
        temp_a1 = &D_800EDA88_EDB18[i];
        if (temp_a1->unk_00 == 3) {
            D_800ED194_ED224++;
            gSP1Triangle(D_800F37DC_F386C++, temp_a1->unk_02[0], temp_a1->unk_02[1], temp_a1->unk_02[2], 0);
        } else {
            D_800ED194_ED224 += 2;
            gSP1Quadrangle(D_800F37DC_F386C++, temp_a1->unk_02[0], temp_a1->unk_02[1], temp_a1->unk_02[2], temp_a1->unk_02[3], 0);
        }
    }

    D_800EE32C_EE3BC = D_800EE992_EEA22;
}


void func_80030D50_31950(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0StructE0* temp_t2;

    gSPClearGeometryMode(D_800F37DC_F386C++, G_LIGHTING);

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_4E;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_4A;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_52;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    temp_t2 = &D_800F50BC_F514C[D_800EE992_EEA22++];
    temp_t2->unk_00 = arg0->unk_80[arg1].unk_50;
    temp_t2->unk_02 = arg0->unk_80[arg1].unk_4C;
    temp_t2->unk_04 = arg0->unk_80[arg1].unk_54;

    gSPVertex(D_800F37DC_F386C++, D_800EE32C_EE3BC * 16 + 0x01000000, D_800EE992_EEA22 - D_800EE32C_EE3BC, 0);

    D_800EE32C_EE3BC = D_800EE992_EEA22;

    gSPCullDisplayList(D_800F37DC_F386C++, 0, 7);
}

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_80031054_31C54);

void func_800318D0_324D0(u16 arg0) {
    u8 temp_v1;

    temp_v1 = (arg0 >> 7) & 3;
    if (temp_v1 != D_800F3710_F37A0) {
        D_800F3710_F37A0 = temp_v1;
        gDPSetTextureFilter(D_800F37DC_F386C++, G_TF_POINT | D_800C3508_C4108[temp_v1]);
    }

    if (D_800F3842_F38D2 != D_800F3962_F39F2) {
        D_800F3962_F39F2 = D_800F3842_F38D2;
        if (D_800F3842_F38D2 == 0) {
            gSPSetGeometryMode(D_800F37DC_F386C++, G_SHADING_SMOOTH);
        } else {
            gSPClearGeometryMode(D_800F37DC_F386C++, G_SHADING_SMOOTH);
        }
    }

    temp_v1 = (arg0 >> 9) & 3;
    if (temp_v1 != D_800ED6D8_ED768) {
        D_800ED6D8_ED768 = temp_v1;
        switch (temp_v1) {
            case 0:
                gDPSetColorDither(D_800F37DC_F386C++, G_CD_DISABLE);
                break;
            case 1:
                gDPSetColorDither(D_800F37DC_F386C++, G_CD_NOISE);
                break;
            case 2:
                gDPSetColorDither(D_800F37DC_F386C++, G_CD_BAYER);
                break;
            case 3:
                gDPSetColorDither(D_800F37DC_F386C++, G_CD_MAGICSQ);
                break;
            }
    }

    if (D_800EE988_EEA18 != 0) {
        gSPFogFactor(D_800F37DC_F386C++, 500 * 256 / (D_800ED0D0_ED160 - D_800F65DA_F666A), (500 - D_800F65DA_F666A) * 256 / (D_800ED0D0_ED160 - D_800F65DA_F666A));
        gDPSetFogColor(D_800F37DC_F386C++, D_800F2CF9_F2D89, D_800F3FF4_F4084, D_800EDEBC_EDF4C, 255);
    }
}

void func_80031BB4_327B4(void) {
    gMoveWd(D_800F37DC_F386C++, G_MW_CLIP, G_MWO_CLIP_RNX, *(D_800ED0C8_ED158 * 2 + &D_800C3510_C4110[0]));
    gMoveWd(D_800F37DC_F386C++, G_MW_CLIP, G_MWO_CLIP_RNY, *(D_800ED0C8_ED158 * 2 + &D_800C3510_C4110[0]));
    gMoveWd(D_800F37DC_F386C++, G_MW_CLIP, G_MWO_CLIP_RPX, *(D_800ED0C8_ED158 * 2 + &D_800C3510_C4110[1]));
    gMoveWd(D_800F37DC_F386C++, G_MW_CLIP, G_MWO_CLIP_RPY, *(D_800ED0C8_ED158 * 2 + &D_800C3510_C4110[1]));
}

void func_80031C60_32860(unk2C0C0StructC0* arg0, s32 arg1, s16 arg2) {
    if (D_800F375C_F37EC != arg1 || arg1 & 0x0E000000) {
        D_800F375C_F37EC = arg1;

        gSPDisplayList(D_800F37DC_F386C++, D_800C34B0_C40B0);

        if (arg1 & 0x2000) {
            gSPSetGeometryMode(D_800F37DC_F386C++, G_CULL_BACK);
        }

        if (D_800EE988_EEA18 != 0) {
            gDPSetCycleType(D_800F37DC_F386C++, G_CYC_2CYCLE);
            gSPSetGeometryMode(D_800F37DC_F386C++, G_FOG);
        }

        if (arg1 & 0x06000000) {
            func_80032C98_33898(arg0, arg2);
        } else if (arg1 & 0x08000000) {
            func_80031D78_32978(arg0, arg2);
        }
    }
}

void func_80031D78_32978(unk2C0C0StructC0* arg0, s16 arg1) {
    Mtx sp30;
    unk2C0C0Struct70* var_a0;

    if (arg0->unk_80[arg1].unk_30 != 255) {
        gDPPipeSync(D_800F37DC_F386C++);

        guLookAtReflect(&sp30, &D_800F09FC_F0A8C->unk_40, 0, 40.0f, 200.0f, 0, 0, 0, 0, -1.0f, 0);

        gSPLookAt(D_800F37DC_F386C++, &D_800F09FC_F0A8C->unk_40);
        gSPTexture(D_800F37DC_F386C++, 1984, 1984, 0, G_TX_RENDERTILE, G_ON);

        if (arg0->unk_BC == 0) {
            var_a0 = arg0->unk_A4[arg0->unk_80[arg1].unk_30].unk_0C;
        } else {
            var_a0 = arg0->unk_BC;
        }

        func_80031F14_32B14(var_a0, 0, 0);

        gSPSetGeometryMode(D_800F37DC_F386C++, G_LIGHTING | G_TEXTURE_GEN);
    }
}

void func_80031F14_32B14(unk2C0C0Struct70* arg0, s32 arg1, s32 arg2) {
    if (arg0->unk_18 != 2) {
        gDPSetTextureLUT(D_800F37DC_F386C++, G_TT_NONE);

        switch (arg0->unk_19) {
            case G_IM_SIZ_16b:
                D_800ED568_ED5F8 = G_IM_SIZ_16b_LOAD_BLOCK;
                D_800ED734_ED7C4 = G_IM_SIZ_16b_INCR;
                D_800F64C0_F6550 = G_IM_SIZ_16b_BYTES;
                D_800EC6F4_EC784 = G_IM_SIZ_16b_LINE_BYTES;
                D_800F37E4_F3874 = G_IM_SIZ_16b_SHIFT;
                break;
            case G_IM_SIZ_8b:
                D_800ED568_ED5F8 = G_IM_SIZ_8b_LOAD_BLOCK;
                D_800ED734_ED7C4 = G_IM_SIZ_8b_INCR;
                D_800F64C0_F6550 = G_IM_SIZ_8b_BYTES;
                D_800EC6F4_EC784 = G_IM_SIZ_8b_LINE_BYTES;
                D_800F37E4_F3874 = G_IM_SIZ_8b_SHIFT;
                break;
            case G_IM_SIZ_4b:
                D_800ED568_ED5F8 = G_IM_SIZ_4b_LOAD_BLOCK;
                D_800ED734_ED7C4 = G_IM_SIZ_4b_INCR;
                D_800F64C0_F6550 = G_IM_SIZ_4b_BYTES;
                D_800EC6F4_EC784 = G_IM_SIZ_4b_LINE_BYTES;
                D_800F37E4_F3874 = G_IM_SIZ_4b_SHIFT;
                break;
            default:
                D_800ED568_ED5F8 = G_IM_SIZ_32b_LOAD_BLOCK;
                D_800ED734_ED7C4 = G_IM_SIZ_32b_INCR;
                D_800F64C0_F6550 = G_IM_SIZ_32b_BYTES;
                D_800EC6F4_EC784 = G_IM_SIZ_32b_LINE_BYTES;
                D_800F37E4_F3874 = G_IM_SIZ_32b_SHIFT;
                break;
        }

        gDPSetTextureImage(D_800F37DC_F386C++, arg0->unk_18, D_800ED568_ED5F8, 1, arg0->unk_24);
        gDPSetTile(D_800F37DC_F386C++, arg0->unk_18, D_800ED568_ED5F8, 0, 0x0000, G_TX_LOADTILE, 0,
            arg2, INTEGER_LOG2(arg0->unk_1B), G_TX_NOLOD, arg1, INTEGER_LOG2(arg0->unk_1A), G_TX_NOLOD);
        gDPLoadSync(D_800F37DC_F386C++);
        gDPLoadBlock(D_800F37DC_F386C++, G_TX_LOADTILE, 0, 0,
            ((arg0->unk_1A * arg0->unk_1B + D_800ED734_ED7C4) >> D_800F37E4_F3874) - 1,
            CALC_DXT(arg0->unk_1A, D_800F64C0_F6550));
        gDPPipeSync(D_800F37DC_F386C++);
        gDPSetTile(D_800F37DC_F386C++, arg0->unk_18, arg0->unk_19, (arg0->unk_1A * D_800EC6F4_EC784 + 7) >> 3, 0x0000, G_TX_RENDERTILE, 0,
            arg2, INTEGER_LOG2(arg0->unk_1B), G_TX_NOLOD, arg1, INTEGER_LOG2(arg0->unk_1A), G_TX_NOLOD);
        gDPSetTileSize(D_800F37DC_F386C++, G_TX_RENDERTILE, 0, 0, (arg0->unk_1A - 1) * 4, (arg0->unk_1B - 1) * 4);
    } else {
        gDPSetTextureLUT(D_800F37DC_F386C++, G_TT_RGBA16);

        if (arg0->unk_2C->unk_1A < 17) {
            gDPLoadTLUT_pal16(D_800F37DC_F386C++, 0, arg0->unk_2C->unk_24);
            gDPLoadTextureBlock_4b(D_800F37DC_F386C++, arg0->unk_24, arg0->unk_18, arg0->unk_1A, arg0->unk_1B, 0,
                arg1, arg2, INTEGER_LOG2(arg0->unk_1A), INTEGER_LOG2(arg0->unk_1B), 0, 0);
        } else {
            gDPLoadTLUT_pal256(D_800F37DC_F386C++, arg0->unk_2C->unk_24);
            gDPLoadTextureBlockYuv(D_800F37DC_F386C++, arg0->unk_24, arg0->unk_18, G_IM_SIZ_8b, arg0->unk_1A, arg0->unk_1B, 0,
                arg1, arg2, INTEGER_LOG2(arg0->unk_1A), INTEGER_LOG2(arg0->unk_1B), 0, 0);
        }
    }
}

void func_80032C98_33898(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct90* temp_a0;
    s32 timg;
    Mtx sp50;

    gDPPipeSync(D_800F37DC_F386C++);
    guLookAtHilite(&sp50, &D_800F09FC_F0A8C->unk_40, &D_800F09FC_F0A8C->unk_00,
        D_800F32A0_F3330->coords.x, D_800F32A0_F3330->coords.y, D_800F32A0_F3330->coords.z,
        D_800F32A0_F3330->unk_0C, D_800F32A0_F3330->unk_10, D_800F32A0_F3330->unk_14,
        D_800F32A0_F3330->unk_18, D_800F32A0_F3330->unk_1C, D_800F32A0_F3330->unk_20, 0, 0, 115.0f, 0, 0, 115.0f, 32, 32);
    gSPLookAt(D_800F37DC_F386C++, &D_800F09FC_F0A8C->unk_40);

    temp_a0 =  &arg0->unk_A8[arg0->unk_80[arg1].unk_34->unk_30];
    gDPSetPrimColor(D_800F37DC_F386C++, 0, 0, temp_a0->unk_09, temp_a0->unk_0A, temp_a0->unk_0B, 255);
    gDPSetEnvColor(D_800F37DC_F386C++, 64, 64, 64, 128);
    gSPDisplayList(D_800F37DC_F386C++, D_800C4140_C4D40);

    timg = D_800C4174_C4D74[(arg0->unk_80[arg1].unk_14 >> 25) % 4];
    gDPLoadTextureBlock(D_800F37DC_F386C++, timg, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMIRROR | G_TX_WRAP, 5, 5, G_TX_NOLOD, G_TX_NOLOD);
    gDPSetTileSize(D_800F37DC_F386C++, G_TX_RENDERTILE, D_800F09FC_F0A8C->unk_00.h.x1, D_800F09FC_F0A8C->unk_00.h.y1,
        D_800F09FC_F0A8C->unk_00.h.x1 + 124, D_800F09FC_F0A8C->unk_00.h.y1 + 124);

    if (arg0->unk_80[arg1].unk_14 & 0x10000) {
        gDPSetRenderMode(D_800F37DC_F386C++, G_RM_ZB_CLD_SURF, G_RM_ZB_CLD_SURF2);
    } else {
        gDPSetRenderMode(D_800F37DC_F386C++, G_RM_ZB_OVL_SURF, G_RM_ZB_OVL_SURF2);
    }

    D_800F328C_F331C = NULL;
    D_800F0A60_F0AF0 = 0xFFFFFFFF;
    D_800F37B0_F3840 = 0xFFFFFFFF;
}

s32 func_8003305C_33C5C(unk2C0C0StructC0* arg0, s16 arg1, Matrix4f arg2, Matrix4f arg3) {
    if (!(arg0->unk_80[arg1].unk_14 & 0x70000000)) {
        return 0;
    }

    MtxReset(arg2, arg3);
    return 1;
}

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_800330BC_33CBC);

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_80033408_34008);

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_800334A0_340A0);

s16 func_80033718_34318(unk2C0C0StructC0* arg0, char* arg1) {
    s16 temp_a1;
    s16 i;

    temp_a1 = func_8001CD00_1D900(arg1);
    for (i = 0; i < arg0->unk_6A; i++) {
        if (arg0->unk_80[i].unk_08 == temp_a1) {
            break;
        }
    }

    if (i == arg0->unk_6A) {
        osSyncPrintf("Can't find ObjName %s\n", arg1);
        return -1;
    }

    return i;
}

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_800337E4_343E4);

INCLUDE_ASM("asm/nonmatchings/2C0C0", func_80033830_34430);

void func_8003394C_3454C(unk2C0C0StructC0* arg0) {
    if (arg0->unk_6E != 0) {
        D_800F5030_F50C0 = 0;
        D_800F33D4_F3464 = 0;

        func_800A2A50_A3650(D_800F54C0_F5550[0]);
        func_800A2A50_A3650(D_800F4020_F40B0[0]);

        if (arg0->unk_A0 == (unk2C0C0Struct50*)-1) {
            if (arg0->unk_84 != 0) {
                func_800339E0(arg0, 0);
            }
        } else if (arg0->unk_70 != 0) {
            func_80033CBC_348BC(arg0, 0);
        }
    }
}

void func_800339E0(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct40* temp_s1 = &arg0->unk_88[arg1];
    s16 var_s3 = 0;
    s16 var_s0 = 0;
    Matrix4f sp10;
    Matrix4f sp50;

    func_800A2A50_A3650(sp10);

    if (arg0->unk_AC == 0) {
        if (temp_s1->unk_08.x != 0.0f || temp_s1->unk_08.y != 0.0f || temp_s1->unk_08.z != 0.0f) {
            MtxTranslate(sp10, temp_s1->unk_08.x, temp_s1->unk_08.y, temp_s1->unk_08.z);
            var_s0 = 1;
        }

        if (temp_s1->unk_14.x != 0.0f || temp_s1->unk_14.y != 0.0f || temp_s1->unk_14.z != 0.0f) {
            MtxRotate(sp10, temp_s1->unk_14.x, temp_s1->unk_14.y, temp_s1->unk_14.z);
            var_s0 = 1;
        }
    }

    if (temp_s1->unk_20.x != 1.0f || temp_s1->unk_20.y != 1.0f || temp_s1->unk_20.z != 1.0f) {
        MtxScale(sp10, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);
        func_800A2A50_A3650(sp50);
        MtxScale(sp50, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);

        D_800F5030_F50C0++;
        MtxMult(sp50, D_800F3FE0_F4070[D_800F5030_F50C0], D_800F3FE0_F4070[D_800F5030_F50C0 + 1]);

        var_s3 = 1;
        var_s0 = 1;
    }

    if (var_s0 != 0) {
        D_800F33D4_F3464++;
        MtxMult(sp10, D_800F5480_F5510[D_800F33D4_F3464], D_800F5480_F5510[D_800F33D4_F3464 + 1]);
    }

    func_8002C37C_2CF7C(temp_s1->unk_4C, D_800F54C0_F5550[D_800F33D4_F3464]);

    if (temp_s1->unk_04 != 0) {
        func_800339E0(arg0, arg1 + temp_s1->unk_04);
    }

    if (var_s0) {
        D_800F33D4_F3464--;
    }

    if (var_s3) {
        D_800F5030_F50C0--;
    }

    if (temp_s1->unk_02 != 0) {
        func_800339E0(arg0, arg1 + temp_s1->unk_02);
    }
}


void func_80033CBC_348BC(unk2C0C0StructC0* arg0, s16 arg1) {
    unk2C0C0Struct50* temp_s1 = &arg0->unk_A0[arg1];
    s16 var_s5 = 0;
    s16 var_s2 = 0;
    s16 i;
    Matrix4f sp10;
    Matrix4f sp50;

    func_800A2A50_A3650(sp10);

    if (temp_s1->unk_08.x != 0.0f || temp_s1->unk_08.y != 0.0f || temp_s1->unk_08.z != 0.0f) {
        MtxTranslate(sp10, temp_s1->unk_08.x, temp_s1->unk_08.y, temp_s1->unk_08.z);
        var_s2 = 1;
    }

    if (temp_s1->unk_14.x != 0.0f || temp_s1->unk_14.y != 0.0f || temp_s1->unk_14.z != 0.0f) {
        MtxRotate(sp10, temp_s1->unk_14.x, temp_s1->unk_14.y, temp_s1->unk_14.z);
        var_s2 = 1;
    }

    if (temp_s1->unk_20.x != 1.0f || temp_s1->unk_20.y != 1.0f || temp_s1->unk_20.z != 1.0f) {
        MtxScale(sp10, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);
        func_800A2A50_A3650(sp50);
        MtxScale(sp50, temp_s1->unk_20.x, temp_s1->unk_20.y, temp_s1->unk_20.z);

        D_800F5030_F50C0++;
        MtxMult(sp50, D_800F3FE0_F4070[D_800F5030_F50C0], D_800F3FE0_F4070[D_800F5030_F50C0 + 1]);

        var_s5 = 1;
        var_s2 = 1;
    }

    if (var_s2) {
        D_800F33D4_F3464++;
        MtxMult(sp10, D_800F5480_F5510[D_800F33D4_F3464], D_800F5480_F5510[D_800F33D4_F3464 + 1]);
    }

    func_8002C37C_2CF7C(temp_s1->unk_64, D_800F54C0_F5550[D_800F33D4_F3464]);

    for (i = 0; i < temp_s1->unk_00; i++) {
        if ((temp_s1->unk_04[i] & 0x8000) && (temp_s1->unk_04[i] != -1)) {
            func_80033CBC_348BC(arg0, temp_s1->unk_04[i] & ~0x8000);
        }
    }

    if (var_s2) {
        D_800F33D4_F3464--;
    }

    if (var_s5) {
        D_800F5030_F50C0--;
    }
}

void func_80033FB0_34BB0(Gfx** arg0, s16 arg1, s32 arg2) {
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
