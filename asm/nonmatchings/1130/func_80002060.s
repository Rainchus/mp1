	.set noat
	.set noreorder

glabel func_80002060
/* 2C60 80002060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C64 80002064 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2C68 80002068 00E02021 */  addu       $a0, $a3, $zero
/* 2C6C 8000206C 0C000345 */  jal        func_80000D14
/* 2C70 80002070 24A5FFFE */   addiu     $a1, $a1, -2
/* 2C74 80002074 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C78 80002078 03E00008 */  jr         $ra
/* 2C7C 8000207C 27BD0018 */   addiu     $sp, $sp, 0x18
