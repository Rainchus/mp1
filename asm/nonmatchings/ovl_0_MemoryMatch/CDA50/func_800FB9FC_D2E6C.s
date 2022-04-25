	.set noat
	.set noreorder

glabel func_800FB9FC_D2E6C
/* D2E6C 800FB9FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D2E70 800FBA00 AFBF0028 */  sw         $ra, 0x28($sp)
/* D2E74 800FBA04 AFB10024 */  sw         $s1, 0x24($sp)
/* D2E78 800FBA08 AFB00020 */  sw         $s0, 0x20($sp)
/* D2E7C 800FBA0C 00808021 */  addu       $s0, $a0, $zero
/* D2E80 800FBA10 0C017F57 */  jal        func_8005FD5C
/* D2E84 800FBA14 8E110050 */   lw        $s1, 0x50($s0)
/* D2E88 800FBA18 3042FFFF */  andi       $v0, $v0, 0xffff
/* D2E8C 800FBA1C 3C03800F */  lui        $v1, %hi(D_800F64F8)
/* D2E90 800FBA20 906364F8 */  lbu        $v1, %lo(D_800F64F8)($v1)
/* D2E94 800FBA24 00431021 */  addu       $v0, $v0, $v1
/* D2E98 800FBA28 14400066 */  bnez       $v0, .L800FBBC4
/* D2E9C 800FBA2C 00000000 */   nop
/* D2EA0 800FBA30 92220005 */  lbu        $v0, 5($s1)
/* D2EA4 800FBA34 30420001 */  andi       $v0, $v0, 1
/* D2EA8 800FBA38 10400011 */  beqz       $v0, .L800FBA80
/* D2EAC 800FBA3C 00000000 */   nop
/* D2EB0 800FBA40 C6020018 */  lwc1       $f2, 0x18($s0)
/* D2EB4 800FBA44 460010A1 */  cvt.d.s    $f2, $f2
/* D2EB8 800FBA48 9202004D */  lbu        $v0, 0x4d($s0)
/* D2EBC 800FBA4C 44820000 */  mtc1       $v0, $f0
/* D2EC0 800FBA50 00000000 */  nop
/* D2EC4 800FBA54 46800020 */  cvt.s.w    $f0, $f0
/* D2EC8 800FBA58 3C014180 */  lui        $at, 0x4180
/* D2ECC 800FBA5C 44812000 */  mtc1       $at, $f4
/* D2ED0 800FBA60 00000000 */  nop
/* D2ED4 800FBA64 46040003 */  div.s      $f0, $f0, $f4
/* D2ED8 800FBA68 46000021 */  cvt.d.s    $f0, $f0
/* D2EDC 800FBA6C 3C018010 */  lui        $at, %hi(D_800FDC60)
/* D2EE0 800FBA70 D424DC60 */  ldc1       $f4, %lo(D_800FDC60)($at)
/* D2EE4 800FBA74 46240000 */  add.d      $f0, $f0, $f4
/* D2EE8 800FBA78 0803EEAF */  j          .L800FBABC
/* D2EEC 800FBA7C 46201081 */   sub.d     $f2, $f2, $f0
.L800FBA80:
/* D2EF0 800FBA80 C6020018 */  lwc1       $f2, 0x18($s0)
/* D2EF4 800FBA84 460010A1 */  cvt.d.s    $f2, $f2
/* D2EF8 800FBA88 9202004D */  lbu        $v0, 0x4d($s0)
/* D2EFC 800FBA8C 44820000 */  mtc1       $v0, $f0
/* D2F00 800FBA90 00000000 */  nop
/* D2F04 800FBA94 46800020 */  cvt.s.w    $f0, $f0
/* D2F08 800FBA98 3C014180 */  lui        $at, 0x4180
/* D2F0C 800FBA9C 44812000 */  mtc1       $at, $f4
/* D2F10 800FBAA0 00000000 */  nop
/* D2F14 800FBAA4 46040003 */  div.s      $f0, $f0, $f4
/* D2F18 800FBAA8 46000021 */  cvt.d.s    $f0, $f0
/* D2F1C 800FBAAC 3C018010 */  lui        $at, %hi(D_800FDC68)
/* D2F20 800FBAB0 D424DC68 */  ldc1       $f4, %lo(D_800FDC68)($at)
/* D2F24 800FBAB4 46240000 */  add.d      $f0, $f0, $f4
/* D2F28 800FBAB8 46201080 */  add.d      $f2, $f2, $f0
.L800FBABC:
/* D2F2C 800FBABC 462010A0 */  cvt.s.d    $f2, $f2
/* D2F30 800FBAC0 E6020018 */  swc1       $f2, 0x18($s0)
/* D2F34 800FBAC4 C6020018 */  lwc1       $f2, 0x18($s0)
/* D2F38 800FBAC8 3C01C47A */  lui        $at, 0xc47a
/* D2F3C 800FBACC 44810000 */  mtc1       $at, $f0
/* D2F40 800FBAD0 00000000 */  nop
/* D2F44 800FBAD4 4600103C */  c.lt.s     $f2, $f0
/* D2F48 800FBAD8 00000000 */  nop
/* D2F4C 800FBADC 45000009 */  bc1f       .L800FBB04
/* D2F50 800FBAE0 00000000 */   nop
/* D2F54 800FBAE4 3C0144FA */  lui        $at, 0x44fa
/* D2F58 800FBAE8 44810000 */  mtc1       $at, $f0
/* D2F5C 800FBAEC 00000000 */  nop
/* D2F60 800FBAF0 46001000 */  add.s      $f0, $f2, $f0
/* D2F64 800FBAF4 E6000018 */  swc1       $f0, 0x18($s0)
/* D2F68 800FBAF8 0C03EDDE */  jal        func_800FB778_D2BE8
/* D2F6C 800FBAFC 02002021 */   addu      $a0, $s0, $zero
/* D2F70 800FBB00 C6020018 */  lwc1       $f2, 0x18($s0)
.L800FBB04:
/* D2F74 800FBB04 3C01447A */  lui        $at, 0x447a
/* D2F78 800FBB08 44810000 */  mtc1       $at, $f0
/* D2F7C 800FBB0C 00000000 */  nop
/* D2F80 800FBB10 4602003C */  c.lt.s     $f0, $f2
/* D2F84 800FBB14 00000000 */  nop
/* D2F88 800FBB18 45000008 */  bc1f       .L800FBB3C
/* D2F8C 800FBB1C 00000000 */   nop
/* D2F90 800FBB20 3C0144FA */  lui        $at, 0x44fa
/* D2F94 800FBB24 44810000 */  mtc1       $at, $f0
/* D2F98 800FBB28 00000000 */  nop
/* D2F9C 800FBB2C 46001001 */  sub.s      $f0, $f2, $f0
/* D2FA0 800FBB30 E6000018 */  swc1       $f0, 0x18($s0)
/* D2FA4 800FBB34 0C03EDDE */  jal        func_800FB778_D2BE8
/* D2FA8 800FBB38 02002021 */   addu      $a0, $s0, $zero
.L800FBB3C:
/* D2FAC 800FBB3C 9202004C */  lbu        $v0, 0x4c($s0)
/* D2FB0 800FBB40 44826000 */  mtc1       $v0, $f12
/* D2FB4 800FBB44 00000000 */  nop
/* D2FB8 800FBB48 46806321 */  cvt.d.w    $f12, $f12
/* D2FBC 800FBB4C 3C018010 */  lui        $at, %hi(D_800FDC70)
/* D2FC0 800FBB50 D420DC70 */  ldc1       $f0, %lo(D_800FDC70)($at)
/* D2FC4 800FBB54 46206302 */  mul.d      $f12, $f12, $f0
/* D2FC8 800FBB58 0C02BAB0 */  jal        func_800AEAC0
/* D2FCC 800FBB5C 46206320 */   cvt.s.d   $f12, $f12
/* D2FD0 800FBB60 92220005 */  lbu        $v0, 5($s1)
/* D2FD4 800FBB64 00021080 */  sll        $v0, $v0, 2
/* D2FD8 800FBB68 46000021 */  cvt.d.s    $f0, $f0
/* D2FDC 800FBB6C 3C018010 */  lui        $at, %hi(D_800FDC78)
/* D2FE0 800FBB70 D422DC78 */  ldc1       $f2, %lo(D_800FDC78)($at)
/* D2FE4 800FBB74 46220002 */  mul.d      $f0, $f0, $f2
/* D2FE8 800FBB78 46200020 */  cvt.s.d    $f0, $f0
/* D2FEC 800FBB7C 3C018010 */  lui        $at, %hi(D_800FE200)
/* D2FF0 800FBB80 00220821 */  addu       $at, $at, $v0
/* D2FF4 800FBB84 E420E200 */  swc1       $f0, %lo(D_800FE200)($at)
/* D2FF8 800FBB88 92220005 */  lbu        $v0, 5($s1)
/* D2FFC 800FBB8C 3C038010 */  lui        $v1, %hi(D_800FE218)
/* D3000 800FBB90 2463E218 */  addiu      $v1, $v1, %lo(D_800FE218)
/* D3004 800FBB94 00021080 */  sll        $v0, $v0, 2
/* D3008 800FBB98 00431021 */  addu       $v0, $v0, $v1
/* D300C 800FBB9C C4400000 */  lwc1       $f0, ($v0)
/* D3010 800FBBA0 3C013E4C */  lui        $at, 0x3e4c
/* D3014 800FBBA4 3421CCCD */  ori        $at, $at, 0xcccd
/* D3018 800FBBA8 44811000 */  mtc1       $at, $f2
/* D301C 800FBBAC 00000000 */  nop
/* D3020 800FBBB0 46020000 */  add.s      $f0, $f0, $f2
/* D3024 800FBBB4 E4400000 */  swc1       $f0, ($v0)
/* D3028 800FBBB8 9202004C */  lbu        $v0, 0x4c($s0)
/* D302C 800FBBBC 24420001 */  addiu      $v0, $v0, 1
/* D3030 800FBBC0 A202004C */  sb         $v0, 0x4c($s0)
.L800FBBC4:
/* D3034 800FBBC4 8E020040 */  lw         $v0, 0x40($s0)
/* D3038 800FBBC8 84440000 */  lh         $a0, ($v0)
/* D303C 800FBBCC 92230005 */  lbu        $v1, 5($s1)
/* D3040 800FBBD0 00031880 */  sll        $v1, $v1, 2
/* D3044 800FBBD4 3C078010 */  lui        $a3, %hi(D_800FE1E8)
/* D3048 800FBBD8 00E33821 */  addu       $a3, $a3, $v1
/* D304C 800FBBDC 94E7E1E8 */  lhu        $a3, %lo(D_800FE1E8)($a3)
/* D3050 800FBBE0 3C028010 */  lui        $v0, %hi(D_800FE1EA)
/* D3054 800FBBE4 00431021 */  addu       $v0, $v0, $v1
/* D3058 800FBBE8 9442E1EA */  lhu        $v0, %lo(D_800FE1EA)($v0)
/* D305C 800FBBEC AFA20010 */  sw         $v0, 0x10($sp)
/* D3060 800FBBF0 3C028010 */  lui        $v0, %hi(D_800FDC54)
/* D3064 800FBBF4 2442DC54 */  addiu      $v0, $v0, %lo(D_800FDC54)
/* D3068 800FBBF8 AFA20014 */  sw         $v0, 0x14($sp)
/* D306C 800FBBFC 24020001 */  addiu      $v0, $zero, 1
/* D3070 800FBC00 AFA20018 */  sw         $v0, 0x18($sp)
/* D3074 800FBC04 3C058010 */  lui        $a1, %hi(D_800FE200)
/* D3078 800FBC08 00A32821 */  addu       $a1, $a1, $v1
/* D307C 800FBC0C 8CA5E200 */  lw         $a1, %lo(D_800FE200)($a1)
/* D3080 800FBC10 3C068010 */  lui        $a2, %hi(D_800FE218)
/* D3084 800FBC14 00C33021 */  addu       $a2, $a2, $v1
/* D3088 800FBC18 0C009F92 */  jal        func_80027E48
/* D308C 800FBC1C 8CC6E218 */   lw        $a2, %lo(D_800FE218)($a2)
/* D3090 800FBC20 8FBF0028 */  lw         $ra, 0x28($sp)
/* D3094 800FBC24 8FB10024 */  lw         $s1, 0x24($sp)
/* D3098 800FBC28 8FB00020 */  lw         $s0, 0x20($sp)
/* D309C 800FBC2C 03E00008 */  jr         $ra
/* D30A0 800FBC30 27BD0030 */   addiu     $sp, $sp, 0x30
