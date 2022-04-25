	.set noat
	.set noreorder

glabel func_80058E14
/* 59A14 80058E14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 59A18 80058E18 AFBF0010 */  sw         $ra, 0x10($sp)
/* 59A1C 80058E1C 0C016331 */  jal        func_80058CC4
/* 59A20 80058E20 00000000 */   nop
/* 59A24 80058E24 0C012DFE */  jal        func_8004B7F8
/* 59A28 80058E28 240400A0 */   addiu     $a0, $zero, 0xa0
/* 59A2C 80058E2C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 59A30 80058E30 03E00008 */  jr         $ra
/* 59A34 80058E34 27BD0018 */   addiu     $sp, $sp, 0x18
