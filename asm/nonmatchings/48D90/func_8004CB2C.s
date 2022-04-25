	.set noat
	.set noreorder

glabel func_8004CB2C
/* 4D72C 8004CB2C 3C01800F */  lui        $at, %hi(D_800ED5E0)
/* 4D730 8004CB30 03E00008 */  jr         $ra
/* 4D734 8004CB34 A424D5E0 */   sh        $a0, %lo(D_800ED5E0)($at)
