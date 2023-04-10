#include "EternalStar.h"

static board_overlay_entrypoint D_800F8B80[] = {
    {0, &func_800F6D30_254BA0},
    {1, &InitBoard},
    {2, &func_800F6F68_254DD8},
    {3, &func_800F7070_254EE0},
    {4, &func_800F8B20_256990},
    {-1, 0},
};

void func_800F65E0_254450(void) {
    ExecBoardScene(&D_800F8B80, D_800C597A);
}
