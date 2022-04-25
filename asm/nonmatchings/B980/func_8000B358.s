	.set noat
	.set noreorder

glabel func_8000B358
/* BF58 8000B358 3C02800D */  lui        $v0, %hi(D_800CDACC)
/* BF5C 8000B35C 03E00008 */  jr         $ra
/* BF60 8000B360 8C42DACC */   lw        $v0, %lo(D_800CDACC)($v0)
