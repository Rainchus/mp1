	.set noat
	.set noreorder

glabel func_8001350C
/* 1410C 8001350C 3C02800D */  lui        $v0, %hi(D_800D0DA0)
/* 14110 80013510 24420DA0 */  addiu      $v0, $v0, %lo(D_800D0DA0)
/* 14114 80013514 AC820000 */  sw         $v0, ($a0)
/* 14118 80013518 3C028001 */  lui        $v0, %hi(func_80013360)
/* 1411C 8001351C 03E00008 */  jr         $ra
/* 14120 80013520 24423360 */   addiu     $v0, $v0, %lo(func_80013360)
