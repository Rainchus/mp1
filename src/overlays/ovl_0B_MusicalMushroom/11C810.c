#include "MusicalMushroom.h"

//800FB4D0 state of game (4 means players can move)

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F65E0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F6D40_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F6D8C_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F6E98_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F6F60_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F71C8_MusicalMushroom);

void func_800F71E4_MusicalMushroom(void) {
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F71EC_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F7338_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F7484_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F7508_MusicalMushroom);

INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", D_800FB520_MusicalMushroom);
extern u32 D_800FB4D0_MusicalMushroom;
void func_800F75D8_MusicalMushroom(omObjData* arg0) { //matches but needs rodata support
    //line 1 was: unkGlobalStruct_00* temp_s1 = arg0->unk_50; but i think global struct 00 and 01 are the same struct
    unkGlobalStruct_00* temp_s1 = arg0->unk_50;
    f32* temp_a1 = &D_800FB778_MusicalMushroom[arg0->work[0]];

    switch (D_800FB4D0_MusicalMushroom) {
    case 1:
        func_80009624(temp_s1, 0);
        D_800FB4D0_MusicalMushroom = 2;
        break;
    case 2:
        func_800F7508_MusicalMushroom(arg0, temp_a1);
        break;
    case 3:
        func_8006071C(temp_s1->unk_B3);
        
        if (arg0->work[0] == (D_800F2BC0 - 1)) {
            D_800FB4D0_MusicalMushroom = 4;
        }
        arg0->rot.y += 90.0f;
        temp_s1->unk_3C = arg0->rot.y;
        /* fall through */
    case 0:
        func_800184BC(arg0, 0);
        break;
    case 4:
        arg0->rot.y = 0.0f;
        func_80009458();
        break;
    }
    func_80017DB0(arg0);
    func_800F7484_MusicalMushroom(arg0, 1.0f, 0, 1);
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F76E8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F78A8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F79FC_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F7B84_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F7D1C_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F83BC_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8830_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8898_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8910_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8AC4_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8D20_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F8EE0_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F91C8_MusicalMushroom);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0B_MusicalMushroom/11C810", func_800F9338_MusicalMushroom);

