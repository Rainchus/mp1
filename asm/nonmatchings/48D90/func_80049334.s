	.set noat
	.set noreorder

glabel func_80049334
/* 49F34 80049334 3C02800D */  lui        $v0, %hi(D_800D6710)
/* 49F38 80049338 03E00008 */  jr         $ra
/* 49F3C 8004933C 8C426710 */   lw        $v0, %lo(D_800D6710)($v0)
