	.set noat
	.set noreorder

glabel func_80058C28
/* 59828 80058C28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5982C 80058C2C AFBF0010 */  sw         $ra, 0x10($sp)
/* 59830 80058C30 0C014D15 */  jal        func_80053454
/* 59834 80058C34 00000000 */   nop
/* 59838 80058C38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5983C 80058C3C 03E00008 */  jr         $ra
/* 59840 80058C40 27BD0018 */   addiu     $sp, $sp, 0x18
