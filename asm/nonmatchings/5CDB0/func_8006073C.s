	.set noat
	.set noreorder

glabel func_8006073C
/* 6133C 8006073C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61340 80060740 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61344 80060744 0C004597 */  jal        func_8001165C
/* 61348 80060748 00000000 */   nop
/* 6134C 8006074C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61350 80060750 03E00008 */  jr         $ra
/* 61354 80060754 27BD0018 */   addiu     $sp, $sp, 0x18
