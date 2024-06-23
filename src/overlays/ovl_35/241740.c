#include "common.h"
#include "241740.h"

extern board_overlay_entrypoint D_800F6720[];
// board_overlay_entrypoint D_800F6720[] = {
//     {0, &func_800F6684_2417E4},
//     {1, &func_800F6684_2417E4},
//     {2, &func_800F66D8_241838},
//     {-1, 0},
// };

void func_800F65E0_241740(void) {
    ExecBoardScene(D_800F6720, D_800C597A);
}