	.set noat
	.set noreorder

glabel func_8004C760
/* 4D360 8004C760 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4D364 8004C764 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D368 8004C768 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D36C 8004C76C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 4D370 8004C770 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 4D374 8004C774 0C018CEA */  jal        func_800633A8
/* 4D378 8004C778 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 4D37C 8004C77C 0C01307B */  jal        func_8004C1EC
/* 4D380 8004C780 8444008E */   lh        $a0, 0x8e($v0)
/* 4D384 8004C784 00408021 */  addu       $s0, $v0, $zero
/* 4D388 8004C788 4480A000 */  mtc1       $zero, $f20
/* 4D38C 8004C78C 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D390 8004C790 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D394 8004C794 10400018 */  beqz       $v0, .L8004C7F8
/* 4D398 8004C798 00000000 */   nop
/* 4D39C 8004C79C 3C013DCC */  lui        $at, 0x3dcc
/* 4D3A0 8004C7A0 3421CCCD */  ori        $at, $at, 0xcccd
/* 4D3A4 8004C7A4 4481C000 */  mtc1       $at, $f24
/* 4D3A8 8004C7A8 3C013F80 */  lui        $at, 0x3f80
/* 4D3AC 8004C7AC 4481B000 */  mtc1       $at, $f22
.L8004C7B0:
/* 4D3B0 8004C7B0 0C018D6D */  jal        func_800635B4
/* 4D3B4 8004C7B4 00000000 */   nop
/* 4D3B8 8004C7B8 4618A500 */  add.s      $f20, $f20, $f24
/* 4D3BC 8004C7BC 4614B03E */  c.le.s     $f22, $f20
/* 4D3C0 8004C7C0 00000000 */  nop
/* 4D3C4 8004C7C4 00000000 */  nop
/* 4D3C8 8004C7C8 45030001 */  bc1tl      .L8004C7D0
/* 4D3CC 8004C7CC 4600B506 */   mov.s     $f20, $f22
.L8004C7D0:
/* 4D3D0 8004C7D0 E6140010 */  swc1       $f20, 0x10($s0)
/* 4D3D4 8004C7D4 4614B03E */  c.le.s     $f22, $f20
/* 4D3D8 8004C7D8 00000000 */  nop
/* 4D3DC 8004C7DC 00000000 */  nop
/* 4D3E0 8004C7E0 45010005 */  bc1t       .L8004C7F8
/* 4D3E4 8004C7E4 E6140018 */   swc1      $f20, 0x18($s0)
/* 4D3E8 8004C7E8 3C02800C */  lui        $v0, %hi(D_800C4FD0)
/* 4D3EC 8004C7EC 8C424FD0 */  lw         $v0, %lo(D_800C4FD0)($v0)
/* 4D3F0 8004C7F0 1440FFEF */  bnez       $v0, .L8004C7B0
/* 4D3F4 8004C7F4 00000000 */   nop
.L8004C7F8:
/* 4D3F8 8004C7F8 0C017764 */  jal        func_8005DD90
/* 4D3FC 8004C7FC 00002021 */   addu      $a0, $zero, $zero
/* 4D400 8004C800 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D404 8004C804 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D408 8004C808 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 4D40C 8004C80C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 4D410 8004C810 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 4D414 8004C814 03E00008 */  jr         $ra
/* 4D418 8004C818 27BD0030 */   addiu     $sp, $sp, 0x30
