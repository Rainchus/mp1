	.set noat
	.set noreorder

glabel func_80014158
/* 14D58 80014158 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14D5C 8001415C AFBF0010 */  sw         $ra, 0x10($sp)
/* 14D60 80014160 0C004E5D */  jal        func_80013974
/* 14D64 80014164 00002021 */   addu      $a0, $zero, $zero
/* 14D68 80014168 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14D6C 8001416C 03E00008 */  jr         $ra
/* 14D70 80014170 27BD0018 */   addiu     $sp, $sp, 0x18
