#include "common.h"
#include "CrazyCutter.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F65E0_1250D0);

void func_800F686C_12535C(unkObjectStruct* arg0) {
    D_800FD460_12BC20--;
    if (D_800FD460_12BC20 == 0) {
        D_800FD460_12BC20 = 20;
        func_80075CCC(0);
        arg0->func_ptr = &func_800F68C4_1253B4;
    }
}

void func_800F68C4_1253B4(unkObjectStruct* arg0) {
    if (func_80075FE0() == 0 || func_80075FE0() & 2) {
        D_800FD460_12BC20--;
        if (D_800FD460_12BC20 == 0) {
            D_800FD4B0_12BC20 = 1;
            func_800F978C_12827C();
            arg0->func_ptr = &func_800F97C8_1282B8;
        }
    }
}

void func_800F6938_125428(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
    func_800178A0(1);
    D_800EE98C = arg0;
    D_800F33EC.y = arg1;
    D_800F33EC.x = arg2;
    D_800F33EC.z = arg3;
    D_800F6524.x = arg4;
    D_800F6524.y = arg5;
    D_800F6524.z = arg6;
    func_8001D494(0, 10.0f, D_800C3110->unk_44, D_800C3110->unk_48);
}

void func_800F69EC_1254DC(Object* arg0) {
    D_800FD468_12BC20--;
    if (D_800FD468_12BC20 == 0) {
        D_800FD464_12BC20 = 1;
        func_8005D384(4, 10, 10, 4, &func_800F94C0_127FB0);
        func_8005D384(4, 10, 10, 4, &func_800F94DC_127FCC);
        func_8005D384(4, 10, 10, 4, &func_800F94F8_127FE8);
        func_8005D384(4, 10, 10, 4, &func_800F9514_128004);
        func_8005D384(0, 0, 0, -1, &func_800F686C_12535C);
        func_8005D384(2, 1, 1, -1, &func_800F6B04_1255F4);
        SetFadeInTypeAndTime(0, 16);
        func_8005D718(arg0);
    }
}

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD010_12BB00);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F6B04_1255F4);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F6F00_1259F0);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F7180_125C70);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F731C_125E0C);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F8144_126C34);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F8598_127088);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F8F74_127A64);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F8FDC_127ACC);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F90E4_127BD4);

void func_800F94C0_127FB0(s32 arg0) {
    func_800F731C_125E0C(arg0, 0);
}

void func_800F94DC_127FCC(s32 arg0) {
    func_800F731C_125E0C(arg0, 1);
}

void func_800F94F8_127FE8(s32 arg0) {
    func_800F731C_125E0C(arg0, 2);
}

void func_800F9514_128004(s32 arg0) {
    func_800F731C_125E0C(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F9530_128020);

void func_800F9654_128144(s32 arg0) {
    if (D_800F5144 != 0) {
        func_8006071C(D_800FD5C6_12BC20);
        func_800601D4(40);
        func_8005DFB8(1);
    }
}

void func_800F9694_128184(Vec3f* arg0, s16 arg1[], s32 arg2) {
    Vec2f sp10;

    Convert3DTo2D(0, arg0, &sp10);
    arg1[0] = sp10.x;
    arg1[1] = sp10.y;
    
    if (arg2 & 1) {
        arg1[0] = arg1[0] - 160;
    }
    
    if (arg2 / 2) {
        arg1[1] = arg1[1] - 120;
    }
    
    arg1[0] = arg1[0] * 0.4f;
    arg1[1] = arg1[1] * 0.4f;
}

void func_800F978C_12827C(void) {
    D_800FD14E_12BC20 = 30;
    D_800FD150_12BC20 = 30;
    func_80075CCC(8, 30, 160, 32);
}

void func_800F97C8_1282B8(unkObjectStruct* arg0) {
    s32 i;
    s32 temp;

    D_800FD150_12BC20 -= 1;
    if (D_800FD150_12BC20 == 0) {
        D_800FD150_12BC20 = 30;
        D_800FD14E_12BC20--;
    }

    func_80079078(D_800FD14E_12BC20);
    temp = 0;
    for (i = 0; i < 4; i++) {
        temp += func_800FAAB0_1295A0(i, 1);
    }

    if ((D_800FD14E_12BC20 == 0) | (temp == 4)) {
        func_800790C0();
        func_800601D4(40);
        func_8006071C(D_800FD5C6_12BC20);
        arg0->func_ptr = &func_800FA56C_12905C;
    }
}

void func_800F98B4_1283A4(unkCrazyCutter_00* arg0) {
    D_800FD488_12BC20[arg0->unk_30] = 1;
    D_800FD558_12BC20[arg0->unk_30] = D_800FCCF0_12B7E0[arg0->unk_30] + arg0->unk_00;
    D_800FD568_12BC20[arg0->unk_30] = arg0->unk_04;
    D_800FD578_12BC20[arg0->unk_30] = D_800FCD00_12B7F0[arg0->unk_30] + arg0->unk_08 + -4.0f;
    D_800FD5C8_12BC20 = PlaySound(0x237);
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F9968_128458);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800F9D98_128888);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FA38C_128E7C);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FA56C_12905C);

void func_800FA808_1292F8(unkObjectStruct* arg0) {
    if (func_80075FE0() == 0 || func_80075FE0() & 2) {
        if (D_800FD590_12BC20 == 0) {
            func_800FBB2C_12A61C();
            D_800FD590_12BC20 += 1;
        }
        arg0->func_ptr = &func_800FA880_129370;
    }
}

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD028_12BB18);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD040_12BB30);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD050_12BB40);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD060_12BB50);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD06C_12BB5C);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD078_12BB68);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD084_12BB74);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD094_12BB84);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0A4_12BB94);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0B0_12BBA0);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0BC_12BBAC);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0C8_12BBB8);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0D4_12BBC4);

INCLUDE_RODATA("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", D_800FD0E0_12BBD0);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FA880_129370);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FA9D8_1294C8);

void func_800FAA18_129508(Object* arg0) {
    s32 i;

    if (func_80072718() == 0) {
        for (i = 0; i < 4; i++) {
            if (func_800FAAB0_1295A0(i, 0x4000) == 0) {
                gPlayers[i].miniGameCoins += 10; 
            }
        }
        func_800601D4(0x28);
        func_8005DFB8(1);
        func_8005D718(arg0);
    }
}

s32 func_800FAAB0_1295A0(s32 arg0, s32 arg1) {
    return (arg1 & D_800FD4D8_12BC20[arg0]) != 0;
}

void func_800FAACC_1295BC(s32 arg0, s32 arg1, s32 arg2) {
    if (arg2 != 0) {
        D_800FD4D8_12BC20[arg0] = arg1 | D_800FD4D8_12BC20[arg0];
    } else {
        D_800FD4D8_12BC20[arg0] = ~arg1 & D_800FD4D8_12BC20[arg0];
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FAB0C_1295FC);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FAC38_129728);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FAF8C_129A7C);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FB2B8_129DA8);

void func_800FB450_129F40(s32 arg0) {
    s8 temp_s1;
    s8 temp_s0;

    if (arg0 != D_800FD530_12BC20) {
        D_800FD530_12BC20 = arg0;
        temp_s1 = InitSprite(arg0 | 0x1F0000);
        temp_s0 = func_80064EF4(1, 0);
        func_8006752C(temp_s0, 0, 0xFF);
        func_80067480(temp_s0, 0, 0xFFFF);
        func_800674BC(temp_s0, 0, 0x9000);
        func_80067354(temp_s0, 0, 1.0f, 1.0f);
        func_800672B0(temp_s0, 0, 1);
        func_80067208(temp_s0, 0, temp_s1, 0);
        D_800FD518_12BC20 = func_800FC4F0_12AFE0(temp_s0, 0, &D_800FD520_12BC20, &D_800FD524_12BC20);
        func_80064D38(temp_s0);
    }
}

void func_800FB548_12A038(s32 arg0) {
    s8 temp_s1;
    s8 temp_s0;

    if (arg0 != D_800FD538_12BC20) {
        D_800FD538_12BC20 = arg0;
        temp_s1 = InitSprite(arg0 | 0x1F0000);
        temp_s0 = func_80064EF4(1, 0);
        func_8006752C(temp_s0, 0, 0xFF);
        func_80067480(temp_s0, 0, 0xFFFF);
        func_800674BC(temp_s0, 0, 0x9000);
        func_80067354(temp_s0, 0, 1.0f, 1.0f);
        func_800672B0(temp_s0, 0, 1);
        func_80067208(temp_s0, 0, temp_s1, 0);
        D_800FD51C_12BC20 = func_800FC4F0_12AFE0(temp_s0, 0, &D_800FD528_12BC20, &D_800FD52C_12BC20);
        func_80064D38(temp_s0);
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FB640_12A130);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FB778_12A268);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FB944_12A434);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FBAFC_12A5EC);

void func_800FBB2C_12A61C(void) {
    unkObjectStruct* temp_s0;
    unkCrazyCutter0* temp_v0;

    temp_s0 = func_8005D384(0xC, 0, 0, -1, &func_800FBB94_12A684);
    temp_v0 = func_80023684(sizeof(unkCrazyCutter0), 0x7918);
    temp_s0->unk_50 = temp_v0;
    temp_v0->unk0 = 90;
    D_800FD5C0_12BC20 = PlaySound(0x1C0);
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FBB94_12A684);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FBEA8_12A998);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FBFB4_12AAA4);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FC024_12AB14);

void func_800FC240_12AD30(s16 arg0) {
    s16 i;
    
    for (i = 0; i < 4; i++) {
        func_800674BC(arg0, i, 0x8000);
    }
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/1250D0", func_800FC29C_12AD8C);

void func_800FC45C_12AF4C(s16 arg0, s16 arg1) {
    s16 i = 0;
    
    for (i = 0; i < 4; i++) {
        func_80067354(arg0, i, arg1 / 10.0f, arg1 / 10.0f);
    }
}
