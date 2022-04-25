	.set noat
	.set noreorder

glabel func_80061A98
/* 62698 80061A98 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 6269C 80061A9C AFBF0068 */  sw         $ra, 0x68($sp)
/* 626A0 80061AA0 AFB50064 */  sw         $s5, 0x64($sp)
/* 626A4 80061AA4 AFB40060 */  sw         $s4, 0x60($sp)
/* 626A8 80061AA8 AFB3005C */  sw         $s3, 0x5c($sp)
/* 626AC 80061AAC AFB20058 */  sw         $s2, 0x58($sp)
/* 626B0 80061AB0 AFB10054 */  sw         $s1, 0x54($sp)
/* 626B4 80061AB4 AFB00050 */  sw         $s0, 0x50($sp)
/* 626B8 80061AB8 00C0A021 */  addu       $s4, $a2, $zero
/* 626BC 80061ABC 8FB50080 */  lw         $s5, 0x80($sp)
/* 626C0 80061AC0 00809021 */  addu       $s2, $a0, $zero
/* 626C4 80061AC4 00A09821 */  addu       $s3, $a1, $zero
/* 626C8 80061AC8 27B00038 */  addiu      $s0, $sp, 0x38
/* 626CC 80061ACC 27B10048 */  addiu      $s1, $sp, 0x48
/* 626D0 80061AD0 00E02021 */  addu       $a0, $a3, $zero
/* 626D4 80061AD4 02002821 */  addu       $a1, $s0, $zero
/* 626D8 80061AD8 0C01858E */  jal        func_80061638
/* 626DC 80061ADC 02203021 */   addu      $a2, $s1, $zero
/* 626E0 80061AE0 A7B20020 */  sh         $s2, 0x20($sp)
/* 626E4 80061AE4 A7B30022 */  sh         $s3, 0x22($sp)
/* 626E8 80061AE8 AFB40024 */  sw         $s4, 0x24($sp)
/* 626EC 80061AEC AFB00028 */  sw         $s0, 0x28($sp)
/* 626F0 80061AF0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 626F4 80061AF4 27A40010 */  addiu      $a0, $sp, 0x10
/* 626F8 80061AF8 3C058006 */  lui        $a1, %hi(func_80061A3C)
/* 626FC 80061AFC 24A51A3C */  addiu      $a1, $a1, %lo(func_80061A3C)
/* 62700 80061B00 27A60020 */  addiu      $a2, $sp, 0x20
/* 62704 80061B04 0C0190BF */  jal        func_800642FC
/* 62708 80061B08 24070002 */   addiu     $a3, $zero, 2
/* 6270C 80061B0C 8FA20030 */  lw         $v0, 0x30($sp)
/* 62710 80061B10 AEA20000 */  sw         $v0, ($s5)
/* 62714 80061B14 8FA20018 */  lw         $v0, 0x18($sp)
/* 62718 80061B18 8FBF0068 */  lw         $ra, 0x68($sp)
/* 6271C 80061B1C 8FB50064 */  lw         $s5, 0x64($sp)
/* 62720 80061B20 8FB40060 */  lw         $s4, 0x60($sp)
/* 62724 80061B24 8FB3005C */  lw         $s3, 0x5c($sp)
/* 62728 80061B28 8FB20058 */  lw         $s2, 0x58($sp)
/* 6272C 80061B2C 8FB10054 */  lw         $s1, 0x54($sp)
/* 62730 80061B30 8FB00050 */  lw         $s0, 0x50($sp)
/* 62734 80061B34 03E00008 */  jr         $ra
/* 62738 80061B38 27BD0070 */   addiu     $sp, $sp, 0x70
