#include "common.h"

extern void func_800F6A80_24FF20(void);
extern void func_800F6ABC_24FF5C(void);
extern void func_800F6C50_2500F0(void);
extern void func_800F6CE8_250188(void);
extern void func_800F7F00_2513A0(void);

extern board_overlay_entrypoint D_800F7F60[];

// board_overlay_entrypoint D_800F7F60[] = {
// {0, func_800F6A80_24FF20},
// {1, func_800F6ABC_24FF5C},
// {2, func_800F6C50_2500F0},
// {3, func_800F6CE8_250188},
// {4, func_800F7F00_2513A0},
// {-1, 0}
// };

void func_800F65E0_24FA80(void) {
    ExecBoardScene(D_800F7F60, D_800C597A);
}
