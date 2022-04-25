	.set noat
	.set noreorder

glabel func_8000B31C
/* BF1C 8000B31C 3C02800D */  lui        $v0, %hi(D_800CDAB8)
/* BF20 8000B320 03E00008 */  jr         $ra
/* BF24 8000B324 8C42DAB8 */   lw        $v0, %lo(D_800CDAB8)($v0)
