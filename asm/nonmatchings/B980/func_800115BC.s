	.set noat
	.set noreorder

glabel func_800115BC
/* 121BC 800115BC 3C02800D */  lui        $v0, %hi(D_800CEAA0)
/* 121C0 800115C0 03E00008 */  jr         $ra
/* 121C4 800115C4 8C42EAA0 */   lw        $v0, %lo(D_800CEAA0)($v0)
