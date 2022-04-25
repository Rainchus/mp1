	.set noat
	.set noreorder

glabel func_80047B68
/* 48768 80047B68 3C02800D */  lui        $v0, %hi(D_800D6500)
/* 4876C 80047B6C 90426500 */  lbu        $v0, %lo(D_800D6500)($v0)
/* 48770 80047B70 03E00008 */  jr         $ra
/* 48774 80047B74 30420004 */   andi      $v0, $v0, 4
