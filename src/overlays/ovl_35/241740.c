#include "common.h"

void func_800F6610_name_35(void);
void func_800F6684_name_35(void);
void func_800F66D8_name_35(void);

// extern board_overlay_entrypoint D_800F6720[];
board_overlay_entrypoint D_800F6720_name_35[] = {
    {0, &func_800F6610_name_35},
    {1, &func_800F6684_name_35},
    {2, &func_800F66D8_name_35},
    {-1, 0},
};

void func_800F65E0_name_35(void) {
    ExecBoardScene(D_800F6720_name_35, D_800C597A);
}
