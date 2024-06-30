#include "EternalStar.h"

static board_overlay_entrypoint D_800F8B80_EternalStar[] = {
    {0, &func_800F6D30_EternalStar},
    {1, &InitBoard},
    {2, &func_800F6F68_EternalStar},
    {3, &func_800F7070_EternalStar},
    {4, &func_800F8B20_EternalStar},
    {-1, 0},
};

void func_800F65E0_EternalStar(void) {
    ExecBoardScene(D_800F8B80_EternalStar, D_800C597A);
}