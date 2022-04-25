	.set noat
	.set noreorder

glabel func_8003B6C8
/* 3C2C8 8003B6C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C2CC 8003B6CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C2D0 8003B6D0 0C01664B */  jal        func_8005992C
/* 3C2D4 8003B6D4 00000000 */   nop
/* 3C2D8 8003B6D8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C2DC 8003B6DC 03E00008 */  jr         $ra
/* 3C2E0 8003B6E0 27BD0018 */   addiu     $sp, $sp, 0x18
