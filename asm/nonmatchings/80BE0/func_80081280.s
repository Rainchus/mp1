	.set noat
	.set noreorder

glabel func_80081280
/* 81E80 80081280 3C02800E */  lui        $v0, %hi(D_800E7AB4)
/* 81E84 80081284 03E00008 */  jr         $ra
/* 81E88 80081288 8C427AB4 */   lw        $v0, %lo(D_800E7AB4)($v0)
