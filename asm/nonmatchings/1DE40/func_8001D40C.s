	.set noat
	.set noreorder

glabel func_8001D40C
/* 1E00C 8001D40C 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* 1E010 8001D410 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* 1E014 8001D414 3C01800F */  lui        $at, %hi(D_800F3FA8)
/* 1E018 8001D418 03E00008 */  jr         $ra
/* 1E01C 8001D41C A4223FA8 */   sh        $v0, %lo(D_800F3FA8)($at)
