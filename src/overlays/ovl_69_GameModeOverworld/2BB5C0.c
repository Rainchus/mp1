#include "common.h"

void func_800F6610_GameModeOverworld(void);

board_overlay_entrypoint D_800F9930_GameModeOverworld[] = {
    {0, &func_800F6610_GameModeOverworld},
    {-1, NULL},
};

void func_800F65E0_GameModeOverworld(void) {
    ExecBoardScene(D_800F9930_GameModeOverworld, D_800C597A);
}