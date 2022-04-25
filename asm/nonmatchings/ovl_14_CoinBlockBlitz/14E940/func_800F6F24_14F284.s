	.set noat
	.set noreorder

glabel func_800F6F24_14F284
/* 14F284 800F6F24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 14F288 800F6F28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 14F28C 800F6F2C AFB10014 */  sw         $s1, 0x14($sp)
/* 14F290 800F6F30 AFB00010 */  sw         $s0, 0x10($sp)
/* 14F294 800F6F34 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 14F298 800F6F38 00808021 */  addu       $s0, $a0, $zero
/* 14F29C 800F6F3C 4485A000 */  mtc1       $a1, $f20
/* 14F2A0 800F6F40 8E020040 */  lw         $v0, 0x40($s0)
/* 14F2A4 800F6F44 00078840 */  sll        $s1, $a3, 1
/* 14F2A8 800F6F48 02221021 */  addu       $v0, $s1, $v0
/* 14F2AC 800F6F4C C600001C */  lwc1       $f0, 0x1c($s0)
/* 14F2B0 800F6F50 84440000 */  lh         $a0, ($v0)
/* 14F2B4 800F6F54 8E050018 */  lw         $a1, 0x18($s0)
/* 14F2B8 800F6F58 44861000 */  mtc1       $a2, $f2
/* 14F2BC 800F6F5C 00000000 */  nop
/* 14F2C0 800F6F60 46001080 */  add.s      $f2, $f2, $f0
/* 14F2C4 800F6F64 44061000 */  mfc1       $a2, $f2
/* 14F2C8 800F6F68 0C0095E6 */  jal        func_80025798
/* 14F2CC 800F6F6C 8E070020 */   lw        $a3, 0x20($s0)
/* 14F2D0 800F6F70 8E020040 */  lw         $v0, 0x40($s0)
/* 14F2D4 800F6F74 02228821 */  addu       $s1, $s1, $v0
/* 14F2D8 800F6F78 86240000 */  lh         $a0, ($s1)
/* 14F2DC 800F6F7C 4405A000 */  mfc1       $a1, $f20
/* 14F2E0 800F6F80 4406A000 */  mfc1       $a2, $f20
/* 14F2E4 800F6F84 4407A000 */  mfc1       $a3, $f20
/* 14F2E8 800F6F88 0C00960C */  jal        func_80025830
/* 14F2EC 800F6F8C 00000000 */   nop
/* 14F2F0 800F6F90 8FBF0018 */  lw         $ra, 0x18($sp)
/* 14F2F4 800F6F94 8FB10014 */  lw         $s1, 0x14($sp)
/* 14F2F8 800F6F98 8FB00010 */  lw         $s0, 0x10($sp)
/* 14F2FC 800F6F9C D7B40020 */  ldc1       $f20, 0x20($sp)
/* 14F300 800F6FA0 03E00008 */  jr         $ra
/* 14F304 800F6FA4 27BD0028 */   addiu     $sp, $sp, 0x28
