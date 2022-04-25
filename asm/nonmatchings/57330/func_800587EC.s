	.set noat
	.set noreorder

glabel func_800587EC
/* 593EC 800587EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 593F0 800587F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 593F4 800587F4 00052C00 */  sll        $a1, $a1, 0x10
/* 593F8 800587F8 00063400 */  sll        $a2, $a2, 0x10
/* 593FC 800587FC 00052C03 */  sra        $a1, $a1, 0x10
/* 59400 80058800 00063403 */  sra        $a2, $a2, 0x10
/* 59404 80058804 0C0161EF */  jal        func_800587BC
/* 59408 80058808 00003821 */   addu      $a3, $zero, $zero
/* 5940C 8005880C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 59410 80058810 03E00008 */  jr         $ra
/* 59414 80058814 27BD0018 */   addiu     $sp, $sp, 0x18
