	.set noat
	.set noreorder

glabel func_8001D934
/* 1E534 8001D934 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* 1E538 8001D938 AFBF0074 */  sw         $ra, 0x74($sp)
/* 1E53C 8001D93C AFB20070 */  sw         $s2, 0x70($sp)
/* 1E540 8001D940 AFB1006C */  sw         $s1, 0x6c($sp)
/* 1E544 8001D944 AFB00068 */  sw         $s0, 0x68($sp)
/* 1E548 8001D948 F7BE00A0 */  sdc1       $f30, 0xa0($sp)
/* 1E54C 8001D94C F7BC0098 */  sdc1       $f28, 0x98($sp)
/* 1E550 8001D950 F7BA0090 */  sdc1       $f26, 0x90($sp)
/* 1E554 8001D954 F7B80088 */  sdc1       $f24, 0x88($sp)
/* 1E558 8001D958 F7B60080 */  sdc1       $f22, 0x80($sp)
/* 1E55C 8001D95C F7B40078 */  sdc1       $f20, 0x78($sp)
/* 1E560 8001D960 00A08821 */  addu       $s1, $a1, $zero
/* 1E564 8001D964 00C09021 */  addu       $s2, $a2, $zero
/* 1E568 8001D968 00042400 */  sll        $a0, $a0, 0x10
/* 1E56C 8001D96C 00042403 */  sra        $a0, $a0, 0x10
/* 1E570 8001D970 00048080 */  sll        $s0, $a0, 2
/* 1E574 8001D974 02048021 */  addu       $s0, $s0, $a0
/* 1E578 8001D978 00108140 */  sll        $s0, $s0, 5
/* 1E57C 8001D97C 02048023 */  subu       $s0, $s0, $a0
/* 1E580 8001D980 001080C0 */  sll        $s0, $s0, 3
/* 1E584 8001D984 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1E588 8001D988 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1E58C 8001D98C 02028021 */  addu       $s0, $s0, $v0
/* 1E590 8001D990 C600000C */  lwc1       $f0, 0xc($s0)
/* 1E594 8001D994 E7A00010 */  swc1       $f0, 0x10($sp)
/* 1E598 8001D998 C6000010 */  lwc1       $f0, 0x10($s0)
/* 1E59C 8001D99C E7A00014 */  swc1       $f0, 0x14($sp)
/* 1E5A0 8001D9A0 C6000014 */  lwc1       $f0, 0x14($s0)
/* 1E5A4 8001D9A4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 1E5A8 8001D9A8 C6000018 */  lwc1       $f0, 0x18($s0)
/* 1E5AC 8001D9AC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1E5B0 8001D9B0 C600001C */  lwc1       $f0, 0x1c($s0)
/* 1E5B4 8001D9B4 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1E5B8 8001D9B8 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1E5BC 8001D9BC E7A00024 */  swc1       $f0, 0x24($sp)
/* 1E5C0 8001D9C0 8E050000 */  lw         $a1, ($s0)
/* 1E5C4 8001D9C4 8E060004 */  lw         $a2, 4($s0)
/* 1E5C8 8001D9C8 8E070008 */  lw         $a3, 8($s0)
/* 1E5CC 8001D9CC 0C0270A8 */  jal        func_8009C2A0
/* 1E5D0 8001D9D0 27A40028 */   addiu     $a0, $sp, 0x28
/* 1E5D4 8001D9D4 C63E0000 */  lwc1       $f30, ($s1)
/* 1E5D8 8001D9D8 C63C0004 */  lwc1       $f28, 4($s1)
/* 1E5DC 8001D9DC C6220008 */  lwc1       $f2, 8($s1)
/* 1E5E0 8001D9E0 C6000000 */  lwc1       $f0, ($s0)
/* 1E5E4 8001D9E4 4600F781 */  sub.s      $f30, $f30, $f0
/* 1E5E8 8001D9E8 C6000004 */  lwc1       $f0, 4($s0)
/* 1E5EC 8001D9EC 4600E701 */  sub.s      $f28, $f28, $f0
/* 1E5F0 8001D9F0 C6000008 */  lwc1       $f0, 8($s0)
/* 1E5F4 8001D9F4 46001081 */  sub.s      $f2, $f2, $f0
/* 1E5F8 8001D9F8 C7B80028 */  lwc1       $f24, 0x28($sp)
/* 1E5FC 8001D9FC 4618F602 */  mul.s      $f24, $f30, $f24
/* 1E600 8001DA00 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 1E604 8001DA04 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E608 8001DA08 4600C600 */  add.s      $f24, $f24, $f0
/* 1E60C 8001DA0C C7A00048 */  lwc1       $f0, 0x48($sp)
/* 1E610 8001DA10 46001002 */  mul.s      $f0, $f2, $f0
/* 1E614 8001DA14 4600C600 */  add.s      $f24, $f24, $f0
/* 1E618 8001DA18 C7B6002C */  lwc1       $f22, 0x2c($sp)
/* 1E61C 8001DA1C 4616F582 */  mul.s      $f22, $f30, $f22
/* 1E620 8001DA20 C7A0003C */  lwc1       $f0, 0x3c($sp)
/* 1E624 8001DA24 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E628 8001DA28 4600B580 */  add.s      $f22, $f22, $f0
/* 1E62C 8001DA2C C7A0004C */  lwc1       $f0, 0x4c($sp)
/* 1E630 8001DA30 46001002 */  mul.s      $f0, $f2, $f0
/* 1E634 8001DA34 4600B580 */  add.s      $f22, $f22, $f0
/* 1E638 8001DA38 C7B40030 */  lwc1       $f20, 0x30($sp)
/* 1E63C 8001DA3C 4614F502 */  mul.s      $f20, $f30, $f20
/* 1E640 8001DA40 C7A00040 */  lwc1       $f0, 0x40($sp)
/* 1E644 8001DA44 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E648 8001DA48 4600A500 */  add.s      $f20, $f20, $f0
/* 1E64C 8001DA4C C7A00050 */  lwc1       $f0, 0x50($sp)
/* 1E650 8001DA50 46001082 */  mul.s      $f2, $f2, $f0
/* 1E654 8001DA54 4602A500 */  add.s      $f20, $f20, $f2
/* 1E658 8001DA58 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E65C 8001DA5C 3C014000 */  lui        $at, 0x4000
/* 1E660 8001DA60 4481D000 */  mtc1       $at, $f26
/* 1E664 8001DA64 00000000 */  nop
/* 1E668 8001DA68 0C02BAB0 */  jal        func_800AEAC0
/* 1E66C 8001DA6C 461A6303 */   div.s     $f12, $f12, $f26
/* 1E670 8001DA70 46000706 */  mov.s      $f28, $f0
/* 1E674 8001DA74 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E678 8001DA78 0C02BBF4 */  jal        func_800AEFD0
/* 1E67C 8001DA7C 461A6303 */   div.s     $f12, $f12, $f26
/* 1E680 8001DA80 4600E783 */  div.s      $f30, $f28, $f0
/* 1E684 8001DA84 4614F782 */  mul.s      $f30, $f30, $f20
/* 1E688 8001DA88 3C013FAA */  lui        $at, 0x3faa
/* 1E68C 8001DA8C 3421AAAB */  ori        $at, $at, 0xaaab
/* 1E690 8001DA90 44810000 */  mtc1       $at, $f0
/* 1E694 8001DA94 00000000 */  nop
/* 1E698 8001DA98 4600F782 */  mul.s      $f30, $f30, $f0
/* 1E69C 8001DA9C C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E6A0 8001DAA0 0C02BAB0 */  jal        func_800AEAC0
/* 1E6A4 8001DAA4 461A6303 */   div.s     $f12, $f12, $f26
/* 1E6A8 8001DAA8 46000706 */  mov.s      $f28, $f0
/* 1E6AC 8001DAAC C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E6B0 8001DAB0 0C02BBF4 */  jal        func_800AEFD0
/* 1E6B4 8001DAB4 461A6303 */   div.s     $f12, $f12, $f26
/* 1E6B8 8001DAB8 4600E703 */  div.s      $f28, $f28, $f0
/* 1E6BC 8001DABC 4614E702 */  mul.s      $f28, $f28, $f20
/* 1E6C0 8001DAC0 4600F007 */  neg.s      $f0, $f30
/* 1E6C4 8001DAC4 3C014320 */  lui        $at, 0x4320
/* 1E6C8 8001DAC8 44811000 */  mtc1       $at, $f2
/* 1E6CC 8001DACC 00000000 */  nop
/* 1E6D0 8001DAD0 46001003 */  div.s      $f0, $f2, $f0
/* 1E6D4 8001DAD4 4600C602 */  mul.s      $f24, $f24, $f0
/* 1E6D8 8001DAD8 4602C600 */  add.s      $f24, $f24, $f2
/* 1E6DC 8001DADC E6580000 */  swc1       $f24, ($s2)
/* 1E6E0 8001DAE0 3C0142F0 */  lui        $at, 0x42f0
/* 1E6E4 8001DAE4 44811000 */  mtc1       $at, $f2
/* 1E6E8 8001DAE8 00000000 */  nop
/* 1E6EC 8001DAEC 461C1003 */  div.s      $f0, $f2, $f28
/* 1E6F0 8001DAF0 4600B582 */  mul.s      $f22, $f22, $f0
/* 1E6F4 8001DAF4 4602B580 */  add.s      $f22, $f22, $f2
/* 1E6F8 8001DAF8 E6560004 */  swc1       $f22, 4($s2)
/* 1E6FC 8001DAFC 8FBF0074 */  lw         $ra, 0x74($sp)
/* 1E700 8001DB00 8FB20070 */  lw         $s2, 0x70($sp)
/* 1E704 8001DB04 8FB1006C */  lw         $s1, 0x6c($sp)
/* 1E708 8001DB08 8FB00068 */  lw         $s0, 0x68($sp)
/* 1E70C 8001DB0C D7BE00A0 */  ldc1       $f30, 0xa0($sp)
/* 1E710 8001DB10 D7BC0098 */  ldc1       $f28, 0x98($sp)
/* 1E714 8001DB14 D7BA0090 */  ldc1       $f26, 0x90($sp)
/* 1E718 8001DB18 D7B80088 */  ldc1       $f24, 0x88($sp)
/* 1E71C 8001DB1C D7B60080 */  ldc1       $f22, 0x80($sp)
/* 1E720 8001DB20 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 1E724 8001DB24 03E00008 */  jr         $ra
/* 1E728 8001DB28 27BD00A8 */   addiu     $sp, $sp, 0xa8
