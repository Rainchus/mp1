	.set noat
	.set noreorder

glabel func_8000EC14
/* F814 8000EC14 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F818 8000EC18 AFBF002C */  sw         $ra, 0x2c($sp)
/* F81C 8000EC1C AFB40028 */  sw         $s4, 0x28($sp)
/* F820 8000EC20 AFB30024 */  sw         $s3, 0x24($sp)
/* F824 8000EC24 AFB20020 */  sw         $s2, 0x20($sp)
/* F828 8000EC28 AFB1001C */  sw         $s1, 0x1c($sp)
/* F82C 8000EC2C AFB00018 */  sw         $s0, 0x18($sp)
/* F830 8000EC30 F7B40030 */  sdc1       $f20, 0x30($sp)
/* F834 8000EC34 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F838 8000EC38 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F83C 8000EC3C 0C022A60 */  jal        func_8008A980
/* F840 8000EC40 00008821 */   addu      $s1, $zero, $zero
/* F844 8000EC44 0040A021 */  addu       $s4, $v0, $zero
/* F848 8000EC48 3C01800D */  lui        $at, %hi(D_800CEAA0)
/* F84C 8000EC4C AC20EAA0 */  sw         $zero, %lo(D_800CEAA0)($at)
/* F850 8000EC50 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* F854 8000EC54 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* F858 8000EC58 1840007E */  blez       $v0, .L8000EE54
/* F85C 8000EC5C 00111400 */   sll       $v0, $s1, 0x10
/* F860 8000EC60 24130001 */  addiu      $s3, $zero, 1
/* F864 8000EC64 2412DFFF */  addiu      $s2, $zero, -0x2001
.L8000EC68:
/* F868 8000EC68 00021403 */  sra        $v0, $v0, 0x10
/* F86C 8000EC6C 00021840 */  sll        $v1, $v0, 1
/* F870 8000EC70 00621821 */  addu       $v1, $v1, $v0
/* F874 8000EC74 00031880 */  sll        $v1, $v1, 2
/* F878 8000EC78 00621823 */  subu       $v1, $v1, $v0
/* F87C 8000EC7C 00031880 */  sll        $v1, $v1, 2
/* F880 8000EC80 3C02800D */  lui        $v0, %hi(D_800CEA94)
/* F884 8000EC84 8C42EA94 */  lw         $v0, %lo(D_800CEA94)($v0)
/* F888 8000EC88 00628021 */  addu       $s0, $v1, $v0
/* F88C 8000EC8C 86050016 */  lh         $a1, 0x16($s0)
/* F890 8000EC90 04A00045 */  bltz       $a1, .L8000EDA8
/* F894 8000EC94 00000000 */   nop
/* F898 8000EC98 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F89C 8000EC9C 0C022A44 */  jal        func_8008A910
/* F8A0 8000ECA0 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* F8A4 8000ECA4 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F8A8 8000ECA8 0C022A78 */  jal        func_8008A9E0
/* F8AC 8000ECAC 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* F8B0 8000ECB0 AE020010 */  sw         $v0, 0x10($s0)
/* F8B4 8000ECB4 00401821 */  addu       $v1, $v0, $zero
/* F8B8 8000ECB8 1073001E */  beq        $v1, $s3, .L8000ED34
/* F8BC 8000ECBC AE02000C */   sw        $v0, 0xc($s0)
/* F8C0 8000ECC0 28620002 */  slti       $v0, $v1, 2
/* F8C4 8000ECC4 50400005 */  beql       $v0, $zero, .L8000ECDC
/* F8C8 8000ECC8 24020002 */   addiu     $v0, $zero, 2
/* F8CC 8000ECCC 10600007 */  beqz       $v1, .L8000ECEC
/* F8D0 8000ECD0 00000000 */   nop
/* F8D4 8000ECD4 08003B63 */  j          .L8000ED8C
/* F8D8 8000ECD8 00000000 */   nop
.L8000ECDC:
/* F8DC 8000ECDC 1062000D */  beq        $v1, $v0, .L8000ED14
/* F8E0 8000ECE0 00000000 */   nop
/* F8E4 8000ECE4 08003B63 */  j          .L8000ED8C
/* F8E8 8000ECE8 00000000 */   nop
.L8000ECEC:
/* F8EC 8000ECEC 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F8F0 8000ECF0 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F8F4 8000ECF4 0C022A30 */  jal        func_8008A8C0
/* F8F8 8000ECF8 86050016 */   lh        $a1, 0x16($s0)
/* F8FC 8000ECFC 2402FFFF */  addiu      $v0, $zero, -1
/* F900 8000ED00 A6020016 */  sh         $v0, 0x16($s0)
/* F904 8000ED04 8E020008 */  lw         $v0, 8($s0)
/* F908 8000ED08 00521024 */  and        $v0, $v0, $s2
/* F90C 8000ED0C 08003B63 */  j          .L8000ED8C
/* F910 8000ED10 AE020008 */   sw        $v0, 8($s0)
.L8000ED14:
/* F914 8000ED14 8E020008 */  lw         $v0, 8($s0)
/* F918 8000ED18 30421000 */  andi       $v0, $v0, 0x1000
/* F91C 8000ED1C 54400001 */  bnel       $v0, $zero, .L8000ED24
/* F920 8000ED20 AE13000C */   sw        $s3, 0xc($s0)
.L8000ED24:
/* F924 8000ED24 8E020008 */  lw         $v0, 8($s0)
/* F928 8000ED28 00521024 */  and        $v0, $v0, $s2
/* F92C 8000ED2C 08003B5E */  j          .L8000ED78
/* F930 8000ED30 AE020008 */   sw        $v0, 8($s0)
.L8000ED34:
/* F934 8000ED34 8E020008 */  lw         $v0, 8($s0)
/* F938 8000ED38 30422000 */  andi       $v0, $v0, 0x2000
/* F93C 8000ED3C 10400006 */  beqz       $v0, .L8000ED58
/* F940 8000ED40 00000000 */   nop
/* F944 8000ED44 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F948 8000ED48 0C022A64 */  jal        func_8008A990
/* F94C 8000ED4C 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* F950 8000ED50 08003B5E */  j          .L8000ED78
/* F954 8000ED54 00000000 */   nop
.L8000ED58:
/* F958 8000ED58 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* F95C 8000ED5C 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* F960 8000ED60 30420001 */  andi       $v0, $v0, 1
/* F964 8000ED64 14400004 */  bnez       $v0, .L8000ED78
/* F968 8000ED68 00000000 */   nop
/* F96C 8000ED6C 00112400 */  sll        $a0, $s1, 0x10
/* F970 8000ED70 0C003E11 */  jal        func_8000F844
/* F974 8000ED74 00042403 */   sra       $a0, $a0, 0x10
.L8000ED78:
/* F978 8000ED78 3C02800D */  lui        $v0, %hi(D_800CEAA0)
/* F97C 8000ED7C 8C42EAA0 */  lw         $v0, %lo(D_800CEAA0)($v0)
/* F980 8000ED80 24420001 */  addiu      $v0, $v0, 1
/* F984 8000ED84 3C01800D */  lui        $at, %hi(D_800CEAA0)
/* F988 8000ED88 AC22EAA0 */  sw         $v0, %lo(D_800CEAA0)($at)
.L8000ED8C:
/* F98C 8000ED8C 8E020008 */  lw         $v0, 8($s0)
/* F990 8000ED90 3042000F */  andi       $v0, $v0, 0xf
/* F994 8000ED94 10400004 */  beqz       $v0, .L8000EDA8
/* F998 8000ED98 00000000 */   nop
/* F99C 8000ED9C 00112400 */  sll        $a0, $s1, 0x10
/* F9A0 8000EDA0 0C003A4B */  jal        func_8000E92C
/* F9A4 8000EDA4 00042403 */   sra       $a0, $a0, 0x10
.L8000EDA8:
/* F9A8 8000EDA8 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* F9AC 8000EDAC 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* F9B0 8000EDB0 30420001 */  andi       $v0, $v0, 1
/* F9B4 8000EDB4 1040000F */  beqz       $v0, .L8000EDF4
/* F9B8 8000EDB8 00000000 */   nop
/* F9BC 8000EDBC 8E030008 */  lw         $v1, 8($s0)
/* F9C0 8000EDC0 30620100 */  andi       $v0, $v1, 0x100
/* F9C4 8000EDC4 1440000B */  bnez       $v0, .L8000EDF4
/* F9C8 8000EDC8 00000000 */   nop
/* F9CC 8000EDCC 3C02800D */  lui        $v0, %hi(D_800CEAB6)
/* F9D0 8000EDD0 8442EAB6 */  lh         $v0, %lo(D_800CEAB6)($v0)
/* F9D4 8000EDD4 04400016 */  bltz       $v0, .L8000EE30
/* F9D8 8000EDD8 34620002 */   ori       $v0, $v1, 2
/* F9DC 8000EDDC AE020008 */  sw         $v0, 8($s0)
/* F9E0 8000EDE0 00112400 */  sll        $a0, $s1, 0x10
/* F9E4 8000EDE4 0C003A4B */  jal        func_8000E92C
/* F9E8 8000EDE8 00042403 */   sra       $a0, $a0, 0x10
/* F9EC 8000EDEC 08003B8D */  j          .L8000EE34
/* F9F0 8000EDF0 26220001 */   addiu     $v0, $s1, 1
.L8000EDF4:
/* F9F4 8000EDF4 8E020008 */  lw         $v0, 8($s0)
/* F9F8 8000EDF8 30421000 */  andi       $v0, $v0, 0x1000
/* F9FC 8000EDFC 1040000D */  beqz       $v0, .L8000EE34
/* FA00 8000EE00 26220001 */   addiu     $v0, $s1, 1
/* FA04 8000EE04 86020016 */  lh         $v0, 0x16($s0)
/* FA08 8000EE08 0441000A */  bgez       $v0, .L8000EE34
/* FA0C 8000EE0C 26220001 */   addiu     $v0, $s1, 1
/* FA10 8000EE10 00112400 */  sll        $a0, $s1, 0x10
/* FA14 8000EE14 0C003797 */  jal        func_8000DE5C
/* FA18 8000EE18 00042403 */   sra       $a0, $a0, 0x10
/* FA1C 8000EE1C 3C02800D */  lui        $v0, %hi(D_800CEAA0)
/* FA20 8000EE20 8C42EAA0 */  lw         $v0, %lo(D_800CEAA0)($v0)
/* FA24 8000EE24 24420001 */  addiu      $v0, $v0, 1
/* FA28 8000EE28 3C01800D */  lui        $at, %hi(D_800CEAA0)
/* FA2C 8000EE2C AC22EAA0 */  sw         $v0, %lo(D_800CEAA0)($at)
.L8000EE30:
/* FA30 8000EE30 26220001 */  addiu      $v0, $s1, 1
.L8000EE34:
/* FA34 8000EE34 00408821 */  addu       $s1, $v0, $zero
/* FA38 8000EE38 00021400 */  sll        $v0, $v0, 0x10
/* FA3C 8000EE3C 00021403 */  sra        $v0, $v0, 0x10
/* FA40 8000EE40 3C03800D */  lui        $v1, %hi(D_800CEA9C)
/* FA44 8000EE44 8C63EA9C */  lw         $v1, %lo(D_800CEA9C)($v1)
/* FA48 8000EE48 0043102A */  slt        $v0, $v0, $v1
/* FA4C 8000EE4C 1440FF86 */  bnez       $v0, .L8000EC68
/* FA50 8000EE50 00111400 */   sll       $v0, $s1, 0x10
.L8000EE54:
/* FA54 8000EE54 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* FA58 8000EE58 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* FA5C 8000EE5C 30420001 */  andi       $v0, $v0, 1
/* FA60 8000EE60 10400018 */  beqz       $v0, .L8000EEC4
/* FA64 8000EE64 00000000 */   nop
/* FA68 8000EE68 3C02800D */  lui        $v0, %hi(D_800CEAB6)
/* FA6C 8000EE6C 9442EAB6 */  lhu        $v0, %lo(D_800CEAB6)($v0)
/* FA70 8000EE70 00021400 */  sll        $v0, $v0, 0x10
/* FA74 8000EE74 1840000A */  blez       $v0, .L8000EEA0
/* FA78 8000EE78 00021443 */   sra       $v0, $v0, 0x11
/* FA7C 8000EE7C 3C01800D */  lui        $at, %hi(D_800CEAB6)
/* FA80 8000EE80 A422EAB6 */  sh         $v0, %lo(D_800CEAB6)($at)
/* FA84 8000EE84 2842000A */  slti       $v0, $v0, 0xa
/* FA88 8000EE88 1040006C */  beqz       $v0, .L8000F03C
/* FA8C 8000EE8C 00141400 */   sll       $v0, $s4, 0x10
/* FA90 8000EE90 3C01800D */  lui        $at, %hi(D_800CEAB6)
/* FA94 8000EE94 A420EAB6 */  sh         $zero, %lo(D_800CEAB6)($at)
/* FA98 8000EE98 08003C10 */  j          .L8000F040
/* FA9C 8000EE9C 00022C03 */   sra       $a1, $v0, 0x10
.L8000EEA0:
/* FAA0 8000EEA0 3C02800D */  lui        $v0, %hi(D_800CEAB6)
/* FAA4 8000EEA4 8442EAB6 */  lh         $v0, %lo(D_800CEAB6)($v0)
/* FAA8 8000EEA8 14400064 */  bnez       $v0, .L8000F03C
/* FAAC 8000EEAC 00141400 */   sll       $v0, $s4, 0x10
/* FAB0 8000EEB0 2402FFFF */  addiu      $v0, $zero, -1
/* FAB4 8000EEB4 3C01800D */  lui        $at, %hi(D_800CEAB6)
/* FAB8 8000EEB8 A422EAB6 */  sh         $v0, %lo(D_800CEAB6)($at)
/* FABC 8000EEBC 08003C0F */  j          .L8000F03C
/* FAC0 8000EEC0 00141400 */   sll       $v0, $s4, 0x10
.L8000EEC4:
/* FAC4 8000EEC4 0C003D38 */  jal        func_8000F4E0
/* FAC8 8000EEC8 00000000 */   nop
/* FACC 8000EECC 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* FAD0 8000EED0 C422EAA8 */  lwc1       $f2, %lo(D_800CEAA8)($at)
/* FAD4 8000EED4 4480A000 */  mtc1       $zero, $f20
/* FAD8 8000EED8 00000000 */  nop
/* FADC 8000EEDC 4602A03C */  c.lt.s     $f20, $f2
/* FAE0 8000EEE0 00000000 */  nop
/* FAE4 8000EEE4 4500002D */  bc1f       .L8000EF9C
/* FAE8 8000EEE8 00000000 */   nop
/* FAEC 8000EEEC 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FAF0 8000EEF0 C420EAAC */  lwc1       $f0, %lo(D_800CEAAC)($at)
/* FAF4 8000EEF4 46020000 */  add.s      $f0, $f0, $f2
/* FAF8 8000EEF8 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FAFC 8000EEFC E420EAAC */  swc1       $f0, %lo(D_800CEAAC)($at)
/* FB00 8000EF00 3C02800D */  lui        $v0, %hi(D_800CEAB0)
/* FB04 8000EF04 8442EAB0 */  lh         $v0, %lo(D_800CEAB0)($v0)
/* FB08 8000EF08 44821000 */  mtc1       $v0, $f2
/* FB0C 8000EF0C 00000000 */  nop
/* FB10 8000EF10 468010A0 */  cvt.s.w    $f2, $f2
/* FB14 8000EF14 4600103E */  c.le.s     $f2, $f0
/* FB18 8000EF18 00000000 */  nop
/* FB1C 8000EF1C 4500000A */  bc1f       .L8000EF48
/* FB20 8000EF20 00000000 */   nop
/* FB24 8000EF24 0C004597 */  jal        func_8001165C
/* FB28 8000EF28 00000000 */   nop
/* FB2C 8000EF2C 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* FB30 8000EF30 E434EAA8 */  swc1       $f20, %lo(D_800CEAA8)($at)
/* FB34 8000EF34 3C02800D */  lui        $v0, %hi(D_800CEAB0)
/* FB38 8000EF38 9442EAB0 */  lhu        $v0, %lo(D_800CEAB0)($v0)
/* FB3C 8000EF3C 3C01800D */  lui        $at, %hi(D_800CEAB2)
/* FB40 8000EF40 08003BE5 */  j          .L8000EF94
/* FB44 8000EF44 A422EAB2 */   sh        $v0, %lo(D_800CEAB2)($at)
.L8000EF48:
/* FB48 8000EF48 44820000 */  mtc1       $v0, $f0
/* FB4C 8000EF4C 00000000 */  nop
/* FB50 8000EF50 46800020 */  cvt.s.w    $f0, $f0
/* FB54 8000EF54 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FB58 8000EF58 C422EAAC */  lwc1       $f2, %lo(D_800CEAAC)($at)
/* FB5C 8000EF5C 46020001 */  sub.s      $f0, $f0, $f2
/* FB60 8000EF60 4600008D */  trunc.w.s  $f2, $f0
/* FB64 8000EF64 44021000 */  mfc1       $v0, $f2
/* FB68 8000EF68 00000000 */  nop
/* FB6C 8000EF6C 00408821 */  addu       $s1, $v0, $zero
/* FB70 8000EF70 3C03800D */  lui        $v1, %hi(D_800CEAB2)
/* FB74 8000EF74 8463EAB2 */  lh         $v1, %lo(D_800CEAB2)($v1)
/* FB78 8000EF78 00021400 */  sll        $v0, $v0, 0x10
/* FB7C 8000EF7C 00021403 */  sra        $v0, $v0, 0x10
/* FB80 8000EF80 10620004 */  beq        $v1, $v0, .L8000EF94
/* FB84 8000EF84 00000000 */   nop
/* FB88 8000EF88 3C01800D */  lui        $at, %hi(D_800CEAB2)
/* FB8C 8000EF8C 0C00377B */  jal        func_8000DDEC
/* FB90 8000EF90 A431EAB2 */   sh        $s1, %lo(D_800CEAB2)($at)
.L8000EF94:
/* FB94 8000EF94 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* FB98 8000EF98 C422EAA8 */  lwc1       $f2, %lo(D_800CEAA8)($at)
.L8000EF9C:
/* FB9C 8000EF9C 44802000 */  mtc1       $zero, $f4
/* FBA0 8000EFA0 00000000 */  nop
/* FBA4 8000EFA4 4604103C */  c.lt.s     $f2, $f4
/* FBA8 8000EFA8 00000000 */  nop
/* FBAC 8000EFAC 00000000 */  nop
/* FBB0 8000EFB0 45000022 */  bc1f       .L8000F03C
/* FBB4 8000EFB4 00141400 */   sll       $v0, $s4, 0x10
/* FBB8 8000EFB8 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FBBC 8000EFBC C420EAAC */  lwc1       $f0, %lo(D_800CEAAC)($at)
/* FBC0 8000EFC0 46020001 */  sub.s      $f0, $f0, $f2
/* FBC4 8000EFC4 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FBC8 8000EFC8 E420EAAC */  swc1       $f0, %lo(D_800CEAAC)($at)
/* FBCC 8000EFCC 3C02800D */  lui        $v0, %hi(D_800CEAB0)
/* FBD0 8000EFD0 8442EAB0 */  lh         $v0, %lo(D_800CEAB0)($v0)
/* FBD4 8000EFD4 44821000 */  mtc1       $v0, $f2
/* FBD8 8000EFD8 00000000 */  nop
/* FBDC 8000EFDC 468010A0 */  cvt.s.w    $f2, $f2
/* FBE0 8000EFE0 4600103E */  c.le.s     $f2, $f0
/* FBE4 8000EFE4 00000000 */  nop
/* FBE8 8000EFE8 00000000 */  nop
/* FBEC 8000EFEC 45000005 */  bc1f       .L8000F004
/* FBF0 8000EFF0 00402021 */   addu      $a0, $v0, $zero
/* FBF4 8000EFF4 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* FBF8 8000EFF8 E424EAA8 */  swc1       $f4, %lo(D_800CEAA8)($at)
/* FBFC 8000EFFC 08003C05 */  j          .L8000F014
/* FC00 8000F000 00808821 */   addu      $s1, $a0, $zero
.L8000F004:
/* FC04 8000F004 3C01800D */  lui        $at, %hi(D_800CEAAC)
/* FC08 8000F008 C420EAAC */  lwc1       $f0, %lo(D_800CEAAC)($at)
/* FC0C 8000F00C 4600008D */  trunc.w.s  $f2, $f0
/* FC10 8000F010 44111000 */  mfc1       $s1, $f2
.L8000F014:
/* FC14 8000F014 3C03800D */  lui        $v1, %hi(D_800CEAB2)
/* FC18 8000F018 8463EAB2 */  lh         $v1, %lo(D_800CEAB2)($v1)
/* FC1C 8000F01C 00111400 */  sll        $v0, $s1, 0x10
/* FC20 8000F020 00021403 */  sra        $v0, $v0, 0x10
/* FC24 8000F024 10620005 */  beq        $v1, $v0, .L8000F03C
/* FC28 8000F028 00141400 */   sll       $v0, $s4, 0x10
/* FC2C 8000F02C 3C01800D */  lui        $at, %hi(D_800CEAB2)
/* FC30 8000F030 0C00377B */  jal        func_8000DDEC
/* FC34 8000F034 A431EAB2 */   sh        $s1, %lo(D_800CEAB2)($at)
/* FC38 8000F038 00141400 */  sll        $v0, $s4, 0x10
.L8000F03C:
/* FC3C 8000F03C 00022C03 */  sra        $a1, $v0, 0x10
.L8000F040:
/* FC40 8000F040 04A00004 */  bltz       $a1, .L8000F054
/* FC44 8000F044 00000000 */   nop
/* FC48 8000F048 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* FC4C 8000F04C 0C022A44 */  jal        func_8008A910
/* FC50 8000F050 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
.L8000F054:
/* FC54 8000F054 8FBF002C */  lw         $ra, 0x2c($sp)
/* FC58 8000F058 8FB40028 */  lw         $s4, 0x28($sp)
/* FC5C 8000F05C 8FB30024 */  lw         $s3, 0x24($sp)
/* FC60 8000F060 8FB20020 */  lw         $s2, 0x20($sp)
/* FC64 8000F064 8FB1001C */  lw         $s1, 0x1c($sp)
/* FC68 8000F068 8FB00018 */  lw         $s0, 0x18($sp)
/* FC6C 8000F06C D7B40030 */  ldc1       $f20, 0x30($sp)
/* FC70 8000F070 03E00008 */  jr         $ra
/* FC74 8000F074 27BD0038 */   addiu     $sp, $sp, 0x38
