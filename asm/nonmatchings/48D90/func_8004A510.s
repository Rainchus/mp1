	.set noat
	.set noreorder

glabel func_8004A510
/* 4B110 8004A510 24020003 */  addiu      $v0, $zero, 3
/* 4B114 8004A514 3C01800D */  lui        $at, %hi(D_800D7710)
/* 4B118 8004A518 03E00008 */  jr         $ra
/* 4B11C 8004A51C AC227710 */   sw        $v0, %lo(D_800D7710)($at)
