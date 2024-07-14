#include "common.h"

void func_800F6744_name_76(void);
void func_800F6760_name_76(void);
void func_800F678C_name_76(void);

board_overlay_entrypoint D_800F69C0_name_76[] = {
    {2, func_800F6744_name_76},
    {5, func_800F6760_name_76},
    {6, func_800F678C_name_76},
    {-1, 0},
};

void func_800F65E0_name_76(void) {
    ExecBoardScene(D_800F69C0_name_76, D_800C597A);
}