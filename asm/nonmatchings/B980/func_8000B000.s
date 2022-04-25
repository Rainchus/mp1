	.set noat
	.set noreorder

glabel func_8000B000
/* BC00 8000B000 3C01800D */  lui        $at, %hi(D_800CDACC)
/* BC04 8000B004 03E00008 */  jr         $ra
/* BC08 8000B008 AC24DACC */   sw        $a0, %lo(D_800CDACC)($at)
