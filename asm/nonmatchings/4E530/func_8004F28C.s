	.set noat
	.set noreorder

glabel func_8004F28C
/* 4FE8C 8004F28C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FE90 8004F290 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4FE94 8004F294 00052400 */  sll        $a0, $a1, 0x10
/* 4FE98 8004F298 0C015A67 */  jal        func_8005699C
/* 4FE9C 8004F29C 00042403 */   sra       $a0, $a0, 0x10
/* 4FEA0 8004F2A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4FEA4 8004F2A4 03E00008 */  jr         $ra
/* 4FEA8 8004F2A8 27BD0018 */   addiu     $sp, $sp, 0x18
