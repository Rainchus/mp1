	.set noat
	.set noreorder

glabel func_80056990
/* 57590 80056990 3C02800E */  lui        $v0, %hi(D_800D86E0)
/* 57594 80056994 03E00008 */  jr         $ra
/* 57598 80056998 844286E0 */   lh        $v0, %lo(D_800D86E0)($v0)
