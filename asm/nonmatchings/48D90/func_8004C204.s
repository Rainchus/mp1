	.set noat
	.set noreorder

glabel func_8004C204
/* 4CE04 8004C204 3084FFFF */  andi       $a0, $a0, 0xffff
/* 4CE08 8004C208 3C02800E */  lui        $v0, %hi(D_800D8110)
/* 4CE0C 8004C20C 8C428110 */  lw         $v0, %lo(D_800D8110)($v0)
/* 4CE10 8004C210 000420C0 */  sll        $a0, $a0, 3
/* 4CE14 8004C214 00822021 */  addu       $a0, $a0, $v0
/* 4CE18 8004C218 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 4CE1C 8004C21C 8C820004 */  lw         $v0, 4($a0)
/* 4CE20 8004C220 00052840 */  sll        $a1, $a1, 1
/* 4CE24 8004C224 00A22821 */  addu       $a1, $a1, $v0
/* 4CE28 8004C228 03E00008 */  jr         $ra
/* 4CE2C 8004C22C 84A20000 */   lh        $v0, ($a1)
