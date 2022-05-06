#include "common.h"
#include "11C810.h"

//800FB4D0 state of game (4 means players can move)

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F65E0_11C810);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F6D40_11CF70);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F6D8C_11CFBC);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F6E98_11D0C8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F6F60_11D190);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F71C8_11D3F8);

void func_800F71E4_11D414(void) {
}

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F71EC_11D41C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F7338_11D568);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F7484_11D6B4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F7508_11D738);

#ifdef NON_MATCHING
void func_800F75D8_11D808(Object* arg0) { //matches but needs rodata support
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    f32* temp_a1 = &D_800FB778_D2BE8[arg0->unk_4C];

    switch (D_800FB4D0) {
    case 1:
        func_80009624(temp_s1, 0);
        D_800FB4D0 = 2;
        break;
    case 2:
        func_800F7508_11D738(arg0, temp_a1);
        break;
    case 3:
        func_8006071C(temp_s1->unk_B3, temp_a1);
        
        if (arg0->unk_4C == (D_800F2BC0 - 1)) {
            D_800FB4D0 = 4;
        }
        arg0->unk_28 = arg0->unk_28 + 90.0f;
        temp_s1->unk_3C = arg0->unk_28;
        /* fall through */
    case 0:
        func_800184BC(arg0, 0);
        break;
    case 4:
        arg0->unk_28 = 0.0f;
        func_80009458();
        break;
    }
    func_80017DB0(arg0);
    func_800F7484_11D6B4(arg0, 1.0f, 0, 1);
}
#else
INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F75D8_11D808);
#endif

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F76E8_11D918);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F78A8_11DAD8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F79FC_11DC2C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F7B84_11DDB4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F7D1C_11DF4C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F83BC_11E5EC);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8830_11EA60);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8898_11EAC8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8910_11EB40);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8AC4_11ECF4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8D20_11EF50);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F8EE0_11F110);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F91C8_11F3F8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F9338_11F568);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F9660_11F890);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F9D70_11FFA0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F9EFC_12012C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800F9FE0_120210);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA0A0_1202D0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA0B0_1202E0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA170_1203A0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA2F4_120524);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA7C8_1209F8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FA914_120B44);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAAA0_120CD0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FABE8_120E18);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAC38_120E68);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAC58_120E88);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FACA4_120ED4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FACF4_120F24);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAD50_120F80);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FADAC_120FDC);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAE08_121038);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAE74_1210A4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAEE0_121110);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAF4C_12117C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FAFB8_1211E8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB028_121258);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB098_1212C8);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB108_121338);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB180_1213B0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB1F0_121420);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB240_121470);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB290_1214C0);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB2E4_121514);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB338_121568);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB384_1215B4);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB3D0_121600);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB41C_12164C);

INCLUDE_ASM(s32, "ovl_0B_MusicalMushroom/11C810", func_800FB468_121698);
