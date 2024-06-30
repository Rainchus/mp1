#include "common.h"

void func_800F6610_FirstMap(void);
void func_800F664C_FirstMap(void);
void func_800F852C_FirstMap(void);

board_overlay_entrypoint D_800F8730_FirstMap[] = {
    {0, func_800F6610_FirstMap},
    {1, func_800F664C_FirstMap},
    {2, func_800F852C_FirstMap},
    {-1, 0}
};

void func_800F65E0_FirstMap(void) {
    ExecBoardScene(D_800F8730_FirstMap, D_800C597A);
}

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F8750_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F8788_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F8790_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F87A8_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F87D8_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F87F8_FirstMap);

// INCLUDE_RODATA("asm/nonmatchings/overlays/ovl_3E_FirstMap/256FF0", D_800F8808_FirstMap);
