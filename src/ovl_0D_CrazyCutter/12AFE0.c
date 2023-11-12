#include "common.h"
#include "CrazyCutter.h"

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/12AFE0", func_800FC4F0_12AFE0);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/12AFE0", func_800FC70C_12B1FC);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/12AFE0", func_800FC8C0_12B3B0);

s32 func_800FC998_12B488(u32 arg0, s32 arg1, u32 arg2, u8* arg3, s32 arg4) { //fake match
    s32 new_var = arg4;
    s32 var_v0;
    s32 var_v1;
    u8 *temp_a3;
    temp_a3 = (arg3 + (((arg2 >> 1) + (arg2 & 1)) * arg1)) + (arg0 >> 1);
    
    if ((arg0 & 1) != 0) {
        var_v0 = (*temp_a3) & 0xF0;
        var_v1 = arg4 & 0xF;
    } else {
        var_v0 = (*temp_a3) & 0xF;
        var_v1 = arg4 * 0x10;
    }
    
    *temp_a3 = var_v0 | var_v1;
    var_v1 = new_var & 0xF;
    return 0;
}

s32 func_800FC9F4_12B4E4(s32 arg0, s32 arg1, s32 arg2, u8* arg3, u8 arg4) {
    u8 temp_v1;
    u8* temp_a3;

    temp_a3 = arg3 + (arg2 * arg1) + arg0;
    temp_v1 = *temp_a3;
    *temp_a3 = arg4;
    return *temp_a3 != temp_v1;
}

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/12AFE0", func_800FCA20_12B510);

INCLUDE_ASM("asm/nonmatchings/ovl_0D_CrazyCutter/12AFE0", func_800FCAAC_12B59C);

s32 func_800FCC64_12B754(u32 arg0, s32 arg1, u32 arg2, u8* arg3, s32 arg4) {
    s32 var_v0;
    s32 var_t0;
    s32 var_v1;
    u8* temp_a3;

    var_v1 = arg4;

    temp_a3 = arg3 + (((arg2 >> 1) + (arg2 & 1)) * arg1) + (arg0 >> 1);
    
    if ((arg0 & 1) != 0) {
        var_v0 = *temp_a3 & 0xF0;
        var_v1 = arg4 & 0xF;
    } else {
        var_v0 = *temp_a3 & 0xF;
        var_v1 = arg4 * 0x10;
    }

    var_t0 = arg4;

    if ((((var_v0 | var_v1) ^ var_t0) & 0xFF)) {
        return 1;
    } else {
        return 0;
    }
}

//name must start with mult. kmc adds a nop because of this. wont match otherwise
s32 mult_Func(s32 arg0, s32 arg1, s32 arg2, u8* arg3, u8 arg4) {
    return arg4 != *(arg3 + (arg2 * arg1) + arg0);
}
