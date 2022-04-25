	.set noat
	.set noreorder

glabel func_8004C1EC
/* 4CDEC 8004C1EC 00042400 */  sll        $a0, $a0, 0x10
/* 4CDF0 8004C1F0 000422C3 */  sra        $a0, $a0, 0xb
/* 4CDF4 8004C1F4 3C02800E */  lui        $v0, %hi(D_800D8108)
/* 4CDF8 8004C1F8 8C428108 */  lw         $v0, %lo(D_800D8108)($v0)
/* 4CDFC 8004C1FC 03E00008 */  jr         $ra
/* 4CE00 8004C200 00821021 */   addu      $v0, $a0, $v0
