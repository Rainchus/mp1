#include "common.h"
#include "2592A0.h"

void func_800F65E0_2592A0(void) {
    D_800F71F0_222F30 = D_800ED5C3;
    func_8005CF30(0x32, 0xA);
    func_800F7034_259CF4();
    func_800F6FA8_259C68();
    func_800544E4();
    func_80054834(0, 0x1C);
    func_80054834(1, 0x1C);
    func_80054834(2, 0x1C);
    func_80054834(3, 0x1C);
    func_8006CEA0();
    func_8005DC28((*func_800F66AC_25936C), 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, (*func_800F6F5C_259C1C));
    func_80060128(0x13);
    func_80072644(1, 0x10);
}

INCLUDE_ASM(s32, "ovl_3F_Last5Turns/2592A0", func_800F66AC_25936C);

void func_800F6F10_259BD0(void) {
    if (func_80072718() == 0) {
        func_800F70E8_259DA8();
        func_800F700C_259CCC();
        func_80054654();
        func_80070ED4();
        func_8005DFB8(1);
    }
}

void func_800F6F5C_259C1C(Object* obj) {
    if (D_800F5144 != 0) {
        func_800726AC(1, 0x10);
        func_800601D4(0x20);
        obj->func_ptr = (*func_800F6F10_259BD0);
    }
}

void func_800F6FA8_259C68(void) {
    func_8003DAA8();
    D_800F71F4_1DA2A4 = func_8003DBE0(8, &D_800F7154);
    D_800F71F4_1DA2A4->pos.x = D_800F7130.x;
    D_800F71F4_1DA2A4->pos.y = D_800F7130.y;
    D_800F71F4_1DA2A4->pos.z = D_800F7130.z;
    func_8004F140(*D_800F71F4_1DA2A4->unk_3C->unk_40);
}

void func_800F700C_259CCC(void) {
    func_8003E694(D_800F71F4_1DA2A4);
    func_8004F1D0();
}

void func_800F7034_259CF4(void) {
    func_800178A0(1);
    func_80017660(0, 0.0f, 0.0f, 320.0f, 240.0f);
    func_800176C4(0, 640.0f, 480.0f, 511.0f, 640.0f, 480.0f, 511.0f);
    func_80049E70(&D_FE2310);
    func_80049F4C(D_800F7110_111AC0[D_800F71F0_222F30]);
}

void func_800F70E8_259DA8(void) {
    func_8004A140();
    func_80049F0C();
}
