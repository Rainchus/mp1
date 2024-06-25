#include "common.h"

typedef struct unk3AC60Struct0 {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
} unk3AC60Struct0; //sizeof unknown

typedef struct unk3AC60Struct1 {
    /* 0x00 */ f32 unk_00;
    /* 0x04 */ f32 unk_04;
    /* 0x08 */ char unk_08[8];
    /* 0x10 */ f32 unk_10;
    /* 0x14 */ f32 unk_14;
    /* 0x18 */ char unk_18[0x18];
    /* 0x30 */ f32 unk_30;
    /* 0x34 */ f32 unk_34;
} unk3AC60Struct1; //sizeof unknown

typedef struct unk3AC60Struct2 {
    /* 0x00 */ s16 unk_00;
    /* 0x02 */ s16 unk_02;
    /* 0x04 */ char unk_04[4];
    /* 0x08 */ s16 unk_08;
    /* 0x0A */ s16 unk_0A;
    /* 0x0C */ char unk_0C[0xC];
    /* 0x18 */ s16 unk_18;
    /* 0x1A */ s16 unk_1A;
    /* 0x1C */ char unk_1C[4];
    /* 0x20 */ s16 unk_20;
    /* 0x22 */ s16 unk_22;
    /* 0x24 */ char unk_24[4];
    /* 0x28 */ s16 unk_28;
    /* 0x2A */ s16 unk_2A;
    /* 0x2C */ char unk_2C[0xC];
    /* 0x38 */ s16 unk_38;
    /* 0x3A */ s16 unk_3A;
} unk3AC60Struct2; //sizeof unknown

extern u32 D_800C4200_C4E00[];
extern u32 D_800C4210_C4E10[];
extern s32 D_800C4220_C4E20[];
extern u32 D_800C4230_C4E30[];
extern u32 D_800C4240_C4E40[];
extern f64 D_800CAA70;
extern f64 D_800CAA78;
extern f64 D_800CAA80;

void func_8003A060_3AC60(Gfx** arg0, s32 timg, s32 fmt, s32 siz, s32 width, s32 height, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt) {
    Gfx* gfx = *arg0;

    gDPSetTextureImage(gfx++, fmt, siz, width, timg);
    gDPSetTile(gfx++, fmt, siz, ((lrs - uls + 1) * D_800C4210_C4E10[siz] + 7) >> 3, 0x0000, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadTile(gfx++, G_TX_LOADTILE, uls * 4, ult * 4, lrs * 4, lrt * 4);
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, siz, ((lrs - uls + 1) * D_800C4210_C4E10[siz] + 7) >> 3, 0x0000, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, G_TX_RENDERTILE, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003A28C_3AE8C(Gfx** arg0, s32 timg, s32 fmt, s32 siz, s32 width, s32 arg5, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt, s32 rtile, s32 tmem) {
    Gfx* gfx = *arg0;

    gDPSetTextureImage(gfx++, fmt, siz, width, timg);
    gDPSetTile(gfx++, fmt, siz, ((lrs - uls + 1) * D_800C4210_C4E10[siz] + 7) >> 3, tmem, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadTile(gfx++, G_TX_LOADTILE, uls * 4, ult * 4, lrs * 4, lrt * 4);
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, siz, ((lrs - uls + 1) * D_800C4210_C4E10[siz] + 7) >> 3, tmem, rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, rtile, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003A4EC_3B0EC(Gfx** arg0, s32 arg1, s32 fmt, s32 siz, s32 width, s32 height, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt) {
    Gfx* gfx = *arg0;
    s32 timg = arg1 + ((width * ult) << (siz - 1));

    gDPSetTextureImage(gfx++, fmt, D_800C4220_C4E20[siz], 1, timg);
    gDPSetTile(gfx++, fmt, D_800C4220_C4E20[siz], 0, 0x0000, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, ((width * height + D_800C4230_C4E30[siz]) >> D_800C4240_C4E40[siz]) - 1, CALC_DXT(width, D_800C4200_C4E00[siz]));
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, siz, (width * D_800C4210_C4E10[siz] + 7) >> 3, 0x0000, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, G_TX_RENDERTILE, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003A828_3B428(Gfx** arg0, s32 arg1, s32 fmt, u32 width, s32 height, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt) {
    Gfx* gfx = *arg0;
    s32 timg = arg1 + ((width * ult) >> 1);

    gDPSetTextureImage(gfx++, fmt, G_IM_SIZ_16b, 1, timg);
    gDPSetTile(gfx++, fmt, G_IM_SIZ_16b, 0, 0x0000, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, (((width * height) + 3) >> 2) - 1, CALC_DXT_4b(width));
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, G_IM_SIZ_4b, ((width >> 1) + 7) >> 3, 0x0000, G_TX_RENDERTILE, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, G_TX_RENDERTILE, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003AA98_3B698(Gfx** arg0, s32 arg1, s32 fmt, s32 siz, s32 width, s32 height, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt, s32 rtile, s32 tmem) {
    Gfx* gfx = *arg0;
    s32 timg = arg1 + ((width * ult) << (siz - 1));

    gDPSetTextureImage(gfx++, fmt, D_800C4220_C4E20[siz], 1, timg);
    gDPSetTile(gfx++, fmt, D_800C4220_C4E20[siz], 0, tmem, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, ((width * height + D_800C4230_C4E30[siz]) >> D_800C4240_C4E40[siz]) - 1, CALC_DXT(width, D_800C4200_C4E00[siz]));
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, siz, (width * D_800C4210_C4E10[siz] + 7) >> 3, tmem, rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, rtile, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003AE00_3BA00(Gfx** arg0, s32 arg1, s32 fmt, u32 width, s32 height, s32 uls, s32 ult, s32 lrs, s32 lrt, s32 pal, s32 cms, s32 cmt, s32 masks, s32 maskt, s32 shifts, s32 shiftt, s32 rtile, s32 tmem) {
    Gfx* gfx = *arg0;
    s32 timg = arg1 + ((width * ult) >> 1);

    gDPSetTextureImage(gfx++, fmt, G_IM_SIZ_16b, 1, timg);
    gDPSetTile(gfx++, fmt, G_IM_SIZ_16b, 0, tmem, G_TX_LOADTILE, 0, cmt, maskt, shiftt, cms, masks, shifts);
    gDPLoadSync(gfx++);
    gDPLoadBlock(gfx++, G_TX_LOADTILE, 0, 0, (((width * height) + 3) >> 2) - 1, CALC_DXT_4b(width));
    gDPPipeSync(gfx++);
    gDPSetTile(gfx++, fmt, G_IM_SIZ_4b, ((width >> 1) + 7) >> 3, tmem, rtile, pal, cmt, maskt, shiftt, cms, masks, shifts);
    gDPSetTileSize(gfx++, rtile, uls * 4, ult * 4, lrs * 4, lrt * 4);

    *arg0 = gfx;
}

void func_8003B0AC_3BCAC(unk3AC60Struct1* arg0, f64 arg1, f64 arg2, f64 arg3) {
    f32 temp_f20 = (arg3 - ((s32) (arg3 / 360.0) * 360)) * 3.14158999999999988 / 180.0;

    arg0->unk_00 = cosf(temp_f20);
    arg0->unk_04 = sinf(temp_f20);
    arg0->unk_10 = -sinf(temp_f20);
    arg0->unk_14 = cosf(temp_f20);
    arg0->unk_30 = arg1;
    arg0->unk_34 = arg2;
}

void func_8003B190_3BD90(unk3AC60Struct0* arg0, unk3AC60Struct1* arg1, unk3AC60Struct2* arg2) {
    arg1->unk_30 = arg0->unk_00 * arg1->unk_00 + arg1->unk_30 + arg0->unk_04 * arg1->unk_10;
    arg1->unk_34 = arg0->unk_00 * arg1->unk_04 + arg1->unk_34 + arg0->unk_04 * arg1->unk_14;
    arg2->unk_00 = (s32) (arg1->unk_00 * 65536.0f) >> 16;
    arg2->unk_02 = (s32) (arg1->unk_04 * 65536.0f) >> 16;
    arg2->unk_08 = (s32) (arg1->unk_10 * 65536.0f) >> 16;
    arg2->unk_0A = (s32) (arg1->unk_14 * 65536.0f) >> 16;
    arg2->unk_18 = (s32) (arg1->unk_30 * 65536.0f) >> 16;
    arg2->unk_1A = (s32) (arg1->unk_34 * 65536.0f) >> 16;
    arg2->unk_20 = arg1->unk_00 * 65536;
    arg2->unk_22 = arg1->unk_04 * 65536;
    arg2->unk_28 = arg1->unk_10 * 65536;
    arg2->unk_2A = arg1->unk_14 * 65536;
    arg2->unk_38 = arg1->unk_30 * 65536;
    arg2->unk_3A = arg1->unk_34 * 65536;
}