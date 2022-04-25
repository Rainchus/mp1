	.set noat
	.set noreorder

glabel func_8004A520
/* 4B120 8004A520 24020001 */  addiu      $v0, $zero, 1
/* 4B124 8004A524 3C01800D */  lui        $at, %hi(D_800D7710)
/* 4B128 8004A528 03E00008 */  jr         $ra
/* 4B12C 8004A52C AC227710 */   sw        $v0, %lo(D_800D7710)($at)
