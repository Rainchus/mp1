	.set noat
	.set noreorder

glabel func_800672DC
/* 67EDC 800672DC 00042400 */  sll        $a0, $a0, 0x10
/* 67EE0 800672E0 00042383 */  sra        $a0, $a0, 0xe
/* 67EE4 800672E4 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 67EE8 800672E8 00441021 */  addu       $v0, $v0, $a0
/* 67EEC 800672EC 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 67EF0 800672F0 00052C00 */  sll        $a1, $a1, 0x10
/* 67EF4 800672F4 00052B83 */  sra        $a1, $a1, 0xe
/* 67EF8 800672F8 00A22821 */  addu       $a1, $a1, $v0
/* 67EFC 800672FC 8CA2000C */  lw         $v0, 0xc($a1)
/* 67F00 80067300 A4460008 */  sh         $a2, 8($v0)
/* 67F04 80067304 A4470050 */  sh         $a3, 0x50($v0)
/* 67F08 80067308 03E00008 */  jr         $ra
/* 67F0C 8006730C AC400058 */   sw        $zero, 0x58($v0)
