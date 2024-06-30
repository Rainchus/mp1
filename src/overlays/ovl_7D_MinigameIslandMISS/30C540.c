#include "common.h"

typedef struct unkMissStruct {
/* 0x00 */ s16 unk_00;
} unkMissStruct;

extern unkMissStruct D_800F91B0_MinigameIslandMISS[56];

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F65E0_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F6708_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F67A4_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7608_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7638_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7724_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7804_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7848_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F78E8_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F790C_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F795C_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7C7C_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F7D64_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8038_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8180_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F82C8_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8448_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F85C8_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8768_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8898_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8E30_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F8F8C_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F9008_MinigameIslandMISS);

INCLUDE_ASM("asm/nonmatchings/overlays/ovl_7D_MinigameIslandMISS/30C540", func_800F9020_MinigameIslandMISS);

s32 func_800F90F0_MinigameIslandMISS(s16 arg0) {
    return (D_800F91B0_MinigameIslandMISS[arg0].unk_00 > gPlayers[0].miniGameCoins) ^ 1;
}
