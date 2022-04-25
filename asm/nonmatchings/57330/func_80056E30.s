	.set noat
	.set noreorder

glabel func_80056E30
/* 57A30 80056E30 3C01800E */  lui        $at, %hi(D_800D86FA)
/* 57A34 80056E34 03E00008 */  jr         $ra
/* 57A38 80056E38 A42486FA */   sh        $a0, %lo(D_800D86FA)($at)
