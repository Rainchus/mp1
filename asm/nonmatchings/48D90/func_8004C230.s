	.set noat
	.set noreorder

glabel func_8004C230
/* 4CE30 8004C230 3084FFFF */  andi       $a0, $a0, 0xffff
/* 4CE34 8004C234 3C02800E */  lui        $v0, %hi(D_800D8110)
/* 4CE38 8004C238 8C428110 */  lw         $v0, %lo(D_800D8110)($v0)
/* 4CE3C 8004C23C 000420C0 */  sll        $a0, $a0, 3
/* 4CE40 8004C240 00822021 */  addu       $a0, $a0, $v0
/* 4CE44 8004C244 03E00008 */  jr         $ra
/* 4CE48 8004C248 84820000 */   lh        $v0, ($a0)
