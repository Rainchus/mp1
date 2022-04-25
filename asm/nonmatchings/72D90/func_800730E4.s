	.set noat
	.set noreorder

glabel func_800730E4
/* 73CE4 800730E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 73CE8 800730E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 73CEC 800730EC 0C01CAD7 */  jal        func_80072B5C
/* 73CF0 800730F0 00000000 */   nop
/* 73CF4 800730F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 73CF8 800730F8 03E00008 */  jr         $ra
/* 73CFC 800730FC 27BD0018 */   addiu     $sp, $sp, 0x18
