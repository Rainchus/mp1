	.set noat
	.set noreorder

glabel func_80052B20
/* 53720 80052B20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53724 80052B24 AFBF0010 */  sw         $ra, 0x10($sp)
/* 53728 80052B28 00042400 */  sll        $a0, $a0, 0x10
/* 5372C 80052B2C 0C014AA3 */  jal        func_80052A8C
/* 53730 80052B30 00042403 */   sra       $a0, $a0, 0x10
/* 53734 80052B34 94420006 */  lhu        $v0, 6($v0)
/* 53738 80052B38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5373C 80052B3C 30420001 */  andi       $v0, $v0, 1
/* 53740 80052B40 03E00008 */  jr         $ra
/* 53744 80052B44 27BD0018 */   addiu     $sp, $sp, 0x18
