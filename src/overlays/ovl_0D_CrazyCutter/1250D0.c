#include "CrazyCutter.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F65E0_CrazyCutter);

void func_800F686C_CrazyCutter(omObjData* arg0) {
    D_800FD460_CrazyCutter--;
    if (D_800FD460_CrazyCutter == 0) {
        D_800FD460_CrazyCutter = 20;
        func_80075CCC(0);
        arg0->func_ptr = &func_800F68C4_CrazyCutter;
    }
}

void func_800F68C4_CrazyCutter(omObjData* arg0) {
    if (func_80075FE0() == 0 || func_80075FE0() & 2) {
        D_800FD460_CrazyCutter--;
        if (D_800FD460_CrazyCutter == 0) {
            D_800FD4B0_CrazyCutter = 1;
            func_800F978C_CrazyCutter();
            arg0->func_ptr = &func_800F97C8_CrazyCutter;
        }
    }
}

void func_800F6938_CrazyCutter(f32 arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6) {
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

void func_800F69EC_CrazyCutter(Object* arg0) {
    D_800FD468_CrazyCutter--;
    if (D_800FD468_CrazyCutter == 0) {
        D_800FD464_CrazyCutter = 1;
        omAddObj(4, 10, 10, 4, &func_800F94C0_CrazyCutter);
        omAddObj(4, 10, 10, 4, &func_800F94DC_CrazyCutter);
        omAddObj(4, 10, 10, 4, &func_800F94F8_CrazyCutter);
        omAddObj(4, 10, 10, 4, &func_800F9514_CrazyCutter);
        omAddObj(0, 0, 0, -1, &func_800F686C_CrazyCutter);
        omAddObj(2, 1, 1, -1, &func_800F6B04_CrazyCutter);
        SetFadeInTypeAndTime(0, 16);
        omDelObj(arg0);
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD010_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F6B04_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F6F00_CrazyCutter);

#ifdef NON_EQUIVALENT
void func_800F7180_CrazyCutter(omObjData* arg0) {
    s32 i;
    
    if (D_800FD554_CrazyCutter == 0) {
        D_800FD460_CrazyCutter++;
        if (D_800FD544_CrazyCutter == 4) {
            if (D_800FD460_CrazyCutter == 15) {
                func_80060128(55);
            }
            
            if (D_800FD460_CrazyCutter == 55) {
                for (i = 0; i < 4; i++) {
                    func_800FAACC_CrazyCutter(i, 2, 1);
                }
            }
            
            if (D_800FD460_CrazyCutter == 90) {
                arg0->func_ptr = &func_800FA9D8_CrazyCutter;
            }
            
        } else if (D_800FD544_CrazyCutter == 0) {
            if (D_800FD460_CrazyCutter == 1) {
                func_80060128(52);
                for (i = 0; i < 4; i++) {
                    func_800FAACC_CrazyCutter(i, 4, 1);
                }
            } else {
                if (D_800FD460_CrazyCutter == 90) {
                    arg0->func_ptr = &func_800FA9D8_CrazyCutter;
                }
            }
        } else {
            if (D_800FD460_CrazyCutter == 15) {
                func_80060128(0x3C);
            }
            if (D_800FD460_CrazyCutter == 0x37) {
                for (i = 0; i < 4; i++) {
                    if (func_800FAAB0_CrazyCutter(i, 0x10000) != 0) {
                        func_800FAACC_CrazyCutter(i, 2, 1);
                    } else {
                        func_800FAACC_CrazyCutter(i, 4, 1);
                    }                    
                }
            }
            
            if (D_800FD460_CrazyCutter == 80) {
                arg0->func_ptr = &func_800FA9D8_CrazyCutter;
            }
        }
    } else {
        arg0->func_ptr = &func_800FA9D8_CrazyCutter;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F7180_CrazyCutter);
#endif

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD028_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD040_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD050_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F731C_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F8144_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F8598_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F8F74_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F8FDC_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F90E4_CrazyCutter);

void func_800F94C0_CrazyCutter(s32 arg0) {
    func_800F731C_CrazyCutter(arg0, 0);
}

void func_800F94DC_CrazyCutter(s32 arg0) {
    func_800F731C_CrazyCutter(arg0, 1);
}

void func_800F94F8_CrazyCutter(s32 arg0) {
    func_800F731C_CrazyCutter(arg0, 2);
}

void func_800F9514_CrazyCutter(s32 arg0) {
    func_800F731C_CrazyCutter(arg0, 3);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F9530_CrazyCutter);

void func_800F9654_CrazyCutter(s32 arg0) {
    if (D_800F5144 != 0) {
        func_8006071C(D_800FD5C6_CrazyCutter);
        func_800601D4(40);
        omOvlReturnEx(1);
    }
}

void func_800F9694_CrazyCutter(Vec3f* arg0, s16 arg1[], s32 arg2) {
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

void func_800F978C_CrazyCutter(void) {
    D_800FD14E_CrazyCutter = 30;
    D_800FD150_CrazyCutter = 30;
    func_80075CCC(8, 30, 160, 32);
}

void func_800F97C8_CrazyCutter(omObjData* arg0) {
    s32 i;
    s32 temp;

    D_800FD150_CrazyCutter -= 1;
    if (D_800FD150_CrazyCutter == 0) {
        D_800FD150_CrazyCutter = 30;
        D_800FD14E_CrazyCutter--;
    }

    func_80079078(D_800FD14E_CrazyCutter);
    temp = 0;
    for (i = 0; i < 4; i++) {
        temp += func_800FAAB0_CrazyCutter(i, 1);
    }

    if ((D_800FD14E_CrazyCutter == 0) | (temp == 4)) {
        func_800790C0();
        func_800601D4(40);
        func_8006071C(D_800FD5C6_CrazyCutter);
        arg0->func_ptr = &func_800FA56C_CrazyCutter;
    }
}

void func_800F98B4_CrazyCutter(unkCrazyCutter_00* arg0) {
    D_800FD488_CrazyCutter[arg0->unk_30] = 1;
    D_800FD558_CrazyCutter[arg0->unk_30] = D_800FCCF0_CrazyCutter[arg0->unk_30] + arg0->unk_00;
    D_800FD568_CrazyCutter[arg0->unk_30] = arg0->unk_04;
    D_800FD578_CrazyCutter[arg0->unk_30] = D_800FCD00_CrazyCutter[arg0->unk_30] + arg0->unk_08 + -4.0f;
    D_800FD5C8_CrazyCutter = PlaySound(0x237);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F9968_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800F9D98_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FA38C_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FA56C_CrazyCutter);

void func_800FA808_CrazyCutter(omObjData* arg0) {
    if (func_80075FE0() == 0 || func_80075FE0() & 2) {
        if (D_800FD590_CrazyCutter == 0) {
            func_800FBB2C_CrazyCutter();
            D_800FD590_CrazyCutter += 1;
        }
        arg0->func_ptr = &func_800FA880_CrazyCutter;
    }
}

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD06C_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD078_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD084_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD094_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0A4_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0B0_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0BC_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0C8_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0D4_CrazyCutter);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", D_800FD0E0_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FA880_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FA9D8_CrazyCutter);

void func_800FAA18_CrazyCutter(Object* arg0) {
    s32 i;

    if (func_80072718() == 0) {
        for (i = 0; i < 4; i++) {
            if (func_800FAAB0_CrazyCutter(i, 0x4000) == 0) {
                gPlayers[i].miniGameCoins += 10; 
            }
        }
        func_800601D4(0x28);
        omOvlReturnEx(1);
        omDelObj(arg0);
    }
}

s32 func_800FAAB0_CrazyCutter(s32 arg0, s32 arg1) {
    return (arg1 & D_800FD4D8_CrazyCutter[arg0]) != 0;
}

void func_800FAACC_CrazyCutter(s32 arg0, s32 arg1, s32 arg2) {
    if (arg2 != 0) {
        D_800FD4D8_CrazyCutter[arg0] = arg1 | D_800FD4D8_CrazyCutter[arg0];
    } else {
        D_800FD4D8_CrazyCutter[arg0] = ~arg1 & D_800FD4D8_CrazyCutter[arg0];
    }
}
INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FAB0C_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FAC38_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FAF8C_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FB2B8_CrazyCutter);

void func_800FB450_CrazyCutter(s32 arg0) {
    s8 temp_s1;
    s8 temp_s0;

    if (arg0 != D_800FD530_CrazyCutter) {
        D_800FD530_CrazyCutter = arg0;
        temp_s1 = InitSprite(arg0 | 0x1F0000);
        temp_s0 = func_80064EF4(1, 0);
        func_8006752C(temp_s0, 0, 0xFF);
        func_80067480(temp_s0, 0, 0xFFFF);
        func_800674BC(temp_s0, 0, 0x9000);
        func_80067354(temp_s0, 0, 1.0f, 1.0f);
        func_800672B0(temp_s0, 0, 1);
        func_80067208(temp_s0, 0, temp_s1, 0);
        D_800FD518_CrazyCutter = func_800FC4F0_CrazyCutter(temp_s0, 0, &D_800FD520_CrazyCutter, &D_800FD524_CrazyCutter);
        func_80064D38(temp_s0);
    }
}

void func_800FB548_CrazyCutter(s32 arg0) {
    s8 temp_s1;
    s8 temp_s0;

    if (arg0 != D_800FD538_CrazyCutter) {
        D_800FD538_CrazyCutter = arg0;
        temp_s1 = InitSprite(arg0 | 0x1F0000);
        temp_s0 = func_80064EF4(1, 0);
        func_8006752C(temp_s0, 0, 0xFF);
        func_80067480(temp_s0, 0, 0xFFFF);
        func_800674BC(temp_s0, 0, 0x9000);
        func_80067354(temp_s0, 0, 1.0f, 1.0f);
        func_800672B0(temp_s0, 0, 1);
        func_80067208(temp_s0, 0, temp_s1, 0);
        D_800FD51C_CrazyCutter = func_800FC4F0_CrazyCutter(temp_s0, 0, &D_800FD528_CrazyCutter, &D_800FD52C_CrazyCutter);
        func_80064D38(temp_s0);
    }
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FB640_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FB778_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FB944_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FBAFC_CrazyCutter);

void func_800FBB2C_CrazyCutter(void) {
    omObjData* temp_s0;
    s32* temp_v0;

    temp_s0 = omAddObj(0xC, 0, 0, -1, &func_800FBB94_CrazyCutter);
    temp_v0 = func_80023684(sizeof(s32), 0x7918);
    temp_s0->unk_50 = temp_v0;
    *temp_v0 = 90;
    D_800FD5C0_CrazyCutter = PlaySound(0x1C0);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FBB94_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FBEA8_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FBFB4_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FC024_CrazyCutter);

void func_800FC240_CrazyCutter(s16 arg0) {
    s16 i;
    
    for (i = 0; i < 4; i++) {
        func_800674BC(arg0, i, 0x8000);
    }
}


INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/1250D0", func_800FC29C_CrazyCutter);

void func_800FC45C_CrazyCutter(s16 arg0, s16 arg1) {
    s16 i = 0;
    
    for (i = 0; i < 4; i++) {
        func_80067354(arg0, i, arg1 / 10.0f, arg1 / 10.0f);
    }
}
