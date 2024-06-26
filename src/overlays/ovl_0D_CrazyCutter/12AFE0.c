#include "CrazyCutter.h"

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FC4F0_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FC70C_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FC8C0_CrazyCutter);

s32 func_800FC998_CrazyCutter(u32 arg0, s32 arg1, u32 arg2, u8* arg3, s32 arg4) { //fake match
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

s32 func_800FC9F4_CrazyCutter(s32 arg0, s32 arg1, s32 arg2, u8* arg3, u8 arg4) {
    u8 temp_v1;
    u8* temp_a3;

    temp_a3 = arg3 + (arg2 * arg1) + arg0;
    temp_v1 = *temp_a3;
    *temp_a3 = arg4;
    return *temp_a3 != temp_v1;
}

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FCA20_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FCAAC_CrazyCutter);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_0D_CrazyCutter/12AFE0", func_800FCC64_CrazyCutter);
// s32 func_800FCC64_CrazyCutter(u32 arg0, s32 arg1, u32 arg2, u8* arg3, s32 arg4) {
//     s32 var_v0;
//     s32 var_v1;
//     u8* temp_a3;

//     temp_a3 = arg3 + (((arg2 >> 1) + (arg2 & 1)) * arg1) + (arg0 >> 1);
//     if ((arg0 & 1) != 0) {
//         var_v0 = *temp_a3 & 0xF0;
//         var_v1 = arg4 & 0xF;
//     } else {
//         var_v0 = *temp_a3 & 0xF;
//         var_v1 = arg4 * 0x10;
//     }
//     return (((var_v0 | var_v1) ^ arg4) & 0xFF) != 0;
// }

s32 func_800FCCC8_CrazyCutter(s32 arg0, s32 arg1, s32 arg2, u8* arg3, u8 arg4) {
    return arg4 != *(arg3 + (arg2 * arg1) + arg0);
}

