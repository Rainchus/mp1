#include "common.h"

void func_800F6E44_BowsersMagmaMountain(void);
void func_800F6E80_BowsersMagmaMountain(void);
void func_800F7070_BowsersMagmaMountain(void);
void func_800F70E8_BowsersMagmaMountain(void);
void func_800F8700_BowsersMagmaMountain(void);

board_overlay_entrypoint D_800F8760_BowsersMagmaMountain[] = {
{0, func_800F6E44_BowsersMagmaMountain},
{1, func_800F6E80_BowsersMagmaMountain},
{2, func_800F7070_BowsersMagmaMountain},
{3, func_800F70E8_BowsersMagmaMountain},
{4, func_800F8700_BowsersMagmaMountain},
{-1, 0}
};

void func_800F65E0_BowsersMagmaMountain(void) {
    ExecBoardScene(D_800F8760_BowsersMagmaMountain, D_800C597A);
}
