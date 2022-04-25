	.set noat
	.set noreorder

glabel func_8004CD08
/* 4D908 8004CD08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D90C 8004CD0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D910 8004CD10 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D914 8004CD14 00A08021 */  addu       $s0, $a1, $zero
/* 4D918 8004CD18 00042400 */  sll        $a0, $a0, 0x10
/* 4D91C 8004CD1C 0C014AA3 */  jal        func_80052A8C
/* 4D920 8004CD20 00042403 */   sra       $a0, $a0, 0x10
/* 4D924 8004CD24 8C460020 */  lw         $a2, 0x20($v0)
/* 4D928 8004CD28 24C4000C */  addiu      $a0, $a2, 0xc
/* 4D92C 8004CD2C 02002821 */  addu       $a1, $s0, $zero
/* 4D930 8004CD30 0C013334 */  jal        func_8004CCD0
/* 4D934 8004CD34 24C60018 */   addiu     $a2, $a2, 0x18
/* 4D938 8004CD38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D93C 8004CD3C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D940 8004CD40 03E00008 */  jr         $ra
/* 4D944 8004CD44 27BD0018 */   addiu     $sp, $sp, 0x18
