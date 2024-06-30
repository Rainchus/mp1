#include "common.h"
#include "311E90.h"

board_overlay_entrypoint D_800F6F10_MinigameStadiumStart[] = {
    {0, func_800F6610_MinigameStadiumStart},
    {1, func_800F6654_MinigameStadiumStart},
    {2, func_800F67B8_MinigameStadiumStart},
    {3, func_800F67F8_MinigameStadiumStart},
    {-1, 0}
};


void func_800F65E0_MinigameStadiumStart(void) {
    ExecBoardScene(D_800F6F10_MinigameStadiumStart, D_800C597A);
}
