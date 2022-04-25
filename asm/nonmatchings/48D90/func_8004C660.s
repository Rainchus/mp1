	.set noat
	.set noreorder

glabel func_8004C660
/* 4D260 8004C660 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D264 8004C664 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D268 8004C668 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D26C 8004C66C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4D270 8004C670 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4D274 8004C674 0C018CEA */  jal        func_800633A8
/* 4D278 8004C678 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 4D27C 8004C67C 0C01307B */  jal        func_8004C1EC
/* 4D280 8004C680 8444008E */   lh        $a0, 0x8e($v0)
/* 4D284 8004C684 00408021 */  addu       $s0, $v0, $zero
/* 4D288 8004C688 3C013F80 */  lui        $at, 0x3f80
/* 4D28C 8004C68C 4481A000 */  mtc1       $at, $f20
/* 4D290 8004C690 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D294 8004C694 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D298 8004C698 10400017 */  beqz       $v0, .L8004C6F8
/* 4D29C 8004C69C 00000000 */   nop
/* 4D2A0 8004C6A0 3C013DCC */  lui        $at, 0x3dcc
/* 4D2A4 8004C6A4 3421CCCD */  ori        $at, $at, 0xcccd
/* 4D2A8 8004C6A8 4481C000 */  mtc1       $at, $f24
/* 4D2AC 8004C6AC 4480B000 */  mtc1       $zero, $f22
.L8004C6B0:
/* 4D2B0 8004C6B0 0C018D6D */  jal        func_800635B4
/* 4D2B4 8004C6B4 00000000 */   nop
/* 4D2B8 8004C6B8 4618A501 */  sub.s      $f20, $f20, $f24
/* 4D2BC 8004C6BC 4616A03E */  c.le.s     $f20, $f22
/* 4D2C0 8004C6C0 00000000 */  nop
/* 4D2C4 8004C6C4 00000000 */  nop
/* 4D2C8 8004C6C8 45030001 */  bc1tl      .L8004C6D0
/* 4D2CC 8004C6CC 4600B506 */   mov.s     $f20, $f22
.L8004C6D0:
/* 4D2D0 8004C6D0 E6140010 */  swc1       $f20, 0x10($s0)
/* 4D2D4 8004C6D4 4616A03E */  c.le.s     $f20, $f22
/* 4D2D8 8004C6D8 00000000 */  nop
/* 4D2DC 8004C6DC 00000000 */  nop
/* 4D2E0 8004C6E0 45010005 */  bc1t       .L8004C6F8
/* 4D2E4 8004C6E4 E6140018 */   swc1      $f20, 0x18($s0)
/* 4D2E8 8004C6E8 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D2EC 8004C6EC 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D2F0 8004C6F0 1440FFEF */  bnez       $v0, .L8004C6B0
/* 4D2F4 8004C6F4 00000000 */   nop
.L8004C6F8:
/* 4D2F8 8004C6F8 0C017764 */  jal        func_8005DD90
/* 4D2FC 8004C6FC 00002021 */   addu      $a0, $zero, $zero
/* 4D300 8004C700 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D304 8004C704 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D308 8004C708 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4D30C 8004C70C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4D310 8004C710 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4D314 8004C714 03E00008 */  jr         $ra
/* 4D318 8004C718 27BD0030 */   addiu     $sp, $sp, 0x30
