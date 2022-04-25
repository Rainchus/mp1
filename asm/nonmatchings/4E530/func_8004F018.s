	.set noat
	.set noreorder

glabel func_8004F018
/* 4FC18 8004F018 C4820038 */  lwc1       $f2, 0x38($a0)
/* 4FC1C 8004F01C 44800000 */  mtc1       $zero, $f0
/* 4FC20 8004F020 00000000 */  nop
/* 4FC24 8004F024 46001032 */  c.eq.s     $f2, $f0
/* 4FC28 8004F028 00000000 */  nop
/* 4FC2C 8004F02C 00000000 */  nop
/* 4FC30 8004F030 45010002 */  bc1t       .L8004F03C
/* 4FC34 8004F034 00001021 */   addu      $v0, $zero, $zero
/* 4FC38 8004F038 24020001 */  addiu      $v0, $zero, 1
.L8004F03C:
/* 4FC3C 8004F03C 03E00008 */  jr         $ra
/* 4FC40 8004F040 00000000 */   nop
