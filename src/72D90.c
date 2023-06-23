#include "common.h"
#include "mallocblock.h"
#include "PR/gbi.h"
#include "PR/mbi.h"
#include "process.h"
#include "stdarg.h"

typedef struct unk72D90Struct0 {
    /* 0x00 */ Vtx* unk_00;
    /* 0x04 */ Gfx* unk_04;
} unk72D90Struct0; //sizeof 8

typedef struct unk72D90Struct1 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ s32 unk_04;
} unk72D90Struct1; //sizeof unknown

typedef struct unk72D90Struct2 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ char unk_01;
    /* 0x02 */ u16 unk_02;
    /* 0x04 */ u16 unk_04;
} unk72D90Struct2; //sizeof 6

typedef struct unk72D90Struct3 {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ char unk_01[0x2F];
} unk72D90Struct3; //sizeof 0x30

extern void guLookAt(Mtx*, f32, f32, f32, f32, f32, f32, f32, f32, f32);
extern void guPerspective(Mtx*, u16*, f32, f32, f32, f32, f32);
void* HuMemAlloc(s32);
u32 osVirtualToPhysical(void*);
u32 strlen(const char*);
void* func_80014614(s32);
void func_80014750(void*);
unkGlobalStruct_00* func_80023684(s32, s32);
void func_800238F0(s32);
s32 func_8002451C(s32, void (*)(Gfx**), s32);
void func_8003A060(Gfx**, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32, s32);
s16 func_8006DB3C(s16, s32, s16, s16, s16);
s16 func_8006DD8C(s16, s16);
void func_80071598(s16);
void func_8007166C(s16);
s32 func_80072740(Gfx**);
s32 func_8007281C(Gfx**);
void func_800728F4(Gfx**, u8, s32*);
s32 func_800729C8(Gfx**);
s32 func_80072B5C(Gfx**);
void func_80072C34(Gfx**, s32);
void func_80072E1C(Gfx**);
void func_80072E5C(Gfx**, s32);
s32 func_80073008(Gfx**);
s32 func_800730E4(Gfx**);
Gfx* func_80073100(Gfx*, Vtx*);
s32 func_80073560(Gfx**);
s32 func_80073F84(Gfx**);
s32 func_80074040(Gfx**);
void func_80074124(s32);
void func_8007420C(Gfx**, f32, f32);
s32 func_80074C20(Gfx**);
s32 func_80074CE0(Gfx**);
s32 func_80074DB4(Gfx**);
s32 func_80074EBC(Gfx**);
s32 func_80074FC0(Gfx**);
s32 func_800750C8(Gfx**);
s32 func_800751CC(Gfx**);
s32 func_800752D4(Gfx**);
s32 func_800753D8(Gfx**);
s32 func_80075498(Gfx**);
s32 func_8007556C(Gfx**);
s32 func_8007562C(Gfx**);
s32 func_80075700(Gfx**);
s32 func_80075808(Gfx**);
void func_8007590C(void);
void func_800759C4(Gfx**);
void func_8007624C();
s32 func_800763CC(unkCommonStruct0*, Gfx**);
s16 func_80076FF4(s16);
s32 func_80077068(unkCommonStruct0*, Gfx**);
s32 func_800773EC(unkCommonStruct0*, s32, s16);
void func_8007767C(unkCommonStruct0*, s32);
s32 func_80077838(unkCommonStruct0*, Gfx**);
s32 func_80077FC4(unkCommonStruct0*, Gfx**);
s32 func_800786F0(unkCommonStruct0*, Gfx**);
s32 func_800789C0(unkCommonStruct0*, Gfx**);
s32 func_80078B6C(unkCommonStruct0*, Gfx**);
s32 func_80079104(unkCommonStruct0*, Gfx**);
s32 func_80079128(unkCommonStruct0*, char*, s16);
s32 func_80079608(unkCommonStruct0*, Gfx**);
s32 func_8007962C(unkCommonStruct0*, Gfx**);
s32 func_80079650(unkCommonStruct0*, Gfx**);
s32 func_80079B2C(unkCommonStruct0*, Gfx**);
s32 func_80079884(unkCommonStruct0*, Gfx**);
s32 func_8007A0FC(unkCommonStruct0*, Gfx**);
s32 func_8007983C(unkCommonStruct0*, Gfx**);
s32 func_8007A7A4(unkCommonStruct0*, Gfx**);
s32 func_80079860(unkCommonStruct0*, Gfx**);
s32 func_8007A978(unkCommonStruct0*, Gfx**);
void func_8007B420(Gfx**);
void func_8007B458(Gfx**);
void func_8007B52C();
s32 func_8007BCA8(s32, s16);

extern u8 fadeStatus;
extern u8 D_800C6100;
extern void* D_800C6104;
extern Gfx D_800C6108[];
extern s32 D_800C6158;
extern Vp D_800C6168;
extern Gfx D_800C6178;
extern s16 D_800C61B8[];
extern u8 D_800C61C0[];
extern u8 D_800C61F8[];
extern u8 D_800C6230[];
extern char* D_800C624C[];
extern unk72D90Struct2 D_800C6268[];
extern f64 D_800CBA38;
extern char D_800CBA70[];
extern f64 D_800CBA78;
extern f64 D_800CBA80;
extern f64 D_800CBA88;
extern f64 D_800CBA90;
extern f64 D_800CBAA0;
extern f64 D_800CBAA8;
extern char D_800CBAB0[];
extern char D_800CBAB4[];
extern char D_800CBAC8[];
extern char D_800CBAD0[];
extern char D_800CBAD8[];
extern char D_800CBAE4[];
extern char D_800CBAEC[];
extern Gfx* D_800E4340;
extern s32 D_800E4344;
extern s8 D_800E4348;
extern Gfx* D_800E434C;
extern s16 D_800E4350;
extern s16 D_800E4352;
extern s32 D_800ECB1C;
extern unk72D90Struct0* D_800ED438;
extern TextWindow* D_800ED4B0;
extern s16 D_800ED5DE;
extern s16 D_800ED720;
extern unkCommonStruct0 D_800ED740[];
extern u8 D_800EDEB0;
extern u16 D_800EDEB4[];
extern Process* D_800F0A24;
extern s8 D_800F2CB8;
extern s16 D_800F2CE0;
extern u8 D_800F2CF8;
extern s16 D_800F3182;
extern f32 D_800F3288;
extern unk72D90Struct3 D_800F32B3[];
extern unk72D90Struct3 D_800F32B4[];
extern u8 D_800F3394;
extern unk72D90Struct1 D_800F3744;
extern u8 D_800F3753;
extern s16 D_800F3768[];
extern Gfx* D_800F37DC;
extern s8 D_800F384E;
extern Mtx D_800F3860[];
extern u8 D_800F396A;
extern s16 D_800F3B70[];
extern s8 D_800F3B80;
extern s8 D_800F3FFC;
extern f32 D_800F5024;
extern u8 D_800F50B8;
extern Mtx D_800F5340[];
extern s32 D_800F545C;
extern s8 D_800F64F2;
extern s16 D_800F64F4;
extern s16 D_800F6548;

void func_80072190(void) {
    fadeStatus = 0;
    D_800ED0D2 = 0;
    D_800F396A = 0;
    D_800F2CF8 = 0;
    D_800EDEB0 = 0;
    D_800F50B8 = 0;

    func_8007590C();
}

void func_800721D8(Gfx** arg0) {
    if (D_800ED0D2 == 3) {
        if (D_800C6100 == 254) {
            func_80072E1C(arg0);
        } else {
            func_800728F4(arg0, 255, &D_800C6158);
        }
        return;
    }

    func_800759C4(arg0);

    if (D_800ED0D2 == 0) {
        return;
    }

    switch (D_800ED0D2) {
        case 1:
            switch (D_800C6100) {
                case 0:
                    fadeStatus = func_80072740(arg0);
                    break;
                case 254:
                    fadeStatus = func_800729C8(arg0);
                    break;
                case 253:
                    fadeStatus = func_80073008(arg0);
                    break;
                case 252:
                    fadeStatus = 0;
                    break;
                case 1:
                    fadeStatus = func_80073F84(arg0);
                    break;
                case 2:
                    fadeStatus = func_80074C20(arg0);
                    break;
                case 3:
                    fadeStatus = func_80074DB4(arg0);
                    break;
                case 4:
                    fadeStatus = func_80074FC0(arg0);
                    break;
                case 5:
                    fadeStatus = func_800751CC(arg0);
                    break;
                case 6:
                    fadeStatus = func_800753D8(arg0);
                    break;
                case 7:
                    fadeStatus = func_8007556C(arg0);
                    break;
                case 8:
                    fadeStatus = func_80075700(arg0);
                    break;
            }
            D_800F5024 += 1.0f;
            if (fadeStatus == 0) {
                func_80072724(0, 0, 0);
                if (D_800C6104 != NULL) {
                    if (D_800F50B8 == 0) {
                        FreePerm(D_800C6104);
                    }
                    D_800C6104 = NULL;
                }
                func_800238F0(28000);
            }
            break;
        case 2:
            switch (D_800C6100) {
                case 0:
                    fadeStatus = func_8007281C(arg0);
                    break;
                case 254:
                    fadeStatus = func_80072B5C(arg0);
                    break;
                case 253:
                    fadeStatus = func_800730E4(arg0);
                    break;
                case 252:
                    fadeStatus = func_80073560(arg0);
                    break;
                case 1:
                    fadeStatus = func_80074040(arg0);
                    break;
                case 2:
                    fadeStatus = func_80074CE0(arg0);
                    break;
                case 3:
                    fadeStatus = func_80074EBC(arg0);
                    break;
                case 4:
                    fadeStatus = func_800750C8(arg0);
                    break;
                case 5:
                    fadeStatus = func_800752D4(arg0);
                    break;
                case 6:
                    fadeStatus = func_80075498(arg0);
                    break;
                case 7:
                    fadeStatus = func_8007562C(arg0);
                    break;
                case 8:
                    fadeStatus = func_80075808(arg0);
                    break;
            }
            D_800F5024 += 1.0f;
            break;
    }

    if (fadeStatus == 0) {
        if (D_800ED0D2 == 2) {
            D_800ED0D2 = 3;
        } else {
            D_800ED0D2 = 0;
        }
        D_800F5024 = 0.0f;
    }
}

void SetFadeInTypeAndTime(s16 a, s16 b) {
    if (fadeStatus == 0) {
        D_800ED0D2 = 1;
        fadeStatus = 1;
        if (a != 255) {
            D_800C6100 = a;
        }
        D_800F3288 = b;
        D_800F5024 = 0.0f;
    }
}

void func_800726AC(s16 a, s16 b) {
    if (fadeStatus == 0) {
        D_800ED0D2 = 2;
        fadeStatus = 1;
        if (a != 255) {
            D_800C6100 = a;
        }
        D_800F3288 = b;
        D_800F5024 = 0.0f;
    }
}

s32 func_80072718(void) {
    return fadeStatus;
}

void func_80072724(u8 arg0, u8 arg1, u8 arg2) {
    D_800EDEB0 = arg0;
    D_800F2CF8 = arg1;
    D_800F396A = arg2;
}

s32 func_80072740(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    func_800728F4(arg0, 255.0f - D_800F5024 / D_800F3288 * 255.0f, &D_800C6158);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_8007281C(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    func_800728F4(arg0, D_800F5024 / D_800F3288 * 255.0f, &D_800C6158);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

void func_800728F4(Gfx** arg0, u8 arg1, s32* arg2) {
    gSPDisplayList((*arg0)++, D_800C6108);
    gDPSetRenderMode((*arg0)++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
    gDPSetCombineMode((*arg0)++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor((*arg0)++, 0, 0, D_800EDEB0, D_800F2CF8, D_800F396A, arg1);
    gDPFillRectangle((*arg0)++, 0, 0, 320, 240);
}

#if NON_MATCHING
s32 func_800729C8(Gfx** arg0) {
    if (D_800C6104 == NULL) {
        return 0;
    }

    if (D_800F3288 != 0.0f) {
        u8 var_a1 = 255.0f - D_800F5024 / D_800F3288 * 255.0f;

        gSPDisplayList((*arg0)++, D_800C6108);
        gDPSetCombineMode((*arg0)++, G_CC_MODULATEI_PRIM, G_CC_MODULATEI_PRIM);
        gDPSetRenderMode((*arg0)++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
        gDPSetPrimColor((*arg0)++, 0, 0, 255, 255, 255, var_a1);

        func_80072E5C(arg0, D_800F545C);

        if (!(D_800F5024 >= D_800F3288)) {
            return 1;
        }
    }

    if (D_800F50B8 == 0) {
        FreePerm(D_800C6104);
    }

    D_800C6104 = NULL;
    return 0;
}
#else
INCLUDE_ASM(s32, "72D90", func_800729C8);
#endif

s32 func_80072B5C(Gfx** arg0) {
    gSPDisplayList((*arg0)++, D_800C6108);

    if (D_800F5024 == 0.0f) {
        D_800C6104 = MallocPerm(153664);
        D_800F545C = (s32) (D_800C6104 + 63) & ~63;
        func_80072C34(arg0, D_800F545C);
        return 1;
    }

    func_80072E5C(arg0, D_800F545C);

    if (D_800F5024 > 1.0f) {
        return 0;
    }

    return 1;
}

void func_80072C34(Gfx** arg0, s32 arg1) {
    s16 i;
    s16 j;

    gDPSetColorImage((*arg0)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, arg1);

    for (i = 0; i < 240; i += 16) {
        for (j = 0; j < 320; j += 64) {
            func_8003A060(arg0, ((j + (i * 320)) * 2) + 0x02000000, 0, 2, 320, 240, 0, 0, 64, 16, 0, 2, 2, 0, 0, 0, 0);
            gSPTextureRectangle((*arg0)++, j * 4, i * 4, (j + 64) * 4, (i + 16) * 4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
        }
    }

    gDPSetColorImage((*arg0)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x02000000);
}

void func_80072E1C(Gfx** arg0) {
    gSPDisplayList((*arg0)++, D_800C6108);
    func_80072E5C(arg0, D_800F545C);
}

void func_80072E5C(Gfx** arg0, s32 arg1) {
    s16 i;
    s16 j;

    for (i = 0; i < 240; i += 16) {
        for (j = 0; j < 320; j += 64) {
            func_8003A060(arg0, arg1 + (j + i * 320) * 2, 0, 2, 320, 240, 0, 0, 64, 16, 0, 2, 2, 0, 0, 0, 0);
            gSPTextureRectangle((*arg0)++, j * 4, i * 4, (j + 64) * 4, (i + 16) * 4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
        }
    }
}

s32 func_80073008(Gfx** arg0) {
    unk72D90Struct0* temp_v0;

    if (D_800F5024 == 0.0f) {
        // Casts can be removed once func_80023684 is updated to return void*
        temp_v0 = D_800ED438 = (unk72D90Struct0*) func_80023684(sizeof(unk72D90Struct0), 28000);
        temp_v0->unk_00 = (Vtx*) func_80023684(6400, 28000);
        temp_v0->unk_04 = (Gfx*) func_80023684(8000, 28000);
        func_80073100(temp_v0->unk_04, temp_v0->unk_00);
    }

    temp_v0 = D_800ED438;

    gSPDisplayList((*arg0)++, temp_v0->unk_04);

    if (D_800F5024 >= 60.0f) {
        return 0;
    }

    return 1;
}

s32 func_800730E4(Gfx** arg0) {
    return func_80072B5C(arg0);
}

Gfx* func_80073100(Gfx* arg0, Vtx* arg1) {
    Gfx* sp4C = arg0;
    Vtx* var_s2 = arg1;
    u16 sp48;
    s16 i;
    s16 j;

    gSPDisplayList(sp4C++, D_800C6108);
    gDPSetCombineMode(sp4C++, G_CC_DECALRGB, G_CC_DECALRGB);
    gDPSetRenderMode(sp4C++, G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2);
    gDPSetTexturePersp(sp4C++, G_TP_PERSP);
    gSPTexture(sp4C++, -1, -1, 0, G_TX_RENDERTILE, G_ON);

    guPerspective(&D_800F3860[D_800F3FA8], &sp48, 20.0f, 1.3333334f, 80.0f, 8000.0f, 1.0f);
    guLookAt(&D_800F5340[D_800F3FA8], 0.0f, 0.0f, 3000.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);

    gSPPerspNormalize(sp4C++, &sp48);
    gSPViewport(sp4C++, &D_800C6168);
    gSPMatrix(sp4C++, osVirtualToPhysical(&D_800F3860[D_800F3FA8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);
    gSPMatrix(sp4C++, VIRTUAL_TO_PHYSICAL(&D_800F5340[D_800F3FA8]), G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
    gDPSetScissor(sp4C++, G_SC_NON_INTERLACE, 0, 0, 320, 240);

    for (i = 96; i >= -120; i -= 24) {
        for (j = -160; j < 160; j += 32) {
            s32 sp54 = (96 - i) * 320 + 160;

            func_8003A060(&sp4C, D_800F545C + (j + sp54) * 2, 0, 2, 320, 240, 0, 0, 32, 24, 0, 2, 2, 5, 5, 0, 0);

            gSPVertex(sp4C++, osVirtualToPhysical(var_s2), 4, 0);
            gSP1Quadrangle(sp4C++, 0, 1, 2, 3, 0);

            var_s2->n.ob[0] = j * 10;
            var_s2->n.ob[1] = i * 10;
            var_s2->n.ob[2] = 0;
            var_s2->n.n[0] = var_s2->n.n[1] = var_s2->n.n[2] = -1;
            var_s2->n.tc[0] = 0;
            var_s2->n.tc[1] = 768;
            var_s2->n.a = 255;
            var_s2++;

            var_s2->n.ob[0] = j * 10;
            var_s2->n.ob[1] = i * 10 + 240;
            var_s2->n.ob[2] = 0;
            var_s2->n.n[0] = var_s2->n.n[1] = var_s2->n.n[2] = -1;
            var_s2->n.tc[0] = 0;
            var_s2->n.tc[1] = 0;
            var_s2->n.a = 255;
            var_s2++;

            var_s2->n.ob[0] = j * 10 + 320;
            var_s2->n.ob[1] = i * 10 + 240;
            var_s2->n.ob[2] = 0;
            var_s2->n.n[0] = var_s2->n.n[1] = var_s2->n.n[2] = -1;
            var_s2->n.tc[0] = 1024;
            var_s2->n.tc[1] = 0;
            var_s2->n.a = 255;
            var_s2++;

            var_s2->n.ob[0] = j * 10 + 320;
            var_s2->n.ob[1] = i * 10;
            var_s2->n.ob[2] = 0;
            var_s2->n.n[0] = var_s2->n.n[1] = var_s2->n.n[2] = -1;
            var_s2->n.tc[0] = 1024;
            var_s2->n.tc[1] = 768;
            var_s2->n.a = 255;
            var_s2++;
        }
    }

    gSPEndDisplayList(sp4C++);
    return sp4C;
}

// Matches without --vr4300mul-off
#ifdef NON_MATCHING
s32 func_80073560(Gfx** arg0) {
    f32 temp_f22;
    f32 temp_f24;
    s32 var_s8;
    s16 i;
    s16 j;

    if (D_800F3288 - 1.0f <= D_800F5024) {
        func_800728F4(arg0, 255, &D_800C6158);
        return 0;
    }

    temp_f22 = 1.0f - D_800F5024 / D_800F3288;
    temp_f24 = 1.0f / temp_f22;

    gSPDisplayList((*arg0)++, D_800C6108);
    gDPSetAlphaCompare((*arg0)++, G_AC_THRESHOLD);
    gDPSetBlendColor((*arg0)++, 0, 0, 0, 0);
    gDPSetTextureFilter((*arg0)++, G_TF_BILERP);
    gDPSetScissor((*arg0)++, G_SC_NON_INTERLACE, 0, 0, 320, 240);

    var_s8 = D_800ECB1C;

    gDPSetColorImage((*arg0)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x003D0800);
    gSPDisplayList((*arg0)++, &D_800C6178);
    gDPSetCombineMode((*arg0)++, G_CC_DECALRGB, G_CC_DECALRGB);
    gDPSetRenderMode((*arg0)++, G_RM_OPA_SURF, G_RM_OPA_SURF2);

    for (i = 0; i < 240; i += 16) {
        for (j = 0; j < 320; j += 64) {
            func_8003A060(arg0, var_s8 + (j + i * 320) * 2, 0, 2, 320, 240, 0, 0, 64, 16, 0, 2, 2, 0, 0, 0, 0);
            gSPTextureRectangle((*arg0)++, j * temp_f22 * 4.0f, i * temp_f22 * 4.0f,
                (j * temp_f22 + temp_f22 * 64.0f) * 4.0f, (i * temp_f22 + temp_f22 * 16.0f) * 4.0f,
                G_TX_RENDERTILE, 0, 0, temp_f24 * 1024.0f, temp_f24 * 1024.0f);
        }
    }

    gDPSetColorImage((*arg0)++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x02000000);

    var_s8 = 0x803D0800;
    for (i = 0; i < temp_f22 * 240.0f + 15.0f; i += 16) {
        for (j = 0; j < temp_f22 * 320.0f + 31.0f; j += 32) {
            func_8003A060(arg0, var_s8 + (j + i * 320) * 2, 0, 2, 320, 240, 0, 0, 32, 16, 0, 2, 2, 0, 0, 0, 0);
            gSPTextureRectangle((*arg0)++, j * temp_f24 * 4.0f, i * temp_f24 * 4.0f,
                (j + 32) * temp_f24 * 4.0f, (i + 16) * temp_f24 * 4.0f,
                G_TX_RENDERTILE, 0, 0, temp_f22 * 1024.0f, temp_f22 * 1024.0f);
        }
    }

    gDPPipeSync((*arg0)++);
    gDPSetCombineMode((*arg0)++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetRenderMode((*arg0)++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetPrimColor((*arg0)++, 0, 0, 0, 0, 0, 8);
    gDPFillRectangle((*arg0)++, 0, 0, 320, 240);

    return 1;
}
#else
INCLUDE_ASM(s32, "72D90", func_80073560);
#endif

s32 func_80073F84(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(44);
    }

    func_8007420C(arg0, D_800F5024 / D_800F3288, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80074040(Gfx** arg0) {
    f32 var_a2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(44);
    }

    var_a2 = (1.0f - D_800F5024 / D_800F3288) * 1.1f;
    func_8007420C(arg0, var_a2, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

INCLUDE_ASM(s32, "72D90", func_80074124);

void func_8007420C(Gfx** arg0, f32 arg1, f32 arg2) {
    s16 var_t1;
    s16 var_t2;
    s16 var_t3;
    s16 var_t4;
    f32 temp_f4;

    if (arg1 == 0) {
        func_800728F4(arg0, 255, &D_800C6158);
        return;
    }

    gSPDisplayList((*arg0)++, D_800C6108);
    gDPSetAlphaCompare((*arg0)++, G_AC_THRESHOLD);
    gDPSetBlendColor((*arg0)++, 0, 0, 0, 1);
    gDPSetScissor((*arg0)++, G_SC_NON_INTERLACE, 0, 0, 320, 240);
    gDPSetTextureFilter((*arg0)++, G_TF_BILERP);
    gDPSetRenderMode((*arg0)++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineLERP((*arg0)++, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0, 0, 0, 0, PRIMITIVE, PRIMITIVE, 0, TEXEL0, 0);
    gDPLoadTextureBlock((*arg0)++, D_800F3744.unk_04, G_IM_FMT_I, G_IM_SIZ_8b, D_800F3744.unk_00, D_800F3744.unk_02, 0,
        G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOLOD);
    gDPSetPrimColor((*arg0)++, 0, 0, D_800EDEB0, D_800F2CF8, D_800F396A, arg2 * 255.0f);

    var_t3 = 160.0f - arg1 * 160.0f;
    var_t1 = 120.0f - arg1 * 160.0f;
    var_t4 = 160.0f + arg1 * 160.0f;
    var_t2 = 120.0f + arg1 * 160.0f;
    temp_f4 = ((f32) var_t4 - var_t3) / D_800F3744.unk_00;

    gSPScisTextureRectangle((*arg0)++, var_t3 * 4, var_t1 * 4, var_t4 * 4, var_t2 * 4, 0, 0, 0,
        (1.0f / temp_f4) * 1024.0f, (1.0f / temp_f4) * 1024.0f);
    gDPSetRenderMode((*arg0)++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineMode((*arg0)++, G_CC_PRIMITIVE, G_CC_PRIMITIVE);
    gDPSetPrimColor((*arg0)++, 0, 0, D_800EDEB0, D_800F2CF8, D_800F396A, arg2 * 255.0f);

    if (var_t1 > 0) {
        gDPScisFillRectangle((*arg0)++, 0, 0, 320, var_t1);
    } else {
        var_t1 = 0;
    }

    if (var_t2 < 240) {
        gDPScisFillRectangle((*arg0)++, 0, var_t2, 320, 240);
    } else {
        var_t2 = 240;
    }

    if (var_t3 > 0) {
        gDPScisFillRectangle((*arg0)++, 0, var_t1, var_t3, var_t2);
    }

    if (var_t4 < 320) {
        gDPScisFillRectangle((*arg0)++, var_t4, var_t1, 320, var_t2);
    }
}

s32 func_80074C20(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(45);
    }

    func_8007420C(arg0, D_800F5024 / D_800F3288 * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80074CE0(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(45);
    }

    func_8007420C(arg0, (1.0f - D_800F5024 / D_800F3288) * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80074DB4(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(46);
    }

    var_a2 = D_800F5024 / D_800F3288 * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 < D_800F5024) {
        var_f2 = 1.0f - (D_800F5024 - temp_f2) / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80074EBC(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(46);
    }

    var_a2 = (1.0f - D_800F5024 / D_800F3288) * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 > D_800F5024) {
        var_f2 = D_800F5024 / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80074FC0(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(47);
    }

    var_a2 = D_800F5024 / D_800F3288 * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 < D_800F5024) {
        var_f2 = 1.0f - (D_800F5024 - temp_f2) / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_800750C8(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(47);
    }

    var_a2 = (1.0f - D_800F5024 / D_800F3288) * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 > D_800F5024) {
        var_f2 = D_800F5024 / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_800751CC(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(48);
    }

    var_a2 = D_800F5024 / D_800F3288 * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 < D_800F5024) {
        var_f2 = 1.0f - (D_800F5024 - temp_f2) / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_800752D4(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(48);
    }

    var_a2 = (1.0f - D_800F5024 / D_800F3288) * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 > D_800F5024) {
        var_f2 = D_800F5024 / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_800753D8(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(49);
    }

    func_8007420C(arg0, D_800F5024 / D_800F3288 * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80075498(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(49);
    }

    func_8007420C(arg0, (1.0f - D_800F5024 / D_800F3288) * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_8007556C(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(50);
    }

    func_8007420C(arg0, D_800F5024 / D_800F3288 * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_8007562C(Gfx** arg0) {
    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(50);
    }

    func_8007420C(arg0, (1.0f - D_800F5024 / D_800F3288) * 2.0f, 1.0f);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80075700(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(51);
    }

    var_a2 = D_800F5024 / D_800F3288 * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 < D_800F5024) {
        var_f2 = 1.0f - (D_800F5024 - temp_f2) / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

s32 func_80075808(Gfx** arg0) {
    f32 var_a2;
    f32 temp_f2;
    f32 var_f2;

    if (D_800F3288 == 0.0f) {
        return 0;
    }

    if (D_800F5024 == 0.0f) {
        func_80074124(51);
    }

    var_a2 = (1.0f - D_800F5024 / D_800F3288) * 2.0f;
    temp_f2 = D_800F3288 * 0.5f;
    if (temp_f2 > D_800F5024) {
        var_f2 = D_800F5024 / temp_f2;
    } else {
        var_f2 = 1.0f;
    }

    func_8007420C(arg0, var_a2, var_f2);

    if (D_800F5024 >= D_800F3288) {
        return 0;
    }

    return 1;
}

void func_8007590C(void) {
    s16 i;

    D_800F2CB8 = 0;

    for (i = 0; i < 8; i++) {
        D_800ED740[i].unk_00 = 0;
    }

    for (i = 0; i < 8; i++) {
        D_800F3B70[i] = D_800F3768[i] = -1;
    }

    D_800F3394 = 0;
    D_800F3FFC = -1;
    D_800F3753 = 0;
}

// Matches but needs rodata
#ifdef NON_MATCHING
void func_800759C4(Gfx** arg0) {
    unkCommonStruct0* var_s0;
    s16 var_s1 = 0;
    s16 i;
    s16 j;

    if (D_800F384E != 0 && D_800F3394 == 0) {
        return;
    }

    for (i = 0; i < 8; i++) {
        if (D_800ED740[i].unk_01 == 0) {
            continue;
        }

        var_s0 = &D_800ED740[i];

        switch (var_s0->unk_00) {
            case 0:
                var_s1 = func_800763CC(var_s0, arg0);
                break;
            case 2:
                var_s1 = func_80077068(var_s0, arg0);
                break;
            case 4:
                var_s1 = func_80077838(var_s0, arg0);
                break;
            case 5:
                var_s1 = func_80077FC4(var_s0, arg0);
                break;
            case 6:
                var_s1 = func_800786F0(var_s0, arg0);
                break;
            case 7:
                var_s1 = func_800789C0(var_s0, arg0);
                break;
            case 8:
                var_s1 = func_80078B6C(var_s0, arg0);
                break;
            case 9:
                var_s1 = func_80079104(var_s0, arg0);
                break;
            case 10:
                var_s1 = func_80079608(var_s0, arg0);
                break;
            case 11:
                var_s1 = func_8007962C(var_s0, arg0);
                break;
            case 12:
                var_s1 = func_80079650(var_s0, arg0);
                break;
            case 13:
                var_s1 = func_80079B2C(var_s0, arg0);
                break;
            case 14:
                var_s1 = func_80079884(var_s0, arg0);
                break;
            case 15:
                var_s1 = func_8007A0FC(var_s0, arg0);
                break;
            case 16:
                var_s1 = func_8007983C(var_s0, arg0);
                break;
            case 17:
                var_s1 = func_8007A7A4(var_s0, arg0);
                break;
            case 18:
                var_s1 = func_80079860(var_s0, arg0);
                break;
            case 19:
                var_s1 = func_8007A978(var_s0, arg0);
                break;
        }

        var_s0->unk_04++;
        if (var_s0->unk_04 >= 16384) {
            var_s0->unk_04 = 8192;
        }

        if (var_s1 == 0) {
            var_s0->unk_01 = 0;

            if (D_800F3753 == 0) {
                for (j = 0; j < 8; j++) {
                    if (D_800ED740[j].unk_01 != 0 && D_800ED740[j].unk_00 != 8) {
                        break;
                    }
                }

                if (j == 8) {
                    func_8007624C();
                }
            }
        }
    }
}
#else
INCLUDE_ASM(s32, "72D90", func_800759C4);
#endif

// Matches but needs rodata
#ifdef NON_MATCHING
s32 func_80075CCC(s16 arg0, ...) {
    unkCommonStruct0* temp_a2;
    va_list args;
    s16 var_t0;
    s32 temp_s32; // required to match
    s16 i;

    va_start(args, arg0);

    for (var_t0 = 0; var_t0 < 8; var_t0++) {
        if (D_800ED740[var_t0].unk_01 == 0) {
            break;
        }
    }

    if (var_t0 == 8) {
        return -1;
    }

    temp_a2 = &D_800ED740[var_t0];
    temp_a2->unk_01 = 1;
    temp_a2->unk_00 = arg0;
    temp_a2->unk_04 = 0;
    temp_a2->unk_54 = 160.0f;
    temp_a2->unk_58 = 120.0f;
    temp_a2->unk_60 = 1.0f;
    temp_a2->unk_5C = 1.0f;
    temp_a2->unk_64 = 0.0f;
    temp_a2->unk_03 = 255;
    temp_a2->unk_06 = 60;

    for (i = 0; i < 16; i++) {
        temp_a2->unk_14[i] = -1;
        temp_a2->unk_34[i] = -1;
    }

    switch (arg0) {
        case 4:
        case 5:
            temp_a2->unk_08 = temp_s32 = va_arg(args, s32);
            break;
        case 6:
        case 7:
            temp_a2->unk_10 = va_arg(args, s32);
            temp_a2->unk_54 = va_arg(args, s32);
            temp_a2->unk_58 = va_arg(args, s32);
            temp_a2->unk_5C = va_arg(args, f64);
            temp_a2->unk_60 = va_arg(args, f64);
            temp_a2->unk_02 = va_arg(args, s32);
            break;
        case 8:
            D_800F3FFC = var_t0;
            temp_a2->unk_08 = va_arg(args, s32);
            temp_a2->unk_54 = va_arg(args, s32);
            temp_a2->unk_58 = va_arg(args, s32);
            temp_a2->unk_54 = 160.0f;
            temp_a2->unk_58 = 28.0f;
            break;
        case 15:
            temp_a2->unk_08 = temp_s32 = va_arg(args, s32);
            temp_a2->unk_0A = temp_s32 = va_arg(args, s32);
            break;
        case 19:
            temp_a2->unk_08 = temp_s32 = va_arg(args, s32);
            temp_a2->unk_0A = temp_s32 = va_arg(args, s32);
            temp_a2->unk_0C = temp_s32 = va_arg(args, s32);
            temp_a2->unk_58 = 160.0f;
            break;
        case 0:
        case 2:
        case 14:
        case 16:
        case 18:
            temp_a2->unk_06 = 45;
            break;
    }

    D_800ED720 = 90;
    return var_t0;
}
#else
INCLUDE_ASM(s32, "72D90", func_80075CCC);
#endif

s32 func_80075FE0(void) {
    s16 var_a1;
    s16 i;

    for (i = 0, var_a1 = 0; i < 8; i++) {
        if (D_800ED740[i].unk_00 != 8) {
            var_a1 |= D_800ED740[i].unk_01;
        }
    }

    return var_a1;
}

s32 func_80076054(s16 arg0) {
    return D_800ED740[arg0].unk_01;
}

void func_80076080(s16 arg0, s16 arg1) {
    D_800ED740[arg0].unk_06 = arg1;
}

void func_800760AC(s16 arg0, f32 arg1, f32 arg2) {
    D_800ED740[arg0].unk_54 = arg1;
    D_800ED740[arg0].unk_58 = arg2;
}

void func_800760E4(s16 arg0) {
    if (D_800ED740[arg0].unk_01 != 0) {
        D_800ED740[arg0].unk_01 = 4;
    }
}

void func_80076128(void) {
    D_800F3FFC = -1;
    D_800F3394 = 1;
    func_800759C4(&D_800F37DC);
    D_800F3394 = 0;
    func_8007624C();
    D_800F3753 = 0;
}

s32 func_80076174(void) {
    s32 temp_v0;
    s32 i;

    if (D_800F384E == 0 && D_800F5144 == 0) {
        temp_v0 = func_80075FE0();

        if (temp_v0 == 0 || temp_v0 & 2) {
            if (IsFlagSet(0x2B)) {
                return 0;
            }

            D_800ED720--;
            if (D_800ED720 < 0) {
                return 0;
            }

            for (i = 0; i < 4; i++) {
                if (D_800EDEB4[D_800F32B3[i].unk_00] & 0xC000) {
                    return 0;
                }
            }
        }
    }

    return 1;
}

void func_80076240(s16 arg0) {
    D_800ED720 = arg0;
}

void func_8007624C(void) {
    s16 i;

    for (i = 0; i < 8; i++) {
        if (i == 2 && D_800F3FFC != -1) {
            continue;
        }
        if (D_800F3B70[i] != -1) {
            func_80067704(D_800F3B70[i]);
        }
        if (D_800F3768[i] != -1) {
            func_80067704(D_800F3768[i]);
        }
        D_800F3B70[i] = D_800F3768[i] = -1;
    }
}

void func_80076338(unkCommonStruct0* arg0) {
    s16 i;

    for (i = 0; i < 16; i++) {
        if (arg0->unk_14[i] != -1) {
            func_80064D38(arg0->unk_14[i]);
        }
        if (arg0->unk_34[i] != -1) {
            func_80067704(arg0->unk_34[i]);
        }
    }
}

INCLUDE_ASM(s32, "72D90", func_800763CC);

s16 func_80076740(unkCommonStruct0* arg0, char* arg1, u8 arg2, s16 arg3, s16 arg4) {
    s16 i;

    for (i = 0; i < 16; i++) {
        arg0->unk_14[i] = -1;
        arg0->unk_34[i] = -1;
    }

    return func_800767B4(arg0, arg1, arg2, arg3, arg4);
}

INCLUDE_ASM(s32, "72D90", func_800767B4);

s32 func_80076B2C(u8* arg0, s32 arg1) {
    u16 var_v0;
    u16 var_a2;
    s16 var_v1;
    u8 temp_s0;
    u16 i;

    var_v1 = arg1;
    temp_s0 = arg0[0];

    if (temp_s0 >= 'A' && temp_s0 <= 'Z') {
        if (var_v1 & 1) {
            if (D_800F3768[0] == -1) {
                var_a2 = D_800F3768[0] = func_80076FF4(0x7D);
            } else {
                var_a2 = D_800F3768[0];
            }
        } else {
            if (D_800F3B70[0] == -1) {
                var_a2 = D_800F3B70[0] = func_80076FF4(0x7B);
            } else {
                var_a2 = D_800F3B70[0];
            }
        }
        var_v0 = temp_s0 - 'A';
    } else if (temp_s0 >= 'a' && temp_s0 <= 'z') {
        if (!(var_v1 & 1)) {
            if (D_800F3B70[1] == -1) {
                var_a2 = D_800F3B70[1] = func_80076FF4(0x88);
            } else {
                var_a2 = D_800F3B70[1];
            }
        }
        var_v0 = temp_s0 - 'a';
    } else if (temp_s0 >= '0' && temp_s0 <= '9') {
        if (var_v1 & 1) {
            if (D_800F3768[2] == -1) {
                var_a2 = D_800F3768[2] = func_80076FF4(0x7E);
            } else {
                var_a2 = D_800F3768[2];
            }
        } else {
            if (D_800F3B70[2] == -1) {
                var_a2 = D_800F3B70[2] = func_80076FF4(0x7C);
            } else {
                var_a2 = D_800F3B70[2];
            }
        }
        var_v0 = temp_s0 - '0';
    } else if (temp_s0 >= 134 && temp_s0 <= 189) {
        if (var_v1 & 1) {
            return 0;
        }

        if (arg0[1] == 128 || arg0[1] == 129) {
            if (D_800F3B70[5] == -1) {
                var_a2 = D_800F3B70[5] = func_80076FF4(0x82);
            } else {
                var_a2 = D_800F3B70[5];
            }
            for (i = 0; i < 20; i++) {
                if (temp_s0 == D_800C6230[i]) {
                    break;
                }
            }
            if (arg0[1] == 129) {
                i += 5;
            }
        } else {
            if (D_800F3B70[4] == -1) {
                var_a2 = D_800F3B70[4] = func_80076FF4(0x81);
            } else {
                var_a2 = D_800F3B70[4];
            }
            for (i = 0; i < 55; i++) {
                if (temp_s0 == D_800C61F8[i]) {
                    break;
                }
            }
        }
        var_v0 = i;
    } else if (temp_s0 >= 198 && temp_s0 <= 253) {
        if (var_v1 & 1) {
            return 0;
        }

        if (arg0[1] == 128 || arg0[1] == 129) {
            if (D_800F3B70[7] == -1) {
                var_a2 = D_800F3B70[7] = func_80076FF4(0x84);
            } else {
                var_a2 = D_800F3B70[7];
            }
            temp_s0 -= 'A' - 1;
            for (i = 0; i < 20; i++) {
                if (temp_s0 == D_800C6230[i]) {
                    break;
                }
            }
            if (arg0[1] == 129) {
                i += 5;
            }
        } else {
            if (D_800F3B70[6] == -1) {
                var_a2 = D_800F3B70[6] = func_80076FF4(0x83);
            } else {
                var_a2 = D_800F3B70[6];
            }
            temp_s0 -= 'A' - 1;
            for (i = 0; i < 55; i++) {
                if (temp_s0 == D_800C61F8[i]) {
                    break;
                }
            }
        }
        var_v0 = i;
    } else {
        if (var_v1 & 1) {
            if (D_800F3768[3] == -1) {
                var_a2 = D_800F3768[3] = func_80076FF4(0x80);
            } else {
                var_a2 = D_800F3768[3];
            }
        } else {
            if (D_800F3B70[3] == -1) {
                var_a2 = D_800F3B70[3] = func_80076FF4(0x7F);
            } else {
                var_a2 = D_800F3B70[3];
            }
        }

        switch (temp_s0) {
            case 132:
                var_v0 = 2;
                break;
            case 194:
            case 196:
                var_v0 = 1;
                break;
            case 195:
            case 197:
                var_v0 = 3;
                break;
            case 61:
                var_v0 = 4;
                break;
            case 92:
                var_v0 = 5;
                break;
            case 0:
            case 32:
            default:
                var_v0 = 0;
                break;
        }
    }

    return (var_a2 << 16) | var_v0;
}

s16 func_80076FF4(s16 arg0) {
    void* temp_v0 = func_80014614(arg0);
    s16 temp_s0 = func_800678A4(temp_v0);

    func_80014750(temp_v0);
    return temp_s0;
}

void func_80077044(unkCommonStruct0* arg0) {
    func_80076338(arg0);
    func_8007624C();
}

s32 func_80077068(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_800773EC(arg0, 720984, 1057);
}

s32 func_8007708C(unkCommonStruct0* arg0, char* arg1, s16 arg2) {
    f64 var_f2;
    f32 temp_f24;
    f32 temp_f30;
    s32 temp_v0;
    f32 i;

    var_f2 = temp_v0 = strlen(arg1);
    if (temp_v0 < 0) {
        var_f2 += D_800CBA38;
    }
    temp_f30 = var_f2;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, arg1, 1, -1, -1);
        func_80066DC4(arg0->unk_14[0], 0, 160, arg0->unk_58);
        arg0->unk_08 = -1000;
        arg0->unk_0A = 300;
        PlaySound(arg2);
        D_800F64F2 = 1;
    }

    if (arg0->unk_04 > arg0->unk_06 || D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 > arg0->unk_06 - 10) {
        arg0->unk_01 = 2;
        temp_f24 = arg0->unk_04 - (arg0->unk_06 - 10);

        for (i = 0.0f; i < temp_f30; i++) {
            func_80067354(arg0->unk_14[0], i + 1.0f, 1.8f - temp_f24 / 6.0f, 1.8f - temp_f24 / 6.0f);
            func_8006752C(arg0->unk_14[0], i + 1.0f, 255.0f - temp_f24 * 25.5f);
        }

        arg0->unk_08 += arg0->unk_0A;
        arg0->unk_58 += arg0->unk_08 / 100.0f;

        func_80066DC4(arg0->unk_14[0], 0, 160, arg0->unk_58);
    } else {
        for (i = 0.0f; i < temp_f30; i++) {
            func_80067354(arg0->unk_14[0], i + 1.0f, 1.8f, 1.8f);
        }
    }

    return 1;
}

s32 func_800773EC(unkCommonStruct0* arg0, s32 arg1, s16 arg2) {
    f32 temp_f22;
    s16 i;

    if (arg0->unk_04 == 0) {
        func_8007767C(arg0, arg1);
        arg0->unk_08 = -1000;
        arg0->unk_0A = 300;
        PlaySound(arg2);
        D_800F64F2 = 1;
    }

    if (arg0->unk_04 > arg0->unk_06 || D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 > arg0->unk_06 - 10) {
        arg0->unk_01 = 2;
        temp_f22 = arg0->unk_04 - (arg0->unk_06 - 10);

        for (i = 0; i < 2; i++) {
            func_80067354(arg0->unk_14[0], i, 1.0f - temp_f22 / 10.0f, 1.0f - temp_f22 / 10.0f);
            func_8006752C(arg0->unk_14[0], i, 255.0f - temp_f22 * 25.5f);
        }

        arg0->unk_08 += arg0->unk_0A;
        arg0->unk_58 += arg0->unk_08 / 100.0f;

        func_80066DC4(arg0->unk_14[0], 0, 0xA0, arg0->unk_58);
    } else {
        for (i = 0; i < 2; i++) {
            func_80067354(arg0->unk_14[0], i, 1.0f, 1.0f);
        }
    }

    return 1;
}

void func_8007767C(unkCommonStruct0* arg0, s32 arg1) {
    void* temp_v0;
    s16 temp_v0_2;
    s16 temp_v0_4;
    s16 temp_v0_5;

    temp_v0 = func_80014614(arg1);
    arg0->unk_34[0] = temp_v0_2 = func_800678A4(temp_v0);
    func_80014750(temp_v0);

    temp_v0 = func_80014614(arg1 + 1);
    arg0->unk_34[1] = temp_v0_4 = func_800678A4(temp_v0);
    func_80014750(temp_v0);

    arg0->unk_14[0] = temp_v0_5 = func_80064EF4(2, 5);

    func_80067208(temp_v0_5, 0, temp_v0_2, 0);
    func_8006752C(temp_v0_5, 0, 0xFF);
    func_80067384(temp_v0_5, 0, 5);
    func_80067480(temp_v0_5, 0, 0xFFFF);
    func_800674BC(temp_v0_5, 0, 0x1008);
    func_80066DC4(temp_v0_5, 0, 0xA0, arg0->unk_58);
    func_80067598(temp_v0_5, 0, -1);
    func_80067208(temp_v0_5, 1, temp_v0_4, 0);
    func_8006752C(temp_v0_5, 1, 0xFF);
    func_80067384(temp_v0_5, 1, 6);
    func_80067480(temp_v0_5, 1, 0xFFFF);
    func_800674BC(temp_v0_5, 1, 0x1008);
    func_800674F4(temp_v0_5, 1, 0x45, 2, 0x85);
    func_80067598(temp_v0_5, 1, 0);
}

// Matches but needs rodata
#ifdef NON_MATCHING
s32 func_80077838(unkCommonStruct0* arg0, Gfx** arg1) {
    char sp18[] = "value"; // D_800CBA70
    f64 var_f2;
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f22_2;
    f32 temp_f22_3;
    f32 temp_f24;
    f32 temp_f30;
    s32 temp_v0;
    s32 temp_v1;
    f32 i;

    var_f2 = temp_v0 = strlen(D_800C624C[arg0->unk_08]);
    if (temp_v0 < 0) {
        var_f2 += D_800CBA78;
    }
    temp_f24 = var_f2;

    var_f2 = temp_v0 = strlen(sp18);
    if (temp_v0 < 0) {
        var_f2 += D_800CBA80;
    }
    temp_f30 = var_f2;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800C624C[arg0->unk_08], 1, -1, -1);
        func_800767B4(arg0, sp18, 1, -1, -1);

        temp_f22 = temp_f24 + temp_f30 + 1.0f;
        temp_f20 = (320.0f - temp_f22 * 24.0f) / 2.0f;

        var_f2 = temp_v1 = strlen(D_800C624C[arg0->unk_08]) * 12;
        if (temp_v1 < 0) {
            var_f2 += D_800CBA88;
        }
        temp_f20 += (f32) var_f2;

        func_80066DC4(arg0->unk_14[0], 0, temp_f20, arg0->unk_58 + 40.0f);

        temp_f20 = 320.0f - (320.0f - temp_f22 * 24.0f) / 2.0f;

        var_f2 = temp_v1 = strlen(sp18) * 0xC;
        if (temp_v1 < 0) {
            var_f2 += D_800CBA90;
        }
        temp_f20 -= (f32) var_f2;

        func_80066DC4(arg0->unk_14[1], 0, temp_f20, arg0->unk_58 + 40.0f);

        for (i = 0.0f; i < temp_f24; i++) {
            func_800674BC(arg0->unk_14[0], i + 1.0f, 0x8000);
        }

        for (i = 0.0f; i < temp_f30; i++) {
            func_800674BC(arg0->unk_14[1], i + 1.0f, 0x8000);
        }
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    temp_f22_2 = arg0->unk_04 - 20;
    temp_f22_2 = func_800AEAC0(temp_f22_2 * 10.0f) / 8.0f + 1.0f;

    for (i = 0.0f; i < temp_f24; i++) {
        func_80067354(arg0->unk_14[0], i + 1.0f, temp_f22_2, temp_f22_2);
    }

    for (i = 0.0f; i < temp_f30; i++) {
        func_80067354(arg0->unk_14[1], i + 1.0f, temp_f22_2, temp_f22_2);
    }

    if (arg0->unk_04 >= 51) {
        arg0->unk_01 = 2;
    }

    if (arg0->unk_04 >= 21) {
        return 1;
    }

    temp_f22_3 = arg0->unk_04;
    if (temp_f22_3 <= 15.0f) {
        for (i = 0.0f; i < temp_f24; i++) {
            func_80067480(arg0->unk_14[0], i + 1.0f, 0x8000);
            func_80067354(arg0->unk_14[0], i + 1.0f, 5.0f - temp_f22_3 / 15.0f * 4.0f, 5.0f - temp_f22_3 / 15.0f * 4.0f);
            func_8006752C(arg0->unk_14[0], i + 1.0f, temp_f22_3 * 17.0f);
        }
    }

    temp_f22_3 = arg0->unk_04 - 5;
    if (temp_f22_3 <= 15.0f && temp_f22_3 > 0.0f) {
        for (i = 0.0f; i < temp_f30; i++) {
            func_80067480(arg0->unk_14[1], i + 1.0f, 0x8000);
            func_80067354(arg0->unk_14[1], i + 1.0f, 5.0f - temp_f22_3 / 15.0f * 4.0f, 5.0f - temp_f22_3 / 15.0f * 4.0f);
            func_8006752C(arg0->unk_14[1], i + 1.0f, temp_f22_3 * 17.0f);
        }
    }

    return 1;
}
#else
INCLUDE_ASM(s32, "72D90", func_80077838);
#endif

// Matches but needs rodata
#ifdef NON_MATCHING
s32 func_80077FC4(unkCommonStruct0* arg0, Gfx** arg1) {
    char sp18[] = "value"; // D_800CBA98
    f64 var_f2;
    f32 temp_f20;
    f32 temp_f20_2;
    f32 temp_f20_3;
    f32 temp_f2;
    f32 temp_f30;
    s32 temp_v0;
    s16 i;

    var_f2 = temp_v0 = strlen(D_800C624C[arg0->unk_08]);
    if (temp_v0 < 0) {
        var_f2 += D_800CBAA0;
    }
    temp_f30 = var_f2;

    var_f2 = temp_v0 = strlen(sp18);
    if (temp_v0 < 0) {
        var_f2 += D_800CBAA8;
    }
    temp_f2 = var_f2;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800C624C[arg0->unk_08], 1, -1, -1);
        func_800767B4(arg0, sp18, 1, -1, -1);

        temp_f20 = (320.0f - (temp_f30 + temp_f2 + 1.0f) * 24.0f) / 2.0f;

        func_80066DC4(arg0->unk_14[0], 0, temp_f20 + temp_f30 * 24.0f / 2.0f, arg0->unk_58 + 40.0f);
        func_80066DC4(arg0->unk_14[1], 0, (320.0f - temp_f20) - temp_f2 * 24.0f / 2.0f, arg0->unk_58 + 40.0f);

        for (i = 0; i < temp_f30; i++) {
            func_800674BC(arg0->unk_14[0], i + 1, 0x8000);
        }

        for (i = 0; i < temp_f2; i++) {
            func_800674BC(arg0->unk_14[1], i + 1, 0x8000);
        }

        arg0->unk_0A = 0;
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 >= 81) {
        arg0->unk_01 = 2;
    }

    if (arg0->unk_04 >= 51) {
        arg0->unk_0A++;
        if (arg0->unk_0A & 0x40) {
            temp_f20_3 = (u16) arg0->unk_0A % 32;
            temp_f20_2 = func_800AEFD0(temp_f20_3 * (360.0f / 31)) * 55.0f + 200.0f;

            for (i = 0; i < temp_f30; i++) {
                func_8006752C(arg0->unk_14[0], i + 1, temp_f20_2);
            }

            for (i = 0; i < temp_f2; i++) {
                func_8006752C(arg0->unk_14[1], i + 1, temp_f20_2);
            }
        }

        return 1;
    }

    temp_f20_3 = arg0->unk_04;
    if (temp_f20_3 <= 30.0f) {
        for (i = 0; i < temp_f30; i++) {
            func_80067480(arg0->unk_14[0], i + 1, 0x8000);
            func_8006752C(arg0->unk_14[0], i + 1, temp_f20_3 * 8.5f);
        }
    }

    temp_f20_3 = arg0->unk_04 - 20;
    if (temp_f20_3 <= 30.0f && temp_f20_3 > 0.0f) {
        for (i = 0; i < temp_f2; i++) {
            func_80067480(arg0->unk_14[1], i + 1, 0x8000);
            func_8006752C(arg0->unk_14[1], i + 1, temp_f20_3 * 8.5f);
        }
    }

    return 1;
}
#else
INCLUDE_ASM(s32, "72D90", func_80077FC4);
#endif

s32 func_800786F0(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f22;
    f32 i;

    if (arg0->unk_04 == 0) {
        char* temp_v0 = MallocPerm(256);

        func_8007149C((u8*) temp_v0, arg0->unk_10);
        func_800767B4(arg0, temp_v0, arg0->unk_02, -1, -1);
        arg0->unk_08 = strlen(temp_v0);
        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);

        FreePerm(temp_v0);
    }

    if (arg0->unk_04 > arg0->unk_06 || D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 < 14) {
        temp_f22 = func_800AEAC0(arg0->unk_04 * 10.0f) + (1.0f - func_800AEAC0(130.0f));

        for (i = 0.0f; i < arg0->unk_08; i++) {
            func_80067354(arg0->unk_14[0], i + 1.0f, arg0->unk_5C, temp_f22 * arg0->unk_60);
        }
    }

    if (arg0->unk_04 > arg0->unk_06 - 10) {
        arg0->unk_01 = 2;
        temp_f22 = func_800AEFD0((arg0->unk_04 - (arg0->unk_06 - 10)) * 9.0f);

        for (i = 0.0f; i < arg0->unk_08; i++) {
            func_80067354(arg0->unk_14[0], i + 1.0f, arg0->unk_5C, temp_f22 * arg0->unk_60);
        }
    }

    return 1;
}

s32 func_800789C0(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 i;

    if (arg0->unk_04 == 0) {
        char* temp_v0 = MallocPerm(256);

        func_8007149C((u8*) temp_v0, arg0->unk_10);
        func_800767B4(arg0, temp_v0, arg0->unk_02, -1, -1);
        arg0->unk_08 = strlen(temp_v0);

        FreePerm(temp_v0);
    }

    if (arg0->unk_04 > arg0->unk_06 || D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
    func_800673B0(arg0->unk_14[0], 0.0f, arg0->unk_64);

    for (i = 0.0f; i < arg0->unk_08; i++) {
        func_80067354(arg0->unk_14[0], i + 1.0f, arg0->unk_5C, arg0->unk_60);
        func_8006752C(arg0->unk_14[0], i + 1.0f, arg0->unk_03);
    }

    return 1;
}

// Matches without --vr4300mul-off
#ifdef NON_MATCHING
s32 func_80078B6C(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f22;
    u8 temp_s0;
    u8 temp_s2;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800CBAB0, 0, -1, -1);
        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
        func_8006752C(arg0->unk_14[0], 1, 230);
        func_8006752C(arg0->unk_14[0], 2, 230);
        arg0->unk_0A = 0;
    }

    temp_s2 = arg0->unk_08 % 100;

    temp_s0 = temp_s2 / 10;
    if (temp_s0 == 0) {
        func_800674BC(arg0->unk_14[0], 1, 0x8000);
    } else {
        func_80067480(arg0->unk_14[0], 1, 0x8000);
    }
    func_800672DC(arg0->unk_14[0], 1, temp_s0, 0);
    func_800672B0(arg0->unk_14[0], 1, 1);

    temp_s0 = temp_s2 % 10;
    func_800672DC(arg0->unk_14[0], 2, temp_s0, 0);
    func_800672B0(arg0->unk_14[0], 2, 1);

    switch (arg0->unk_0A) {
        case 0:
            if (arg0->unk_04 < 14) {
                temp_f22 = func_800AEAC0(arg0->unk_04 * 10.0f) * 5.0f + (1.0f - func_800AEAC0(130.0f) * 5.0f);
                func_80067354(arg0->unk_14[0], 1, temp_f22, temp_f22);
                func_80067354(arg0->unk_14[0], 2, temp_f22, temp_f22);
            } else {
                arg0->unk_0A = 1;
            }
            break;
        case 1:
            if (arg0->unk_0E != arg0->unk_08 && arg0->unk_08 < 6) {
                arg0->unk_0C = 0;
                arg0->unk_0A = 3;
                if (arg0->unk_08 != 0) {
                    PlaySound(0xFB);
                }
            }
            break;
        case 2:
            if (arg0->unk_0C < 10) {
                func_8006752C(arg0->unk_14[0], 1, 230 - arg0->unk_0C * 23);
                func_8006752C(arg0->unk_14[0], 2, 230 - arg0->unk_0C * 23);
            } else {
                arg0->unk_0A = 1;
                arg0->unk_01 = 4;
            }
            arg0->unk_0C++;
            break;
        case 3:
            if (arg0->unk_0C < 11) {
                temp_f22 = func_800AEAC0(arg0->unk_0C * 18.0f) + 1.0f;
                func_80067354(arg0->unk_14[0], 1, temp_f22, temp_f22);
                func_80067354(arg0->unk_14[0], 2, temp_f22, temp_f22);

                temp_f22 = 230.0f - func_800AEAC0(arg0->unk_0C * 18.0f) * 60.0f;
                func_8006752C(arg0->unk_14[0], 1, temp_f22);
                func_8006752C(arg0->unk_14[0], 2, temp_f22);
            } else {
                arg0->unk_0A = 1;
            }
            arg0->unk_0C++;
            break;
    }

    arg0->unk_0E = arg0->unk_08;

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        D_800F3FFC = -1;
        return 0;
    }

    return 1;
}
#else
INCLUDE_ASM(s32, "72D90", func_80078B6C);
#endif

void func_80079078(s16 arg0) {
    // Checks if both sign bits are zero. Seems some kind of compiler optimization.
    if ((((u32) D_800F3FFC >> 31) | ((u32) (arg0 << 16) >> 31)) == 0) {
        D_800ED740[D_800F3FFC].unk_08 = arg0;
    }
}

void func_800790C0(void) {
    if (D_800F3FFC >= 0) {
        D_800ED740[D_800F3FFC].unk_0A = 2;
        D_800ED740[D_800F3FFC].unk_0C = 0;
    }
}

s32 func_80079104(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_80079128(arg0, D_800CBAB4, -1);
}

INCLUDE_ASM(s32, "72D90", func_80079128);

s32 func_80079608(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_80079128(arg0, D_800CBAC8, -1);
}

s32 func_8007962C(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_80079128(arg0, D_800CBAD0, 0x41D);
}

s32 func_80079650(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f20;
    s16 var_s4 = 10;
    s16 i;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800CBAD8, 1, -1, -1);
        for (i = 0; i < var_s4; i++) {
            func_800674BC(arg0->unk_14[0], i + 1, 0x8000);
            func_80067354(arg0->unk_14[0], i + 1, 1.0f, 1.0f);
        }
        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
        D_800F64F2 = 1;
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 == 10) {
        PlaySound(0x41E);
    }

    if (arg0->unk_04 < 20) {
        temp_f20 = func_800AEAC0(arg0->unk_04 * 7) * 1.5f;
        for (i = 0; i < var_s4; i++) {
            func_80067354(arg0->unk_14[0], i + 1, 1.0f, temp_f20);
            func_80067480(arg0->unk_14[0], i + 1, 0x8000);
        }
    } else if (arg0->unk_04 >= 31) {
        arg0->unk_01 = 2;
    }

    return 1;
}

s32 func_8007983C(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_800773EC(arg0, 0xB005A, 0x425);
}

s32 func_80079860(unkCommonStruct0* arg0, Gfx** arg1) {
    return func_800773EC(arg0, 0xB005C, 0x420);
}

s32 func_80079884(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f20;
    s16 i;

    if (arg0->unk_04 == 0) {
        func_8007767C(arg0, 0xB0060);
        for (i = 0; i < 2; i++) {
            func_80067354(arg0->unk_14[0], i, 1.0f, 1.0f);
        }
        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
        arg0->unk_08 = 0;
        D_800F64F2 = 1;
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 == 30) {
        PlaySound(0x422);
    }

    if (arg0->unk_04 == 50) {
        arg0->unk_01 = 2;
    }

    if (arg0->unk_04 < 50) {
        temp_f20 = arg0->unk_04 * 5.1f;
        for (i = 0; i < 2; i++) {
            func_8006752C(arg0->unk_14[0], i, temp_f20);
        }
    } else if (arg0->unk_04 > 120) {
        arg0->unk_08 += 20;
        temp_f20 = func_800AEFD0(arg0->unk_08) * 55.0f + 200.0f;
        for (i = 0; i < 2; i++) {
            func_8006752C(arg0->unk_14[0], i, temp_f20);
        }
    }

    return 1;
}

s32 func_80079B2C(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f20;
    f32 temp_f22;
    s16 var_s5;
    s16 var_s6;
    s16 i;

    var_s5 = 5;
    var_s6 = 3;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800CBAE4, 1, -1, -1);
        func_800767B4(arg0, D_800CBAEC, 1, -1, -1);

        for (i = 0; i < var_s5; i++) {
            func_80067354(arg0->unk_14[0], i + 1, 5.0f, 5.0f);
        }
        for (i = 0; i < var_s6; i++) {
            func_800674BC(arg0->unk_14[1], i + 1, 0x8000);
        }

        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
        func_80066DC4(arg0->unk_14[1], 0, arg0->unk_54, arg0->unk_58);

        arg0->unk_08 = arg0->unk_0A = 0;
    }

    if (arg0->unk_04 >= 56 || D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        D_800F64F2 = 0;
        return 0;
    }

    if (arg0->unk_04 == 10) {
        PlaySound(0x41B);
    }

    if (arg0->unk_04 <= 10) {
        temp_f22 = (10 - arg0->unk_04) * 0.4f + 1.5f;
        temp_f20 = arg0->unk_04 * 25;

        for (i = 0; i < var_s5; i++) {
            func_8006752C(arg0->unk_14[0], i + 1, temp_f20);
            func_80067354(arg0->unk_14[0], i + 1, temp_f22, temp_f22);
        }

        return 1;
    }

    if (arg0->unk_04 == 35) {
        PlaySound(0x41C);
    }

    if (arg0->unk_04 == 50) {
        PlaySound(D_800C61B8[D_800C61C0[D_800ED5DE]]);
    }

    if (arg0->unk_04 >= 31 && arg0->unk_04 <= 40) {
        arg0->unk_5C = arg0->unk_60 = func_800AEAC0(arg0->unk_08 * 15) * 3.0f;
        temp_f20 = (10 - arg0->unk_08) * 25;

        for (i = 0; i < var_s5; i++) {
            if (temp_f20 < 10.0f) {
                func_800674BC(arg0->unk_14[0], i + 1, 0x8000);
            } else {
                func_8006752C(arg0->unk_14[0], i + 1, temp_f20);
            }
        }

        for (i = 0; i < var_s6; i++) {
            func_80067480(arg0->unk_14[1], i + 1, 0x8000);
            func_80067354(arg0->unk_14[1], i + 1, arg0->unk_5C, arg0->unk_60);
        }

        arg0->unk_08++;
    } else if (arg0->unk_04 >= 51) {
        arg0->unk_01 = 2;
        arg0->unk_5C += 0.2f;
        arg0->unk_60 += 0.2f;
        temp_f20 = (5 - arg0->unk_0A) * 51;

        for (i = 0; i < var_s6; i++) {
            func_8006752C(arg0->unk_14[1], i + 1, temp_f20);
            func_80067354(arg0->unk_14[1], i + 1, arg0->unk_5C, arg0->unk_60);
        }

        arg0->unk_0A++;
    }

    return 1;
}

INCLUDE_ASM(s32, "72D90", func_8007A0FC);

s32 func_8007A7A4(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f20;
    s16 i;

    if (arg0->unk_04 == 0) {
        func_8007767C(arg0, 0xB005E);
        for (i = 0; i < 2; i++) {
            func_800674BC(arg0->unk_14[0], i, 0x8000);
            func_80067354(arg0->unk_14[0], i, 1.0f, 1.0f);
        }
        func_80066DC4(arg0->unk_14[0], 0, arg0->unk_54, arg0->unk_58);
        D_800F64F2 = 1;
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 == 10) {
        PlaySound(0x423);
    }

    if (arg0->unk_04 < 20) {
        temp_f20 = func_800AEAC0(arg0->unk_04 * 7) * 1.5f;
        for (i = 0; i < 2; i++) {
            func_80067354(arg0->unk_14[0], i, 1.0f, temp_f20);
            func_80067480(arg0->unk_14[0], i, 0x8000);
        }
    } else if (arg0->unk_04 >= 51) {
        arg0->unk_01 = 2;
    }

    return 1;
}

s32 func_8007A978(unkCommonStruct0* arg0, Gfx** arg1) {
    f32 temp_f20;
    f32 temp_f22;
    f32 temp_f26;
    s16 temp_s5;
    s16 temp_s6;
    s16 temp_s7;
    s16 temp_s8;
    s16 i;

    temp_s6 = strlen(D_800C624C[arg0->unk_08]);
    temp_s5 = strlen(D_800C624C[arg0->unk_0A]);
    temp_s7 = strlen(D_800C624C[arg0->unk_0C]);
    temp_s8 = 5;

    if (arg0->unk_04 == 0) {
        func_800767B4(arg0, D_800C624C[arg0->unk_08], 1, -1, -1);
        func_800767B4(arg0, D_800C624C[arg0->unk_0A], 1, -1, -1);
        func_800767B4(arg0, D_800C624C[arg0->unk_0C], 1, -1, -1);
        func_800767B4(arg0, &D_800CBA70, 1, -1, -1);

        for (i = 0; i < temp_s6; i++) {
            func_80067354(arg0->unk_14[0], i + 1, 5.0f, 5.0f);
        }
        for (i = 0; i < temp_s5; i++) {
            func_80067354(arg0->unk_14[1], i + 1, 5.0f, 5.0f);
        }
        for (i = 0; i < temp_s7; i++) {
            func_80067354(arg0->unk_14[2], i + 1, 5.0f, 5.0f);
        }
        for (i = 0; i < temp_s8; i++) {
            func_800674BC(arg0->unk_14[3], i + 1, 0x8000);
        }

        func_80066DC4(arg0->unk_14[0], 0, 0x120, arg0->unk_58 - 48.0f);
        func_80066DC4(arg0->unk_14[1], 0, 0xA0, arg0->unk_58 - 24.0f);
        func_80066DC4(arg0->unk_14[2], 0, 0x20, arg0->unk_58);
        func_80066DC4(arg0->unk_14[3], 0, 0xA0, arg0->unk_58 + 24.0f);
    }

    if (D_800F3394 != 0 || arg0->unk_01 == 4) {
        func_80076338(arg0);
        return 0;
    }

    if (arg0->unk_04 < 21) {
        temp_f22 = (20 - arg0->unk_04) * 0.4f + 1.0f;
        temp_f26 = temp_f20 = arg0->unk_04 * 12;

        func_80066DC4(arg0->unk_14[0], 0, 320.0f - temp_f20, arg0->unk_58 - 48.0f);

        for (i = 0; i < temp_s6; i++) {
            func_8006752C(arg0->unk_14[0], i + 1, temp_f20);
            func_80067354(arg0->unk_14[0], i + 1, temp_f22, temp_f22);
        }
        for (i = 0; i < temp_s5; i++) {
            func_8006752C(arg0->unk_14[1], i + 1, temp_f20);
            func_80067354(arg0->unk_14[1], i + 1, temp_f22, temp_f22);
        }

        func_80066DC4(arg0->unk_14[2], 0, temp_f26, arg0->unk_58);

        for (i = 0; i < temp_s7; i++) {
            func_8006752C(arg0->unk_14[2], i + 1, temp_f20);
            func_80067354(arg0->unk_14[2], i + 1, temp_f22, temp_f22);
        }
    } else if (arg0->unk_04 >= 41 && arg0->unk_04 <= 60) {
        if (arg0->unk_04 < 51) {
            temp_f20 = (arg0->unk_04 - 40) * 25;

            func_800673B0(arg0->unk_14[3], 0.0f, (arg0->unk_04 - 40) * 36);

            for (i = 0; i < temp_s8; i++) {
                func_80067480(arg0->unk_14[3], i + 1, 0x8000);
                func_8006752C(arg0->unk_14[3], i + 1, temp_f20);
            }
        } else {
            temp_f22 = func_800AEAC0((arg0->unk_04 - 50) * 18) + 1.0f;

            for (i = 0; i < temp_s8; i++) {
                func_80067354(arg0->unk_14[3], i + 1, temp_f22, temp_f22);
            }
        }
    } else if (arg0->unk_04 >= 81) {
        arg0->unk_01 = 2;
    }

    return 1;
}

// First arg is a u8*
void func_8007B168(void* arg0, u8 arg1) {
    u8* temp_v0;
    u8* var_s1;

    var_s1 = temp_v0 = MallocPerm(512);
    func_8007149C(temp_v0, arg0);

    for (; *var_s1 != 0; var_s1++) {
        func_80076B2C(var_s1, arg1);
        if (var_s1[1] == 128 || var_s1[1] == 129) {
            var_s1++;
        }
    }

    D_800F3753 = 1;
    FreePerm(temp_v0);
}

void func_8007B210(void) {
    Gfx* sp10;

    D_800E4340 = HuMemAlloc(153664);
    sp10 = D_800E434C = HuMemAlloc(6400);

    D_800E4344 = ((s32) D_800E4340 + 63) & ~63;
    D_800E4350 = func_8002451C(0, &func_8007B420, 6);

    gSPDisplayList(sp10++, D_800C6108);
    func_80072C34(&sp10, D_800E4344);
    gSPEndDisplayList(sp10);

    D_800E4348 = 0;
}

s32 func_8007B2CC(void) {
    if (D_800E4348 >= 0 && D_800E4348 < 3) {
        return 0;
    }

    func_80023888(D_800E434C);
    func_8002456C(D_800E4350);

    return 1;
}

void func_8007B310(void) {
    Gfx* sp10;

    sp10 = D_800E434C = HuMemAlloc(6400);
    D_800E4352 = func_8002451C(0, &func_8007B458, 0);

    gSPDisplayList(sp10++, D_800C6108);
    gDPSetCombineMode(sp10++, G_CC_MODULATEI_PRIM, G_CC_MODULATEI_PRIM);
    gDPSetRenderMode(sp10++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
    gDPSetPrimColor(sp10++, 0, 0, 255, 255, 255, 128);

    func_80072E5C(&sp10, D_800E4344);
    gSPEndDisplayList(sp10);
}

void func_8007B3E8(void) {
    func_80023888(D_800E434C);
    func_80023888(D_800E4340);
    func_8002456C(D_800E4352);
}

void func_8007B420(Gfx** arg0) {
    gSPDisplayList((*arg0)++, D_800E434C);
    D_800E4348++;
}

void func_8007B458(Gfx** arg0) {
    gSPDisplayList((*arg0)++, D_800E434C);
}

void func_8007B47C(void) {
    D_800E4340 = D_800C6104;
    D_800E4344 = D_800F545C;
    D_800F50B8 = 1;
}

void func_8007B4AC(void) {
    func_80023888(D_800E434C);
    FreePerm(D_800E4340);
    func_8002456C(D_800E4352);
    D_800F50B8 = 0;
}

void func_8007B4EC(void) {
    D_800F0A24 = InitProcess(func_8007B52C, 0x3FFF, 0x800, 0);
    func_8005D900(D_800F0A24, 0xA0);
}

void func_8007B52C(void) {
    void* temp_v0_12;
    s16 temp_fp;
    s16 temp_s0;
    s16 temp_v0;
    s16 var_s6;
    s16 var_a0;
    s8 var_s2;
    s8 var_s3;
    s16 i;

    SleepProcess(2);

    D_800ECC22 = 1;
    temp_fp = D_800ED5DE;
    temp_s0 = D_800C6268[D_800ED5DE].unk_04 == 0 ? 110 : 70;
    temp_v0 = func_8007BCA8(60, temp_s0);
    D_800F2CE0 = func_8006DD8C(temp_v0, D_800ED4B0[temp_v0].unk_274);

    if (D_800C6268[temp_fp].unk_04 != 0) {
        var_s6 = func_8007BCA8(60, temp_s0 + 70);
        D_800F64F4 = func_8006DD8C(var_s6, D_800ED4B0[var_s6].unk_274);

        if (D_800C6268[temp_fp].unk_00 == 2) {
            for (i = 0, var_a0 = 0; i < 4; i++) {
                if (var_a0 < gPlayers[i].unk_00) {
                    var_a0 = gPlayers[i].unk_00;
                }
            }

            if (var_a0 < 2) {
                var_s3 = 0;
                var_s2 = 2;
                for (i = 0; i < 4; i++) {
                    if (gPlayers[i].unk_00 == 0) {
                        func_8006DA5C(temp_v0, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s3);
                        func_8006DA5C(var_s6, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s3++);
                    } else {
                        func_8006DA5C(temp_v0, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s2);
                        func_8006DA5C(var_s6, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s2++);
                    }
                }
            } else {
                for (i = 0; i < 4; i++) {
                    func_8006DA5C(temp_v0, (void*) (s32) D_800F32B4[i].unk_00 + 44, gPlayers[i].unk_00);
                    func_8006DA5C(var_s6, (void*) (s32) D_800F32B4[i].unk_00 + 44, gPlayers[i].unk_00);
                }
            }
        } else {
            if (D_800C6268[temp_fp].unk_00 == 3) {
                var_s3 = 0;
                var_s2 = 1;
                for (i = 0; i < 4; i++) {
                    if (gPlayers[i].unk_00 == 0) {
                        func_8006DA5C(temp_v0, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s3++);
                    } else {
                        func_8006DA5C(var_s6, (void*) (s32) D_800F32B4[i].unk_00 + 44, var_s2++);
                    }
                }
            } else {
                for (i = 0; i < 4; i++) {
                    func_8006DA5C(temp_v0, (void*) (s32) D_800F32B4[i].unk_00 + 44, i);
                }
            }
        }

        LoadStringIntoWindow(var_s6, (void*) (s32) D_800C6268[temp_fp].unk_04, -1, -1);
    } else {
        D_800F64F4 = -1;
        var_s6 = -1;
    }

    LoadStringIntoWindow(temp_v0, (void*) (s32) D_800C6268[temp_fp].unk_02, -1, -1);

    temp_v0_12 = ReadMainFS(0xB001B);
    D_800F3182 = func_800678A4(temp_v0_12);
    D_800F6548 = func_80064EF4(1, 5);
    FreeMainFS(temp_v0_12);

    func_80067208(D_800F6548, 0, D_800F3182, 0);
    func_800674BC(D_800F6548, 0, 0x01001000);
    func_80066DC4(D_800F6548, 0, 0xA0, temp_s0 - 20);
    func_80067384(D_800F6548, 0, 1);
    func_80071598(temp_v0);
    func_800674BC(D_800ED4B0[temp_v0].unk_44, D_800ED4B0[temp_v0].unk_274, 0x8000);
    func_800674BC(D_800F6548, 0, 0x8000);

    if (var_s6 != -1) {
        func_80071598(var_s6);
        func_800674BC(D_800ED4B0[var_s6].unk_44, D_800ED4B0[var_s6].unk_274, 0x8000);
    }

    SleepVProcess();
    PlaySound(0xFA);
    func_8007166C(temp_v0);
    func_80067480(D_800ED4B0[temp_v0].unk_44, D_800ED4B0[temp_v0].unk_274, 0x8000);
    func_80067480(D_800F6548, 0, 0x8000);

    if (var_s6 != -1) {
        func_8007166C(var_s6);
        func_80067480(D_800ED4B0[var_s6].unk_44, D_800ED4B0[var_s6].unk_274, 0x8000);
    }

    D_800F3B80 = 1;

    while (func_8005FD5C()) {
        SleepVProcess();
    }

    while (TRUE) {
        SleepVProcess();
    }
}

void func_8007BC48(void) {
    if (D_800F64F4 != -1) {
        func_80067704(D_800F64F4);
    }
    func_80067704(D_800F2CE0);
    func_80064D38(D_800F6548);
    func_80067704(D_800F3182);
    EndProcess(D_800F0A24);
}

s32 func_8007BCA8(s32 arg0, s16 arg1) {
    TextWindow* temp_s0;
    s16 temp_v0;
    s16 temp_v0_2;

    temp_v0 = func_8006D010(arg0, arg1, 200, 60, 0, 0);
    func_8006E0A4(temp_v0, 0);

    temp_s0 = &D_800ED4B0[temp_v0];
    temp_s0->unk_09 = 0;
    temp_s0->unk_0A = 1;

    func_8006E070(temp_v0, 0);
    func_8006E154(temp_v0, 0);

    temp_s0->unk_274 = temp_v0_2 = func_8006DB3C(temp_v0, 0xB001A, 0, 0, 0);

    func_80067384(temp_s0->unk_44, temp_v0_2, 1);
    func_80067354(temp_s0->unk_44, temp_v0_2, 3.325f, 3.75f);
    func_800674BC(temp_s0->unk_44, temp_v0_2, 0x01001008);
    func_8006752C(temp_s0->unk_44, temp_v0_2, 192);
    func_800674F4(temp_s0->unk_44, temp_v0_2, 16, 16, 64);

    return temp_v0;
}
