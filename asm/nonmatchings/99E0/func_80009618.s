	.set noat
	.set noreorder

glabel func_80009618
/* A218 80009618 3C01800C */  lui        $at, %hi(D_800B8959)
/* A21C 8000961C 03E00008 */  jr         $ra
/* A220 80009620 A0248959 */   sb        $a0, %lo(D_800B8959)($at)
