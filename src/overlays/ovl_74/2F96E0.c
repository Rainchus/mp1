#include "common.h"

void func_800F6758_name_74(void);
void func_800F6774_name_74(void);
void func_800F67A0_name_74(void);

board_overlay_entrypoint D_800F6EE0_name_74[] = {
    {2, func_800F6758_name_74},
    {5, func_800F6774_name_74},
    {6, func_800F67A0_name_74},
    {-1, 0}
};

void func_800F65E0_name_74(void) {
    ExecBoardScene(D_800F6EE0_name_74, D_800C597A);
}