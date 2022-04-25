	.set noat
	.set noreorder

glabel func_80044680
/* 45280 80044680 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 45284 80044684 AFBF0018 */  sw         $ra, 0x18($sp)
/* 45288 80044688 AFB10014 */  sw         $s1, 0x14($sp)
/* 4528C 8004468C AFB00010 */  sw         $s0, 0x10($sp)
/* 45290 80044690 00808821 */  addu       $s1, $a0, $zero
/* 45294 80044694 3C048004 */  lui        $a0, %hi(func_8004452C)
/* 45298 80044698 2484452C */  addiu      $a0, $a0, %lo(func_8004452C)
/* 4529C 8004469C 00002821 */  addu       $a1, $zero, $zero
/* 452A0 800446A0 24062000 */  addiu      $a2, $zero, 0x2000
/* 452A4 800446A4 0C01770A */  jal        func_8005DC28
/* 452A8 800446A8 24070040 */   addiu     $a3, $zero, 0x40
/* 452AC 800446AC 00408021 */  addu       $s0, $v0, $zero
/* 452B0 800446B0 8E040018 */  lw         $a0, 0x18($s0)
/* 452B4 800446B4 0C016628 */  jal        func_800598A0
/* 452B8 800446B8 24050010 */   addiu     $a1, $zero, 0x10
/* 452BC 800446BC AE02008C */  sw         $v0, 0x8c($s0)
/* 452C0 800446C0 AC400000 */  sw         $zero, ($v0)
/* 452C4 800446C4 AC510004 */  sw         $s1, 4($v0)
/* 452C8 800446C8 02001021 */  addu       $v0, $s0, $zero
/* 452CC 800446CC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 452D0 800446D0 8FB10014 */  lw         $s1, 0x14($sp)
/* 452D4 800446D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 452D8 800446D8 03E00008 */  jr         $ra
/* 452DC 800446DC 27BD0020 */   addiu     $sp, $sp, 0x20
