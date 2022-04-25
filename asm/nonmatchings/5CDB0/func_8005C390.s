	.set noat
	.set noreorder

glabel func_8005C390
/* 5CF90 8005C390 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5CF94 8005C394 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5CF98 8005C398 0C0173B7 */  jal        func_8005CEDC
/* 5CF9C 8005C39C 24040004 */   addiu     $a0, $zero, 4
/* 5CFA0 8005C3A0 0C01660B */  jal        func_8005982C
/* 5CFA4 8005C3A4 2404002F */   addiu     $a0, $zero, 0x2f
/* 5CFA8 8005C3A8 0C01714B */  jal        func_8005C52C
/* 5CFAC 8005C3AC 00000000 */   nop
/* 5CFB0 8005C3B0 24040072 */  addiu      $a0, $zero, 0x72
/* 5CFB4 8005C3B4 24050001 */  addiu      $a1, $zero, 1
/* 5CFB8 8005C3B8 0C01706C */  jal        func_8005C1B0
/* 5CFBC 8005C3BC 24060092 */   addiu     $a2, $zero, 0x92
/* 5CFC0 8005C3C0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5CFC4 8005C3C4 03E00008 */  jr         $ra
/* 5CFC8 8005C3C8 27BD0018 */   addiu     $sp, $sp, 0x18
