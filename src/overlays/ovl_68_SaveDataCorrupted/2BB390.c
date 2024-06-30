#include "common.h"

void func_800F67C0_SaveDataCorrupted(void);

board_overlay_entrypoint D_800F6800_SaveDataCorrupted[] = {
    {0, &func_800F67C0_SaveDataCorrupted},
    {-1, 0},
};

void func_800F65E0_SaveDataCorrupted(void) {
    ExecBoardScene(D_800F6800_SaveDataCorrupted, D_800C597A);
}
