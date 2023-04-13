#include "2721F0.h"

void func_80108B60_2721F0(unkObjectStruct* arg0) {
    if ((gPlayers[arg0->unk_4C].playerObj->unk_34 <= 0.0f) && (gPlayers[arg0->unk_4C].playerObj->unk_30 <= 0.0f)) {
        gPlayers[arg0->unk_4C].playerObj->unk_30 = 0.0f;
        return;
    }
    
    gPlayers[arg0->unk_4C].playerObj->unk_38 = -4.0f;
    gPlayers[arg0->unk_4C].playerObj->unk_34 += gPlayers[arg0->unk_4C].playerObj->unk_38;
    gPlayers[arg0->unk_4C].playerObj->unk_30 += gPlayers[arg0->unk_4C].playerObj->unk_34;

    if (gPlayers[arg0->unk_4C].playerObj->unk_30 < 0.0f) {
        gPlayers[arg0->unk_4C].playerObj->unk_30 = 0.0f;
    }
    func_800A0D00(&gPlayers[arg0->unk_4C].playerObj->coords, gPlayers[arg0->unk_4C].playerObj->coords.x, gPlayers[arg0->unk_4C].playerObj->unk_30, gPlayers[arg0->unk_4C].playerObj->coords.z);
}

void func_80108CB8_272348(unkObjectStruct* arg0) {
    gPlayers[arg0->unk_4C].playerObj->unk_30 = 0;
    gPlayers[arg0->unk_4C].playerObj->unk_34 = 15.0f;
    gPlayers[arg0->unk_4C].playerObj->unk_38 = -4.0f;
    arg0->func_ptr = &func_80108B60_2721F0;
}

void func_80108D40_2723D0(unkObjectStruct* arg0) {
    Vec3f sp10;
    Vec3f sp20;
    Vec3f* temp_s0;

    temp_s0 = &D_80110340[arg0->unk_4D];
    func_800A0D00(&sp10, arg0->unk_30, arg0->unk_34, arg0->unk_38);
    func_800A0D00(&sp20, arg0->unk_24, arg0->unk_28, arg0->unk_2C);
    arg0->unk_18 = sp10.x * temp_s0->z + sp20.x;
    arg0->unk_20 = sp10.z * temp_s0->z + sp20.z;
    arg0->unk_1C = (((temp_s0->y * temp_s0->z) + sp10.y) * temp_s0->z) + sp20.y;
    if (arg0->unk_1C < temp_s0->x) {
        arg0->unk_4C++;
    }
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80108E20_2724B0);

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80108EB8_272548);

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010903C_2726CC);

void func_80109110_2727A0(unkObjectStruct *arg0) {
    s32 temp_s1 = arg0->unk_4C;
    f32 var_f20 = arg0->unk_24;
    f32 new_var;
    
    var_f20 = var_f20 + 5.0f;
    if (var_f20 < 360.0f) {
        var_f20 -= 360.0f;
    }
    
    new_var = (-func_800AEAC0(var_f20)) + D_80110448[temp_s1]->unk_10;
    D_80110448[temp_s1]->unk_10 = new_var;
    arg0->unk_24 = var_f20;
}

unkObjectStruct* func_801091A4_272834(u8 arg0) {
    unkObjectStruct* temp_v0;

    temp_v0 = func_8005D384(0x600, 0, 0, -1, &func_80109110_2727A0);
    temp_v0->unk_4C = arg0;
    func_8005D96C(temp_v0, 0.0f, 0.0f, 0.0f);
    return temp_v0;
}

void func_8010920C_27289C(Gfx** arg0) {
    gDPSetDepthImage(D_800F37DC++, 0x003D0800);
    gDPSetColorImage(D_800F37DC++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x003D0800);
    gSPDisplayList((*arg0)++, &D_8010ECB0);
    gDPSetColorImage(D_800F37DC++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x02000000);
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80109294_272924);

void func_8010A740_273DD0(unkObjectStruct* arg0) {
    unkObjectStruct* temp_s0;

    arg0->unk_24 = arg0->unk_24 + 5.0f;
    
    if (arg0->unk_24 >= 360.0f) {
        arg0->unk_24 -= 360.0f;
    }
    
    D_80110448[0]->unk_18 = (sinf((f32) (arg0->unk_24 * D_8010F758)) * 0.2f);
    D_80110448[0]->unk_20 = 1.0f;
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010A7EC_273E7C);

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AA38_2740C8);

void func_8010AC24_2742B4(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_8010AA38_2740C8;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = arg0->unk_24 =
        arg0->unk_28 = arg0->unk_2C = 0.0f;
    
    arg0->unk_4C = 1;
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AC5C_2742EC);

void func_8010AE08_274498(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_8010AC5C_2742EC;
    arg0->unk_18 = arg0->unk_1C = arg0->unk_20 = arg0->unk_24 = arg0->unk_28 = arg0->unk_2C = 0.0f;
    arg0->unk_4C = 1;
}

void func_8010AE40_2744D0(unkObjectStruct* arg0) {
    D_800C34A4 = arg0->unk_24;
    
    if (arg0->unk_28 > 1.0f) {
        func_800258EC(*D_80110480->unk_3C->unk_40, 4, 4);
        return;
    }
    
    func_80026B8C(*D_80110480->unk_3C->unk_40, arg0->unk_28, arg0->unk_2C, 2);
    arg0->unk_24 += 39.0f;
    
    if (arg0->unk_24 > 360.0f) {
        arg0->unk_24 -= 360.0f;
    }
    arg0->unk_28 += 0.05f;
    arg0->unk_2C = (10.0f - arg0->unk_2C) / 30.0f + arg0->unk_2C;
}

void func_8010AF58_2745E8(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_8010AE40_2744D0;
    func_80025930(*D_80110480->unk_3C->unk_40, 0x22000, 0x20000);
    func_80025AD4(*D_80110480->unk_3C->unk_40);
    func_80026040(*D_80110480->unk_3C->unk_40);
    arg0->unk_24 = arg0->unk_28 = 0.0f;
    arg0->unk_2C = 1.0f;
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AFF8_274688);

void func_8010B0C0_274750(unkObjectStruct* arg0) {
    arg0->func_ptr = &func_8010AFF8_274688;
    arg0->unk_24 = arg0->unk_28 = arg0->unk_2C = 0.0f;
}

INCLUDE_ASM(const s32, "ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010B0E4_274774);
