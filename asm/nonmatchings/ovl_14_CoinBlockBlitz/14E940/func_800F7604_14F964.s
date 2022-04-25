	.set noat
	.set noreorder

glabel func_800F7604_14F964
/* 14F964 800F7604 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 14F968 800F7608 AFBF0034 */  sw         $ra, 0x34($sp)
/* 14F96C 800F760C AFB40030 */  sw         $s4, 0x30($sp)
/* 14F970 800F7610 AFB3002C */  sw         $s3, 0x2c($sp)
/* 14F974 800F7614 AFB20028 */  sw         $s2, 0x28($sp)
/* 14F978 800F7618 AFB10024 */  sw         $s1, 0x24($sp)
/* 14F97C 800F761C AFB00020 */  sw         $s0, 0x20($sp)
/* 14F980 800F7620 F7B60040 */  sdc1       $f22, 0x40($sp)
/* 14F984 800F7624 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 14F988 800F7628 00809821 */  addu       $s3, $a0, $zero
/* 14F98C 800F762C 9274004C */  lbu        $s4, 0x4c($s3)
/* 14F990 800F7630 3284FFFF */  andi       $a0, $s4, 0xffff
/* 14F994 800F7634 000410C0 */  sll        $v0, $a0, 3
/* 14F998 800F7638 00441023 */  subu       $v0, $v0, $a0
/* 14F99C 800F763C 00021080 */  sll        $v0, $v0, 2
/* 14F9A0 800F7640 3C038010 */  lui        $v1, %hi(D_800FAA80)
/* 14F9A4 800F7644 2463AA80 */  addiu      $v1, $v1, %lo(D_800FAA80)
/* 14F9A8 800F7648 00438021 */  addu       $s0, $v0, $v1
/* 14F9AC 800F764C 96020000 */  lhu        $v0, ($s0)
/* 14F9B0 800F7650 30420001 */  andi       $v0, $v0, 1
/* 14F9B4 800F7654 10400120 */  beqz       $v0, .L800F7AD8
/* 14F9B8 800F7658 27B10010 */   addiu     $s1, $sp, 0x10
/* 14F9BC 800F765C 3C03800F */  lui        $v1, %hi(D_800ED430)
/* 14F9C0 800F7660 8C63D430 */  lw         $v1, %lo(D_800ED430)($v1)
/* 14F9C4 800F7664 24020003 */  addiu      $v0, $zero, 3
/* 14F9C8 800F7668 1062011B */  beq        $v1, $v0, .L800F7AD8
/* 14F9CC 800F766C 00041840 */   sll       $v1, $a0, 1
/* 14F9D0 800F7670 A600000E */  sh         $zero, 0xe($s0)
/* 14F9D4 800F7674 A600000C */  sh         $zero, 0xc($s0)
/* 14F9D8 800F7678 00641821 */  addu       $v1, $v1, $a0
/* 14F9DC 800F767C 00031900 */  sll        $v1, $v1, 4
/* 14F9E0 800F7680 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14F9E4 800F7684 00431021 */  addu       $v0, $v0, $v1
/* 14F9E8 800F7688 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14F9EC 800F768C 00021040 */  sll        $v0, $v0, 1
/* 14F9F0 800F7690 3C01800F */  lui        $at, %hi(D_800EDEB4)
/* 14F9F4 800F7694 00220821 */  addu       $at, $at, $v0
/* 14F9F8 800F7698 A420DEB4 */  sh         $zero, %lo(D_800EDEB4)($at)
/* 14F9FC 800F769C 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FA00 800F76A0 00431021 */  addu       $v0, $v0, $v1
/* 14FA04 800F76A4 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FA08 800F76A8 00021040 */  sll        $v0, $v0, 1
/* 14FA0C 800F76AC 3C01800F */  lui        $at, %hi(D_800F5460)
/* 14FA10 800F76B0 00220821 */  addu       $at, $at, $v0
/* 14FA14 800F76B4 A4205460 */  sh         $zero, %lo(D_800F5460)($at)
/* 14FA18 800F76B8 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FA1C 800F76BC 00431021 */  addu       $v0, $v0, $v1
/* 14FA20 800F76C0 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FA24 800F76C4 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 14FA28 800F76C8 00220821 */  addu       $at, $at, $v0
/* 14FA2C 800F76CC A020CE14 */  sb         $zero, %lo(D_800ECE14)($at)
/* 14FA30 800F76D0 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FA34 800F76D4 00431021 */  addu       $v0, $v0, $v1
/* 14FA38 800F76D8 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FA3C 800F76DC 3C01800F */  lui        $at, %hi(D_800F3843)
/* 14FA40 800F76E0 00220821 */  addu       $at, $at, $v0
/* 14FA44 800F76E4 A0203843 */  sb         $zero, %lo(D_800F3843)($at)
/* 14FA48 800F76E8 96030002 */  lhu        $v1, 2($s0)
/* 14FA4C 800F76EC 24020001 */  addiu      $v0, $zero, 1
/* 14FA50 800F76F0 10620017 */  beq        $v1, $v0, .L800F7750
/* 14FA54 800F76F4 28620002 */   slti      $v0, $v1, 2
/* 14FA58 800F76F8 50400005 */  beql       $v0, $zero, .L800F7710
/* 14FA5C 800F76FC 24020002 */   addiu     $v0, $zero, 2
/* 14FA60 800F7700 10600009 */  beqz       $v1, .L800F7728
/* 14FA64 800F7704 02602021 */   addu      $a0, $s3, $zero
/* 14FA68 800F7708 0803DE94 */  j          .L800F7A50
/* 14FA6C 800F770C 3282FFFF */   andi      $v0, $s4, 0xffff
.L800F7710:
/* 14FA70 800F7710 1062006E */  beq        $v1, $v0, .L800F78CC
/* 14FA74 800F7714 24020003 */   addiu     $v0, $zero, 3
/* 14FA78 800F7718 506200B1 */  beql       $v1, $v0, .L800F79E0
/* 14FA7C 800F771C A6000010 */   sh        $zero, 0x10($s0)
/* 14FA80 800F7720 0803DE94 */  j          .L800F7A50
/* 14FA84 800F7724 3282FFFF */   andi      $v0, $s4, 0xffff
.L800F7728:
/* 14FA88 800F7728 96060004 */  lhu        $a2, 4($s0)
/* 14FA8C 800F772C 0C03DC4F */  jal        func_800F713C_14F49C
/* 14FA90 800F7730 2405FFFF */   addiu     $a1, $zero, -1
/* 14FA94 800F7734 A6020008 */  sh         $v0, 8($s0)
/* 14FA98 800F7738 00021400 */  sll        $v0, $v0, 0x10
/* 14FA9C 800F773C 00021403 */  sra        $v0, $v0, 0x10
/* 14FAA0 800F7740 2403FFFF */  addiu      $v1, $zero, -1
/* 14FAA4 800F7744 104300C1 */  beq        $v0, $v1, .L800F7A4C
/* 14FAA8 800F7748 24020001 */   addiu     $v0, $zero, 1
/* 14FAAC 800F774C A6020002 */  sh         $v0, 2($s0)
.L800F7750:
/* 14FAB0 800F7750 86040008 */  lh         $a0, 8($s0)
/* 14FAB4 800F7754 3C0641F0 */  lui        $a2, 0x41f0
/* 14FAB8 800F7758 0C03DC0B */  jal        func_800F702C_14F38C
/* 14FABC 800F775C 3285FFFF */   andi      $a1, $s4, 0xffff
/* 14FAC0 800F7760 3042FFFF */  andi       $v0, $v0, 0xffff
/* 14FAC4 800F7764 10400006 */  beqz       $v0, .L800F7780
/* 14FAC8 800F7768 00000000 */   nop
/* 14FACC 800F776C 0C03DC03 */  jal        func_800F700C_14F36C
/* 14FAD0 800F7770 86040008 */   lh        $a0, 8($s0)
/* 14FAD4 800F7774 3042FFFF */  andi       $v0, $v0, 0xffff
/* 14FAD8 800F7778 14400008 */  bnez       $v0, .L800F779C
/* 14FADC 800F777C 00000000 */   nop
.L800F7780:
/* 14FAE0 800F7780 96030000 */  lhu        $v1, ($s0)
/* 14FAE4 800F7784 30620002 */  andi       $v0, $v1, 2
/* 14FAE8 800F7788 14400004 */  bnez       $v0, .L800F779C
/* 14FAEC 800F778C 34620002 */   ori       $v0, $v1, 2
/* 14FAF0 800F7790 A6020000 */  sh         $v0, ($s0)
.L800F7794:
/* 14FAF4 800F7794 0803DE93 */  j          .L800F7A4C
/* 14FAF8 800F7798 A6000002 */   sh        $zero, 2($s0)
.L800F779C:
/* 14FAFC 800F779C 86020008 */  lh         $v0, 8($s0)
/* 14FB00 800F77A0 00021140 */  sll        $v0, $v0, 5
/* 14FB04 800F77A4 3C128010 */  lui        $s2, %hi(D_800FA950)
/* 14FB08 800F77A8 02429021 */  addu       $s2, $s2, $v0
/* 14FB0C 800F77AC 8E52A950 */  lw         $s2, %lo(D_800FA950)($s2)
/* 14FB10 800F77B0 02202021 */  addu       $a0, $s1, $zero
/* 14FB14 800F77B4 8E450018 */  lw         $a1, 0x18($s2)
/* 14FB18 800F77B8 8E470020 */  lw         $a3, 0x20($s2)
/* 14FB1C 800F77BC 0C028340 */  jal        func_800A0D00
/* 14FB20 800F77C0 00003021 */   addu      $a2, $zero, $zero
/* 14FB24 800F77C4 C6200000 */  lwc1       $f0, ($s1)
/* 14FB28 800F77C8 C6620018 */  lwc1       $f2, 0x18($s3)
/* 14FB2C 800F77CC 46020001 */  sub.s      $f0, $f0, $f2
/* 14FB30 800F77D0 E6200000 */  swc1       $f0, ($s1)
/* 14FB34 800F77D4 C6200004 */  lwc1       $f0, 4($s1)
/* 14FB38 800F77D8 44801000 */  mtc1       $zero, $f2
/* 14FB3C 800F77DC 00000000 */  nop
/* 14FB40 800F77E0 46020001 */  sub.s      $f0, $f0, $f2
/* 14FB44 800F77E4 E6200004 */  swc1       $f0, 4($s1)
/* 14FB48 800F77E8 C6200008 */  lwc1       $f0, 8($s1)
/* 14FB4C 800F77EC C6620020 */  lwc1       $f2, 0x20($s3)
/* 14FB50 800F77F0 46020001 */  sub.s      $f0, $f0, $f2
/* 14FB54 800F77F4 E6200008 */  swc1       $f0, 8($s1)
/* 14FB58 800F77F8 0C028480 */  jal        func_800A1200
/* 14FB5C 800F77FC 02202021 */   addu      $a0, $s1, $zero
/* 14FB60 800F7800 46000506 */  mov.s      $f20, $f0
/* 14FB64 800F7804 3C0141F0 */  lui        $at, 0x41f0
/* 14FB68 800F7808 44810000 */  mtc1       $at, $f0
/* 14FB6C 800F780C 00000000 */  nop
/* 14FB70 800F7810 4614003C */  c.lt.s     $f0, $f20
/* 14FB74 800F7814 00000000 */  nop
/* 14FB78 800F7818 00000000 */  nop
/* 14FB7C 800F781C 4500002A */  bc1f       .L800F78C8
/* 14FB80 800F7820 24020002 */   addiu     $v0, $zero, 2
/* 14FB84 800F7824 86040008 */  lh         $a0, 8($s0)
/* 14FB88 800F7828 3C0642B4 */  lui        $a2, 0x42b4
/* 14FB8C 800F782C 0C03DC0B */  jal        func_800F702C_14F38C
/* 14FB90 800F7830 3285FFFF */   andi      $a1, $s4, 0xffff
/* 14FB94 800F7834 3042FFFF */  andi       $v0, $v0, 0xffff
/* 14FB98 800F7838 14400009 */  bnez       $v0, .L800F7860
/* 14FB9C 800F783C 00000000 */   nop
/* 14FBA0 800F7840 3C0142B4 */  lui        $at, 0x42b4
/* 14FBA4 800F7844 44810000 */  mtc1       $at, $f0
/* 14FBA8 800F7848 00000000 */  nop
/* 14FBAC 800F784C 4600A03C */  c.lt.s     $f20, $f0
/* 14FBB0 800F7850 00000000 */  nop
/* 14FBB4 800F7854 00000000 */  nop
/* 14FBB8 800F7858 4501001B */  bc1t       .L800F78C8
/* 14FBBC 800F785C 24020002 */   addiu     $v0, $zero, 2
.L800F7860:
/* 14FBC0 800F7860 C62C0000 */  lwc1       $f12, ($s1)
/* 14FBC4 800F7864 0C02C336 */  jal        func_800B0CD8
/* 14FBC8 800F7868 C62E0008 */   lwc1      $f14, 8($s1)
/* 14FBCC 800F786C 46000506 */  mov.s      $f20, $f0
/* 14FBD0 800F7870 02602021 */  addu       $a0, $s3, $zero
/* 14FBD4 800F7874 0C03DD17 */  jal        func_800F745C_14F7BC
/* 14FBD8 800F7878 02402821 */   addu      $a1, $s2, $zero
/* 14FBDC 800F787C 4600A500 */  add.s      $f20, $f20, $f0
/* 14FBE0 800F7880 0C02BAB0 */  jal        func_800AEAC0
/* 14FBE4 800F7884 4600A306 */   mov.s     $f12, $f20
/* 14FBE8 800F7888 3C014270 */  lui        $at, 0x4270
/* 14FBEC 800F788C 4481B000 */  mtc1       $at, $f22
/* 14FBF0 800F7890 00000000 */  nop
/* 14FBF4 800F7894 46160002 */  mul.s      $f0, $f0, $f22
/* 14FBF8 800F7898 4600008D */  trunc.w.s  $f2, $f0
/* 14FBFC 800F789C 44021000 */  mfc1       $v0, $f2
/* 14FC00 800F78A0 00000000 */  nop
/* 14FC04 800F78A4 A602000C */  sh         $v0, 0xc($s0)
/* 14FC08 800F78A8 0C02BBF4 */  jal        func_800AEFD0
/* 14FC0C 800F78AC 4600A306 */   mov.s     $f12, $f20
/* 14FC10 800F78B0 46160002 */  mul.s      $f0, $f0, $f22
/* 14FC14 800F78B4 4600008D */  trunc.w.s  $f2, $f0
/* 14FC18 800F78B8 44021000 */  mfc1       $v0, $f2
/* 14FC1C 800F78BC 00000000 */  nop
/* 14FC20 800F78C0 0803DE93 */  j          .L800F7A4C
/* 14FC24 800F78C4 A602000E */   sh        $v0, 0xe($s0)
.L800F78C8:
/* 14FC28 800F78C8 A6020002 */  sh         $v0, 2($s0)
.L800F78CC:
/* 14FC2C 800F78CC 96020010 */  lhu        $v0, 0x10($s0)
/* 14FC30 800F78D0 34428000 */  ori        $v0, $v0, 0x8000
/* 14FC34 800F78D4 A6020010 */  sh         $v0, 0x10($s0)
/* 14FC38 800F78D8 96020012 */  lhu        $v0, 0x12($s0)
/* 14FC3C 800F78DC 34428000 */  ori        $v0, $v0, 0x8000
/* 14FC40 800F78E0 A6020012 */  sh         $v0, 0x12($s0)
/* 14FC44 800F78E4 2402000A */  addiu      $v0, $zero, 0xa
/* 14FC48 800F78E8 A602000A */  sh         $v0, 0xa($s0)
/* 14FC4C 800F78EC 96030004 */  lhu        $v1, 4($s0)
/* 14FC50 800F78F0 24020001 */  addiu      $v0, $zero, 1
/* 14FC54 800F78F4 1062001A */  beq        $v1, $v0, .L800F7960
/* 14FC58 800F78F8 28620002 */   slti      $v0, $v1, 2
/* 14FC5C 800F78FC 50400005 */  beql       $v0, $zero, .L800F7914
/* 14FC60 800F7900 24020002 */   addiu     $v0, $zero, 2
/* 14FC64 800F7904 10600007 */  beqz       $v1, .L800F7924
/* 14FC68 800F7908 00000000 */   nop
/* 14FC6C 800F790C 0803DE75 */  j          .L800F79D4
/* 14FC70 800F7910 A6000006 */   sh        $zero, 6($s0)
.L800F7914:
/* 14FC74 800F7914 10620022 */  beq        $v1, $v0, .L800F79A0
/* 14FC78 800F7918 00000000 */   nop
/* 14FC7C 800F791C 0803DE75 */  j          .L800F79D4
/* 14FC80 800F7920 A6000006 */   sh        $zero, 6($s0)
.L800F7924:
/* 14FC84 800F7924 0C005D63 */  jal        func_8001758C
/* 14FC88 800F7928 00000000 */   nop
/* 14FC8C 800F792C 304200FF */  andi       $v0, $v0, 0xff
/* 14FC90 800F7930 3C038888 */  lui        $v1, 0x8888
/* 14FC94 800F7934 34638889 */  ori        $v1, $v1, 0x8889
/* 14FC98 800F7938 00430019 */  multu      $v0, $v1
/* 14FC9C 800F793C 00004010 */  mfhi       $t0
/* 14FCA0 800F7940 000820C2 */  srl        $a0, $t0, 3
/* 14FCA4 800F7944 00041900 */  sll        $v1, $a0, 4
/* 14FCA8 800F7948 00641823 */  subu       $v1, $v1, $a0
/* 14FCAC 800F794C 00431023 */  subu       $v0, $v0, $v1
/* 14FCB0 800F7950 304200FF */  andi       $v0, $v0, 0xff
/* 14FCB4 800F7954 24420005 */  addiu      $v0, $v0, 5
/* 14FCB8 800F7958 0803DE75 */  j          .L800F79D4
/* 14FCBC 800F795C A6020006 */   sh        $v0, 6($s0)
.L800F7960:
/* 14FCC0 800F7960 0C005D63 */  jal        func_8001758C
/* 14FCC4 800F7964 00000000 */   nop
/* 14FCC8 800F7968 304200FF */  andi       $v0, $v0, 0xff
/* 14FCCC 800F796C 3C03CCCC */  lui        $v1, 0xcccc
/* 14FCD0 800F7970 3463CCCD */  ori        $v1, $v1, 0xcccd
/* 14FCD4 800F7974 00430019 */  multu      $v0, $v1
/* 14FCD8 800F7978 00004010 */  mfhi       $t0
/* 14FCDC 800F797C 000820C2 */  srl        $a0, $t0, 3
/* 14FCE0 800F7980 00041880 */  sll        $v1, $a0, 2
/* 14FCE4 800F7984 00641821 */  addu       $v1, $v1, $a0
/* 14FCE8 800F7988 00031840 */  sll        $v1, $v1, 1
/* 14FCEC 800F798C 00431023 */  subu       $v0, $v0, $v1
/* 14FCF0 800F7990 304200FF */  andi       $v0, $v0, 0xff
/* 14FCF4 800F7994 24420001 */  addiu      $v0, $v0, 1
/* 14FCF8 800F7998 0803DE75 */  j          .L800F79D4
/* 14FCFC 800F799C A6020006 */   sh        $v0, 6($s0)
.L800F79A0:
/* 14FD00 800F79A0 0C005D63 */  jal        func_8001758C
/* 14FD04 800F79A4 00000000 */   nop
/* 14FD08 800F79A8 304200FF */  andi       $v0, $v0, 0xff
/* 14FD0C 800F79AC 3C03CCCC */  lui        $v1, 0xcccc
/* 14FD10 800F79B0 3463CCCD */  ori        $v1, $v1, 0xcccd
/* 14FD14 800F79B4 00430019 */  multu      $v0, $v1
/* 14FD18 800F79B8 00004010 */  mfhi       $t0
/* 14FD1C 800F79BC 00082082 */  srl        $a0, $t0, 2
/* 14FD20 800F79C0 00041880 */  sll        $v1, $a0, 2
/* 14FD24 800F79C4 00641821 */  addu       $v1, $v1, $a0
/* 14FD28 800F79C8 00431023 */  subu       $v0, $v0, $v1
/* 14FD2C 800F79CC 304200FF */  andi       $v0, $v0, 0xff
/* 14FD30 800F79D0 A6020006 */  sh         $v0, 6($s0)
.L800F79D4:
/* 14FD34 800F79D4 24020003 */  addiu      $v0, $zero, 3
/* 14FD38 800F79D8 0803DE93 */  j          .L800F7A4C
/* 14FD3C 800F79DC A6020002 */   sh        $v0, 2($s0)
.L800F79E0:
/* 14FD40 800F79E0 9602000A */  lhu        $v0, 0xa($s0)
/* 14FD44 800F79E4 14400016 */  bnez       $v0, .L800F7A40
/* 14FD48 800F79E8 00000000 */   nop
/* 14FD4C 800F79EC A6000012 */  sh         $zero, 0x12($s0)
/* 14FD50 800F79F0 0C03DCFD */  jal        func_800F73F4_14F754
/* 14FD54 800F79F4 3284FFFF */   andi      $a0, $s4, 0xffff
/* 14FD58 800F79F8 304200FF */  andi       $v0, $v0, 0xff
/* 14FD5C 800F79FC 10400014 */  beqz       $v0, .L800F7A50
/* 14FD60 800F7A00 3282FFFF */   andi      $v0, $s4, 0xffff
/* 14FD64 800F7A04 96020006 */  lhu        $v0, 6($s0)
/* 14FD68 800F7A08 10400005 */  beqz       $v0, .L800F7A20
/* 14FD6C 800F7A0C 00000000 */   nop
/* 14FD70 800F7A10 96020006 */  lhu        $v0, 6($s0)
/* 14FD74 800F7A14 2442FFFF */  addiu      $v0, $v0, -1
/* 14FD78 800F7A18 0803DE93 */  j          .L800F7A4C
/* 14FD7C 800F7A1C A6020006 */   sh        $v0, 6($s0)
.L800F7A20:
/* 14FD80 800F7A20 86040008 */  lh         $a0, 8($s0)
/* 14FD84 800F7A24 0C03DC03 */  jal        func_800F700C_14F36C
/* 14FD88 800F7A28 00000000 */   nop
/* 14FD8C 800F7A2C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 14FD90 800F7A30 1040FF58 */  beqz       $v0, .L800F7794
/* 14FD94 800F7A34 24020001 */   addiu     $v0, $zero, 1
/* 14FD98 800F7A38 0803DE93 */  j          .L800F7A4C
/* 14FD9C 800F7A3C A6020002 */   sh        $v0, 2($s0)
.L800F7A40:
/* 14FDA0 800F7A40 9602000A */  lhu        $v0, 0xa($s0)
/* 14FDA4 800F7A44 2442FFFF */  addiu      $v0, $v0, -1
/* 14FDA8 800F7A48 A602000A */  sh         $v0, 0xa($s0)
.L800F7A4C:
/* 14FDAC 800F7A4C 3282FFFF */  andi       $v0, $s4, 0xffff
.L800F7A50:
/* 14FDB0 800F7A50 00022040 */  sll        $a0, $v0, 1
/* 14FDB4 800F7A54 00822021 */  addu       $a0, $a0, $v0
/* 14FDB8 800F7A58 00042100 */  sll        $a0, $a0, 4
/* 14FDBC 800F7A5C 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FDC0 800F7A60 00441021 */  addu       $v0, $v0, $a0
/* 14FDC4 800F7A64 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FDC8 800F7A68 00021040 */  sll        $v0, $v0, 1
/* 14FDCC 800F7A6C 96030012 */  lhu        $v1, 0x12($s0)
/* 14FDD0 800F7A70 3C01800F */  lui        $at, %hi(D_800EDEB4)
/* 14FDD4 800F7A74 00220821 */  addu       $at, $at, $v0
/* 14FDD8 800F7A78 A423DEB4 */  sh         $v1, %lo(D_800EDEB4)($at)
/* 14FDDC 800F7A7C 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FDE0 800F7A80 00441021 */  addu       $v0, $v0, $a0
/* 14FDE4 800F7A84 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FDE8 800F7A88 00021040 */  sll        $v0, $v0, 1
/* 14FDEC 800F7A8C 96030010 */  lhu        $v1, 0x10($s0)
/* 14FDF0 800F7A90 3C01800F */  lui        $at, %hi(D_800F5460)
/* 14FDF4 800F7A94 00220821 */  addu       $at, $at, $v0
/* 14FDF8 800F7A98 A4235460 */  sh         $v1, %lo(D_800F5460)($at)
/* 14FDFC 800F7A9C 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 14FE00 800F7AA0 00641821 */  addu       $v1, $v1, $a0
/* 14FE04 800F7AA4 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 14FE08 800F7AA8 9202000D */  lbu        $v0, 0xd($s0)
/* 14FE0C 800F7AAC 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 14FE10 800F7AB0 00230821 */  addu       $at, $at, $v1
/* 14FE14 800F7AB4 A022CE14 */  sb         $v0, %lo(D_800ECE14)($at)
/* 14FE18 800F7AB8 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 14FE1C 800F7ABC 00641821 */  addu       $v1, $v1, $a0
/* 14FE20 800F7AC0 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 14FE24 800F7AC4 9202000F */  lbu        $v0, 0xf($s0)
/* 14FE28 800F7AC8 00021023 */  negu       $v0, $v0
/* 14FE2C 800F7ACC 3C01800F */  lui        $at, %hi(D_800F3843)
/* 14FE30 800F7AD0 00230821 */  addu       $at, $at, $v1
/* 14FE34 800F7AD4 A0223843 */  sb         $v0, %lo(D_800F3843)($at)
.L800F7AD8:
/* 14FE38 800F7AD8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 14FE3C 800F7ADC 8FB40030 */  lw         $s4, 0x30($sp)
/* 14FE40 800F7AE0 8FB3002C */  lw         $s3, 0x2c($sp)
/* 14FE44 800F7AE4 8FB20028 */  lw         $s2, 0x28($sp)
/* 14FE48 800F7AE8 8FB10024 */  lw         $s1, 0x24($sp)
/* 14FE4C 800F7AEC 8FB00020 */  lw         $s0, 0x20($sp)
/* 14FE50 800F7AF0 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 14FE54 800F7AF4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 14FE58 800F7AF8 03E00008 */  jr         $ra
/* 14FE5C 800F7AFC 27BD0048 */   addiu     $sp, $sp, 0x48
