	.set noat
	.set noreorder

glabel func_80054744
/* 55344 80054744 00042180 */  sll        $a0, $a0, 6
/* 55348 80054748 3C01800E */  lui        $at, %hi(D_800D83A8)
/* 5534C 8005474C 00240821 */  addu       $at, $at, $a0
/* 55350 80054750 03E00008 */  jr         $ra
/* 55354 80054754 A02583A8 */   sb        $a1, %lo(D_800D83A8)($at)
