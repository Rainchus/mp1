	.set noat
	.set noreorder

glabel func_8003C528
/* 3D128 8003C528 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D12C 8003C52C AFBF001C */  sw         $ra, 0x1c($sp)
/* 3D130 8003C530 AFB20018 */  sw         $s2, 0x18($sp)
/* 3D134 8003C534 AFB10014 */  sw         $s1, 0x14($sp)
/* 3D138 8003C538 AFB00010 */  sw         $s0, 0x10($sp)
/* 3D13C 8003C53C 00808821 */  addu       $s1, $a0, $zero
/* 3D140 8003C540 00A09021 */  addu       $s2, $a1, $zero
/* 3D144 8003C544 3C048004 */  lui        $a0, %hi(func_8003C3C4)
/* 3D148 8003C548 2484C3C4 */  addiu      $a0, $a0, %lo(func_8003C3C4)
/* 3D14C 8003C54C 24051005 */  addiu      $a1, $zero, 0x1005
/* 3D150 8003C550 00003021 */  addu       $a2, $zero, $zero
/* 3D154 8003C554 0C01770A */  jal        func_8005DC28
/* 3D158 8003C558 24070040 */   addiu     $a3, $zero, 0x40
/* 3D15C 8003C55C 00408021 */  addu       $s0, $v0, $zero
/* 3D160 8003C560 8E040018 */  lw         $a0, 0x18($s0)
/* 3D164 8003C564 0C016628 */  jal        func_800598A0
/* 3D168 8003C568 24050004 */   addiu     $a1, $zero, 4
/* 3D16C 8003C56C AE02008C */  sw         $v0, 0x8c($s0)
/* 3D170 8003C570 A4510000 */  sh         $s1, ($v0)
/* 3D174 8003C574 A4520002 */  sh         $s2, 2($v0)
/* 3D178 8003C578 02001021 */  addu       $v0, $s0, $zero
/* 3D17C 8003C57C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3D180 8003C580 8FB20018 */  lw         $s2, 0x18($sp)
/* 3D184 8003C584 8FB10014 */  lw         $s1, 0x14($sp)
/* 3D188 8003C588 8FB00010 */  lw         $s0, 0x10($sp)
/* 3D18C 8003C58C 03E00008 */  jr         $ra
/* 3D190 8003C590 27BD0020 */   addiu     $sp, $sp, 0x20
