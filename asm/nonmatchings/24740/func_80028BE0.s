	.set noat
	.set noreorder

glabel func_80028BE0
/* 297E0 80028BE0 3C01800F */  lui        $at, %hi(D_800ED0C8)
/* 297E4 80028BE4 03E00008 */  jr         $ra
/* 297E8 80028BE8 A024D0C8 */   sb        $a0, %lo(D_800ED0C8)($at)
