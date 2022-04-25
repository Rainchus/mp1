	.set noat
	.set noreorder

glabel func_800427E4
/* 433E4 800427E4 3C01800D */  lui        $at, %hi(D_800D63F0)
/* 433E8 800427E8 03E00008 */  jr         $ra
/* 433EC 800427EC A42063F0 */   sh        $zero, %lo(D_800D63F0)($at)
