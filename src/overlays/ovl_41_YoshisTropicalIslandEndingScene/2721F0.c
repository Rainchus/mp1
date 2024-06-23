#include "2721F0.h"

void func_80108B60_2721F0(omObjData* arg0) {
    if ((gPlayers[arg0->work[0]].playerObj->unk_34 <= 0.0f) && (gPlayers[arg0->work[0]].playerObj->unk_30 <= 0.0f)) {
        gPlayers[arg0->work[0]].playerObj->unk_30 = 0.0f;
        return;
    }
    
    gPlayers[arg0->work[0]].playerObj->unk_38 = -4.0f;
    gPlayers[arg0->work[0]].playerObj->unk_34 += gPlayers[arg0->work[0]].playerObj->unk_38;
    gPlayers[arg0->work[0]].playerObj->unk_30 += gPlayers[arg0->work[0]].playerObj->unk_34;

    if (gPlayers[arg0->work[0]].playerObj->unk_30 < 0.0f) {
        gPlayers[arg0->work[0]].playerObj->unk_30 = 0.0f;
    }
    func_800A0D00(&gPlayers[arg0->work[0]].playerObj->coords, gPlayers[arg0->work[0]].playerObj->coords.x, gPlayers[arg0->work[0]].playerObj->unk_30, gPlayers[arg0->work[0]].playerObj->coords.z);
}

void func_80108CB8_272348(omObjData* arg0) {
    gPlayers[arg0->work[0]].playerObj->unk_30 = 0;
    gPlayers[arg0->work[0]].playerObj->unk_34 = 15.0f;
    gPlayers[arg0->work[0]].playerObj->unk_38 = -4.0f;
    arg0->func_ptr = &func_80108B60_2721F0;
}

void func_80108D40_2723D0(omObjData* arg0) {
    Vec3f sp10;
    Vec3f sp20;
    Vec3f* temp_s0;

    temp_s0 = &D_80110340[arg0->work[1]];
    func_800A0D00(&sp10, arg0->scale.x, arg0->scale.y, arg0->scale.z);
    func_800A0D00(&sp20, arg0->rot.x, arg0->rot.y, arg0->rot.z);
    arg0->trans.x = sp10.x * temp_s0->z + sp20.x;
    arg0->trans.z = sp10.z * temp_s0->z + sp20.z;
    arg0->trans.y = (((temp_s0->y * temp_s0->z) + sp10.y) * temp_s0->z) + sp20.y;
    if (arg0->trans.y < temp_s0->x) {
        arg0->work[0]++;
    }
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80108E20_2724B0);

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80108EB8_272548);

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010903C_2726CC);

void func_80109110_2727A0(omObjData *arg0) {
    s32 temp_s1 = arg0->work[0];
    f32 var_f20 = arg0->rot.x;
    f32 new_var;
    
    var_f20 = var_f20 + 5.0f;
    if (var_f20 < 360.0f) {
        var_f20 -= 360.0f;
    }
    
    new_var = (-func_800AEAC0(var_f20)) + D_80110448[temp_s1]->unk_10;
    D_80110448[temp_s1]->unk_10 = new_var;
    arg0->rot.x = var_f20;
}

omObjData* func_801091A4_272834(u8 arg0) {
    omObjData* temp_v0;

    temp_v0 = omAddObj(0x600, 0, 0, -1, &func_80109110_2727A0);
    temp_v0->work[0] = arg0;
    func_8005D96C(temp_v0, 0.0f, 0.0f, 0.0f);
    return temp_v0;
}

void func_8010920C_27289C(Gfx** arg0) {
    gDPSetDepthImage(D_800F37DC++, 0x003D0800);
    gDPSetColorImage(D_800F37DC++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x003D0800);
    gSPDisplayList((*arg0)++, &D_8010ECB0);
    gDPSetColorImage(D_800F37DC++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 320, 0x02000000);
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_80109294_272924);

void func_8010A740_273DD0(omObjData* arg0) {
    omObjData* temp_s0;

    arg0->rot.x = arg0->rot.x + 5.0f;
    
    if (arg0->rot.x >= 360.0f) {
        arg0->rot.x -= 360.0f;
    }
    
    D_80110448[0]->unk_18 = (sinf((f32) (arg0->rot.x * D_8010F758)) * 0.2f);
    D_80110448[0]->unk_20 = 1.0f;
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010A7EC_273E7C);

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AA38_2740C8);

void func_8010AC24_2742B4(omObjData* arg0) {
    arg0->func_ptr = &func_8010AA38_2740C8;
    arg0->trans.x = arg0->trans.y = arg0->trans.z = arg0->rot.x =
        arg0->rot.y = arg0->rot.z = 0.0f;
    
    arg0->work[0] = 1;
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AC5C_2742EC);

void func_8010AE08_274498(omObjData* arg0) {
    arg0->func_ptr = &func_8010AC5C_2742EC;
    arg0->trans.x = arg0->trans.y = arg0->trans.z = arg0->rot.x = arg0->rot.y = arg0->rot.z = 0.0f;
    arg0->work[0] = 1;
}

void func_8010AE40_2744D0(omObjData* arg0) {
    D_800C34A4 = arg0->rot.x;
    
    if (arg0->rot.y > 1.0f) {
        func_800258EC(*D_80110480->unk_3C->unk_40, 4, 4);
        return;
    }
    
    func_80026B8C(*D_80110480->unk_3C->unk_40, arg0->rot.y, arg0->rot.z, 2);
    arg0->rot.x += 39.0f;
    
    if (arg0->rot.x > 360.0f) {
        arg0->rot.x -= 360.0f;
    }
    arg0->rot.y += 0.05f;
    arg0->rot.z = (10.0f - arg0->rot.z) / 30.0f + arg0->rot.z;
}

void func_8010AF58_2745E8(omObjData* arg0) {
    arg0->func_ptr = &func_8010AE40_2744D0;
    func_80025930(*D_80110480->unk_3C->unk_40, 0x22000, 0x20000);
    func_80025AD4(*D_80110480->unk_3C->unk_40);
    func_80026040(*D_80110480->unk_3C->unk_40);
    arg0->rot.x = arg0->rot.y = 0.0f;
    arg0->rot.z = 1.0f;
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010AFF8_274688);

void func_8010B0C0_274750(omObjData* arg0) {
    arg0->func_ptr = &func_8010AFF8_274688;
    arg0->rot.x = arg0->rot.y = arg0->rot.z = 0.0f;
}

INCLUDE_ASM(const s32, "overlays/ovl_41_YoshisTropicalIslandEndingScene/2721F0", func_8010B0E4_274774);
