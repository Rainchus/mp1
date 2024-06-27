#include "common.h"

typedef struct {
    u8 file_version[16];
    u16 width;                    /* Width of image, in pixels */
    u16 height;                    /* Height of image, in pixels */
    u16 nest_start_x;            /* Nest origin, X */
    u16 nest_start_y;            /* Nest origin, Y */
    u32 unk_value;
    u8 y_shiftnum;                /* Nest step in vertical direction (number of shifts) */
    u8 quantize_step;            /* DC quantized step */
    u8 h_sampling_rate;            /* Horizontal sampling rate for color difference component */
    u8 v_sampling_rate;            /* Vertical sampling rate for color difference component */
    u32 basisnum_offset[2];        /* Base number section offset */
    u32 basnum_run_offset[2];    /* Base number run section offset */
    u32 dc_offset[3];            /* DC section offset */
    u32 dc_run_offset[3];        /* DC run section offset */
    u32 scale_offset[3];        /* Base scale section offset */
    u32 fix_offset[3];            /* Fixed length code section offset */
} HVQ2Header;

typedef struct {
    u32 bit;
    u32 value;
    u32 *pos;
} BitStream;

typedef struct {
    u16 root;
    u16 array[2][512];
} Tree;

typedef struct unkStruct_D_800E6EC8 {
    u16* unk0;
    u16* unk4;
    u16* unk8;
} unkStruct_D_800E6EC8;


/* Globals*/
extern s32 D_800E6F30_E6FC0[];
extern u8 D_800E7730_E77C0[];

extern s32 D_800E7A3C_E7ACC;
extern s32 D_800E7A40_E7AD0;
extern u8* D_800E7A54_E7AE4;
extern s32 D_800E7A58_E7AE8;
extern s32 D_800E7A5C_E7AEC;

extern u8 D_800E4360_E43F0; // unk type
extern BitStream D_800E4DC8_E4E58;
extern BitStream D_800E4DD4_E4E64;
extern BitStream D_800E4DE0_E4E70;
extern BitStream D_800E4DEC_E4E7C;
extern BitStream D_800E4DF8_E4E88;
extern BitStream D_800E4E04_E4E94;
extern BitStream D_800E4E10_E4EA0;
extern BitStream D_800E4E20_E4EB0;
extern BitStream D_800E4E2C_E4EBC;
extern BitStream D_800E4E38_E4EC8;
extern BitStream D_800E4E48_E4ED8;
extern BitStream D_800E4E54_E4EE4;
extern BitStream D_800E4E60_E4EF0;
extern u8* D_800E4E6C_E4EFC[];
extern Tree D_800E4E80_E4F10;
extern Tree D_800E5690_E5720;
extern Tree D_800E5EA0_E5F30;
extern Tree D_800E66B0_E6740;
extern u16 D_800E6EB2_E6F42;
extern s16 D_800E6EB4_E6F44;
extern s16 D_800E6EB6_E6F46;
extern u16* D_800E6EB8_E6F48;
extern u16* D_800E6EBC_E6F4C;
extern u16* D_800E6EC0_E6F50;
extern u32 D_800E7A30_E7AC0;
extern s32 D_800E7A34_E7AC4;
extern s32 D_800E7A38_E7AC8;
extern s32 D_800E7A3C_E7ACC;
extern s32 D_800E7A40_E7AD0;
extern s32 D_800E7A44_E7AD4;
extern s32 D_800E7A48_E7AD8;
extern s32 D_800E7A4C_E7ADC;
extern s32 D_800E7A50_E7AE0;
extern u8* D_800E7A54_E7AE4;
extern s32 D_800E7A58_E7AE8;
extern s32 D_800E7A5C_E7AEC;
extern u8 D_800E7A60_E7AF0;

extern unkStruct_D_800E6EC8 D_800E6EC8_E6F58;
extern unkStruct_D_800E6EC8 D_800E6EE0_E6F70;
extern unkStruct_D_800E6EC8 D_800E6EF8_E6F88;
extern unkStruct_D_800E6EC8 D_800E6F10_E6FA0;
/* Globals */


INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007C160_7CD60);

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007C434_7D034);

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007C818_7D418);

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007CA90_7D690);

/* NEST */
void func_8007CE28_7DA28(u8* arg0) {
    s32 i, j;
    s32 hNestBlocks, hMirror, hEmpty;
    s32 vNestBlocks, vMirror, vEmpty;
    u8  *nest, *nest2;

    nest = D_800E7A54_E7AE4;
    if (D_800E7A3C_E7ACC < D_800E7A58_E7AE8) {
        hNestBlocks = D_800E7A3C_E7ACC;
        hMirror = D_800E7A58_E7AE8 - hNestBlocks;
        if (hNestBlocks < hMirror) {
            hMirror = hNestBlocks;
        }
        hEmpty = D_800E7A58_E7AE8 - (hNestBlocks + hMirror);
    } else {
        hNestBlocks = D_800E7A58_E7AE8;
        hMirror = 0;
        hEmpty = 0;
    }

    vNestBlocks = D_800E7A40_E7AD0;
    vMirror = D_800E7A5C_E7AEC - D_800E7A40_E7AD0;
    if (D_800E7A40_E7AD0 < D_800E7A5C_E7AEC) {
        if (D_800E7A40_E7AD0 < vMirror) {
            vMirror = D_800E7A40_E7AD0;
        }
        vEmpty = D_800E7A5C_E7AEC - (D_800E7A40_E7AD0 + vMirror);
    } else {
        vNestBlocks = D_800E7A5C_E7AEC;
        vMirror = 0;
        vEmpty = 0;
    }

    for (i = vNestBlocks; i > 0; i--) {
        u8* var_a1 = arg0;
        for (j = hNestBlocks; j > 0; j--) {
            *nest++ = *var_a1;
            var_a1++; var_a1++;
        }
        for (j = hMirror; j > 0; j--) {
            var_a1--; var_a1--;
            *nest++ = *var_a1;
        }
        for (j = hEmpty; j > 0; j--) {
            *nest++ = 0;
        }
        arg0 += D_800E7A3C_E7ACC * 2;
    }

    nest2 = nest - D_800E7A58_E7AE8;
    for (i = vMirror; i > 0; i--) {
        u8* var_a0_2 = nest2;
        for (j = D_800E7A58_E7AE8; j > 0; j--) {    
            *nest++ = *var_a0_2++;
        }
        nest2 -= D_800E7A58_E7AE8;
    }

    for (i = vEmpty; i > 0; i--) {
        for (j = D_800E7A58_E7AE8; j > 0; j--) {
            *nest++ = 0;
        }
    }
    
}

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007CFCC_7DBCC);

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007D470_7E070);

INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007DA48_7E648);

/* color conversion */
#define UV_BASE ((s32)(16384*(513.0/512.0))) // 0x4020
#define CONVERT(U,V,UPTR,VPTR,R,G,B)\
  V = *VPTR - 128;\
  R = 90 * v + UV_BASE;\
  U = *UPTR - 128;\
  G = -22 * U + -46 * V + UV_BASE;\
  B = 113 * U + UV_BASE;


static inline u16 getRGB(s16 y, s16 ruv, s16 guv, s16 buv) {
    return  (D_800E7730_E77C0[(y + ruv) >> 6] << 8) | 
            (D_800E7730_E77C0[(y + guv) >> 6] << 3) |  
            (D_800E7730_E77C0[(y + buv) >> 6] >> 2);
}

#ifndef NON_MATCHING
INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007DC58_7E858);
#else
void func_8007DC58_7E858(u16* outbuf, u16* pixY, u16* pixU, u16* pixV) {
    s32 i;
    u16* pixY0, *pixY1, *pixY2;
    s16 y, u, v;
    s16 ruv1, guv1, buv1,
        ruv2, guv2, buv2,
        ruv3, guv3, buv3,
        ruv4, guv4, buv4;

    pixY1 = pixY;
    pixY2 = pixY = pixY + 16;

    i = 4;
    while (i > 0) {
        CONVERT(u, v, pixU, pixV, ruv1, guv1, buv1); pixV++; pixU++;
        y = *pixY1++ << 6;
        outbuf[0] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[1] = getRGB(y, ruv1, guv1, buv1);
        
        CONVERT(u, v, pixU, pixV, ruv2, guv2, buv2); pixV++; pixU++;
        y = *pixY1++ << 6;
        outbuf[2] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY1++ << 6;
        outbuf[3] = getRGB(y, ruv2, guv2, buv2);

        CONVERT(u, v, pixU, pixV, ruv3, guv3, buv3); pixV++; pixU++;
        y = *pixY2++ << 6;
        outbuf[4] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[5] = getRGB(y, ruv3, guv3, buv3);
        
        CONVERT(u, v, pixU, pixV, ruv4, guv4, buv4); pixV++; pixU++;
        y = *pixY2++ << 6;
        outbuf[6] = getRGB(y, ruv4, guv4, buv4);
        y = *pixY2++ << 6;
        outbuf[7] = getRGB(y, ruv4, guv4, buv4);
        
        do {
            y = *pixY1++ << 6;
            outbuf += D_800E7A30_E7AC0;            
        } while (0);



        outbuf[0] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[1] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[2] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY1++ << 6;
        outbuf[3] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY2++ << 6;
        outbuf[4] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[5] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[6] = getRGB(y, ruv4, guv4, buv4);
        y = *pixY2++ << 6;
        outbuf[7] = getRGB(y, ruv4, guv4, buv4);

        i-= 2;

        do {
            outbuf += D_800E7A30_E7AC0;
        } while (0);
        
    }

    pixY1 = pixY +  16;
    pixY2 = pixY1 + 32;

    i = 4;
    while (i > 0) {
        y = *pixY1++ << 6;
        
        CONVERT(u, v, pixU, pixV, ruv1, guv1, buv1); pixV++; pixU++;

        outbuf[0] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[1] = getRGB(y, ruv1, guv1, buv1);

        y = *pixY1++ << 6;
        CONVERT(u, v, pixU, pixV, ruv2, guv2, buv2); pixV++; pixU++;

        outbuf[2] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY1++ << 6;
        outbuf[3] = getRGB(y, ruv2, guv2, buv2);

        y = *pixY2++ << 6;
        CONVERT(u, v, pixU, pixV, ruv3, guv3, buv3); pixV++; pixU++;

        outbuf[4] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[5] = getRGB(y, ruv3, guv3, buv3);

        y = *pixY2++ << 6;
        CONVERT(u, v, pixU, pixV, ruv4, guv4, buv4); pixV++; pixU++;

        outbuf[6] = getRGB(y, ruv4, guv4, buv4);
        y = *pixY2++ << 6;
        outbuf[7] = getRGB(y, ruv4, guv4, buv4);

        y = *pixY1++ << 6;
        {outbuf += D_800E7A30_E7AC0;}

        outbuf[0] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[1] = getRGB(y, ruv1, guv1, buv1);
        y = *pixY1++ << 6;
        outbuf[2] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY1++ << 6;
        outbuf[3] = getRGB(y, ruv2, guv2, buv2);
        y = *pixY2++ << 6;
        outbuf[4] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[5] = getRGB(y, ruv3, guv3, buv3);
        y = *pixY2++ << 6;
        outbuf[6] = getRGB(y, ruv4, guv4, buv4);
        y = *pixY2++ << 6;
        outbuf[7] = getRGB(y, ruv4, guv4, buv4);
        i-= 2;
        do {
            outbuf += D_800E7A30_E7AC0;
        } while (0);
    }
    
}
#endif

extern void func_8007EE54_7FA54(u16*);
INCLUDE_ASM("asm/nonmatchings/7CD60", func_8007EE54_7FA54);

/* What is this? */
void func_8007F2FC_7FEFC(u16* arg0) {
    s32 var_s2;
    u16* var_s3;

    D_800E6EC8_E6F58.unk0 = D_800E6EC8_E6F58.unk4 = D_800E6EB8_E6F48;
    D_800E6EC8_E6F58.unk8 = D_800E6EB8_E6F48 + D_800E7A3C_E7ACC;

    D_800E6EF8_E6F88.unk0 = D_800E6EF8_E6F88.unk4 = D_800E6EBC_E6F4C;
    D_800E6EF8_E6F88.unk8 = D_800E6EBC_E6F4C + D_800E7A48_E7AD8;
    
    D_800E6F10_E6FA0.unk0 = D_800E6F10_E6FA0.unk4 = D_800E6EC0_E6F50;
    D_800E6F10_E6FA0.unk8 = D_800E6EC0_E6F50 + D_800E7A48_E7AD8;

    D_800E6EE0_E6F70.unk0 = D_800E6EB8_E6F48;
    D_800E6EE0_E6F70.unk4 = D_800E6EB8_E6F48 + D_800E7A3C_E7ACC;
    D_800E6EE0_E6F70.unk8 = D_800E6EB8_E6F48 + D_800E7A3C_E7ACC + D_800E7A3C_E7ACC;

    func_8007EE54_7FA54(arg0); // blocks width?
    arg0 += D_800E7A34_E7AC4;

    D_800E6EF8_E6F88.unk0 = D_800E6EBC_E6F4C;
    D_800E6F10_E6FA0.unk0 = D_800E6EC0_E6F50;

    D_800E6EC8_E6F58.unk4 += D_800E7A3C_E7ACC;
    D_800E6EC8_E6F58.unk8 += D_800E7A3C_E7ACC;
    
    D_800E6EE0_E6F70.unk0 += D_800E7A3C_E7ACC;
    D_800E6EE0_E6F70.unk4 += D_800E7A3C_E7ACC;
    D_800E6EE0_E6F70.unk8 += D_800E7A3C_E7ACC;

    for (var_s2 = D_800E7A4C_E7ADC - 2;var_s2 > 0; var_s2--) {
        func_8007EE54_7FA54(arg0);
        arg0 += D_800E7A34_E7AC4;
        
        D_800E6EC8_E6F58.unk0 += D_800E7A3C_E7ACC;
        D_800E6EC8_E6F58.unk4 += D_800E7A3C_E7ACC;
        D_800E6EC8_E6F58.unk8 += D_800E7A3C_E7ACC;
        
        D_800E6EE0_E6F70.unk0 += D_800E7A3C_E7ACC;
        D_800E6EE0_E6F70.unk4 += D_800E7A3C_E7ACC;
        D_800E6EE0_E6F70.unk8 += D_800E7A3C_E7ACC;
    }
    
    D_800E6EE0_E6F70.unk8 = D_800E6EE0_E6F70.unk4;
    D_800E6EF8_E6F88.unk8 = D_800E6EF8_E6F88.unk4;
    D_800E6F10_E6FA0.unk8 = D_800E6F10_E6FA0.unk4;
    func_8007EE54_7FA54(arg0);
}

/* DECODE */
extern u16 func_8007C160_7CD60(BitStream*, Tree*);
extern void func_8007C434_7D034(); 
extern void func_8007CA90_7D690();

static inline void ReadHufStream(BitStream *buf, Tree *tree, u32 *src) {
    if(*src) {
        buf->pos = &src[1];
        buf->bit = 0;
        if(tree) {
            D_800E6EB2_E6F42 = 256;
            tree->root = func_8007C160_7CD60(buf, tree);
        }
    } else {
        buf->pos = NULL;
        buf->bit = 0;
    }
}
static inline void ReadStream(BitStream *buf, u32 *src) {
    if(!(*src)) {
        buf->pos = NULL;
    } else {
        buf->pos = &src[1];
        buf->bit = 0;
        return;
    }
    buf->bit = 0;
}
static inline void GenQuantizeData(int step) {
    int i, alt_i;
    D_800E6EB4_E6F44 = 0x7F << step;
    D_800E6EB6_E6F46 = -0x80 << step;
    for(alt_i = i = 0; i < 256; i++, alt_i++) {
        D_800E5EA0_E5F30.array[0][i] = (s8)alt_i << 3;
        D_800E4E80_E4F10.array[0][i] = (s8)alt_i << step;
    }
}

void func_8007F54C_8014C(void* code, u16* outbuf, u32 outbufWidth, u16* workbuf) {
    u16 blocks_h, blocks_w;
    u16 *dc_ptr, *scale_ptr;
    HVQ2Header *header = code;
    blocks_w = header->width >> 2;
    blocks_h = header->height >> 2;
    D_800E7A30_E7AC0 = outbufWidth;
    D_800E7A34_E7AC4 = outbufWidth * 8;
    D_800E7A38_E7AC8 = outbufWidth * 4;
    D_800E7A3C_E7ACC = blocks_w;
    D_800E7A40_E7AD0 = blocks_h;
    D_800E7A48_E7AD8 = D_800E7A3C_E7ACC >> 1;
    D_800E7A4C_E7ADC = D_800E7A40_E7AD0 >> 1;
    D_800E7A44_E7AD4 = D_800E7A3C_E7ACC * D_800E7A40_E7AD0;
    D_800E7A50_E7AE0 = D_800E7A48_E7AD8 * D_800E7A4C_E7ADC;
    D_800E7A60_E7AF0 = header->y_shiftnum;
    if (D_800E7A60_E7AF0 == 8) {
        D_800E7A58_E7AE8 = 0x46;
        D_800E7A5C_E7AEC = 0x26;
    } else {
        D_800E7A58_E7AE8 = 0x26;
        D_800E7A5C_E7AEC = 0x46;
    }
    D_800E4E6C_E4EFC[0] = code+header->fix_offset[0]+4;
    D_800E4E6C_E4EFC[1] = code+header->fix_offset[1]+4;
    D_800E4E6C_E4EFC[2] = code+header->fix_offset[2]+4;
    ReadHufStream(&D_800E4DC8_E4E58, &D_800E5690_E5720, code+header->basisnum_offset[0]);
    ReadStream(&D_800E4DD4_E4E64, code+header->basisnum_offset[1]);
    ReadHufStream(&D_800E4DE0_E4E70, &D_800E66B0_E6740, code+header->basnum_run_offset[0]);
    ReadStream(&D_800E4DEC_E4E7C, code+header->basnum_run_offset[1]);
    ReadStream(&D_800E4E48_E4ED8, code+header->dc_run_offset[0]);
    ReadStream(&D_800E4E54_E4EE4, code+header->dc_run_offset[1]);
    ReadStream(&D_800E4E60_E4EF0, code+header->dc_run_offset[2]);
    ReadHufStream(&D_800E4E20_E4EB0, &D_800E5EA0_E5F30, code+header->scale_offset[0]);
    ReadStream(&D_800E4E2C_E4EBC, code+header->scale_offset[1]);
    ReadStream(&D_800E4E38_E4EC8, code+header->scale_offset[2]);
    ReadHufStream(&D_800E4DF8_E4E88, &D_800E4E80_E4F10, code+header->dc_offset[0]);
    ReadStream(&D_800E4E04_E4E94, code+header->dc_offset[1]);
    ReadStream(&D_800E4E10_E4EA0, code+header->dc_offset[2]);
    GenQuantizeData(header->quantize_step);
    D_800E7A54_E7AE4 = &D_800E4360_E43F0;
    D_800E6EB8_E6F48 = workbuf;
    D_800E6EBC_E6F4C = D_800E6EB8_E6F48+D_800E7A44_E7AD4;
    D_800E6EC0_E6F50 = D_800E6EBC_E6F4C+D_800E7A50_E7AE0;
    func_8007C434_7D034();
    func_8007CA90_7D690();
    func_8007CE28_7DA28((u8*) &D_800E6EB8_E6F48[header->nest_start_x + (header->nest_start_y * D_800E7A3C_E7ACC)]);
    func_8007F2FC_7FEFC(outbuf);
}


/* hvqInit1 */
static inline s32 calc_E7730val(s32 index){
    if(index >= 0) {
        if(index >= 0x100) {
            return 0xF8;
        } else {
            return index & ~0x7;
        }
    } else {
        return 0;
    }
}

void func_8007FAC0_806C0() {
    s32 i;
    s32 var_v1;
    u8 var_v0;

    for (i = 0, var_v1 = -0x100; i < 0x300; i++, var_v1++) {
        D_800E7730_E77C0[i] = calc_E7730val(var_v1);
    }

    D_800E6F30_E6FC0[0] = 0;
    for (i = 1; i < 0x200; i++) {
        D_800E6F30_E6FC0[i] = 0x1000 / i;
    }
}