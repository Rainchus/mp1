#include "common.h"

void func_800F66AC_24180C(void);

void func_800F6610_241770(void) {
    if (IsFlagSet(0) != 0) {
        SetBoardFeatureFlag(0x41);
    } else {
        ClearBoardFeatureFlag(0x41);
    }
    InitObjSystem(0xA, 0);
    func_800567D4();
    omOvlGotoEx(0x35, 1, 0x92);
    omOvlHisChg(0, 0x35, 1, 0x92);
}

void func_800F6684_2417E4(void) {
    InitObjSystem(10, 0);
    func_800568A4();
}

void func_800F66AC_24180C(void) {
    omOvlReturnEx(1);
    omOvlKill();
    HuPrcVSleep();
}

void func_800F66D8_241838(void) {
    InitObjSystem(10, 10);
    func_80060088();
    InitProcess(&func_800F66AC_24180C, 0x1005, 0, 0);
}
