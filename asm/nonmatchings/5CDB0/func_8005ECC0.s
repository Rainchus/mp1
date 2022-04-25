	.set noat
	.set noreorder

glabel func_8005ECC0
/* 5F8C0 8005ECC0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 5F8C4 8005ECC4 AFBF0060 */  sw         $ra, 0x60($sp)
/* 5F8C8 8005ECC8 AFB7005C */  sw         $s7, 0x5c($sp)
/* 5F8CC 8005ECCC AFB60058 */  sw         $s6, 0x58($sp)
/* 5F8D0 8005ECD0 AFB50054 */  sw         $s5, 0x54($sp)
/* 5F8D4 8005ECD4 AFB40050 */  sw         $s4, 0x50($sp)
/* 5F8D8 8005ECD8 AFB3004C */  sw         $s3, 0x4c($sp)
/* 5F8DC 8005ECDC AFB20048 */  sw         $s2, 0x48($sp)
/* 5F8E0 8005ECE0 AFB10044 */  sw         $s1, 0x44($sp)
/* 5F8E4 8005ECE4 AFB00040 */  sw         $s0, 0x40($sp)
/* 5F8E8 8005ECE8 F7B80078 */  sdc1       $f24, 0x78($sp)
/* 5F8EC 8005ECEC F7B60070 */  sdc1       $f22, 0x70($sp)
/* 5F8F0 8005ECF0 F7B40068 */  sdc1       $f20, 0x68($sp)
/* 5F8F4 8005ECF4 0080B021 */  addu       $s6, $a0, $zero
/* 5F8F8 8005ECF8 92C2004C */  lbu        $v0, 0x4c($s6)
/* 5F8FC 8005ECFC 10400084 */  beqz       $v0, .L8005EF10
/* 5F900 8005ED00 0000A821 */   addu      $s5, $zero, $zero
/* 5F904 8005ED04 3C17800F */  lui        $s7, %hi(D_800ED6C0)
/* 5F908 8005ED08 26F7D6C0 */  addiu      $s7, $s7, %lo(D_800ED6C0)
/* 5F90C 8005ED0C 32B400FF */  andi       $s4, $s5, 0xff
.L8005ED10:
/* 5F910 8005ED10 00149040 */  sll        $s2, $s4, 1
/* 5F914 8005ED14 02549021 */  addu       $s2, $s2, $s4
/* 5F918 8005ED18 00128880 */  sll        $s1, $s2, 2
/* 5F91C 8005ED1C 3C01800F */  lui        $at, %hi(D_800F6550)
/* 5F920 8005ED20 00310821 */  addu       $at, $at, $s1
/* 5F924 8005ED24 C4366550 */  lwc1       $f22, %lo(D_800F6550)($at)
/* 5F928 8005ED28 3C01800F */  lui        $at, %hi(D_800F6554)
/* 5F92C 8005ED2C 00310821 */  addu       $at, $at, $s1
/* 5F930 8005ED30 C4386554 */  lwc1       $f24, %lo(D_800F6554)($at)
/* 5F934 8005ED34 0C02BAB0 */  jal        func_800AEAC0
/* 5F938 8005ED38 4600C306 */   mov.s     $f12, $f24
/* 5F93C 8005ED3C 46000506 */  mov.s      $f20, $f0
/* 5F940 8005ED40 0C02BBF4 */  jal        func_800AEFD0
/* 5F944 8005ED44 4600B306 */   mov.s     $f12, $f22
/* 5F948 8005ED48 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F94C 8005ED4C 00148080 */  sll        $s0, $s4, 2
/* 5F950 8005ED50 02179821 */  addu       $s3, $s0, $s7
/* 5F954 8005ED54 C6600000 */  lwc1       $f0, ($s3)
/* 5F958 8005ED58 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F95C 8005ED5C 3C01800F */  lui        $at, %hi(D_800F52F8)
/* 5F960 8005ED60 00310821 */  addu       $at, $at, $s1
/* 5F964 8005ED64 C42052F8 */  lwc1       $f0, %lo(D_800F52F8)($at)
/* 5F968 8005ED68 4600A500 */  add.s      $f20, $f20, $f0
/* 5F96C 8005ED6C E7B40010 */  swc1       $f20, 0x10($sp)
/* 5F970 8005ED70 0C02BAB0 */  jal        func_800AEAC0
/* 5F974 8005ED74 4600B306 */   mov.s     $f12, $f22
/* 5F978 8005ED78 46000007 */  neg.s      $f0, $f0
/* 5F97C 8005ED7C C6620000 */  lwc1       $f2, ($s3)
/* 5F980 8005ED80 46020002 */  mul.s      $f0, $f0, $f2
/* 5F984 8005ED84 3C01800F */  lui        $at, %hi(D_800F52FC)
/* 5F988 8005ED88 00310821 */  addu       $at, $at, $s1
/* 5F98C 8005ED8C C42252FC */  lwc1       $f2, %lo(D_800F52FC)($at)
/* 5F990 8005ED90 46020000 */  add.s      $f0, $f0, $f2
/* 5F994 8005ED94 E7A00014 */  swc1       $f0, 0x14($sp)
/* 5F998 8005ED98 0C02BBF4 */  jal        func_800AEFD0
/* 5F99C 8005ED9C 4600C306 */   mov.s     $f12, $f24
/* 5F9A0 8005EDA0 46000506 */  mov.s      $f20, $f0
/* 5F9A4 8005EDA4 0C02BBF4 */  jal        func_800AEFD0
/* 5F9A8 8005EDA8 4600B306 */   mov.s     $f12, $f22
/* 5F9AC 8005EDAC 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F9B0 8005EDB0 C6600000 */  lwc1       $f0, ($s3)
/* 5F9B4 8005EDB4 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F9B8 8005EDB8 3C01800F */  lui        $at, %hi(D_800F5300)
/* 5F9BC 8005EDBC 00310821 */  addu       $at, $at, $s1
/* 5F9C0 8005EDC0 C4205300 */  lwc1       $f0, %lo(D_800F5300)($at)
/* 5F9C4 8005EDC4 4600A500 */  add.s      $f20, $f20, $f0
/* 5F9C8 8005EDC8 E7B40018 */  swc1       $f20, 0x18($sp)
/* 5F9CC 8005EDCC 3C01800F */  lui        $at, %hi(D_800F52F8)
/* 5F9D0 8005EDD0 00310821 */  addu       $at, $at, $s1
/* 5F9D4 8005EDD4 C42052F8 */  lwc1       $f0, %lo(D_800F52F8)($at)
/* 5F9D8 8005EDD8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 5F9DC 8005EDDC 3C01800F */  lui        $at, %hi(D_800F52FC)
/* 5F9E0 8005EDE0 00310821 */  addu       $at, $at, $s1
/* 5F9E4 8005EDE4 C42052FC */  lwc1       $f0, %lo(D_800F52FC)($at)
/* 5F9E8 8005EDE8 E7A00024 */  swc1       $f0, 0x24($sp)
/* 5F9EC 8005EDEC 3C01800F */  lui        $at, %hi(D_800F5300)
/* 5F9F0 8005EDF0 00310821 */  addu       $at, $at, $s1
/* 5F9F4 8005EDF4 C4205300 */  lwc1       $f0, %lo(D_800F5300)($at)
/* 5F9F8 8005EDF8 E7A00028 */  swc1       $f0, 0x28($sp)
/* 5F9FC 8005EDFC 0C02BAB0 */  jal        func_800AEAC0
/* 5FA00 8005EE00 4600C306 */   mov.s     $f12, $f24
/* 5FA04 8005EE04 46000506 */  mov.s      $f20, $f0
/* 5FA08 8005EE08 0C02BAB0 */  jal        func_800AEAC0
/* 5FA0C 8005EE0C 4600B306 */   mov.s     $f12, $f22
/* 5FA10 8005EE10 4600A502 */  mul.s      $f20, $f20, $f0
/* 5FA14 8005EE14 E7B40030 */  swc1       $f20, 0x30($sp)
/* 5FA18 8005EE18 0C02BBF4 */  jal        func_800AEFD0
/* 5FA1C 8005EE1C 4600B306 */   mov.s     $f12, $f22
/* 5FA20 8005EE20 E7A00034 */  swc1       $f0, 0x34($sp)
/* 5FA24 8005EE24 0C02BBF4 */  jal        func_800AEFD0
/* 5FA28 8005EE28 4600C306 */   mov.s     $f12, $f24
/* 5FA2C 8005EE2C 46000506 */  mov.s      $f20, $f0
/* 5FA30 8005EE30 0C02BAB0 */  jal        func_800AEAC0
/* 5FA34 8005EE34 4600B306 */   mov.s     $f12, $f22
/* 5FA38 8005EE38 4600A502 */  mul.s      $f20, $f20, $f0
/* 5FA3C 8005EE3C E7B40038 */  swc1       $f20, 0x38($sp)
/* 5FA40 8005EE40 001290C0 */  sll        $s2, $s2, 3
/* 5FA44 8005EE44 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 5FA48 8005EE48 3C01800F */  lui        $at, %hi(D_800F2C2C)
/* 5FA4C 8005EE4C 00320821 */  addu       $at, $at, $s2
/* 5FA50 8005EE50 E4202C2C */  swc1       $f0, %lo(D_800F2C2C)($at)
/* 5FA54 8005EE54 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 5FA58 8005EE58 3C01800F */  lui        $at, %hi(D_800F2C30)
/* 5FA5C 8005EE5C 00320821 */  addu       $at, $at, $s2
/* 5FA60 8005EE60 E4202C30 */  swc1       $f0, %lo(D_800F2C30)($at)
/* 5FA64 8005EE64 3C01800F */  lui        $at, %hi(D_800F6554)
/* 5FA68 8005EE68 00310821 */  addu       $at, $at, $s1
/* 5FA6C 8005EE6C C4206554 */  lwc1       $f0, %lo(D_800F6554)($at)
/* 5FA70 8005EE70 3C01800F */  lui        $at, %hi(D_800F2C28)
/* 5FA74 8005EE74 00320821 */  addu       $at, $at, $s2
/* 5FA78 8005EE78 E4202C28 */  swc1       $f0, %lo(D_800F2C28)($at)
/* 5FA7C 8005EE7C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 5FA80 8005EE80 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 5FA84 8005EE84 02148021 */  addu       $s0, $s0, $s4
/* 5FA88 8005EE88 00108140 */  sll        $s0, $s0, 5
/* 5FA8C 8005EE8C 02148023 */  subu       $s0, $s0, $s4
/* 5FA90 8005EE90 001080C0 */  sll        $s0, $s0, 3
/* 5FA94 8005EE94 02028021 */  addu       $s0, $s0, $v0
/* 5FA98 8005EE98 C6000040 */  lwc1       $f0, 0x40($s0)
/* 5FA9C 8005EE9C 3C01800F */  lui        $at, %hi(D_800F2C34)
/* 5FAA0 8005EEA0 00320821 */  addu       $at, $at, $s2
/* 5FAA4 8005EEA4 E4202C34 */  swc1       $f0, %lo(D_800F2C34)($at)
/* 5FAA8 8005EEA8 3C01469C */  lui        $at, 0x469c
/* 5FAAC 8005EEAC 34214000 */  ori        $at, $at, 0x4000
/* 5FAB0 8005EEB0 44810000 */  mtc1       $at, $f0
/* 5FAB4 8005EEB4 3C01800F */  lui        $at, %hi(D_800F2C38)
/* 5FAB8 8005EEB8 00320821 */  addu       $at, $at, $s2
/* 5FABC 8005EEBC E4202C38 */  swc1       $f0, %lo(D_800F2C38)($at)
/* 5FAC0 8005EEC0 3C01461C */  lui        $at, 0x461c
/* 5FAC4 8005EEC4 34214000 */  ori        $at, $at, 0x4000
/* 5FAC8 8005EEC8 44810000 */  mtc1       $at, $f0
/* 5FACC 8005EECC 3C01800F */  lui        $at, %hi(D_800F2C3C)
/* 5FAD0 8005EED0 00320821 */  addu       $at, $at, $s2
/* 5FAD4 8005EED4 E4202C3C */  swc1       $f0, %lo(D_800F2C3C)($at)
/* 5FAD8 8005EED8 32B000FF */  andi       $s0, $s5, 0xff
/* 5FADC 8005EEDC 02002021 */  addu       $a0, $s0, $zero
/* 5FAE0 8005EEE0 27A50010 */  addiu      $a1, $sp, 0x10
/* 5FAE4 8005EEE4 27A60020 */  addiu      $a2, $sp, 0x20
/* 5FAE8 8005EEE8 0C007508 */  jal        func_8001D420
/* 5FAEC 8005EEEC 27A70030 */   addiu     $a3, $sp, 0x30
/* 5FAF0 8005EEF0 0C00755F */  jal        func_8001D57C
/* 5FAF4 8005EEF4 02002021 */   addu      $a0, $s0, $zero
/* 5FAF8 8005EEF8 26B50001 */  addiu      $s5, $s5, 1
/* 5FAFC 8005EEFC 32A200FF */  andi       $v0, $s5, 0xff
/* 5FB00 8005EF00 92C3004C */  lbu        $v1, 0x4c($s6)
/* 5FB04 8005EF04 0043102B */  sltu       $v0, $v0, $v1
/* 5FB08 8005EF08 1440FF81 */  bnez       $v0, .L8005ED10
/* 5FB0C 8005EF0C 32B400FF */   andi      $s4, $s5, 0xff
.L8005EF10:
/* 5FB10 8005EF10 8FBF0060 */  lw         $ra, 0x60($sp)
/* 5FB14 8005EF14 8FB7005C */  lw         $s7, 0x5c($sp)
/* 5FB18 8005EF18 8FB60058 */  lw         $s6, 0x58($sp)
/* 5FB1C 8005EF1C 8FB50054 */  lw         $s5, 0x54($sp)
/* 5FB20 8005EF20 8FB40050 */  lw         $s4, 0x50($sp)
/* 5FB24 8005EF24 8FB3004C */  lw         $s3, 0x4c($sp)
/* 5FB28 8005EF28 8FB20048 */  lw         $s2, 0x48($sp)
/* 5FB2C 8005EF2C 8FB10044 */  lw         $s1, 0x44($sp)
/* 5FB30 8005EF30 8FB00040 */  lw         $s0, 0x40($sp)
/* 5FB34 8005EF34 D7B80078 */  ldc1       $f24, 0x78($sp)
/* 5FB38 8005EF38 D7B60070 */  ldc1       $f22, 0x70($sp)
/* 5FB3C 8005EF3C D7B40068 */  ldc1       $f20, 0x68($sp)
/* 5FB40 8005EF40 03E00008 */  jr         $ra
/* 5FB44 8005EF44 27BD0080 */   addiu     $sp, $sp, 0x80
