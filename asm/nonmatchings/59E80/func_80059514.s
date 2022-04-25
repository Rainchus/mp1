	.set noat
	.set noreorder

glabel func_80059514
/* 5A114 80059514 3C01800F */  lui        $at, %hi(D_800ED5C2)
/* 5A118 80059518 03E00008 */  jr         $ra
/* 5A11C 8005951C A424D5C2 */   sh        $a0, %lo(D_800ED5C2)($at)
