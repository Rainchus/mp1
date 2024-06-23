#include "common.h"
#include "311E90.h"

board_overlay_entrypoint D_800F6F10_3127C0[] = {
    {0, func_800F6610_311EC0},
    {1, func_800F6654_311F04},
    {2, func_800F67B8_312068},
    {3, func_800F67F8_3120A8},
    {-1, 0}
};


void func_800F65E0_311E90(void) {
    ExecBoardScene(D_800F6F10_3127C0, D_800C597A);
}
