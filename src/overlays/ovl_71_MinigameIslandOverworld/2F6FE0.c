#include "common.h"

void func_8005C208(void);
void func_8005C2B0(void);

void func_800F6610_MinigameIslandOverworld(void) {
    D_800ED5C2[0] = 0xA;
    omInitObjMan(0xA, 0);
    func_8005C208();
    omOvlGotoEx(0x71, 1, 0x92);
    omOvlHisChg(0, 0x71, 1, 0x92);
}

void func_800F6668_MinigameIslandOverworld(void) {
    omInitObjMan(0xA, 0);
    func_8005C2B0();
}