#include "common.h"
#include "285230.h"

void func_800F65E0_285230(void) {
    D_800F6F20 = D_800ED5DD;
    func_8005CF30(50, 10);
    func_800F6E14_285A64();
    func_800F6D1C_28596C();
    func_800544E4();
    func_800546B4(0, D_800F32B0[0].turn_status);
    func_800546B4(1, D_800F32B0[1].turn_status);
    func_800546B4(2, D_800F32B0[2].turn_status);
    func_800546B4(3, D_800F32B0[3].turn_status);
    func_8006CEA0();
    func_8005DC28(&func_800F6924_285574, 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, (*func_800F6CBC_28590C));
    if (D_800C597A != 0) {
        func_80072644(6, 8);
    } else {
        func_80072644(1, 16);
    }
}

INCLUDE_ASM(s32, "ovl_47/285230", func_800F66D0_285320);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6924_285574);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6C40_285890);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6CBC_28590C);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6D1C_28596C);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6DE8_285A38);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6E14_285A64);

INCLUDE_ASM(s32, "ovl_47/285230", func_800F6EB4_285B04);
