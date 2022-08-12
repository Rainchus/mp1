#include "common.h"
#include "D51E0.h"

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F65E0_D51E0);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F6B00_D5700);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F7108_D5D08);

void func_800F7818_D6418(s32 arg0) {
    s32 temp_v0;
    s32 temp_a1;
    s32 temp_a2;

    temp_v0 = gPlayers[D_80101AAE].characterID;
    temp_a1 = D_800C59AC[temp_v0].unk_00;
    temp_a2 = D_800C59AC[temp_v0].unk_04;
    
    if (D_801011F0 == 0) {
        func_800F78C4_D64C4(arg0, temp_a1, temp_a2, D_80101AAE, 0.0f, 0, 1400.0f);
    } else {
        func_800F78C4_D64C4(arg0, temp_a1, temp_a2, D_80101AAE, -140.0f, 0, 1400.0f);
    }
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F78C4_D64C4);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F7C7C_D687C);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F7E08_D6A08);

void func_800F80D8_D6CD8(s32 arg0) {
    u8 temp_v1;
    s32 temp2;
    s32 temp3;

    temp_v1 = gPlayers[D_80101AAF].characterID;
    temp2 = D_800C59AC[temp_v1].unk_00;
    temp3 = D_800C59AC[temp_v1].unk_04;
    func_800F7E08_D6A08(arg0, temp2, temp3, D_80101AAF, -800.0f, 10.0f, 800.0f);
}

void func_800F8168_D6D68(s32 arg0) {
    u8 temp_v1;
    s32 temp2;
    s32 temp3;

    temp_v1 = gPlayers[D_80101AB0].characterID;
    temp2 = D_800C59AC[temp_v1].unk_00;
    temp3 = D_800C59AC[temp_v1].unk_04;
    func_800F7E08_D6A08(arg0, temp2, temp3, D_80101AB0, -700.0f, 10.0f, 800.0f);
}

void func_800F81F8_D6DF8(s32 arg0) {
    u8 temp_v1;
    s32 temp2;
    s32 temp3;

    temp_v1 = gPlayers[D_80101AB1].characterID;
    temp2 = D_800C59AC[temp_v1].unk_00;
    temp3 = D_800C59AC[temp_v1].unk_04;
    func_800F7E08_D6A08(arg0, temp2, temp3, D_80101AB1, -600.0f, 10.0f, 800.0f);
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F8288_D6E88);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F84B4_D70B4);

void func_800F8700_D7300(s16 arg0) {
    switch (arg0) {
    case 1:
        D_800F3FB4 = func_8005D384(0xA, 9, 0x2B, -1, &func_800F80D8_D6CD8);
        return;
    case 2:
        D_800F3FB8 = func_8005D384(0xA, 9, 0x2B, -1, &func_800F8168_D6D68);
        return;
    case 3:
        D_800F3FBC = func_8005D384(0xA, 9, 0x2B, -1, &func_800F81F8_D6DF8);
        return;
    }
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F87CC_D73CC);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F8A6C_D766C);

void func_800F988C_D848C(Object* arg0) {
    func_800264F8(arg0->unk_3C, arg0->unk_44, (func_80088060(arg0->unk_18 * D_80101478) / 2.0f) + 0.5f, D_80101464, D_80101470, 0);
    arg0->unk_18 += 20.0f;
    if (arg0->unk_18 >= 360.0f) {
        arg0->unk_18 -= 360.0f;
    }
}

void func_800F9948_D8548(s32 arg0) {
    D_80101288 = LoadFormFile(0xA0076, 0x2AD);
    func_80026040(arg0);
    D_80101284 = func_8005D384(0x1000, 0, 0, -1, &func_800F988C_D848C);
    D_80101284->unk_18 = 0.0f;
    D_80101284->unk_3C = arg0;
    D_80101284->unk_44 = (u16)D_80101288;
    func_8005D8B8(D_80101284, 0xA0);
}

void func_800F99D8_D85D8(Object* arg0) {
    f32 temp_f20 = D_80101214.x;
    f32 temp_f24 = D_80101214.y;
    f32 temp_f22 = D_80101214.z;
    

    arg0->unk_40->unk_00.unsigned16[0] = LoadFormFile(0xA0072, 0x689);
    arg0->unk_40->unk_00.unsigned16[1] = func_800174F4(0x20, 0x299);
    func_80025830(arg0->unk_40->unk_00.unsigned16[1], 1.3f, 1.0f, 1.3f);
    func_8001775C(arg0, 0, 0xA0072);
    func_8001775C(arg0, 1, 0xA0073);
    func_8001775C(arg0, 2, 0xA0074);
    func_80025EB4(arg0->unk_40->unk_00.unsigned16[0], 2, 2);
    func_800258EC(arg0->unk_40->unk_00.unsigned16[0], 4, 4);
    func_800258EC(arg0->unk_40->unk_00.unsigned16[1], 4, 4);
    arg0->unk_18 = temp_f20;
    arg0->unk_1C = temp_f24;
    arg0->unk_20 = temp_f22;
    arg0->unk_28 = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[1], temp_f20, arg0->unk_28, temp_f22);
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 0.9f;
    func_800F9948_D8548(arg0->unk_40->unk_00.signed16[0]);
    func_80025B34(arg0->unk_40->unk_00.unsigned16[0]);
    arg0->func_ptr = &func_800F8A6C_D766C;
}

void func_800F9B50_D8750(void) {
    s16 var_s0;
    s32 tmp;

    var_s0 = CreateTextWindow(0x46, 0x3C, 0x10, 4);

    ShowTextWindow(var_s0);
    if (D_8010175C == 0) {
        func_8006DA5C(var_s0, D_80101330[gPlayers[D_801012E0].characterID], 0);
        func_8006DA5C(var_s0, D_80101330[gPlayers[D_801012E1].characterID], 1);
    } else {
        func_8006DA5C(var_s0, D_80101330[gPlayers[D_801012E1].characterID], 0);
        func_8006DA5C(var_s0, D_80101330[gPlayers[D_801012E0].characterID], 1);
    }

    if (D_801011F6 == 0) {
        func_8006DA5C(var_s0, &D_80101480, 2);
    } else {
        func_8006DA5C(var_s0, &D_80101488, 2);
    }

    tmp = D_801012E2;

    switch(tmp)
    {
        case 4:
            LoadStringIntoWindow(var_s0, (void*)0xF0, -1, -1);
            break;
        case 0:
        case 1:
            LoadStringIntoWindow(var_s0, (void*)0xEE, -1, -1);
            break;
        case 10:
            LoadStringIntoWindow(var_s0, (void*)0xF4, -1, -1);
            break;
        default:
            LoadStringIntoWindow(var_s0, (void*)0xED, -1, -1);
            break;
    }
    
    
    func_8006E070(var_s0, 0);
    WaitForTextConfirmation(var_s0);
    HideTextWindow(var_s0);
    D_801011F5 = 1;

    while (1) {
        SleepVProcess();
    }
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F9D60_D8960);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F9E74_D8A74);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800F9F30_D8B30);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FA458_D9058);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FAE60_D9A60);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FB00C_D9C0C);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FB950_DA550);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FBBC4_DA7C4);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FC1C8_DADC8);

void func_800FC390_DAF90(void) {
    D_80101760 = func_800174F4(0x130001, 0x289);
    func_800258EC(D_80101760, 4, 4);
}

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FC3D0_DAFD0);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FCC18_DB818);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FD0AC_DBCAC);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FD7DC_DC3DC);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FDDD4_DC9D4);

INCLUDE_ASM(s32, "ovl_01_ChanceTime/D51E0", func_800FE554_DD154);

void func_800FE97C_DD57C(s32 arg0) {
    if (((func_800FEC4C_DD84C(arg0, 80.0f, D_800F3FB0) << 0x10) != 0) && (D_8010131A == 0)) {
        D_8010131A = 1;
    }
    D_801012B4 = 1;
    D_801012E1 = 0;
}


void func_800FE9D8_DD5D8(Object* arg0) {
    unkGlobalStruct_00* temp_s1;

    arg0->unk_40->unk_00.unsigned16[0] = func_80023FC8(D_80101760);
    func_800258EC(arg0->unk_40->unk_00.unsigned16[0], 4, 4);
    arg0->unk_40->unk_00.unsigned16[1] = func_800174F4(0x130002, 0x699);
    arg0->unk_18 = 140.0f;
    arg0->unk_1C = 230.0f;
    arg0->unk_20 = 1400.0f;
    arg0->unk_30 = arg0->unk_34 = arg0->unk_38 = 1.5f;
    arg0->unk_24 = arg0->unk_28 = arg0->unk_2C = 0.0f;
    func_80025798(arg0->unk_40->unk_00.unsigned16[1], arg0->unk_18, arg0->unk_1C, arg0->unk_20);
    func_80025830(arg0->unk_40->unk_00.unsigned16[1], 0.8f, 0.8f, 0.8f);
    func_800257E4(arg0->unk_40->unk_00.unsigned16[1], 0.0f, 0.0f, 0.0f);
    temp_s1 = func_80023684(44, 0x7918);
    arg0->unk_50 = temp_s1;
    func_8009B770(temp_s1, 0, 44);
    temp_s1->unk_04.b[0] = 1;
    temp_s1->unk_04.b[1] = 3;
    temp_s1->unk_28 = func_80023684(60, 0x7918);
    func_8009B770(temp_s1->unk_28, 0, 60);
    arg0->func_ptr = &func_800FE97C_DD57C;
}
