#include "common.h"

extern void func_800F6A80_MariosRainbowCastle(void);
extern void func_800F6ABC_MariosRainbowCastle(void);
extern void func_800F6C50_MariosRainbowCastle(void);
extern void func_800F6CE8_MariosRainbowCastle(void);
extern void func_800F7F00_MariosRainbowCastle(void);

board_overlay_entrypoint D_800F7F60_MariosRainbowCastle[] = {
{0, func_800F6A80_MariosRainbowCastle},
{1, func_800F6ABC_MariosRainbowCastle},
{2, func_800F6C50_MariosRainbowCastle},
{3, func_800F6CE8_MariosRainbowCastle},
{4, func_800F7F00_MariosRainbowCastle},
{-1, 0}
};

void func_800F65E0_MariosRainbowCastle(void) {
    ExecBoardScene(D_800F7F60_MariosRainbowCastle, D_800C597A);
}