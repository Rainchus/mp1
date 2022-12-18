#include "2BB5C0.h"

void func_800F6610_2BB5F0(void);

// board_overlay_entrypoint D_800F9930[] = {
//     {0, &func_800F6610_2BB5F0},
//     {-1, NULL},
// };

extern board_overlay_entrypoint D_800F9930[];

void func_800F65E0_2BB5C0(void) {
    ExecBoardScene(&D_800F9930, D_800C597A);
}