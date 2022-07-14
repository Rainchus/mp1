#include "common.h"

void func_800F66AC_24180C(void);

void func_800F6610_241770(void) {
    if (IsBoardFeatureFlagSet(0) != 0) {
        SetBoardFeatureFlag(0x41);
    } else {
        ClearBoardFeatureFlag(0x41);
    }
    func_8005CF30(0xA, 0);
    func_800567D4();
    func_8005E044(0x35, 1, 0x92);
    func_8005E36C(0, 0x35, 1, 0x92);
}

void func_800F6684_2417E4(void) {
    func_8005CF30(10, 0);
    func_800568A4();
}

void func_800F66AC_24180C(void) {
    func_8005DFB8(1);
    func_8005E3A8();
    SleepVProcess();
}

void func_800F66D8_241838(void) {
    func_8005CF30(10, 10);
    func_80060088();
    InitProcess((*func_800F66AC_24180C), 0x1005, 0, 0);
}
