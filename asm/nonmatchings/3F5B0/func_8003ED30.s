	.set noat
	.set noreorder

glabel func_8003ED30
/* 3F930 8003ED30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F934 8003ED34 AFBF0020 */  sw         $ra, 0x20($sp)
/* 3F938 8003ED38 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3F93C 8003ED3C 0C018CEA */  jal        func_800633A8
/* 3F940 8003ED40 AFB00018 */   sw        $s0, 0x18($sp)
/* 3F944 8003ED44 8C50008C */  lw         $s0, 0x8c($v0)
/* 3F948 8003ED48 2411FFFF */  addiu      $s1, $zero, -1
.L8003ED4C:
/* 3F94C 8003ED4C 3C05800F */  lui        $a1, %hi(D_800F5460)
/* 3F950 8003ED50 94A55460 */  lhu        $a1, %lo(D_800F5460)($a1)
/* 3F954 8003ED54 10A00014 */  beqz       $a1, .L8003EDA8
/* 3F958 8003ED58 00000000 */   nop
/* 3F95C 8003ED5C 86020008 */  lh         $v0, 8($s0)
/* 3F960 8003ED60 00402021 */  addu       $a0, $v0, $zero
/* 3F964 8003ED64 8E030004 */  lw         $v1, 4($s0)
/* 3F968 8003ED68 00021040 */  sll        $v0, $v0, 1
/* 3F96C 8003ED6C 00431021 */  addu       $v0, $v0, $v1
/* 3F970 8003ED70 94420000 */  lhu        $v0, ($v0)
/* 3F974 8003ED74 54A2000C */  bnel       $a1, $v0, .L8003EDA8
/* 3F978 8003ED78 A6000008 */   sh        $zero, 8($s0)
/* 3F97C 8003ED7C 24820001 */  addiu      $v0, $a0, 1
/* 3F980 8003ED80 A6020008 */  sh         $v0, 8($s0)
/* 3F984 8003ED84 00021400 */  sll        $v0, $v0, 0x10
/* 3F988 8003ED88 8E030004 */  lw         $v1, 4($s0)
/* 3F98C 8003ED8C 000213C3 */  sra        $v0, $v0, 0xf
/* 3F990 8003ED90 00431021 */  addu       $v0, $v0, $v1
/* 3F994 8003ED94 94420000 */  lhu        $v0, ($v0)
/* 3F998 8003ED98 14400003 */  bnez       $v0, .L8003EDA8
/* 3F99C 8003ED9C 00000000 */   nop
/* 3F9A0 8003EDA0 0800FB6E */  j          .L8003EDB8
/* 3F9A4 8003EDA4 A6110008 */   sh        $s1, 8($s0)
.L8003EDA8:
/* 3F9A8 8003EDA8 0C018D6D */  jal        func_800635B4
/* 3F9AC 8003EDAC 00000000 */   nop
/* 3F9B0 8003EDB0 0800FB53 */  j          .L8003ED4C
/* 3F9B4 8003EDB4 00000000 */   nop
.L8003EDB8:
/* 3F9B8 8003EDB8 0C018D6D */  jal        func_800635B4
/* 3F9BC 8003EDBC 00000000 */   nop
/* 3F9C0 8003EDC0 0800FB6E */  j          .L8003EDB8
/* 3F9C4 8003EDC4 00000000 */   nop
/* 3F9C8 8003EDC8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 3F9CC 8003EDCC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F9D0 8003EDD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F9D4 8003EDD4 03E00008 */  jr         $ra
/* 3F9D8 8003EDD8 27BD0028 */   addiu     $sp, $sp, 0x28
