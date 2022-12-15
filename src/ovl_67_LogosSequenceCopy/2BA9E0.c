#include "common.h"
#include "logos.h"

extern board_overlay_entrypoint D_800F6F50[];

// board_overlay_entrypoint D_800F6F50[] = {
//     {0, func_800F6AD4_2BAED4},
//     {1, func_800F6E10_2BB210},
//     {-1, 0},
// };

void func_800F65E0_2BA9E0(void) {
    ExecBoardScene(&D_800F6F50, D_800C597A);
}
