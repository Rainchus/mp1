#include "common.h"
#include "28ABA0.h"

//INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F65E0_28ABA0);
void func_800F65E0_28ABA0(void) {
    D_800F76B0 = D_800ED5DD;
    func_8005CF30(50, 10);
    func_800F7550_28BB10();
    func_800F741C_28B9DC();
    func_800544E4();
    func_800546B4(0, D_800F32B0[0].turn_status);
    func_800546B4(1, D_800F32B0[1].turn_status);
    func_800546B4(2, D_800F32B0[2].turn_status);
    func_800546B4(3, D_800F32B0[3].turn_status);
    func_8006CEA0();
    func_8005DC28((*func_800F6A98_28B058), 0x300, 0, 0);
    func_8005D384(0x1000, 0, 0, -1, (*func_800F73BC_28B97C));
    if (D_800C597A != 0) {
        func_80072644(6, 8);
    } else {
        func_80072644(1, 16);
    }
}

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F66D0_28AC90);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F68C8_28AE88);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F6A98_28B058);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F7340_28B900);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F73BC_28B97C);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F741C_28B9DC);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F7524_28BAE4);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F7550_28BB10);

INCLUDE_ASM(s32, "ovl_4D_ThowmpTollYoshiBoard/28ABA0", func_800F75F0_28BBB0);
