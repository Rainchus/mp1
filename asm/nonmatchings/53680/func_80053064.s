	.set noat
	.set noreorder

glabel func_80053064
/* 53C64 80053064 24020001 */  addiu      $v0, $zero, 1
/* 53C68 80053068 3C01800E */  lui        $at, %hi(D_800D8380)
/* 53C6C 8005306C 03E00008 */  jr         $ra
/* 53C70 80053070 A4228380 */   sh        $v0, %lo(D_800D8380)($at)
