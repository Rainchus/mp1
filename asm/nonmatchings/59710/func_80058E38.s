	.set noat
	.set noreorder

glabel func_80058E38
/* 59A38 80058E38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 59A3C 80058E3C AFBF0010 */  sw         $ra, 0x10($sp)
/* 59A40 80058E40 0C01636C */  jal        func_80058DB0
/* 59A44 80058E44 00000000 */   nop
/* 59A48 80058E48 0C012DFE */  jal        func_8004B7F8
/* 59A4C 80058E4C 240400FF */   addiu     $a0, $zero, 0xff
/* 59A50 80058E50 0C01567E */  jal        func_800559F8
/* 59A54 80058E54 00000000 */   nop
/* 59A58 80058E58 8FBF0010 */  lw         $ra, 0x10($sp)
/* 59A5C 80058E5C 03E00008 */  jr         $ra
/* 59A60 80058E60 27BD0018 */   addiu     $sp, $sp, 0x18
