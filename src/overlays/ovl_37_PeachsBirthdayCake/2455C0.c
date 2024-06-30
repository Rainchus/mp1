#include "common.h"

void func_800F6A80_PeachsBirthdayCake(void);
void func_800F6ABC_PeachsBirthdayCake(void);
void func_800F6CB4_PeachsBirthdayCake(void);
void func_800F6D2C_PeachsBirthdayCake(void);
void func_800F7A28_PeachsBirthdayCake(void);

board_overlay_entrypoint D_800F7A80_PeachsBirthdayCake[] = {
    {0, func_800F6A80_PeachsBirthdayCake},
    {1, func_800F6ABC_PeachsBirthdayCake},
    {2, func_800F6CB4_PeachsBirthdayCake},
    {3, func_800F6D2C_PeachsBirthdayCake},
    {4, func_800F7A28_PeachsBirthdayCake},
    {-1, 0}
};

void func_800F65E0_PeachsBirthdayCake(void) {
    ExecBoardScene(D_800F7A80_PeachsBirthdayCake, D_800C597A);
}
