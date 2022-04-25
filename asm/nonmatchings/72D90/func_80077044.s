	.set noat
	.set noreorder

glabel func_80077044
/* 77C44 80077044 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77C48 80077048 AFBF0010 */  sw         $ra, 0x10($sp)
/* 77C4C 8007704C 0C01D8CE */  jal        func_80076338
/* 77C50 80077050 00000000 */   nop
/* 77C54 80077054 0C01D893 */  jal        func_8007624C
/* 77C58 80077058 00000000 */   nop
/* 77C5C 8007705C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 77C60 80077060 03E00008 */  jr         $ra
/* 77C64 80077064 27BD0018 */   addiu     $sp, $sp, 0x18
