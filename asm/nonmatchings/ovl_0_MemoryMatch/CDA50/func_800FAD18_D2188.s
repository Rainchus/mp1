	.set noat
	.set noreorder

glabel func_800FAD18_D2188
/* D2188 800FAD18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D218C 800FAD1C AFBF0014 */  sw         $ra, 0x14($sp)
/* D2190 800FAD20 3084FFFF */  andi       $a0, $a0, 0xffff
/* D2194 800FAD24 14800017 */  bnez       $a0, .L800FAD84
/* D2198 800FAD28 AFB00010 */   sw        $s0, 0x10($sp)
/* D219C 800FAD2C 3C108010 */  lui        $s0, %hi(D_800FE2C8)
/* D21A0 800FAD30 2610E2C8 */  addiu      $s0, $s0, %lo(D_800FE2C8)
/* D21A4 800FAD34 02002021 */  addu       $a0, $s0, $zero
/* D21A8 800FAD38 00002821 */  addu       $a1, $zero, $zero
/* D21AC 800FAD3C 0C026DDC */  jal        func_8009B770
/* D21B0 800FAD40 2406001C */   addiu     $a2, $zero, 0x1c
/* D21B4 800FAD44 A6000000 */  sh         $zero, ($s0)
/* D21B8 800FAD48 3C018010 */  lui        $at, %hi(D_800FE2CA)
/* D21BC 800FAD4C A420E2CA */  sh         $zero, %lo(D_800FE2CA)($at)
/* D21C0 800FAD50 2402FFFF */  addiu      $v0, $zero, -1
/* D21C4 800FAD54 3C018010 */  lui        $at, %hi(D_800FE2CC)
/* D21C8 800FAD58 A422E2CC */  sh         $v0, %lo(D_800FE2CC)($at)
/* D21CC 800FAD5C 3C018010 */  lui        $at, %hi(D_800FE2D0)
/* D21D0 800FAD60 AC20E2D0 */  sw         $zero, %lo(D_800FE2D0)($at)
/* D21D4 800FAD64 3C018010 */  lui        $at, %hi(D_800FE2D4)
/* D21D8 800FAD68 AC20E2D4 */  sw         $zero, %lo(D_800FE2D4)($at)
/* D21DC 800FAD6C 3C018010 */  lui        $at, %hi(D_800FE2D8)
/* D21E0 800FAD70 AC20E2D8 */  sw         $zero, %lo(D_800FE2D8)($at)
/* D21E4 800FAD74 3C018010 */  lui        $at, %hi(D_800FE2DC)
/* D21E8 800FAD78 AC20E2DC */  sw         $zero, %lo(D_800FE2DC)($at)
/* D21EC 800FAD7C 3C018010 */  lui        $at, %hi(D_800FE2E0)
/* D21F0 800FAD80 A420E2E0 */  sh         $zero, %lo(D_800FE2E0)($at)
.L800FAD84:
/* D21F4 800FAD84 8FBF0014 */  lw         $ra, 0x14($sp)
/* D21F8 800FAD88 8FB00010 */  lw         $s0, 0x10($sp)
/* D21FC 800FAD8C 03E00008 */  jr         $ra
/* D2200 800FAD90 27BD0018 */   addiu     $sp, $sp, 0x18
