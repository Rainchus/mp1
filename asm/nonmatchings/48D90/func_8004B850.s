	.set noat
	.set noreorder

glabel func_8004B850
/* 4C450 8004B850 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4C454 8004B854 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4C458 8004B858 03E00008 */  jr         $ra
/* 4C45C 8004B85C 30420002 */   andi      $v0, $v0, 2
