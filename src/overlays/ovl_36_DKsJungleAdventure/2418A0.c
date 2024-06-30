#include "common.h"

void func_800F6F0C_DKsJungleAdventure(void);
void func_800F6F44_DKsJungleAdventure(void);
void func_800F7190_DKsJungleAdventure(void);
void func_800F7224_DKsJungleAdventure(void);
void func_800F983C_DKsJungleAdventure(void);

board_overlay_entrypoint D_800F9890_DKsJungleAdventure[] = {
    {0, func_800F6F0C_DKsJungleAdventure},
    {1, func_800F6F44_DKsJungleAdventure},
    {2, func_800F7190_DKsJungleAdventure},
    {3, func_800F7224_DKsJungleAdventure},
    {4, func_800F983C_DKsJungleAdventure},
    {-1, 0}
};

void func_800F65E0_DKsJungleAdventure(void) {
    ExecBoardScene(D_800F9890_DKsJungleAdventure, D_800C597A);
}