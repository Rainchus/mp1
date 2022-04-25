	.set noat
	.set noreorder

glabel func_8004D2A4
/* 4DEA4 8004D2A4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4DEA8 8004D2A8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4DEAC 8004D2AC AFB20028 */  sw         $s2, 0x28($sp)
/* 4DEB0 8004D2B0 AFB10024 */  sw         $s1, 0x24($sp)
/* 4DEB4 8004D2B4 AFB00020 */  sw         $s0, 0x20($sp)
/* 4DEB8 8004D2B8 00A09021 */  addu       $s2, $a1, $zero
/* 4DEBC 8004D2BC 00C08021 */  addu       $s0, $a2, $zero
/* 4DEC0 8004D2C0 00042400 */  sll        $a0, $a0, 0x10
/* 4DEC4 8004D2C4 0C014AA3 */  jal        func_80052A8C
/* 4DEC8 8004D2C8 00042403 */   sra       $a0, $a0, 0x10
/* 4DECC 8004D2CC 00408821 */  addu       $s1, $v0, $zero
/* 4DED0 8004D2D0 00108400 */  sll        $s0, $s0, 0x10
/* 4DED4 8004D2D4 0C01307B */  jal        func_8004C1EC
/* 4DED8 8004D2D8 00102403 */   sra       $a0, $s0, 0x10
/* 4DEDC 8004D2DC 8E260020 */  lw         $a2, 0x20($s1)
/* 4DEE0 8004D2E0 27A40010 */  addiu      $a0, $sp, 0x10
/* 4DEE4 8004D2E4 24450004 */  addiu      $a1, $v0, 4
/* 4DEE8 8004D2E8 0C0283A0 */  jal        func_800A0E80
/* 4DEEC 8004D2EC 24C6000C */   addiu     $a2, $a2, 0xc
/* 4DEF0 8004D2F0 0C00F502 */  jal        func_8003D408
/* 4DEF4 8004D2F4 27A40010 */   addiu     $a0, $sp, 0x10
/* 4DEF8 8004D2F8 8E260020 */  lw         $a2, 0x20($s1)
/* 4DEFC 8004D2FC 24C60018 */  addiu      $a2, $a2, 0x18
/* 4DF00 8004D300 00C02021 */  addu       $a0, $a2, $zero
/* 4DF04 8004D304 27A50010 */  addiu      $a1, $sp, 0x10
/* 4DF08 8004D308 0C01347B */  jal        func_8004D1EC
/* 4DF0C 8004D30C 02403821 */   addu      $a3, $s2, $zero
/* 4DF10 8004D310 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4DF14 8004D314 8FB20028 */  lw         $s2, 0x28($sp)
/* 4DF18 8004D318 8FB10024 */  lw         $s1, 0x24($sp)
/* 4DF1C 8004D31C 8FB00020 */  lw         $s0, 0x20($sp)
/* 4DF20 8004D320 03E00008 */  jr         $ra
/* 4DF24 8004D324 27BD0030 */   addiu     $sp, $sp, 0x30
