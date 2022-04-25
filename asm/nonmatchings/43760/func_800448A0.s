	.set noat
	.set noreorder

glabel func_800448A0
/* 454A0 800448A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 454A4 800448A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 454A8 800448A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 454AC 800448AC 3C048004 */  lui        $a0, %hi(func_800446E0)
/* 454B0 800448B0 248446E0 */  addiu      $a0, $a0, %lo(func_800446E0)
/* 454B4 800448B4 00002821 */  addu       $a1, $zero, $zero
/* 454B8 800448B8 24062000 */  addiu      $a2, $zero, 0x2000
/* 454BC 800448BC 0C01770A */  jal        func_8005DC28
/* 454C0 800448C0 24070040 */   addiu     $a3, $zero, 0x40
/* 454C4 800448C4 00408021 */  addu       $s0, $v0, $zero
/* 454C8 800448C8 8E040018 */  lw         $a0, 0x18($s0)
/* 454CC 800448CC 0C016628 */  jal        func_800598A0
/* 454D0 800448D0 24050010 */   addiu     $a1, $zero, 0x10
/* 454D4 800448D4 AE02008C */  sw         $v0, 0x8c($s0)
/* 454D8 800448D8 2403000A */  addiu      $v1, $zero, 0xa
/* 454DC 800448DC AC430000 */  sw         $v1, ($v0)
/* 454E0 800448E0 02001021 */  addu       $v0, $s0, $zero
/* 454E4 800448E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 454E8 800448E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 454EC 800448EC 03E00008 */  jr         $ra
/* 454F0 800448F0 27BD0018 */   addiu     $sp, $sp, 0x18
