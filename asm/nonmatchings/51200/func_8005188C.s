	.set noat
	.set noreorder

glabel func_8005188C
/* 5248C 8005188C 3C01800E */  lui        $at, %hi(D_800D8378)
/* 52490 80051890 03E00008 */  jr         $ra
/* 52494 80051894 A4248378 */   sh        $a0, %lo(D_800D8378)($at)
