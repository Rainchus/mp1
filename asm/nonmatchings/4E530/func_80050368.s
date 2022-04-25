	.set noat
	.set noreorder

glabel func_80050368
/* 50F68 80050368 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50F6C 8005036C AFBF0010 */  sw         $ra, 0x10($sp)
/* 50F70 80050370 3C04800C */  lui        $a0, %hi(D_800C526C)
/* 50F74 80050374 8C84526C */  lw         $a0, %lo(D_800C526C)($a0)
/* 50F78 80050378 0C013E00 */  jal        func_8004F800
/* 50F7C 8005037C 34058000 */   ori       $a1, $zero, 0x8000
/* 50F80 80050380 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50F84 80050384 03E00008 */  jr         $ra
/* 50F88 80050388 27BD0018 */   addiu     $sp, $sp, 0x18
