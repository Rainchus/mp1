	.set noat
	.set noreorder

glabel func_8005C384
/* 5CF84 8005C384 3C01800E */  lui        $at, %hi(D_800D8950)
/* 5CF88 8005C388 03E00008 */  jr         $ra
/* 5CF8C 8005C38C A4208950 */   sh        $zero, %lo(D_800D8950)($at)
