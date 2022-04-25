	.set noat
	.set noreorder

glabel func_8000B334
/* BF34 8000B334 3C02800D */  lui        $v0, %hi(D_800CDABC)
/* BF38 8000B338 03E00008 */  jr         $ra
/* BF3C 8000B33C 8C42DABC */   lw        $v0, %lo(D_800CDABC)($v0)
