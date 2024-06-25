#include "common.h"

INCLUDE_ASM("asm/nonmatchings/engine/spaces", LoadSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", FreeSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", LoadInitialSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", FreeSpaceTexturesWrapper);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", ChangeSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", RenderSpaces);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetSpaceDataStream);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", LoadBoardSpaces);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", FreeBoardSpaces);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetSpaceData);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetAbsSpaceIndexFromChainSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetChainLength);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetChainSpaceIndexFromAbsSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetRandomSpaceOfTypeInChain);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetRandomSpaceOfType);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceType);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceTypeInChain);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SpaceStepAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceStepAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SpaceDisappearAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceDisappearAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SpaceSpawnAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceSpawnAnim);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetSpaceEventList);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", EventTableHydrate);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", ExecuteEventForSpace);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetEventReturnFlag);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", SetCurrentSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetCurrentSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/engine/spaces", GetRandomChanceSpace);
