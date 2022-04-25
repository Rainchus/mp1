	.set noat
	.set noreorder

glabel func_8002854C
/* 2914C 8002854C 3C01800F */  lui        $at, %hi(D_800EE988)
/* 29150 80028550 03E00008 */  jr         $ra
/* 29154 80028554 A020E988 */   sb        $zero, %lo(D_800EE988)($at)
