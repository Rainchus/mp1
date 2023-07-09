#include "common.h"

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", LoadSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", FreeSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", LoadInitialSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", FreeSpaceTexturesWrapper);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", ChangeSpaceTextures);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", RenderSpaces);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetSpaceDataStream);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", LoadBoardSpaces);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", FreeBoardSpaces);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetSpaceData);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetAbsSpaceIndexFromChainSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetChainLength);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetChainSpaceIndexFromAbsSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetRandomSpaceOfTypeInChain);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetRandomSpaceOfType);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceType);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceTypeInChain);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SpaceStepAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceStepAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SpaceDisappearAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceDisappearAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SpaceSpawnAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceSpawnAnim);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetSpaceEventList);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", EventTableHydrate);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", ExecuteEventForSpace);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetEventReturnFlag);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", SetCurrentSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetCurrentSpaceIndex);

INCLUDE_ASM("asm/nonmatchings/../src/engine/spaces", GetRandomChanceSpace);
