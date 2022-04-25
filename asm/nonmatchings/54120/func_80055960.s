	.set noat
	.set noreorder

glabel func_80055960
/* 56560 80055960 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56564 80055964 AFBF0010 */  sw         $ra, 0x10($sp)
/* 56568 80055968 0C015604 */  jal        func_80055810
/* 5656C 8005596C 24060001 */   addiu     $a2, $zero, 1
/* 56570 80055970 8FBF0010 */  lw         $ra, 0x10($sp)
/* 56574 80055974 03E00008 */  jr         $ra
/* 56578 80055978 27BD0018 */   addiu     $sp, $sp, 0x18
