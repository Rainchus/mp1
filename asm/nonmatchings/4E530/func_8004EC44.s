	.set noat
	.set noreorder

glabel func_8004EC44
/* 4F844 8004EC44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4F848 8004EC48 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4F84C 8004EC4C AFB10014 */  sw         $s1, 0x14($sp)
/* 4F850 8004EC50 AFB00010 */  sw         $s0, 0x10($sp)
/* 4F854 8004EC54 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4F858 8004EC58 00808821 */  addu       $s1, $a0, $zero
/* 4F85C 8004EC5C 8E300050 */  lw         $s0, 0x50($s1)
/* 4F860 8004EC60 9222004D */  lbu        $v0, 0x4d($s1)
/* 4F864 8004EC64 2442FFFF */  addiu      $v0, $v0, -1
/* 4F868 8004EC68 16000044 */  bnez       $s0, .L8004ED7C
/* 4F86C 8004EC6C A222004D */   sb        $v0, 0x4d($s1)
/* 4F870 8004EC70 9222004D */  lbu        $v0, 0x4d($s1)
/* 4F874 8004EC74 1440001F */  bnez       $v0, .L8004ECF4
/* 4F878 8004EC78 00000000 */   nop
/* 4F87C 8004EC7C 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F880 8004EC80 00031040 */  sll        $v0, $v1, 1
/* 4F884 8004EC84 00431021 */  addu       $v0, $v0, $v1
/* 4F888 8004EC88 00021100 */  sll        $v0, $v0, 4
/* 4F88C 8004EC8C 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F890 8004EC90 00220821 */  addu       $at, $at, $v0
/* 4F894 8004EC94 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F898 8004EC98 C6200024 */  lwc1       $f0, 0x24($s1)
/* 4F89C 8004EC9C E4400018 */  swc1       $f0, 0x18($v0)
/* 4F8A0 8004ECA0 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F8A4 8004ECA4 00031040 */  sll        $v0, $v1, 1
/* 4F8A8 8004ECA8 00431021 */  addu       $v0, $v0, $v1
/* 4F8AC 8004ECAC 00021100 */  sll        $v0, $v0, 4
/* 4F8B0 8004ECB0 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F8B4 8004ECB4 00220821 */  addu       $at, $at, $v0
/* 4F8B8 8004ECB8 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F8BC 8004ECBC C6200028 */  lwc1       $f0, 0x28($s1)
/* 4F8C0 8004ECC0 E440001C */  swc1       $f0, 0x1c($v0)
/* 4F8C4 8004ECC4 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F8C8 8004ECC8 00031040 */  sll        $v0, $v1, 1
/* 4F8CC 8004ECCC 00431021 */  addu       $v0, $v0, $v1
/* 4F8D0 8004ECD0 00021100 */  sll        $v0, $v0, 4
/* 4F8D4 8004ECD4 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F8D8 8004ECD8 00220821 */  addu       $at, $at, $v0
/* 4F8DC 8004ECDC 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F8E0 8004ECE0 C620002C */  lwc1       $f0, 0x2c($s1)
/* 4F8E4 8004ECE4 0C0175C6 */  jal        func_8005D718
/* 4F8E8 8004ECE8 E4400020 */   swc1      $f0, 0x20($v0)
/* 4F8EC 8004ECEC 08013B7F */  j          .L8004EDFC
/* 4F8F0 8004ECF0 00000000 */   nop
.L8004ECF4:
/* 4F8F4 8004ECF4 C62C0034 */  lwc1       $f12, 0x34($s1)
/* 4F8F8 8004ECF8 C6200030 */  lwc1       $f0, 0x30($s1)
/* 4F8FC 8004ECFC 46006300 */  add.s      $f12, $f12, $f0
/* 4F900 8004ED00 E62C0034 */  swc1       $f12, 0x34($s1)
/* 4F904 8004ED04 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F908 8004ED08 00031040 */  sll        $v0, $v1, 1
/* 4F90C 8004ED0C 00431021 */  addu       $v0, $v0, $v1
/* 4F910 8004ED10 00021100 */  sll        $v0, $v0, 4
/* 4F914 8004ED14 3C10800F */  lui        $s0, %hi(D_800F32D0)
/* 4F918 8004ED18 02028021 */  addu       $s0, $s0, $v0
/* 4F91C 8004ED1C 8E1032D0 */  lw         $s0, %lo(D_800F32D0)($s0)
/* 4F920 8004ED20 46006321 */  cvt.d.s    $f12, $f12
/* 4F924 8004ED24 3C01800D */  lui        $at, %hi(D_800CB100)
/* 4F928 8004ED28 D434B100 */  ldc1       $f20, %lo(D_800CB100)($at)
/* 4F92C 8004ED2C 46346302 */  mul.d      $f12, $f12, $f20
/* 4F930 8004ED30 0C022018 */  jal        func_80088060
/* 4F934 8004ED34 46206320 */   cvt.s.d   $f12, $f12
/* 4F938 8004ED38 E6000018 */  swc1       $f0, 0x18($s0)
/* 4F93C 8004ED3C 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F940 8004ED40 00031040 */  sll        $v0, $v1, 1
/* 4F944 8004ED44 00431021 */  addu       $v0, $v0, $v1
/* 4F948 8004ED48 00021100 */  sll        $v0, $v0, 4
/* 4F94C 8004ED4C 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F950 8004ED50 00220821 */  addu       $at, $at, $v0
/* 4F954 8004ED54 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F958 8004ED58 AC40001C */  sw         $zero, 0x1c($v0)
/* 4F95C 8004ED5C 9223004C */  lbu        $v1, 0x4c($s1)
/* 4F960 8004ED60 00031040 */  sll        $v0, $v1, 1
/* 4F964 8004ED64 00431021 */  addu       $v0, $v0, $v1
/* 4F968 8004ED68 00021100 */  sll        $v0, $v0, 4
/* 4F96C 8004ED6C 3C10800F */  lui        $s0, %hi(D_800F32D0)
/* 4F970 8004ED70 02028021 */  addu       $s0, $s0, $v0
/* 4F974 8004ED74 08013B79 */  j          .L8004EDE4
/* 4F978 8004ED78 8E1032D0 */   lw        $s0, %lo(D_800F32D0)($s0)
.L8004ED7C:
/* 4F97C 8004ED7C 9222004D */  lbu        $v0, 0x4d($s1)
/* 4F980 8004ED80 1440000C */  bnez       $v0, .L8004EDB4
/* 4F984 8004ED84 00000000 */   nop
/* 4F988 8004ED88 C6200024 */  lwc1       $f0, 0x24($s1)
/* 4F98C 8004ED8C E6000018 */  swc1       $f0, 0x18($s0)
/* 4F990 8004ED90 C6200028 */  lwc1       $f0, 0x28($s1)
/* 4F994 8004ED94 E600001C */  swc1       $f0, 0x1c($s0)
/* 4F998 8004ED98 C620002C */  lwc1       $f0, 0x2c($s1)
/* 4F99C 8004ED9C E6000020 */  swc1       $f0, 0x20($s0)
/* 4F9A0 8004EDA0 AE200050 */  sw         $zero, 0x50($s1)
/* 4F9A4 8004EDA4 0C0175C6 */  jal        func_8005D718
/* 4F9A8 8004EDA8 02202021 */   addu      $a0, $s1, $zero
/* 4F9AC 8004EDAC 08013B7F */  j          .L8004EDFC
/* 4F9B0 8004EDB0 00000000 */   nop
.L8004EDB4:
/* 4F9B4 8004EDB4 C62C0034 */  lwc1       $f12, 0x34($s1)
/* 4F9B8 8004EDB8 C6200030 */  lwc1       $f0, 0x30($s1)
/* 4F9BC 8004EDBC 46006300 */  add.s      $f12, $f12, $f0
/* 4F9C0 8004EDC0 E62C0034 */  swc1       $f12, 0x34($s1)
/* 4F9C4 8004EDC4 46006321 */  cvt.d.s    $f12, $f12
/* 4F9C8 8004EDC8 3C01800D */  lui        $at, %hi(D_800CB108)
/* 4F9CC 8004EDCC D434B108 */  ldc1       $f20, %lo(D_800CB108)($at)
/* 4F9D0 8004EDD0 46346302 */  mul.d      $f12, $f12, $f20
/* 4F9D4 8004EDD4 0C022018 */  jal        func_80088060
/* 4F9D8 8004EDD8 46206320 */   cvt.s.d   $f12, $f12
/* 4F9DC 8004EDDC E6000018 */  swc1       $f0, 0x18($s0)
/* 4F9E0 8004EDE0 AE00001C */  sw         $zero, 0x1c($s0)
.L8004EDE4:
/* 4F9E4 8004EDE4 C62C0034 */  lwc1       $f12, 0x34($s1)
/* 4F9E8 8004EDE8 46006321 */  cvt.d.s    $f12, $f12
/* 4F9EC 8004EDEC 46346302 */  mul.d      $f12, $f12, $f20
/* 4F9F0 8004EDF0 0C021570 */  jal        func_800855C0
/* 4F9F4 8004EDF4 46206320 */   cvt.s.d   $f12, $f12
/* 4F9F8 8004EDF8 E6000020 */  swc1       $f0, 0x20($s0)
.L8004EDFC:
/* 4F9FC 8004EDFC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4FA00 8004EE00 8FB10014 */  lw         $s1, 0x14($sp)
/* 4FA04 8004EE04 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FA08 8004EE08 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4FA0C 8004EE0C 03E00008 */  jr         $ra
/* 4FA10 8004EE10 27BD0028 */   addiu     $sp, $sp, 0x28
