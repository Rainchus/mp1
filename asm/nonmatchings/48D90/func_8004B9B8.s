	.set noat
	.set noreorder

glabel func_8004B9B8
/* 4C5B8 8004B9B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C5BC 8004B9BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 4C5C0 8004B9C0 0C012E4B */  jal        func_8004B92C
/* 4C5C4 8004B9C4 00000000 */   nop
/* 4C5C8 8004B9C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4C5CC 8004B9CC 03E00008 */  jr         $ra
/* 4C5D0 8004B9D0 27BD0018 */   addiu     $sp, $sp, 0x18
