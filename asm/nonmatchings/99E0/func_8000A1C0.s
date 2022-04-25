	.set noat
	.set noreorder

glabel func_8000A1C0
/* ADC0 8000A1C0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* ADC4 8000A1C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* ADC8 8000A1C8 AFB20018 */  sw         $s2, 0x18($sp)
/* ADCC 8000A1CC AFB10014 */  sw         $s1, 0x14($sp)
/* ADD0 8000A1D0 AFB00010 */  sw         $s0, 0x10($sp)
/* ADD4 8000A1D4 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* ADD8 8000A1D8 F7BC0040 */  sdc1       $f28, 0x40($sp)
/* ADDC 8000A1DC F7BA0038 */  sdc1       $f26, 0x38($sp)
/* ADE0 8000A1E0 F7B80030 */  sdc1       $f24, 0x30($sp)
/* ADE4 8000A1E4 F7B60028 */  sdc1       $f22, 0x28($sp)
/* ADE8 8000A1E8 F7B40020 */  sdc1       $f20, 0x20($sp)
/* ADEC 8000A1EC 00808821 */  addu       $s1, $a0, $zero
/* ADF0 8000A1F0 00A08021 */  addu       $s0, $a1, $zero
/* ADF4 8000A1F4 00C09021 */  addu       $s2, $a2, $zero
/* ADF8 8000A1F8 C4FA0024 */  lwc1       $f26, 0x24($a3)
/* ADFC 8000A1FC C4FC0028 */  lwc1       $f28, 0x28($a3)
/* AE00 8000A200 C4FE002C */  lwc1       $f30, 0x2c($a3)
/* AE04 8000A204 C4E20018 */  lwc1       $f2, 0x18($a3)
/* AE08 8000A208 C4E4001C */  lwc1       $f4, 0x1c($a3)
/* AE0C 8000A20C C4E60020 */  lwc1       $f6, 0x20($a3)
/* AE10 8000A210 C6540000 */  lwc1       $f20, ($s2)
/* AE14 8000A214 C6560004 */  lwc1       $f22, 4($s2)
/* AE18 8000A218 C6580008 */  lwc1       $f24, 8($s2)
/* AE1C 8000A21C 44800000 */  mtc1       $zero, $f0
/* AE20 8000A220 00000000 */  nop
/* AE24 8000A224 46001032 */  c.eq.s     $f2, $f0
/* AE28 8000A228 00000000 */  nop
/* AE2C 8000A22C 00000000 */  nop
/* AE30 8000A230 45000004 */  bc1f       .L8000A244
/* AE34 8000A234 24020001 */   addiu     $v0, $zero, 1
/* AE38 8000A238 00001021 */  addu       $v0, $zero, $zero
/* AE3C 8000A23C 44800000 */  mtc1       $zero, $f0
/* AE40 8000A240 00000000 */  nop
.L8000A244:
/* AE44 8000A244 46002032 */  c.eq.s     $f4, $f0
/* AE48 8000A248 00000000 */  nop
/* AE4C 8000A24C 00000000 */  nop
/* AE50 8000A250 45000002 */  bc1f       .L8000A25C
/* AE54 8000A254 24030001 */   addiu     $v1, $zero, 1
/* AE58 8000A258 00001821 */  addu       $v1, $zero, $zero
.L8000A25C:
/* AE5C 8000A25C 00431025 */  or         $v0, $v0, $v1
/* AE60 8000A260 14400007 */  bnez       $v0, .L8000A280
/* AE64 8000A264 00000000 */   nop
/* AE68 8000A268 44800000 */  mtc1       $zero, $f0
/* AE6C 8000A26C 00000000 */  nop
/* AE70 8000A270 46003032 */  c.eq.s     $f6, $f0
/* AE74 8000A274 00000000 */  nop
/* AE78 8000A278 45010009 */  bc1t       .L8000A2A0
/* AE7C 8000A27C 00000000 */   nop
.L8000A280:
/* AE80 8000A280 44051000 */  mfc1       $a1, $f2
/* AE84 8000A284 44062000 */  mfc1       $a2, $f4
/* AE88 8000A288 44073000 */  mfc1       $a3, $f6
/* AE8C 8000A28C 00000000 */  nop
/* AE90 8000A290 0C027A90 */  jal        func_8009EA40
/* AE94 8000A294 02202021 */   addu      $a0, $s1, $zero
/* AE98 8000A298 080028AA */  j          .L8000A2A8
/* AE9C 8000A29C 00000000 */   nop
.L8000A2A0:
/* AEA0 8000A2A0 0C028A94 */  jal        func_800A2A50
/* AEA4 8000A2A4 02202021 */   addu      $a0, $s1, $zero
.L8000A2A8:
/* AEA8 8000A2A8 44800000 */  mtc1       $zero, $f0
/* AEAC 8000A2AC 00000000 */  nop
/* AEB0 8000A2B0 4600D032 */  c.eq.s     $f26, $f0
/* AEB4 8000A2B4 00000000 */  nop
/* AEB8 8000A2B8 00000000 */  nop
/* AEBC 8000A2BC 45000004 */  bc1f       .L8000A2D0
/* AEC0 8000A2C0 24020001 */   addiu     $v0, $zero, 1
/* AEC4 8000A2C4 00001021 */  addu       $v0, $zero, $zero
/* AEC8 8000A2C8 44800000 */  mtc1       $zero, $f0
/* AECC 8000A2CC 00000000 */  nop
.L8000A2D0:
/* AED0 8000A2D0 4600E032 */  c.eq.s     $f28, $f0
/* AED4 8000A2D4 00000000 */  nop
/* AED8 8000A2D8 00000000 */  nop
/* AEDC 8000A2DC 45000002 */  bc1f       .L8000A2E8
/* AEE0 8000A2E0 24030001 */   addiu     $v1, $zero, 1
/* AEE4 8000A2E4 00001821 */  addu       $v1, $zero, $zero
.L8000A2E8:
/* AEE8 8000A2E8 00431025 */  or         $v0, $v0, $v1
/* AEEC 8000A2EC 14400008 */  bnez       $v0, .L8000A310
/* AEF0 8000A2F0 00000000 */   nop
/* AEF4 8000A2F4 44800000 */  mtc1       $zero, $f0
/* AEF8 8000A2F8 00000000 */  nop
/* AEFC 8000A2FC 4600F032 */  c.eq.s     $f30, $f0
/* AF00 8000A300 00000000 */  nop
/* AF04 8000A304 00000000 */  nop
/* AF08 8000A308 45010008 */  bc1t       .L8000A32C
/* AF0C 8000A30C 02202021 */   addu      $a0, $s1, $zero
.L8000A310:
/* AF10 8000A310 4405D000 */  mfc1       $a1, $f26
/* AF14 8000A314 4406E000 */  mfc1       $a2, $f28
/* AF18 8000A318 4407F000 */  mfc1       $a3, $f30
/* AF1C 8000A31C 00000000 */  nop
/* AF20 8000A320 0C008929 */  jal        func_800224A4
/* AF24 8000A324 02202021 */   addu      $a0, $s1, $zero
/* AF28 8000A328 02202021 */  addu       $a0, $s1, $zero
.L8000A32C:
/* AF2C 8000A32C 0C0065A8 */  jal        func_800196A0
/* AF30 8000A330 02002821 */   addu      $a1, $s0, $zero
/* AF34 8000A334 C6020000 */  lwc1       $f2, ($s0)
/* AF38 8000A338 4602A082 */  mul.s      $f2, $f20, $f2
/* AF3C 8000A33C C6000010 */  lwc1       $f0, 0x10($s0)
/* AF40 8000A340 4600B002 */  mul.s      $f0, $f22, $f0
/* AF44 8000A344 46001080 */  add.s      $f2, $f2, $f0
/* AF48 8000A348 C6000020 */  lwc1       $f0, 0x20($s0)
/* AF4C 8000A34C 4600C002 */  mul.s      $f0, $f24, $f0
/* AF50 8000A350 46001080 */  add.s      $f2, $f2, $f0
/* AF54 8000A354 C6000030 */  lwc1       $f0, 0x30($s0)
/* AF58 8000A358 46001080 */  add.s      $f2, $f2, $f0
/* AF5C 8000A35C E6420000 */  swc1       $f2, ($s2)
/* AF60 8000A360 C6020004 */  lwc1       $f2, 4($s0)
/* AF64 8000A364 4602A082 */  mul.s      $f2, $f20, $f2
/* AF68 8000A368 C6000014 */  lwc1       $f0, 0x14($s0)
/* AF6C 8000A36C 4600B002 */  mul.s      $f0, $f22, $f0
/* AF70 8000A370 46001080 */  add.s      $f2, $f2, $f0
/* AF74 8000A374 C6000024 */  lwc1       $f0, 0x24($s0)
/* AF78 8000A378 4600C002 */  mul.s      $f0, $f24, $f0
/* AF7C 8000A37C 46001080 */  add.s      $f2, $f2, $f0
/* AF80 8000A380 C6000034 */  lwc1       $f0, 0x34($s0)
/* AF84 8000A384 46001080 */  add.s      $f2, $f2, $f0
/* AF88 8000A388 E6420004 */  swc1       $f2, 4($s2)
/* AF8C 8000A38C C6020008 */  lwc1       $f2, 8($s0)
/* AF90 8000A390 4602A082 */  mul.s      $f2, $f20, $f2
/* AF94 8000A394 C6000018 */  lwc1       $f0, 0x18($s0)
/* AF98 8000A398 4600B002 */  mul.s      $f0, $f22, $f0
/* AF9C 8000A39C 46001080 */  add.s      $f2, $f2, $f0
/* AFA0 8000A3A0 C6000028 */  lwc1       $f0, 0x28($s0)
/* AFA4 8000A3A4 4600C002 */  mul.s      $f0, $f24, $f0
/* AFA8 8000A3A8 46001080 */  add.s      $f2, $f2, $f0
/* AFAC 8000A3AC C6000038 */  lwc1       $f0, 0x38($s0)
/* AFB0 8000A3B0 46001080 */  add.s      $f2, $f2, $f0
/* AFB4 8000A3B4 E6420008 */  swc1       $f2, 8($s2)
/* AFB8 8000A3B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* AFBC 8000A3BC 8FB20018 */  lw         $s2, 0x18($sp)
/* AFC0 8000A3C0 8FB10014 */  lw         $s1, 0x14($sp)
/* AFC4 8000A3C4 8FB00010 */  lw         $s0, 0x10($sp)
/* AFC8 8000A3C8 D7BE0048 */  ldc1       $f30, 0x48($sp)
/* AFCC 8000A3CC D7BC0040 */  ldc1       $f28, 0x40($sp)
/* AFD0 8000A3D0 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* AFD4 8000A3D4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* AFD8 8000A3D8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* AFDC 8000A3DC D7B40020 */  ldc1       $f20, 0x20($sp)
/* AFE0 8000A3E0 03E00008 */  jr         $ra
/* AFE4 8000A3E4 27BD0050 */   addiu     $sp, $sp, 0x50
