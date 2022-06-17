#include "common.h"
#include "1250D0.h"

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F65E0_1250D0);

void func_800F686C_12535C(Object* arg0) {
    D_800FD460--;
    if (D_800FD460 == 0) {
        D_800FD460 = 20;
        func_80075CCC(0);
        arg0->func_ptr = (*func_800F68C4_1253B4);
    }
}

void func_800F68C4_1253B4(Object* arg0) {
    if (func_80075FE0() == 0 || func_80075FE0() & 2) {
        D_800FD460--;
        if (D_800FD460 == 0) {
            D_800FD4B0 = 1;
            func_800F978C_12827C();
            arg0->func_ptr = (*func_800F97C8_1282B8);
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

void func_800F69EC_1254DC(s32 arg0) {
    D_800FD468--;
    if (D_800FD468 == 0) {
        D_800FD464 = 1;
        func_8005D384(4, 10, 10, 4, (*func_800F94C0_127FB0));
        func_8005D384(4, 10, 10, 4, (*func_800F94DC_127FCC));
        func_8005D384(4, 10, 10, 4, (*func_800F94F8_127FE8));
        func_8005D384(4, 10, 10, 4, (*func_800F9514_128004));
        func_8005D384(0, 0, 0, -1, (*func_800F686C_12535C));
        func_8005D384(2, 1, 1, -1, (*func_800F6B04_1255F4));
        func_80072644(0, 16);
        func_8005D718(arg0);
    }
}

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F6B04_1255F4);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F6F00_1259F0);

#ifdef NON_EQUIVALENT
void func_800F7180_125C70(Object* arg0) {
    s32 i;
    
    if (D_800FD554 == 0) {
        D_800FD460++;
        if (D_800FD544 == 4) {
            if (D_800FD460 == 15) {
                func_80060128(55);
            }
            
            if (D_800FD460 == 55) {
                for (i = 0; i < 4; i++) {
                    func_800FAACC_1295BC(i, 2, 1);
                }
            }
            
            if (D_800FD460 == 90) {
                arg0->func_ptr = &func_800FA9D8_1294C8;
            }
            
        } else if (D_800FD544 == 0) {
            if (D_800FD460 == 1) {
                func_80060128(52);
                for (i = 0; i < 4; i++) {
                    func_800FAACC_1295BC(i, 4, 1);
                }
            } else {
                if (D_800FD460 == 90) {
                    arg0->func_ptr = &func_800FA9D8_1294C8;
                }
            }
        } else {
            if (D_800FD460 == 15) {
                func_80060128(0x3C);
            }
            if (D_800FD460 == 0x37) {
                for (i = 0; i < 4; i++) {
                    if (func_800FAAB0_1295A0(i, 0x10000) != 0) {
                        func_800FAACC_1295BC(i, 2, 1);
                    } else {
                        func_800FAACC_1295BC(i, 4, 1);
                    }                    
                }
            }
            
            if (D_800FD460 == 80) {
                arg0->func_ptr = &func_800FA9D8_1294C8;
            }
        }
    } else {
        arg0->func_ptr = &func_800FA9D8_1294C8;
    }
}
#else
INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F7180_125C70);
#endif

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F731C_125E0C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F8144_126C34);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F8598_127088);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F8F74_127A64);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F8FDC_127ACC);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F90E4_127BD4);

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

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F9530_128020);

void func_800F9654_128144(s32 arg0) {
    if (D_800F5144 != 0) {
        func_8006071C(D_800FD5C6);
        func_800601D4(40);
        func_8005DFB8(1);
    }
}

void func_800F9694_128184(s32 arg0, s16 arg1[], s32 arg2) {
    f32 sp10[2];

    func_8001D934(0, arg0, sp10);
    arg1[0] = sp10[0];
    arg1[1] = sp10[1];
    
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
    D_800FD14E = 30;
    D_800FD150 = 30;
    func_80075CCC(8, 30, 160, 32);
}

void func_800F97C8_1282B8(Object* arg0) {
    s32 i;
    s32 temp;

    D_800FD150 -= 1;
    if (D_800FD150 == 0) {
        D_800FD150 = 30;
        D_800FD14E--;
    }

    func_80079078(D_800FD14E);
    temp = 0;
    for (i = 0; i < 4; i++) {
        temp += func_800FAAB0_1295A0(i, 1);
    }

    if ((D_800FD14E == 0) | (temp == 4)) {
        func_800790C0();
        func_800601D4(40);
        func_8006071C(D_800FD5C6);
        arg0->func_ptr = &func_800FA56C_12905C;
    }
}

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F98B4_1283A4);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F9968_128458);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800F9D98_128888);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FA38C_128E7C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FA56C_12905C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FA808_1292F8);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FA880_129370);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FA9D8_1294C8);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAA18_129508);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAAB0_1295A0);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAACC_1295BC);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAB0C_1295FC);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAC38_129728);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FAF8C_129A7C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB2B8_129DA8);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB450_129F40);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB548_12A038);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB640_12A130);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB778_12A268);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FB944_12A434);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FBAFC_12A5EC);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FBB2C_12A61C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FBB94_12A684);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FBEA8_12A998);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FBFB4_12AAA4);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC024_12AB14);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC240_12AD30);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC29C_12AD8C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC45C_12AF4C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC4F0_12AFE0);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC70C_12B1FC);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC8C0_12B3B0);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC998_12B488);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FC9F4_12B4E4);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FCA20_12B510);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FCAAC_12B59C);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FCC64_12B754);

INCLUDE_ASM(s32, "ovl_0D_CrazyCutter/1250D0", func_800FCCC8_12B7B8);
