#include "common.h"

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003D960_3E560);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003D990_3E590);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003D9B8_3E5B8);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DA04_3E604);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DA58_3E658);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DAA8_3E6A8);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DADC_3E6DC);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DB1C_3E71C);

INCLUDE_ASM("asm/nonmatchings/3E560", CreateObject);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003DE60_3EA60);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E040_3EC40);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E174_3ED74);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E1BC_3EDBC);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E320_3EF20);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E58C_3F18C);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E5E0_3F1E0);

void func_8003E610_3F210(Object* arg0) {
    func_800258EC_264EC(*arg0->unk_3C->unk_40, 4, 4);
    if (arg0->unk_40 != NULL) {
        func_800258EC_264EC(*arg0->unk_40->unk_40, 4, 4);
    }
}

void func_8003E664_3F264(Object* arg0) {
    func_8003E610_3F210(arg0);
    arg0->unk_0A &= ~8;
}

INCLUDE_ASM("asm/nonmatchings/3E560", DestroyObject);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E7E4_3F3E4);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E81C_3F41C);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E8B8_3F4B8);

INCLUDE_ASM("asm/nonmatchings/3E560", func_8003E940_3F540);
