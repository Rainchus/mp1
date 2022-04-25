	.set noat
	.set noreorder

glabel func_80056984
/* 57584 80056984 3C01800E */  lui        $at, %hi(D_800D86B0)
/* 57588 80056988 03E00008 */  jr         $ra
/* 5758C 8005698C A42086B0 */   sh        $zero, %lo(D_800D86B0)($at)
