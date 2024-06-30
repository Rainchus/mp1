#include "common.h"

void func_800F6AD4_LogosSequenceCopy(void);
void func_800F6E10_LogosSequenceCopy(void);

board_overlay_entrypoint D_800F6F50_LogosSequenceCopy[] = {
    {0, func_800F6AD4_LogosSequenceCopy},
    {1, func_800F6E10_LogosSequenceCopy},
    {-1, 0},
};

void func_800F65E0_LogosSequenceCopy(void) {
    ExecBoardScene(D_800F6F50_LogosSequenceCopy, D_800C597A);
}
