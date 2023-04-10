#include "MusicalMushroom.h"

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
void func_800F75D8_11D808(unkObjectStruct* arg0) { //matches but needs rodata support
    //line 1 was: unkGlobalStruct_00* temp_s1 = arg0->unk_50; but i think global struct 00 and 01 are the same struct
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
        func_8006071C(temp_s1->unk_B3);
        
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

