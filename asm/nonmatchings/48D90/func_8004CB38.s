	.set noat
	.set noreorder

glabel func_8004CB38
/* 4D738 8004CB38 3C02800F */  lui        $v0, %hi(D_800ED5E0)
/* 4D73C 8004CB3C 03E00008 */  jr         $ra
/* 4D740 8004CB40 8442D5E0 */   lh        $v0, %lo(D_800ED5E0)($v0)
