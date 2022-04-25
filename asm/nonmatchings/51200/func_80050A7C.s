	.set noat
	.set noreorder

glabel func_80050A7C
/* 5167C 80050A7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 51680 80050A80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 51684 80050A84 0C014D15 */  jal        func_80053454
/* 51688 80050A88 00000000 */   nop
/* 5168C 80050A8C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 51690 80050A90 03E00008 */  jr         $ra
/* 51694 80050A94 27BD0018 */   addiu     $sp, $sp, 0x18
