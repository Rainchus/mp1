	.set noat
	.set noreorder

glabel func_8004B5C4
/* 4C1C4 8004B5C4 3C01800E */  lui        $at, %hi(D_800D80B4)
/* 4C1C8 8004B5C8 03E00008 */  jr         $ra
/* 4C1CC 8004B5CC E42C80B4 */   swc1      $f12, %lo(D_800D80B4)($at)
