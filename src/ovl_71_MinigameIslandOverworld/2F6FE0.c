#include "common.h"

void func_8005C208(void);
void func_8005C2B0(void);
extern s16 D_800ED5C2;

void func_800F6610_2F6FE0(void) {
    D_800ED5C2 = 0xA;
    InitObjSystem(0xA, 0);
    func_8005C208();
    omOvlGotoEx(0x71, 1, 0x92);
    omOvlHisChg(0, 0x71, 1, 0x92);
}

void func_800F6668_2F7038(void) {
    InitObjSystem(0xA, 0);
    func_8005C2B0();
}
