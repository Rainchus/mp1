	.set noat
	.set noreorder

glabel func_800633A8
/* 63FA8 800633A8 3C02800E */  lui        $v0, %hi(D_800E23D0)
/* 63FAC 800633AC 03E00008 */  jr         $ra
/* 63FB0 800633B0 8C4223D0 */   lw        $v0, %lo(D_800E23D0)($v0)
