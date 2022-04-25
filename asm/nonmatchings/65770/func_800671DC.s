	.set noat
	.set noreorder

glabel func_800671DC
/* 67DDC 800671DC 00042400 */  sll        $a0, $a0, 0x10
/* 67DE0 800671E0 00042383 */  sra        $a0, $a0, 0xe
/* 67DE4 800671E4 3C02800F */  lui        $v0, %hi(D_800EE330)
/* 67DE8 800671E8 00441021 */  addu       $v0, $v0, $a0
/* 67DEC 800671EC 8C42E330 */  lw         $v0, %lo(D_800EE330)($v0)
/* 67DF0 800671F0 00052C00 */  sll        $a1, $a1, 0x10
/* 67DF4 800671F4 00052B83 */  sra        $a1, $a1, 0xe
/* 67DF8 800671F8 00A22821 */  addu       $a1, $a1, $v0
/* 67DFC 800671FC 8CA2000C */  lw         $v0, 0xc($a1)
/* 67E00 80067200 03E00008 */  jr         $ra
/* 67E04 80067204 A4460052 */   sh        $a2, 0x52($v0)
