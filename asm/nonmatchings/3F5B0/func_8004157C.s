	.set noat
	.set noreorder

glabel func_8004157C
/* 4217C 8004157C 24020001 */  addiu      $v0, $zero, 1
/* 42180 80041580 3C01800D */  lui        $at, %hi(D_800D63E1)
/* 42184 80041584 03E00008 */  jr         $ra
/* 42188 80041588 A02263E1 */   sb        $v0, %lo(D_800D63E1)($at)
