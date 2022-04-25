	.set noat
	.set noreorder

glabel func_80064158
/* 64D58 80064158 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 64D5C 8006415C AFBF0044 */  sw         $ra, 0x44($sp)
/* 64D60 80064160 AFB00040 */  sw         $s0, 0x40($sp)
/* 64D64 80064164 3C028006 */  lui        $v0, %hi(func_800640EC)
/* 64D68 80064168 244240EC */  addiu      $v0, $v0, %lo(func_800640EC)
/* 64D6C 8006416C AFA20028 */  sw         $v0, 0x28($sp)
/* 64D70 80064170 AFA4002C */  sw         $a0, 0x2c($sp)
/* 64D74 80064174 27B00010 */  addiu      $s0, $sp, 0x10
/* 64D78 80064178 AFB00034 */  sw         $s0, 0x34($sp)
/* 64D7C 8006417C 02002021 */  addu       $a0, $s0, $zero
/* 64D80 80064180 27A50038 */  addiu      $a1, $sp, 0x38
/* 64D84 80064184 0C022188 */  jal        func_80088620
/* 64D88 80064188 24060001 */   addiu     $a2, $zero, 1
/* 64D8C 8006418C 3C04800F */  lui        $a0, %hi(D_800F3370)
/* 64D90 80064190 24843370 */  addiu      $a0, $a0, %lo(D_800F3370)
/* 64D94 80064194 27A50028 */  addiu      $a1, $sp, 0x28
/* 64D98 80064198 0C0222C4 */  jal        func_80088B10
/* 64D9C 8006419C 24060001 */   addiu     $a2, $zero, 1
/* 64DA0 800641A0 02002021 */  addu       $a0, $s0, $zero
/* 64DA4 800641A4 00002821 */  addu       $a1, $zero, $zero
/* 64DA8 800641A8 0C022278 */  jal        func_800889E0
/* 64DAC 800641AC 24060001 */   addiu     $a2, $zero, 1
/* 64DB0 800641B0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 64DB4 800641B4 8FB00040 */  lw         $s0, 0x40($sp)
/* 64DB8 800641B8 03E00008 */  jr         $ra
/* 64DBC 800641BC 27BD0048 */   addiu     $sp, $sp, 0x48
