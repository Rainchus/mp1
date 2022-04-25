	.set noat
	.set noreorder

glabel func_80019964
/* 1A564 80019964 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 1A568 80019968 AFBF0094 */  sw         $ra, 0x94($sp)
/* 1A56C 8001996C AFB60090 */  sw         $s6, 0x90($sp)
/* 1A570 80019970 AFB5008C */  sw         $s5, 0x8c($sp)
/* 1A574 80019974 AFB40088 */  sw         $s4, 0x88($sp)
/* 1A578 80019978 AFB30084 */  sw         $s3, 0x84($sp)
/* 1A57C 8001997C AFB20080 */  sw         $s2, 0x80($sp)
/* 1A580 80019980 AFB1007C */  sw         $s1, 0x7c($sp)
/* 1A584 80019984 AFB00078 */  sw         $s0, 0x78($sp)
/* 1A588 80019988 F7B40098 */  sdc1       $f20, 0x98($sp)
/* 1A58C 8001998C 00808821 */  addu       $s1, $a0, $zero
/* 1A590 80019990 00A0B021 */  addu       $s6, $a1, $zero
/* 1A594 80019994 4486A000 */  mtc1       $a2, $f20
/* 1A598 80019998 00E0A821 */  addu       $s5, $a3, $zero
/* 1A59C 8001999C 27A40018 */  addiu      $a0, $sp, 0x18
/* 1A5A0 800199A0 0C028354 */  jal        func_800A0D50
/* 1A5A4 800199A4 02202821 */   addu      $a1, $s1, $zero
/* 1A5A8 800199A8 27B30028 */  addiu      $s3, $sp, 0x28
/* 1A5AC 800199AC 02602021 */  addu       $a0, $s3, $zero
/* 1A5B0 800199B0 2625000C */  addiu      $a1, $s1, 0xc
/* 1A5B4 800199B4 0C0283A0 */  jal        func_800A0E80
/* 1A5B8 800199B8 02203021 */   addu      $a2, $s1, $zero
/* 1A5BC 800199BC 27B20038 */  addiu      $s2, $sp, 0x38
/* 1A5C0 800199C0 02402021 */  addu       $a0, $s2, $zero
/* 1A5C4 800199C4 26250018 */  addiu      $a1, $s1, 0x18
/* 1A5C8 800199C8 0C0283A0 */  jal        func_800A0E80
/* 1A5CC 800199CC 02203021 */   addu      $a2, $s1, $zero
/* 1A5D0 800199D0 27B40048 */  addiu      $s4, $sp, 0x48
/* 1A5D4 800199D4 02802021 */  addu       $a0, $s4, $zero
/* 1A5D8 800199D8 02602821 */  addu       $a1, $s3, $zero
/* 1A5DC 800199DC 0C02853C */  jal        func_800A14F0
/* 1A5E0 800199E0 02403021 */   addu      $a2, $s2, $zero
/* 1A5E4 800199E4 27B00058 */  addiu      $s0, $sp, 0x58
/* 1A5E8 800199E8 02002021 */  addu       $a0, $s0, $zero
/* 1A5EC 800199EC 02C02821 */  addu       $a1, $s6, $zero
/* 1A5F0 800199F0 0C0283A0 */  jal        func_800A0E80
/* 1A5F4 800199F4 02203021 */   addu      $a2, $s1, $zero
/* 1A5F8 800199F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A5FC 800199FC 27B00068 */  addiu      $s0, $sp, 0x68
/* 1A600 80019A00 AFB00014 */  sw         $s0, 0x14($sp)
/* 1A604 80019A04 27A40018 */  addiu      $a0, $sp, 0x18
/* 1A608 80019A08 02602821 */  addu       $a1, $s3, $zero
/* 1A60C 80019A0C 02403021 */  addu       $a2, $s2, $zero
/* 1A610 80019A10 0C00669E */  jal        func_80019A78
/* 1A614 80019A14 02803821 */   addu      $a3, $s4, $zero
/* 1A618 80019A18 02A02021 */  addu       $a0, $s5, $zero
/* 1A61C 80019A1C 02002821 */  addu       $a1, $s0, $zero
/* 1A620 80019A20 0C028380 */  jal        func_800A0E00
/* 1A624 80019A24 27A60018 */   addiu     $a2, $sp, 0x18
/* 1A628 80019A28 02A02021 */  addu       $a0, $s5, $zero
/* 1A62C 80019A2C 0C0284F0 */  jal        func_800A13C0
/* 1A630 80019A30 02C02821 */   addu      $a1, $s6, $zero
/* 1A634 80019A34 4600A03C */  c.lt.s     $f20, $f0
/* 1A638 80019A38 00000000 */  nop
/* 1A63C 80019A3C 00000000 */  nop
/* 1A640 80019A40 45010002 */  bc1t       .L80019A4C
/* 1A644 80019A44 00001021 */   addu      $v0, $zero, $zero
/* 1A648 80019A48 24020001 */  addiu      $v0, $zero, 1
.L80019A4C:
/* 1A64C 80019A4C 8FBF0094 */  lw         $ra, 0x94($sp)
/* 1A650 80019A50 8FB60090 */  lw         $s6, 0x90($sp)
/* 1A654 80019A54 8FB5008C */  lw         $s5, 0x8c($sp)
/* 1A658 80019A58 8FB40088 */  lw         $s4, 0x88($sp)
/* 1A65C 80019A5C 8FB30084 */  lw         $s3, 0x84($sp)
/* 1A660 80019A60 8FB20080 */  lw         $s2, 0x80($sp)
/* 1A664 80019A64 8FB1007C */  lw         $s1, 0x7c($sp)
/* 1A668 80019A68 8FB00078 */  lw         $s0, 0x78($sp)
/* 1A66C 80019A6C D7B40098 */  ldc1       $f20, 0x98($sp)
/* 1A670 80019A70 03E00008 */  jr         $ra
/* 1A674 80019A74 27BD00A0 */   addiu     $sp, $sp, 0xa0
