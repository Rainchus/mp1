#include "common.h"

typedef struct unkTesting { //unk struct of 0x28 size
    char unk_00[0x28];
} unkTesting; //sizeof 0x28
void func_800A18F0(s32, s32, unkTesting*);

INCLUDE_ASM("asm/nonmatchings/A27D0", func_800A1BD0);

void func_800A1DB0(s32 arg0, s32 arg1) {
    unkTesting sp10;

    func_800A18F0(arg0, arg1, &sp10);
}