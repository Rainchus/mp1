	.set noat
	.set noreorder

glabel func_8004D0DC
/* 4DCDC 8004D0DC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4DCE0 8004D0E0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4DCE4 8004D0E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4DCE8 8004D0E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4DCEC 8004D0EC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4DCF0 8004D0F0 0C018CEA */  jal        func_800633A8
/* 4DCF4 8004D0F4 F7B40020 */   sdc1      $f20, 0x20($sp)
/* 4DCF8 8004D0F8 8C50008C */  lw         $s0, 0x8c($v0)
/* 4DCFC 8004D0FC 8E11001C */  lw         $s1, 0x1c($s0)
/* 4DD00 8004D100 0C00F4AC */  jal        func_8003D2B0
/* 4DD04 8004D104 02002021 */   addu      $a0, $s0, $zero
/* 4DD08 8004D108 46000506 */  mov.s      $f20, $f0
/* 4DD0C 8004D10C 0C00F4AC */  jal        func_8003D2B0
/* 4DD10 8004D110 2604000C */   addiu     $a0, $s0, 0xc
/* 4DD14 8004D114 46140581 */  sub.s      $f22, $f0, $f20
/* 4DD18 8004D118 44800000 */  mtc1       $zero, $f0
/* 4DD1C 8004D11C 00000000 */  nop
/* 4DD20 8004D120 4600B03C */  c.lt.s     $f22, $f0
/* 4DD24 8004D124 00000000 */  nop
/* 4DD28 8004D128 00000000 */  nop
/* 4DD2C 8004D12C 45000005 */  bc1f       .L8004D144
/* 4DD30 8004D130 02002021 */   addu      $a0, $s0, $zero
/* 4DD34 8004D134 3C0143B4 */  lui        $at, 0x43b4
/* 4DD38 8004D138 44810000 */  mtc1       $at, $f0
/* 4DD3C 8004D13C 00000000 */  nop
/* 4DD40 8004D140 4600B580 */  add.s      $f22, $f22, $f0
.L8004D144:
/* 4DD44 8004D144 0C00F633 */  jal        func_8003D8CC
/* 4DD48 8004D148 2605000C */   addiu     $a1, $s0, 0xc
/* 4DD4C 8004D14C 44911000 */  mtc1       $s1, $f2
/* 4DD50 8004D150 00000000 */  nop
/* 4DD54 8004D154 468010A0 */  cvt.s.w    $f2, $f2
/* 4DD58 8004D158 46020083 */  div.s      $f2, $f0, $f2
/* 4DD5C 8004D15C 3C014334 */  lui        $at, 0x4334
/* 4DD60 8004D160 44810000 */  mtc1       $at, $f0
/* 4DD64 8004D164 00000000 */  nop
/* 4DD68 8004D168 4600B03C */  c.lt.s     $f22, $f0
/* 4DD6C 8004D16C 00000000 */  nop
/* 4DD70 8004D170 00000000 */  nop
/* 4DD74 8004D174 45020001 */  bc1fl      .L8004D17C
/* 4DD78 8004D178 46001087 */   neg.s     $f2, $f2
.L8004D17C:
/* 4DD7C 8004D17C 4480A000 */  mtc1       $zero, $f20
/* 4DD80 8004D180 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DD84 8004D184 10400010 */  beqz       $v0, .L8004D1C8
/* 4DD88 8004D188 46001586 */   mov.s     $f22, $f2
.L8004D18C:
/* 4DD8C 8004D18C 8E040018 */  lw         $a0, 0x18($s0)
/* 4DD90 8004D190 0C028354 */  jal        func_800A0D50
/* 4DD94 8004D194 02002821 */   addu      $a1, $s0, $zero
/* 4DD98 8004D198 4616A500 */  add.s      $f20, $f20, $f22
/* 4DD9C 8004D19C 8E040018 */  lw         $a0, 0x18($s0)
/* 4DDA0 8004D1A0 4405A000 */  mfc1       $a1, $f20
/* 4DDA4 8004D1A4 0C00F545 */  jal        func_8003D514
/* 4DDA8 8004D1A8 00000000 */   nop
/* 4DDAC 8004D1AC 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DDB0 8004D1B0 2442FFFF */  addiu      $v0, $v0, -1
/* 4DDB4 8004D1B4 0C018D6D */  jal        func_800635B4
/* 4DDB8 8004D1B8 AE02001C */   sw        $v0, 0x1c($s0)
/* 4DDBC 8004D1BC 8E02001C */  lw         $v0, 0x1c($s0)
/* 4DDC0 8004D1C0 1440FFF2 */  bnez       $v0, .L8004D18C
/* 4DDC4 8004D1C4 00000000 */   nop
.L8004D1C8:
/* 4DDC8 8004D1C8 0C017764 */  jal        func_8005DD90
/* 4DDCC 8004D1CC 00002021 */   addu      $a0, $zero, $zero
/* 4DDD0 8004D1D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4DDD4 8004D1D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 4DDD8 8004D1D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DDDC 8004D1DC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4DDE0 8004D1E0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4DDE4 8004D1E4 03E00008 */  jr         $ra
/* 4DDE8 8004D1E8 27BD0030 */   addiu     $sp, $sp, 0x30
