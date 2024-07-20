#include "common.h"
#include "engine/ovlman.h"

/* TODO: set .data here. */
// u8 D_800C1C70;
// OverlayInfo overlay_table[];
// Vec4f D_800C2F94[];
// Vec3f D_800C2F04[];
// Vec3f D_800C2F4C[];
// unk_Struct00 *D_800C3110;

/* TODO: set .bss here. */
// s32 D_800F2C28;
// s16 D_800F3778;


// Likey different return types for the first 3 functions?
u16 func_800174C0(s32 arg0, s32 arg1) {
    return LoadFormBinary(ReadMainFS(arg0), arg1);
}

u16 func_800174F4(s32 arg0, s32 arg1) {
    return LoadFormBinary(ReadMainFS(arg0), arg1);
}

u16 LoadFormFile(s32 arg0, s32 arg1) {
    return LoadFormBinary(ReadMainFS(arg0), arg1);
}

s16 func_8001755C(s32 arg0) {
    return LoadFormBinary(ReadMainFS(arg0), 0x1D);
}

u8 rand8(void) {
    rnd_seed = rnd_seed * 0x41C64E6D + 0x3039;
    return (rnd_seed + 1) >> 16;
}

// copies in an overlay and clears bss region.
void LoadOverlay(s32 overlayIndex) {
    u8 *rom_start;
    u8 *rom_end;
    u8 *bss_start;
    u8 *bss_end;
    u8* curBssAddr;

    rom_start = overlay_table[overlayIndex].rom_start;
    rom_end = overlay_table[overlayIndex].rom_end;
    bss_start = overlay_table[overlayIndex].bss_start;
    bss_end = overlay_table[overlayIndex].bss_end;

    HuRomDmaCodeRead(rom_start, overlay_table[overlayIndex].ram_start, rom_end - rom_start);

    curBssAddr = bss_start;
    while (bss_start < bss_end) {
        *curBssAddr++ = 0;
        bss_start++;
    }

    D_800C1C70 = 0;
}

void func_80017660(u8 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4) {
    s8 i;

    i = arg0;
    D_800C2F94[arg0].x = arg1;
    D_800C2F94[arg0].y = arg2;
    D_800C2F94[arg0].z = arg3;
    D_800C2F94[arg0].w = arg4;
    func_8001D4D4(i & 0xff, &D_800C2F94[arg0]);
}

void func_800176C4(u8 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    s8 i;

    i = arg0;
    D_800C2F04[arg0].x = arg1;
    D_800C2F04[arg0].y = arg2;
    D_800C2F04[arg0].z = arg3;
    D_800C2F4C[arg0].x = arg4;
    D_800C2F4C[arg0].y = arg5;
    D_800C2F4C[arg0].z = arg6;
    func_8001D520(i & 0xff, &D_800C2F04[arg0], &D_800C2F4C[arg0]);
}

void func_8001775C(omObjData* arg0, u16 arg1, s32 arg2) {
    s16 temp_v0;

    temp_v0 = func_8001755C(arg2);
    if (temp_v0 >= 0) {
        arg0->motion[arg1] = temp_v0;
    }
}

s8 func_8000B4B4(void) {
    s8 ret;
    if (D_800F3778 > D_800C1C70) {
        ret = D_800C1C70++;
    } else {
        ret = -1;
    }
    return ret;
}

u16 ReadImgPackand(s32 arg0, s32 arg1, s32 arg2) {
    u16 temp_s0;
    void* temp_v0;

    temp_v0 = ReadMainFS(arg0);
    temp_s0 = func_8001E00C(temp_v0, arg1, arg2 );
    HuMemDirectFree(temp_v0);
    return temp_s0;
}

s16 func_80017850(unk2C0C0StructC0* arg0, s32 arg1, char* arg2) {
    return func_80038A9C(arg0, ReadMainFS(arg1), 0, arg2);
}

void func_800178A0(s32 arg0) {
    D_800C3000 = (u8) arg0;
    InitCameras((s32) D_800C3000);
    D_800C3110->unk_40 = 45.0f;
    D_800C3001 = 0;
}

s16 func_800178E8(void) {
    s16 temp_s0;

    temp_s0 = D_800C3001;
    func_8001D8A0(D_800C3001, &func_8002A0E4, &D_800EE738);
    D_800C3001 += 1;
    return temp_s0;
}

void func_80017940(u8 arg0) {
    s32 i;

    D_800C3000 = arg0;
    InitCameras(D_800C3000);
    for (i = 0; i < D_800C3000; i++) {
        D_800C3110[i].unk_40 = 45.0f;
    }
    D_800C3001 = 0;
}

u8 func_800179C0(s32 arg0) {
    s32 var_a0;
    s32 i;

    for (i = 0; i < arg0; i++) {
        var_a0 = i << 0x10;
        func_8001D8A0(var_a0 >> 0x10, &func_8002A0E4, (i * 0x6) + &D_800F2C28);
        D_800C3001 += 1;
    }

    return D_800C3001;
}
