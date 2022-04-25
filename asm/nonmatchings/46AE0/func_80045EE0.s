	.set noat
	.set noreorder

glabel func_80045EE0
/* 46AE0 80045EE0 2402FFFF */  addiu      $v0, $zero, -1
/* 46AE4 80045EE4 3C01800D */  lui        $at, %hi(D_800D6480)
/* 46AE8 80045EE8 A4226480 */  sh         $v0, %lo(D_800D6480)($at)
/* 46AEC 80045EEC 3C01800D */  lui        $at, %hi(D_800D6482)
/* 46AF0 80045EF0 03E00008 */  jr         $ra
/* 46AF4 80045EF4 A4226482 */   sh        $v0, %lo(D_800D6482)($at)
