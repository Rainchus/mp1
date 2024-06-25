#include "common.h"

// NUPiOverlaySegment
typedef struct OverlayInfo {
    u8 *rom_start;
    u8 *rom_end;
    u8 *ram_start;
    u8 *code_start;
    u8 *code_end;
    u8 *data_start;
    u8 *data_end;
    u8 *bss_start;
    u8 *bss_end;
} OverlayInfo; // sizeof 0x24

extern u8 D_800C1C70_C2870;
extern OverlayInfo overlay_table[];
extern Vec4f D_800C2F94_C3B94[];
extern Vec3f D_800C2F04_C3B04[];
extern Vec3f D_800C2F4C_C3B4C[];
extern unk_Struct00 *D_800C3110_C3D10;
extern s32 D_800F2C28_F2CB8;
extern s16 D_800F3778_F3808;
extern u32 D_800C2FF4_C3BF4;
extern u8 D_800C3000_C3C00;
extern u8 D_800C3001_C3C01;
extern s32 D_800EE738_EE7C8;
s32 LoadFormBinary(void*, u32);
void func_8001D8A0_1E4A0(s32, void*, s32*);
void func_8002A0E4_2ACE4(void);
s32 HuRomDmaCodeRead(void * src, void * dest, s32 size);