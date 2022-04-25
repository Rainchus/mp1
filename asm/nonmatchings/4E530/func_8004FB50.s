	.set noat
	.set noreorder

glabel func_8004FB50
/* 50750 8004FB50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50754 8004FB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 50758 8004FB58 AFB00010 */  sw         $s0, 0x10($sp)
/* 5075C 8004FB5C 000420C0 */  sll        $a0, $a0, 3
/* 50760 8004FB60 3C02800E */  lui        $v0, %hi(D_800D82E0)
/* 50764 8004FB64 244282E0 */  addiu      $v0, $v0, %lo(D_800D82E0)
/* 50768 8004FB68 00828021 */  addu       $s0, $a0, $v0
/* 5076C 8004FB6C 86040004 */  lh         $a0, 4($s0)
/* 50770 8004FB70 2402FFFF */  addiu      $v0, $zero, -1
/* 50774 8004FB74 10820005 */  beq        $a0, $v0, .L8004FB8C
/* 50778 8004FB78 00000000 */   nop
/* 5077C 8004FB7C 0C00E6B3 */  jal        func_80039ACC
/* 50780 8004FB80 00000000 */   nop
/* 50784 8004FB84 2402FFFF */  addiu      $v0, $zero, -1
/* 50788 8004FB88 A6020004 */  sh         $v0, 4($s0)
.L8004FB8C:
/* 5078C 8004FB8C 8E040000 */  lw         $a0, ($s0)
/* 50790 8004FB90 10800004 */  beqz       $a0, .L8004FBA4
/* 50794 8004FB94 00000000 */   nop
/* 50798 8004FB98 0C0051CC */  jal        func_80014730
/* 5079C 8004FB9C 00000000 */   nop
/* 507A0 8004FBA0 AE000000 */  sw         $zero, ($s0)
.L8004FBA4:
/* 507A4 8004FBA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 507A8 8004FBA8 8FB00010 */  lw         $s0, 0x10($sp)
/* 507AC 8004FBAC 03E00008 */  jr         $ra
/* 507B0 8004FBB0 27BD0018 */   addiu     $sp, $sp, 0x18
