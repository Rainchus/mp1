	.set noat
	.set noreorder

glabel func_8005DB44
/* 5E744 8005DB44 00042400 */  sll        $a0, $a0, 0x10
/* 5E748 8005DB48 00042303 */  sra        $a0, $a0, 0xc
/* 5E74C 8005DB4C 3C02800F */  lui        $v0, %hi(D_800ED624)
/* 5E750 8005DB50 00441021 */  addu       $v0, $v0, $a0
/* 5E754 8005DB54 03E00008 */  jr         $ra
/* 5E758 8005DB58 8C42D624 */   lw        $v0, %lo(D_800ED624)($v0)
