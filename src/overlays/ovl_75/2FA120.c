#include "common.h"

void func_800F6748_name_75(void);
void func_800F6764_name_75(void);
void func_800F6790_name_75(void);

board_overlay_entrypoint D_800F6C20_name_75[] = {
    {2, func_800F6748_name_75},
    {5, func_800F6764_name_75},
    {6, func_800F6790_name_75},
    {-1, 0}
};

void func_800F65E0_name_75(void) {
    ExecBoardScene(D_800F6C20_name_75, D_800C597A);
}