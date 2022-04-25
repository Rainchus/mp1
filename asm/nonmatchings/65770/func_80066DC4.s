	.set noat
	.set noreorder

glabel func_80066DC4
/* 679C4 80066DC4 00042400 */  sll        $a0, $a0, 0x10
/* 679C8 80066DC8 00042383 */  sra        $a0, $a0, 0xe
/* 679CC 80066DCC 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 679D0 80066DD0 00441021 */  addu       $v0, $v0, $a0
/* 679D4 80066DD4 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 679D8 80066DD8 00052C00 */  sll        $a1, $a1, 0x10
/* 679DC 80066DDC 00052B83 */  sra        $a1, $a1, 0xe
/* 679E0 80066DE0 00A22821 */  addu       $a1, $a1, $v0
/* 679E4 80066DE4 8CA2000C */  lw         $v0, 0xc($a1)
/* 679E8 80066DE8 A4460040 */  sh         $a2, 0x40($v0)
/* 679EC 80066DEC 03E00008 */  jr         $ra
/* 679F0 80066DF0 A4470042 */   sh        $a3, 0x42($v0)
