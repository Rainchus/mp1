#include "common.h"

INCLUDE_ASM(s32, "3E560", func_8003D960);

INCLUDE_ASM(s32, "3E560", func_8003D990);

INCLUDE_ASM(s32, "3E560", func_8003D9B8);

INCLUDE_ASM(s32, "3E560", func_8003DA04);

INCLUDE_ASM(s32, "3E560", func_8003DA58);

INCLUDE_ASM(s32, "3E560", func_8003DAA8);

INCLUDE_ASM(s32, "3E560", func_8003DADC);

INCLUDE_ASM(s32, "3E560", func_8003DB1C);

INCLUDE_ASM(s32, "3E560", CreateObject);

INCLUDE_ASM(s32, "3E560", func_8003DE60);

INCLUDE_ASM(s32, "3E560", func_8003E040);

INCLUDE_ASM(s32, "3E560", func_8003E174);

INCLUDE_ASM(s32, "3E560", func_8003E1BC);

INCLUDE_ASM(s32, "3E560", func_8003E320);

INCLUDE_ASM(s32, "3E560", func_8003E58C);

INCLUDE_ASM(s32, "3E560", func_8003E5E0);

void func_8003E610(Object* arg0) {
    func_800258EC(*arg0->unk_3C->unk_40, 4, 4);
    if (arg0->unk_40 != NULL) {
        func_800258EC(*arg0->unk_40->unk_40, 4, 4);
    }
}

void func_8003E664(Object* arg0) {
    func_8003E610(arg0);
    arg0->unk_0A &= ~8;
}

INCLUDE_ASM(s32, "3E560", DestroyObject);

INCLUDE_ASM(s32, "3E560", func_8003E7E4);

INCLUDE_ASM(s32, "3E560", func_8003E81C);

INCLUDE_ASM(s32, "3E560", func_8003E8B8);

INCLUDE_ASM(s32, "3E560", func_8003E940);
