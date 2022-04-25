	.set noat
	.set noreorder

glabel func_8000B34C
/* BF4C 8000B34C 3C02800D */  lui        $v0, %hi(D_800CDAC4)
/* BF50 8000B350 03E00008 */  jr         $ra
/* BF54 8000B354 8C42DAC4 */   lw        $v0, %lo(D_800CDAC4)($v0)
