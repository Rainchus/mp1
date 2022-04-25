	.set noat
	.set noreorder

glabel func_80012C70
/* 13870 80012C70 3C01800D */  lui        $at, %hi(D_800CEABB)
/* 13874 80012C74 03E00008 */  jr         $ra
/* 13878 80012C78 A024EABB */   sb        $a0, %lo(D_800CEABB)($at)
