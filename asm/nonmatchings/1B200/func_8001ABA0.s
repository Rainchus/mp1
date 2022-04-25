	.set noat
	.set noreorder

glabel func_8001ABA0
/* 1B7A0 8001ABA0 3C01800D */  lui        $at, %hi(D_800D5FEC)
/* 1B7A4 8001ABA4 03E00008 */  jr         $ra
/* 1B7A8 8001ABA8 A4245FEC */   sh        $a0, %lo(D_800D5FEC)($at)
