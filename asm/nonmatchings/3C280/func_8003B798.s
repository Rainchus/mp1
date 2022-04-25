	.set noat
	.set noreorder

glabel func_8003B798
/* 3C398 8003B798 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C39C 8003B79C AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C3A0 8003B7A0 0C01664B */  jal        func_8005992C
/* 3C3A4 8003B7A4 00000000 */   nop
/* 3C3A8 8003B7A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C3AC 8003B7AC 03E00008 */  jr         $ra
/* 3C3B0 8003B7B0 27BD0018 */   addiu     $sp, $sp, 0x18
