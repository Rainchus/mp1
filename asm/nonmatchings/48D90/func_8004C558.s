	.set noat
	.set noreorder

glabel func_8004C558
/* 4D158 8004C558 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D15C 8004C55C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D160 8004C560 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D164 8004C564 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4D168 8004C568 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4D16C 8004C56C 0C018CEA */  jal        func_800633A8
/* 4D170 8004C570 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 4D174 8004C574 0C01307B */  jal        func_8004C1EC
/* 4D178 8004C578 8444008E */   lh        $a0, 0x8e($v0)
/* 4D17C 8004C57C 00408021 */  addu       $s0, $v0, $zero
/* 4D180 8004C580 3C013FB3 */  lui        $at, 0x3fb3
/* 4D184 8004C584 34213333 */  ori        $at, $at, 0x3333
/* 4D188 8004C588 4481A000 */  mtc1       $at, $f20
/* 4D18C 8004C58C 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D190 8004C590 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D194 8004C594 10400018 */  beqz       $v0, .L8004C5F8
/* 4D198 8004C598 00000000 */   nop
/* 4D19C 8004C59C 3C013D4C */  lui        $at, 0x3d4c
/* 4D1A0 8004C5A0 3421CCCD */  ori        $at, $at, 0xcccd
/* 4D1A4 8004C5A4 4481C000 */  mtc1       $at, $f24
/* 4D1A8 8004C5A8 3C013F80 */  lui        $at, 0x3f80
/* 4D1AC 8004C5AC 4481B000 */  mtc1       $at, $f22
.L8004C5B0:
/* 4D1B0 8004C5B0 0C018D6D */  jal        func_800635B4
/* 4D1B4 8004C5B4 00000000 */   nop
/* 4D1B8 8004C5B8 4618A501 */  sub.s      $f20, $f20, $f24
/* 4D1BC 8004C5BC 4616A03E */  c.le.s     $f20, $f22
/* 4D1C0 8004C5C0 00000000 */  nop
/* 4D1C4 8004C5C4 00000000 */  nop
/* 4D1C8 8004C5C8 45030001 */  bc1tl      .L8004C5D0
/* 4D1CC 8004C5CC 4600B506 */   mov.s     $f20, $f22
.L8004C5D0:
/* 4D1D0 8004C5D0 E6140010 */  swc1       $f20, 0x10($s0)
/* 4D1D4 8004C5D4 4616A03E */  c.le.s     $f20, $f22
/* 4D1D8 8004C5D8 00000000 */  nop
/* 4D1DC 8004C5DC 00000000 */  nop
/* 4D1E0 8004C5E0 45010005 */  bc1t       .L8004C5F8
/* 4D1E4 8004C5E4 E6140018 */   swc1      $f20, 0x18($s0)
/* 4D1E8 8004C5E8 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D1EC 8004C5EC 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D1F0 8004C5F0 1440FFEF */  bnez       $v0, .L8004C5B0
/* 4D1F4 8004C5F4 00000000 */   nop
.L8004C5F8:
/* 4D1F8 8004C5F8 0C017764 */  jal        func_8005DD90
/* 4D1FC 8004C5FC 00002021 */   addu      $a0, $zero, $zero
/* 4D200 8004C600 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D204 8004C604 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D208 8004C608 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4D20C 8004C60C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4D210 8004C610 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4D214 8004C614 03E00008 */  jr         $ra
/* 4D218 8004C618 27BD0030 */   addiu     $sp, $sp, 0x30
