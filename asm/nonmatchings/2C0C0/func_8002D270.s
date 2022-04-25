	.set noat
	.set noreorder

glabel func_8002D270
/* 2DE70 8002D270 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2DE74 8002D274 AFBF005C */  sw         $ra, 0x5c($sp)
/* 2DE78 8002D278 AFB20058 */  sw         $s2, 0x58($sp)
/* 2DE7C 8002D27C AFB10054 */  sw         $s1, 0x54($sp)
/* 2DE80 8002D280 AFB00050 */  sw         $s0, 0x50($sp)
/* 2DE84 8002D284 00808021 */  addu       $s0, $a0, $zero
/* 2DE88 8002D288 00A08821 */  addu       $s1, $a1, $zero
/* 2DE8C 8002D28C 00C09021 */  addu       $s2, $a2, $zero
/* 2DE90 8002D290 27A40010 */  addiu      $a0, $sp, 0x10
/* 2DE94 8002D294 0C0282E4 */  jal        func_800A0B90
/* 2DE98 8002D298 02402821 */   addu      $a1, $s2, $zero
/* 2DE9C 8002D29C 00118C00 */  sll        $s1, $s1, 0x10
/* 2DEA0 8002D2A0 02002021 */  addu       $a0, $s0, $zero
/* 2DEA4 8002D2A4 00112C03 */  sra        $a1, $s1, 0x10
/* 2DEA8 8002D2A8 02403021 */  addu       $a2, $s2, $zero
/* 2DEAC 8002D2AC 0C00B4B3 */  jal        func_8002D2CC
/* 2DEB0 8002D2B0 27A70010 */   addiu     $a3, $sp, 0x10
/* 2DEB4 8002D2B4 8FBF005C */  lw         $ra, 0x5c($sp)
/* 2DEB8 8002D2B8 8FB20058 */  lw         $s2, 0x58($sp)
/* 2DEBC 8002D2BC 8FB10054 */  lw         $s1, 0x54($sp)
/* 2DEC0 8002D2C0 8FB00050 */  lw         $s0, 0x50($sp)
/* 2DEC4 8002D2C4 03E00008 */  jr         $ra
/* 2DEC8 8002D2C8 27BD0060 */   addiu     $sp, $sp, 0x60
