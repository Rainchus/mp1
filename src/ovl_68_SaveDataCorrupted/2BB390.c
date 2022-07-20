#include "common.h"
#include "2BB390.h"

board_overlay_entrypoint D_800F6800[] = {
    {0, &func_800F67C0_2BB570},
    {-1, 0},
};

void func_800F65E0_2BB390(void) {
    ExecBoardScene(&D_800F6800, D_800C597A);
}
