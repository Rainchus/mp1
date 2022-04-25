	.set noat
	.set noreorder

glabel func_8004B5D0
/* 4C1D0 8004B5D0 3C01800E */  lui        $at, %hi(D_800D80B4)
/* 4C1D4 8004B5D4 03E00008 */  jr         $ra
/* 4C1D8 8004B5D8 C42080B4 */   lwc1      $f0, %lo(D_800D80B4)($at)
