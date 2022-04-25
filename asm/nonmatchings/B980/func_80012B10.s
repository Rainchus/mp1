	.set noat
	.set noreorder

glabel func_80012B10
/* 13710 80012B10 3C02800D */  lui        $v0, %hi(D_800CEAB4)
/* 13714 80012B14 03E00008 */  jr         $ra
/* 13718 80012B18 8442EAB4 */   lh        $v0, %lo(D_800CEAB4)($v0)
