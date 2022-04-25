	.set noat
	.set noreorder

glabel func_8004FEA0
/* 50AA0 8004FEA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50AA4 8004FEA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50AA8 8004FEA8 0C013F5A */  jal        func_8004FD68
/* 50AAC 8004FEAC 3C0641F0 */   lui       $a2, 0x41f0
/* 50AB0 8004FEB0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50AB4 8004FEB4 03E00008 */  jr         $ra
/* 50AB8 8004FEB8 27BD0018 */   addiu     $sp, $sp, 0x18
