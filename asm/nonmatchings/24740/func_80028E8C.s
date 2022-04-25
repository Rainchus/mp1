	.set noat
	.set noreorder

glabel func_80028E8C
/* 29A8C 80028E8C 00042400 */  sll        $a0, $a0, 0x10
/* 29A90 80028E90 00042383 */  sra        $a0, $a0, 0xe
/* 29A94 80028E94 3C01800F */  lui        $at, %hi(D_800ED3E4)
/* 29A98 80028E98 00240821 */  addu       $at, $at, $a0
/* 29A9C 80028E9C 03E00008 */  jr         $ra
/* 29AA0 80028EA0 AC25D3E4 */   sw        $a1, %lo(D_800ED3E4)($at)
