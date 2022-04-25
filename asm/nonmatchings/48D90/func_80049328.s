	.set noat
	.set noreorder

glabel func_80049328
/* 49F28 80049328 3C02800D */  lui        $v0, %hi(D_800D670C)
/* 49F2C 8004932C 03E00008 */  jr         $ra
/* 49F30 80049330 8C42670C */   lw        $v0, %lo(D_800D670C)($v0)
