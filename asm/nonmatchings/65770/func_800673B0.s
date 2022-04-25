	.set noat
	.set noreorder

glabel func_800673B0
/* 67FB0 800673B0 00042400 */  sll        $a0, $a0, 0x10
/* 67FB4 800673B4 00042383 */  sra        $a0, $a0, 0xe
/* 67FB8 800673B8 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 67FBC 800673BC 00441021 */  addu       $v0, $v0, $a0
/* 67FC0 800673C0 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 67FC4 800673C4 00052C00 */  sll        $a1, $a1, 0x10
/* 67FC8 800673C8 00052B83 */  sra        $a1, $a1, 0xe
/* 67FCC 800673CC 00A22821 */  addu       $a1, $a1, $v0
/* 67FD0 800673D0 8CA2000C */  lw         $v0, 0xc($a1)
/* 67FD4 800673D4 03E00008 */  jr         $ra
/* 67FD8 800673D8 AC460044 */   sw        $a2, 0x44($v0)
