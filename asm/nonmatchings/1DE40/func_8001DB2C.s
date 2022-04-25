	.set noat
	.set noreorder

glabel func_8001DB2C
/* 1E72C 8001DB2C 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* 1E730 8001DB30 AFBF0074 */  sw         $ra, 0x74($sp)
/* 1E734 8001DB34 AFB20070 */  sw         $s2, 0x70($sp)
/* 1E738 8001DB38 AFB1006C */  sw         $s1, 0x6c($sp)
/* 1E73C 8001DB3C AFB00068 */  sw         $s0, 0x68($sp)
/* 1E740 8001DB40 F7BE00A0 */  sdc1       $f30, 0xa0($sp)
/* 1E744 8001DB44 F7BC0098 */  sdc1       $f28, 0x98($sp)
/* 1E748 8001DB48 F7BA0090 */  sdc1       $f26, 0x90($sp)
/* 1E74C 8001DB4C F7B80088 */  sdc1       $f24, 0x88($sp)
/* 1E750 8001DB50 F7B60080 */  sdc1       $f22, 0x80($sp)
/* 1E754 8001DB54 F7B40078 */  sdc1       $f20, 0x78($sp)
/* 1E758 8001DB58 00A08821 */  addu       $s1, $a1, $zero
/* 1E75C 8001DB5C 00C09021 */  addu       $s2, $a2, $zero
/* 1E760 8001DB60 00042400 */  sll        $a0, $a0, 0x10
/* 1E764 8001DB64 00042403 */  sra        $a0, $a0, 0x10
/* 1E768 8001DB68 00048080 */  sll        $s0, $a0, 2
/* 1E76C 8001DB6C 02048021 */  addu       $s0, $s0, $a0
/* 1E770 8001DB70 00108140 */  sll        $s0, $s0, 5
/* 1E774 8001DB74 02048023 */  subu       $s0, $s0, $a0
/* 1E778 8001DB78 001080C0 */  sll        $s0, $s0, 3
/* 1E77C 8001DB7C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 1E780 8001DB80 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 1E784 8001DB84 02028021 */  addu       $s0, $s0, $v0
/* 1E788 8001DB88 C600000C */  lwc1       $f0, 0xc($s0)
/* 1E78C 8001DB8C E7A00010 */  swc1       $f0, 0x10($sp)
/* 1E790 8001DB90 C6000010 */  lwc1       $f0, 0x10($s0)
/* 1E794 8001DB94 E7A00014 */  swc1       $f0, 0x14($sp)
/* 1E798 8001DB98 C6000014 */  lwc1       $f0, 0x14($s0)
/* 1E79C 8001DB9C E7A00018 */  swc1       $f0, 0x18($sp)
/* 1E7A0 8001DBA0 C6000018 */  lwc1       $f0, 0x18($s0)
/* 1E7A4 8001DBA4 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 1E7A8 8001DBA8 C600001C */  lwc1       $f0, 0x1c($s0)
/* 1E7AC 8001DBAC E7A00020 */  swc1       $f0, 0x20($sp)
/* 1E7B0 8001DBB0 C6000020 */  lwc1       $f0, 0x20($s0)
/* 1E7B4 8001DBB4 E7A00024 */  swc1       $f0, 0x24($sp)
/* 1E7B8 8001DBB8 8E050000 */  lw         $a1, ($s0)
/* 1E7BC 8001DBBC 8E060004 */  lw         $a2, 4($s0)
/* 1E7C0 8001DBC0 8E070008 */  lw         $a3, 8($s0)
/* 1E7C4 8001DBC4 0C0270A8 */  jal        func_8009C2A0
/* 1E7C8 8001DBC8 27A40028 */   addiu     $a0, $sp, 0x28
/* 1E7CC 8001DBCC C63E0000 */  lwc1       $f30, ($s1)
/* 1E7D0 8001DBD0 C63C0004 */  lwc1       $f28, 4($s1)
/* 1E7D4 8001DBD4 C6220008 */  lwc1       $f2, 8($s1)
/* 1E7D8 8001DBD8 C6000000 */  lwc1       $f0, ($s0)
/* 1E7DC 8001DBDC 4600F781 */  sub.s      $f30, $f30, $f0
/* 1E7E0 8001DBE0 C6000004 */  lwc1       $f0, 4($s0)
/* 1E7E4 8001DBE4 4600E701 */  sub.s      $f28, $f28, $f0
/* 1E7E8 8001DBE8 C6000008 */  lwc1       $f0, 8($s0)
/* 1E7EC 8001DBEC 46001081 */  sub.s      $f2, $f2, $f0
/* 1E7F0 8001DBF0 C7B80028 */  lwc1       $f24, 0x28($sp)
/* 1E7F4 8001DBF4 4618F602 */  mul.s      $f24, $f30, $f24
/* 1E7F8 8001DBF8 C7A00038 */  lwc1       $f0, 0x38($sp)
/* 1E7FC 8001DBFC 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E800 8001DC00 4600C600 */  add.s      $f24, $f24, $f0
/* 1E804 8001DC04 C7A00048 */  lwc1       $f0, 0x48($sp)
/* 1E808 8001DC08 46001002 */  mul.s      $f0, $f2, $f0
/* 1E80C 8001DC0C 4600C600 */  add.s      $f24, $f24, $f0
/* 1E810 8001DC10 C7B6002C */  lwc1       $f22, 0x2c($sp)
/* 1E814 8001DC14 4616F582 */  mul.s      $f22, $f30, $f22
/* 1E818 8001DC18 C7A0003C */  lwc1       $f0, 0x3c($sp)
/* 1E81C 8001DC1C 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E820 8001DC20 4600B580 */  add.s      $f22, $f22, $f0
/* 1E824 8001DC24 C7A0004C */  lwc1       $f0, 0x4c($sp)
/* 1E828 8001DC28 46001002 */  mul.s      $f0, $f2, $f0
/* 1E82C 8001DC2C 4600B580 */  add.s      $f22, $f22, $f0
/* 1E830 8001DC30 C7B40030 */  lwc1       $f20, 0x30($sp)
/* 1E834 8001DC34 4614F502 */  mul.s      $f20, $f30, $f20
/* 1E838 8001DC38 C7A00040 */  lwc1       $f0, 0x40($sp)
/* 1E83C 8001DC3C 4600E002 */  mul.s      $f0, $f28, $f0
/* 1E840 8001DC40 4600A500 */  add.s      $f20, $f20, $f0
/* 1E844 8001DC44 C7A00050 */  lwc1       $f0, 0x50($sp)
/* 1E848 8001DC48 46001082 */  mul.s      $f2, $f2, $f0
/* 1E84C 8001DC4C 4602A500 */  add.s      $f20, $f20, $f2
/* 1E850 8001DC50 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E854 8001DC54 3C014000 */  lui        $at, 0x4000
/* 1E858 8001DC58 4481D000 */  mtc1       $at, $f26
/* 1E85C 8001DC5C 00000000 */  nop
/* 1E860 8001DC60 0C02BAB0 */  jal        func_800AEAC0
/* 1E864 8001DC64 461A6303 */   div.s     $f12, $f12, $f26
/* 1E868 8001DC68 46000706 */  mov.s      $f28, $f0
/* 1E86C 8001DC6C C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E870 8001DC70 0C02BBF4 */  jal        func_800AEFD0
/* 1E874 8001DC74 461A6303 */   div.s     $f12, $f12, $f26
/* 1E878 8001DC78 4600E783 */  div.s      $f30, $f28, $f0
/* 1E87C 8001DC7C 4614F782 */  mul.s      $f30, $f30, $f20
/* 1E880 8001DC80 C6000024 */  lwc1       $f0, 0x24($s0)
/* 1E884 8001DC84 C6020028 */  lwc1       $f2, 0x28($s0)
/* 1E888 8001DC88 46020003 */  div.s      $f0, $f0, $f2
/* 1E88C 8001DC8C 4600F782 */  mul.s      $f30, $f30, $f0
/* 1E890 8001DC90 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E894 8001DC94 0C02BAB0 */  jal        func_800AEAC0
/* 1E898 8001DC98 461A6303 */   div.s     $f12, $f12, $f26
/* 1E89C 8001DC9C 46000706 */  mov.s      $f28, $f0
/* 1E8A0 8001DCA0 C60C0040 */  lwc1       $f12, 0x40($s0)
/* 1E8A4 8001DCA4 0C02BBF4 */  jal        func_800AEFD0
/* 1E8A8 8001DCA8 461A6303 */   div.s     $f12, $f12, $f26
/* 1E8AC 8001DCAC 4600E703 */  div.s      $f28, $f28, $f0
/* 1E8B0 8001DCB0 4614E702 */  mul.s      $f28, $f28, $f20
/* 1E8B4 8001DCB4 C6020030 */  lwc1       $f2, 0x30($s0)
/* 1E8B8 8001DCB8 3C014080 */  lui        $at, 0x4080
/* 1E8BC 8001DCBC 44812000 */  mtc1       $at, $f4
/* 1E8C0 8001DCC0 00000000 */  nop
/* 1E8C4 8001DCC4 46041083 */  div.s      $f2, $f2, $f4
/* 1E8C8 8001DCC8 4600F007 */  neg.s      $f0, $f30
/* 1E8CC 8001DCCC 46001003 */  div.s      $f0, $f2, $f0
/* 1E8D0 8001DCD0 4600C602 */  mul.s      $f24, $f24, $f0
/* 1E8D4 8001DCD4 4602C600 */  add.s      $f24, $f24, $f2
/* 1E8D8 8001DCD8 E6580000 */  swc1       $f24, ($s2)
/* 1E8DC 8001DCDC C6000034 */  lwc1       $f0, 0x34($s0)
/* 1E8E0 8001DCE0 46040003 */  div.s      $f0, $f0, $f4
/* 1E8E4 8001DCE4 461C0083 */  div.s      $f2, $f0, $f28
/* 1E8E8 8001DCE8 4602B582 */  mul.s      $f22, $f22, $f2
/* 1E8EC 8001DCEC 4600B580 */  add.s      $f22, $f22, $f0
/* 1E8F0 8001DCF0 E6560004 */  swc1       $f22, 4($s2)
/* 1E8F4 8001DCF4 8FBF0074 */  lw         $ra, 0x74($sp)
/* 1E8F8 8001DCF8 8FB20070 */  lw         $s2, 0x70($sp)
/* 1E8FC 8001DCFC 8FB1006C */  lw         $s1, 0x6c($sp)
/* 1E900 8001DD00 8FB00068 */  lw         $s0, 0x68($sp)
/* 1E904 8001DD04 D7BE00A0 */  ldc1       $f30, 0xa0($sp)
/* 1E908 8001DD08 D7BC0098 */  ldc1       $f28, 0x98($sp)
/* 1E90C 8001DD0C D7BA0090 */  ldc1       $f26, 0x90($sp)
/* 1E910 8001DD10 D7B80088 */  ldc1       $f24, 0x88($sp)
/* 1E914 8001DD14 D7B60080 */  ldc1       $f22, 0x80($sp)
/* 1E918 8001DD18 D7B40078 */  ldc1       $f20, 0x78($sp)
/* 1E91C 8001DD1C 03E00008 */  jr         $ra
/* 1E920 8001DD20 27BD00A8 */   addiu     $sp, $sp, 0xa8
