	.set noat
	.set noreorder

glabel func_8002578C
/* 2638C 8002578C 3C01800F */  lui        $at, %hi(D_800ED6BC)
/* 26390 80025790 03E00008 */  jr         $ra
/* 26394 80025794 A024D6BC */   sb        $a0, %lo(D_800ED6BC)($at)
