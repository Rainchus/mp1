	.set noat
	.set noreorder

glabel func_8000B340
/* BF40 8000B340 3C02800D */  lui        $v0, %hi(D_800CDAC0)
/* BF44 8000B344 03E00008 */  jr         $ra
/* BF48 8000B348 8C42DAC0 */   lw        $v0, %lo(D_800CDAC0)($v0)
