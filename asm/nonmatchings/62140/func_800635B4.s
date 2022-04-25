	.set noat
	.set noreorder

glabel func_800635B4
/* 641B4 800635B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 641B8 800635B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 641BC 800635BC 0C018D54 */  jal        func_80063550
/* 641C0 800635C0 00002021 */   addu      $a0, $zero, $zero
/* 641C4 800635C4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 641C8 800635C8 03E00008 */  jr         $ra
/* 641CC 800635CC 27BD0018 */   addiu     $sp, $sp, 0x18
