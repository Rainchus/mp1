	.set noat
	.set noreorder

glabel func_8005DB5C
/* 5E75C 8005DB5C 00042400 */  sll        $a0, $a0, 0x10
/* 5E760 8005DB60 00042303 */  sra        $a0, $a0, 0xc
/* 5E764 8005DB64 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 5E768 8005DB68 3C02800F */  lui        $v0, %hi(D_800ED624)
/* 5E76C 8005DB6C 00441021 */  addu       $v0, $v0, $a0
/* 5E770 8005DB70 8C42D624 */  lw         $v0, %lo(D_800ED624)($v0)
/* 5E774 8005DB74 00052880 */  sll        $a1, $a1, 2
/* 5E778 8005DB78 00A22821 */  addu       $a1, $a1, $v0
/* 5E77C 8005DB7C 03E00008 */  jr         $ra
/* 5E780 8005DB80 8CA20000 */   lw        $v0, ($a1)
