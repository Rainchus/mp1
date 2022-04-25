	.set noat
	.set noreorder

glabel func_80009D48
/* A948 80009D48 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* A94C 80009D4C AFBF0028 */  sw         $ra, 0x28($sp)
/* A950 80009D50 AFB10024 */  sw         $s1, 0x24($sp)
/* A954 80009D54 AFB00020 */  sw         $s0, 0x20($sp)
/* A958 80009D58 F7B80040 */  sdc1       $f24, 0x40($sp)
/* A95C 80009D5C F7B60038 */  sdc1       $f22, 0x38($sp)
/* A960 80009D60 F7B40030 */  sdc1       $f20, 0x30($sp)
/* A964 80009D64 00808021 */  addu       $s0, $a0, $zero
/* A968 80009D68 00A08821 */  addu       $s1, $a1, $zero
/* A96C 80009D6C 86020000 */  lh         $v0, ($s0)
/* A970 80009D70 4482B000 */  mtc1       $v0, $f22
/* A974 80009D74 00000000 */  nop
/* A978 80009D78 4680B5A0 */  cvt.s.w    $f22, $f22
/* A97C 80009D7C 86220000 */  lh         $v0, ($s1)
/* A980 80009D80 4482A000 */  mtc1       $v0, $f20
/* A984 80009D84 00000000 */  nop
/* A988 80009D88 4680A520 */  cvt.s.w    $f20, $f20
/* A98C 80009D8C 4616B002 */  mul.s      $f0, $f22, $f22
/* A990 80009D90 00000000 */  nop
/* A994 80009D94 4614A302 */  mul.s      $f12, $f20, $f20
/* A998 80009D98 0C02C5D4 */  jal        func_800B1750
/* A99C 80009D9C 460C0300 */   add.s     $f12, $f0, $f12
/* A9A0 80009DA0 3C014270 */  lui        $at, 0x4270
/* A9A4 80009DA4 4481C000 */  mtc1       $at, $f24
/* A9A8 80009DA8 00000000 */  nop
/* A9AC 80009DAC 4600C03C */  c.lt.s     $f24, $f0
/* A9B0 80009DB0 00000000 */  nop
/* A9B4 80009DB4 45000012 */  bc1f       .L80009E00
/* A9B8 80009DB8 00000000 */   nop
/* A9BC 80009DBC E7B60010 */  swc1       $f22, 0x10($sp)
/* A9C0 80009DC0 AFA00014 */  sw         $zero, 0x14($sp)
/* A9C4 80009DC4 E7B40018 */  swc1       $f20, 0x18($sp)
/* A9C8 80009DC8 0C00A55B */  jal        func_8002956C
/* A9CC 80009DCC 27A40010 */   addiu     $a0, $sp, 0x10
/* A9D0 80009DD0 C7A00010 */  lwc1       $f0, 0x10($sp)
/* A9D4 80009DD4 46180002 */  mul.s      $f0, $f0, $f24
/* A9D8 80009DD8 4600008D */  trunc.w.s  $f2, $f0
/* A9DC 80009DDC 44021000 */  mfc1       $v0, $f2
/* A9E0 80009DE0 00000000 */  nop
/* A9E4 80009DE4 A6020000 */  sh         $v0, ($s0)
/* A9E8 80009DE8 C7A00018 */  lwc1       $f0, 0x18($sp)
/* A9EC 80009DEC 46180002 */  mul.s      $f0, $f0, $f24
/* A9F0 80009DF0 4600008D */  trunc.w.s  $f2, $f0
/* A9F4 80009DF4 44021000 */  mfc1       $v0, $f2
/* A9F8 80009DF8 00000000 */  nop
/* A9FC 80009DFC A6220000 */  sh         $v0, ($s1)
.L80009E00:
/* AA00 80009E00 8FBF0028 */  lw         $ra, 0x28($sp)
/* AA04 80009E04 8FB10024 */  lw         $s1, 0x24($sp)
/* AA08 80009E08 8FB00020 */  lw         $s0, 0x20($sp)
/* AA0C 80009E0C D7B80040 */  ldc1       $f24, 0x40($sp)
/* AA10 80009E10 D7B60038 */  ldc1       $f22, 0x38($sp)
/* AA14 80009E14 D7B40030 */  ldc1       $f20, 0x30($sp)
/* AA18 80009E18 03E00008 */  jr         $ra
/* AA1C 80009E1C 27BD0048 */   addiu     $sp, $sp, 0x48
