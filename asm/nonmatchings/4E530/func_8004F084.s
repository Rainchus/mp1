	.set noat
	.set noreorder

glabel func_8004F084
/* 4FC84 8004F084 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FC88 8004F088 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4FC8C 8004F08C AFB00018 */  sw         $s0, 0x18($sp)
/* 4FC90 8004F090 00808021 */  addu       $s0, $a0, $zero
/* 4FC94 8004F094 C60C0018 */  lwc1       $f12, 0x18($s0)
/* 4FC98 8004F098 46006321 */  cvt.d.s    $f12, $f12
/* 4FC9C 8004F09C 3C01800D */  lui        $at, %hi(D_800CB128)
/* 4FCA0 8004F0A0 D420B128 */  ldc1       $f0, %lo(D_800CB128)($at)
/* 4FCA4 8004F0A4 46206302 */  mul.d      $f12, $f12, $f0
/* 4FCA8 8004F0A8 0C022018 */  jal        func_80088060
/* 4FCAC 8004F0AC 46206320 */   cvt.s.d   $f12, $f12
/* 4FCB0 8004F0B0 3C014000 */  lui        $at, 0x4000
/* 4FCB4 8004F0B4 44811000 */  mtc1       $at, $f2
/* 4FCB8 8004F0B8 00000000 */  nop
/* 4FCBC 8004F0BC 46020003 */  div.s      $f0, $f0, $f2
/* 4FCC0 8004F0C0 3C013F00 */  lui        $at, 0x3f00
/* 4FCC4 8004F0C4 44811000 */  mtc1       $at, $f2
/* 4FCC8 8004F0C8 8604003C */  lh         $a0, 0x3c($s0)
/* 4FCCC 8004F0CC 86050044 */  lh         $a1, 0x44($s0)
/* 4FCD0 8004F0D0 3C02800D */  lui        $v0, %hi(D_800CB11C)
/* 4FCD4 8004F0D4 2442B11C */  addiu      $v0, $v0, %lo(D_800CB11C)
/* 4FCD8 8004F0D8 AFA20010 */  sw         $v0, 0x10($sp)
/* 4FCDC 8004F0DC 46020080 */  add.s      $f2, $f0, $f2
/* 4FCE0 8004F0E0 44061000 */  mfc1       $a2, $f2
/* 4FCE4 8004F0E4 3C07800D */  lui        $a3, %hi(D_800CB110)
/* 4FCE8 8004F0E8 24E7B110 */  addiu      $a3, $a3, %lo(D_800CB110)
/* 4FCEC 8004F0EC 0C00993E */  jal        func_800264F8
/* 4FCF0 8004F0F0 AFA00014 */   sw        $zero, 0x14($sp)
/* 4FCF4 8004F0F4 C6020018 */  lwc1       $f2, 0x18($s0)
/* 4FCF8 8004F0F8 3C0141A0 */  lui        $at, 0x41a0
/* 4FCFC 8004F0FC 44810000 */  mtc1       $at, $f0
/* 4FD00 8004F100 00000000 */  nop
/* 4FD04 8004F104 46001000 */  add.s      $f0, $f2, $f0
/* 4FD08 8004F108 3C0143B4 */  lui        $at, 0x43b4
/* 4FD0C 8004F10C 44811000 */  mtc1       $at, $f2
/* 4FD10 8004F110 00000000 */  nop
/* 4FD14 8004F114 4600103E */  c.le.s     $f2, $f0
/* 4FD18 8004F118 00000000 */  nop
/* 4FD1C 8004F11C 00000000 */  nop
/* 4FD20 8004F120 45000003 */  bc1f       .L8004F130
/* 4FD24 8004F124 E6000018 */   swc1      $f0, 0x18($s0)
/* 4FD28 8004F128 46020001 */  sub.s      $f0, $f0, $f2
/* 4FD2C 8004F12C E6000018 */  swc1       $f0, 0x18($s0)
.L8004F130:
/* 4FD30 8004F130 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4FD34 8004F134 8FB00018 */  lw         $s0, 0x18($sp)
/* 4FD38 8004F138 03E00008 */  jr         $ra
/* 4FD3C 8004F13C 27BD0020 */   addiu     $sp, $sp, 0x20
