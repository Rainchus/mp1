	.set noat
	.set noreorder

glabel func_80038178
/* 38D78 80038178 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 38D7C 8003817C AFBF0010 */  sw         $ra, 0x10($sp)
/* 38D80 80038180 0C00E065 */  jal        func_80038194
/* 38D84 80038184 00000000 */   nop
/* 38D88 80038188 8FBF0010 */  lw         $ra, 0x10($sp)
/* 38D8C 8003818C 03E00008 */  jr         $ra
/* 38D90 80038190 27BD0018 */   addiu     $sp, $sp, 0x18
