#include "common.h"

void func_800F6610_MinigameIslandOverworld(void);
void func_800F6668_MinigameIslandOverworld(void);

board_overlay_entrypoint D_800F6690_MinigameIslandOverworld[] = {
    {0, func_800F6610_MinigameIslandOverworld},
    {1, func_800F6668_MinigameIslandOverworld},
    {-1, 0},
};

void func_800F65E0_MinigameIslandOverworld(void) {
    ExecBoardScene(&D_800F6690_MinigameIslandOverworld, D_800C597A);
}

