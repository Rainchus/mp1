#include "common.h"
#include "E8F60.h"

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F65E0_E8F60);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F692C_E92AC);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6958_E92D8);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6D6C_E96EC);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6DCC_E974C);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6E44_E97C4);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F6EC4_E9844);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F7164_E9AE4);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F7D50_EA6D0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F7E48_EA7C8);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F815C_EAADC);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F826C_EABEC);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8334_EACB4);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F85B4_EAF34);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8760_EB0E0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F87A8_EB128);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8894_EB214);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8914_EB294);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8940_EB2C0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8978_EB2F8);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8AE8_EB468);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8BB8_EB538);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8C84_EB604);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8D1C_EB69C);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F8EF0_EB870);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9260_EBBE0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F92D4_EBC54);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9700_EC080);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9990_EC310);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9C40_EC5C0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9DCC_EC74C);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9E10_EC790);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800F9F90_EC910);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FA090_ECA10);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FA0B4_ECA34);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FA138_ECAB8);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FA90C_ED28C);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FB380_EDD00);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FB520_EDEA0);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FB62C_EDFAC);

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FB780_EE100);

void func_800FB918_EE298(void) {
}

void func_800FB920_EE2A0(void) {
}

u16 func_800FB928_EE2A8(u16 arg0) { //shared overlay func
    D_800FBE54_EE7D4 = (u32) ((D_800FBE54_EE7D4 * 0x19971204) + 0x19760831) >> 0x10;

    if (arg0 == 0) {
        return D_800FBE54_EE7D4;
    } else {
        return (D_800FBE54_EE7D4 % arg0);
    }
}

void func_800FB998_EE318(u16 randByte) {
    u16 i;
    
    for (i = 0; i < randByte; i++) {
        func_800FB928_EE2A8(0); //pass 0 to getRand function to shuffle rng
    }
}

INCLUDE_ASM(s32, "ovl_03_BuriedTreasure/E8F60", func_800FB9E8_EE368);
