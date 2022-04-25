	.set noat
	.set noreorder

glabel func_80061F24
/* 62B24 80061F24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 62B28 80061F28 AFBF0030 */  sw         $ra, 0x30($sp)
/* 62B2C 80061F2C A7A40020 */  sh         $a0, 0x20($sp)
/* 62B30 80061F30 AFA50024 */  sw         $a1, 0x24($sp)
/* 62B34 80061F34 A7A60028 */  sh         $a2, 0x28($sp)
/* 62B38 80061F38 AFA7002C */  sw         $a3, 0x2c($sp)
/* 62B3C 80061F3C 27A40010 */  addiu      $a0, $sp, 0x10
/* 62B40 80061F40 3C058006 */  lui        $a1, %hi(func_80061E10)
/* 62B44 80061F44 24A51E10 */  addiu      $a1, $a1, %lo(func_80061E10)
/* 62B48 80061F48 27A60020 */  addiu      $a2, $sp, 0x20
/* 62B4C 80061F4C 0C0190BF */  jal        func_800642FC
/* 62B50 80061F50 24070002 */   addiu     $a3, $zero, 2
/* 62B54 80061F54 8FBF0030 */  lw         $ra, 0x30($sp)
/* 62B58 80061F58 03E00008 */  jr         $ra
/* 62B5C 80061F5C 27BD0038 */   addiu     $sp, $sp, 0x38
