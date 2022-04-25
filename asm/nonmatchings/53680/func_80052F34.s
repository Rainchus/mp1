	.set noat
	.set noreorder

glabel func_80052F34
/* 53B34 80052F34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53B38 80052F38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 53B3C 80052F3C AFB00010 */  sw         $s0, 0x10($sp)
/* 53B40 80052F40 00048400 */  sll        $s0, $a0, 0x10
/* 53B44 80052F44 00108403 */  sra        $s0, $s0, 0x10
/* 53B48 80052F48 0C014BC1 */  jal        func_80052F04
/* 53B4C 80052F4C 02002021 */   addu      $a0, $s0, $zero
/* 53B50 80052F50 02002021 */  addu       $a0, $s0, $zero
/* 53B54 80052F54 0C014BB3 */  jal        func_80052ECC
/* 53B58 80052F58 304500FF */   andi      $a1, $v0, 0xff
/* 53B5C 80052F5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 53B60 80052F60 8FB00010 */  lw         $s0, 0x10($sp)
/* 53B64 80052F64 03E00008 */  jr         $ra
/* 53B68 80052F68 27BD0018 */   addiu     $sp, $sp, 0x18
