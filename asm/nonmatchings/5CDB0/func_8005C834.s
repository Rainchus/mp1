	.set noat
	.set noreorder

glabel func_8005C834
/* 5D434 8005C834 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 5D438 8005C838 AFBF003C */  sw         $ra, 0x3c($sp)
/* 5D43C 8005C83C AFBE0038 */  sw         $fp, 0x38($sp)
/* 5D440 8005C840 AFB70034 */  sw         $s7, 0x34($sp)
/* 5D444 8005C844 AFB60030 */  sw         $s6, 0x30($sp)
/* 5D448 8005C848 AFB5002C */  sw         $s5, 0x2c($sp)
/* 5D44C 8005C84C AFB40028 */  sw         $s4, 0x28($sp)
/* 5D450 8005C850 AFB30024 */  sw         $s3, 0x24($sp)
/* 5D454 8005C854 AFB20020 */  sw         $s2, 0x20($sp)
/* 5D458 8005C858 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5D45C 8005C85C AFB00018 */  sw         $s0, 0x18($sp)
/* 5D460 8005C860 3C16800F */  lui        $s6, %hi(D_800ED5C0)
/* 5D464 8005C864 26D6D5C0 */  addiu      $s6, $s6, %lo(D_800ED5C0)
/* 5D468 8005C868 0000A021 */  addu       $s4, $zero, $zero
/* 5D46C 8005C86C 0C014AA3 */  jal        func_80052A8C
/* 5D470 8005C870 00002021 */   addu      $a0, $zero, $zero
/* 5D474 8005C874 0C012948 */  jal        func_8004A520
/* 5D478 8005C878 00409021 */   addu      $s2, $v0, $zero
/* 5D47C 8005C87C 3C014040 */  lui        $at, 0x4040
/* 5D480 8005C880 44816000 */  mtc1       $at, $f12
/* 5D484 8005C884 0C012D71 */  jal        func_8004B5C4
/* 5D488 8005C888 00000000 */   nop
.L8005C88C:
/* 5D48C 8005C88C 0C01C9C6 */  jal        func_80072718
/* 5D490 8005C890 00000000 */   nop
/* 5D494 8005C894 10400005 */  beqz       $v0, .L8005C8AC
/* 5D498 8005C898 00000000 */   nop
/* 5D49C 8005C89C 0C018D6D */  jal        func_800635B4
/* 5D4A0 8005C8A0 00000000 */   nop
/* 5D4A4 8005C8A4 08017223 */  j          .L8005C88C
/* 5D4A8 8005C8A8 00000000 */   nop
.L8005C8AC:
/* 5D4AC 8005C8AC 0C0173B7 */  jal        func_8005CEDC
/* 5D4B0 8005C8B0 24040003 */   addiu     $a0, $zero, 3
/* 5D4B4 8005C8B4 241E0002 */  addiu      $fp, $zero, 2
.L8005C8B8:
/* 5D4B8 8005C8B8 2402FFFF */  addiu      $v0, $zero, -1
.L8005C8BC:
/* 5D4BC 8005C8BC A6C2001E */  sh         $v0, 0x1e($s6)
/* 5D4C0 8005C8C0 9644000E */  lhu        $a0, 0xe($s2)
/* 5D4C4 8005C8C4 0C013081 */  jal        func_8004C204
/* 5D4C8 8005C8C8 96450010 */   lhu       $a1, 0x10($s2)
/* 5D4CC 8005C8CC 00409821 */  addu       $s3, $v0, $zero
/* 5D4D0 8005C8D0 00138400 */  sll        $s0, $s3, 0x10
/* 5D4D4 8005C8D4 00108403 */  sra        $s0, $s0, 0x10
/* 5D4D8 8005C8D8 0C01307B */  jal        func_8004C1EC
/* 5D4DC 8005C8DC 02002021 */   addu      $a0, $s0, $zero
/* 5D4E0 8005C8E0 0C016F20 */  jal        func_8005BC80
/* 5D4E4 8005C8E4 0040A821 */   addu      $s5, $v0, $zero
/* 5D4E8 8005C8E8 02002021 */  addu       $a0, $s0, $zero
/* 5D4EC 8005C8EC 0C01325A */  jal        func_8004C968
/* 5D4F0 8005C8F0 24050001 */   addiu     $a1, $zero, 1
/* 5D4F4 8005C8F4 3C01800E */  lui        $at, %hi(D_800D8980)
/* 5D4F8 8005C8F8 0C016F4A */  jal        func_8005BD28
/* 5D4FC 8005C8FC AC228980 */   sw        $v0, %lo(D_800D8980)($at)
/* 5D500 8005C900 3C02800E */  lui        $v0, %hi(D_800D8980)
/* 5D504 8005C904 8C428980 */  lw         $v0, %lo(D_800D8980)($v0)
/* 5D508 8005C908 30420002 */  andi       $v0, $v0, 2
/* 5D50C 8005C90C 10400006 */  beqz       $v0, .L8005C928
/* 5D510 8005C910 00001821 */   addu      $v1, $zero, $zero
/* 5D514 8005C914 3C04800E */  lui        $a0, %hi(D_800D89A0)
/* 5D518 8005C918 848489A0 */  lh         $a0, %lo(D_800D89A0)($a0)
/* 5D51C 8005C91C 0C017003 */  jal        func_8005C00C
/* 5D520 8005C920 24140001 */   addiu     $s4, $zero, 1
/* 5D524 8005C924 24030001 */  addiu      $v1, $zero, 1
.L8005C928:
/* 5D528 8005C928 0060B821 */  addu       $s7, $v1, $zero
.L8005C92C:
/* 5D52C 8005C92C 0C018D6D */  jal        func_800635B4
/* 5D530 8005C930 00000000 */   nop
/* 5D534 8005C934 92420003 */  lbu        $v0, 3($s2)
/* 5D538 8005C938 00021040 */  sll        $v0, $v0, 1
/* 5D53C 8005C93C 3C01800F */  lui        $at, %hi(D_800F5460)
/* 5D540 8005C940 00220821 */  addu       $at, $at, $v0
/* 5D544 8005C944 94225460 */  lhu        $v0, %lo(D_800F5460)($at)
/* 5D548 8005C948 30428000 */  andi       $v0, $v0, 0x8000
/* 5D54C 8005C94C 1040004B */  beqz       $v0, .L8005CA7C
/* 5D550 8005C950 02801021 */   addu      $v0, $s4, $zero
/* 5D554 8005C954 10400004 */  beqz       $v0, .L8005C968
/* 5D558 8005C958 00132400 */   sll       $a0, $s3, 0x10
/* 5D55C 8005C95C 0C017049 */  jal        func_8005C124
/* 5D560 8005C960 0000A021 */   addu      $s4, $zero, $zero
/* 5D564 8005C964 00132400 */  sll        $a0, $s3, 0x10
.L8005C968:
/* 5D568 8005C968 00042403 */  sra        $a0, $a0, 0x10
/* 5D56C 8005C96C 0C01325A */  jal        func_8004C968
/* 5D570 8005C970 24050003 */   addiu     $a1, $zero, 3
/* 5D574 8005C974 3C01800E */  lui        $at, %hi(D_800D8980)
/* 5D578 8005C978 AC228980 */  sw         $v0, %lo(D_800D8980)($at)
/* 5D57C 8005C97C 30420001 */  andi       $v0, $v0, 1
/* 5D580 8005C980 5440FFCD */  bnel       $v0, $zero, .L8005C8B8
/* 5D584 8005C984 241E0002 */   addiu     $fp, $zero, 2
/* 5D588 8005C988 3C02800E */  lui        $v0, %hi(D_800D8984)
/* 5D58C 8005C98C 84428984 */  lh         $v0, %lo(D_800D8984)($v0)
/* 5D590 8005C990 04400003 */  bltz       $v0, .L8005C9A0
/* 5D594 8005C994 00000000 */   nop
/* 5D598 8005C998 0C018D54 */  jal        func_80063550
/* 5D59C 8005C99C 2404FFFF */   addiu     $a0, $zero, -1
.L8005C9A0:
/* 5D5A0 8005C9A0 86C2001E */  lh         $v0, 0x1e($s6)
/* 5D5A4 8005C9A4 04400014 */  bltz       $v0, .L8005C9F8
/* 5D5A8 8005C9A8 2402FFFE */   addiu     $v0, $zero, -2
/* 5D5AC 8005C9AC 0C016EAC */  jal        func_8005BAB0
/* 5D5B0 8005C9B0 00002021 */   addu      $a0, $zero, $zero
/* 5D5B4 8005C9B4 00408021 */  addu       $s0, $v0, $zero
/* 5D5B8 8005C9B8 0C016E61 */  jal        func_8005B984
/* 5D5BC 8005C9BC 00002021 */   addu      $a0, $zero, $zero
/* 5D5C0 8005C9C0 00408821 */  addu       $s1, $v0, $zero
/* 5D5C4 8005C9C4 00102400 */  sll        $a0, $s0, 0x10
/* 5D5C8 8005C9C8 0C01C364 */  jal        func_80070D90
/* 5D5CC 8005C9CC 00042403 */   sra       $a0, $a0, 0x10
/* 5D5D0 8005C9D0 00111400 */  sll        $v0, $s1, 0x10
/* 5D5D4 8005C9D4 14400029 */  bnez       $v0, .L8005CA7C
/* 5D5D8 8005C9D8 24020001 */   addiu     $v0, $zero, 1
/* 5D5DC 8005C9DC 3C01800E */  lui        $at, %hi(D_800D8984)
/* 5D5E0 8005C9E0 A4228984 */  sh         $v0, %lo(D_800D8984)($at)
/* 5D5E4 8005C9E4 3C01800E */  lui        $at, %hi(D_800D8988)
/* 5D5E8 8005C9E8 A4228988 */  sh         $v0, %lo(D_800D8988)($at)
/* 5D5EC 8005C9EC 3C01800E */  lui        $at, %hi(D_800D8986)
/* 5D5F0 8005C9F0 08017292 */  j          .L8005CA48
/* 5D5F4 8005C9F4 A4228986 */   sh        $v0, %lo(D_800D8986)($at)
.L8005C9F8:
/* 5D5F8 8005C9F8 86C3001E */  lh         $v1, 0x1e($s6)
/* 5D5FC 8005C9FC 1462001F */  bne        $v1, $v0, .L8005CA7C
/* 5D600 8005CA00 00000000 */   nop
/* 5D604 8005CA04 0C016EAC */  jal        func_8005BAB0
/* 5D608 8005CA08 00002021 */   addu      $a0, $zero, $zero
/* 5D60C 8005CA0C 00408021 */  addu       $s0, $v0, $zero
/* 5D610 8005CA10 0C016E61 */  jal        func_8005B984
/* 5D614 8005CA14 00002021 */   addu      $a0, $zero, $zero
/* 5D618 8005CA18 00408821 */  addu       $s1, $v0, $zero
/* 5D61C 8005CA1C 00102400 */  sll        $a0, $s0, 0x10
/* 5D620 8005CA20 0C01C364 */  jal        func_80070D90
/* 5D624 8005CA24 00042403 */   sra       $a0, $a0, 0x10
/* 5D628 8005CA28 00111400 */  sll        $v0, $s1, 0x10
/* 5D62C 8005CA2C 1440000C */  bnez       $v0, .L8005CA60
/* 5D630 8005CA30 3A820001 */   xori      $v0, $s4, 1
/* 5D634 8005CA34 24040079 */  addiu      $a0, $zero, 0x79
/* 5D638 8005CA38 00002821 */  addu       $a1, $zero, $zero
/* 5D63C 8005CA3C 24060001 */  addiu      $a2, $zero, 1
/* 5D640 8005CA40 0C017353 */  jal        func_8005CD4C
/* 5D644 8005CA44 00003821 */   addu      $a3, $zero, $zero
.L8005CA48:
/* 5D648 8005CA48 0C016F0A */  jal        func_8005BC28
/* 5D64C 8005CA4C 00000000 */   nop
/* 5D650 8005CA50 0C018D54 */  jal        func_80063550
/* 5D654 8005CA54 2404FFFF */   addiu     $a0, $zero, -1
/* 5D658 8005CA58 0801729F */  j          .L8005CA7C
/* 5D65C 8005CA5C 00000000 */   nop
.L8005CA60:
/* 5D660 8005CA60 02E21024 */  and        $v0, $s7, $v0
/* 5D664 8005CA64 10400005 */  beqz       $v0, .L8005CA7C
/* 5D668 8005CA68 00000000 */   nop
/* 5D66C 8005CA6C 3C04800E */  lui        $a0, %hi(D_800D89A0)
/* 5D670 8005CA70 848489A0 */  lh         $a0, %lo(D_800D89A0)($a0)
/* 5D674 8005CA74 0C017003 */  jal        func_8005C00C
/* 5D678 8005CA78 24140001 */   addiu     $s4, $zero, 1
.L8005CA7C:
/* 5D67C 8005CA7C 92440003 */  lbu        $a0, 3($s2)
/* 5D680 8005CA80 0C01340B */  jal        func_8004D02C
/* 5D684 8005CA84 3C054248 */   lui       $a1, 0x4248
/* 5D688 8005CA88 00021400 */  sll        $v0, $v0, 0x10
/* 5D68C 8005CA8C 1040FFA7 */  beqz       $v0, .L8005C92C
/* 5D690 8005CA90 27A40010 */   addiu     $a0, $sp, 0x10
/* 5D694 8005CA94 0C016F68 */  jal        func_8005BDA0
/* 5D698 8005CA98 27A50012 */   addiu     $a1, $sp, 0x12
/* 5D69C 8005CA9C 1040FFA3 */  beqz       $v0, .L8005C92C
/* 5D6A0 8005CAA0 00000000 */   nop
/* 5D6A4 8005CAA4 92A20001 */  lbu        $v0, 1($s5)
/* 5D6A8 8005CAA8 145E000A */  bne        $v0, $fp, .L8005CAD4
/* 5D6AC 8005CAAC 02801021 */   addu      $v0, $s4, $zero
/* 5D6B0 8005CAB0 97A40010 */  lhu        $a0, 0x10($sp)
/* 5D6B4 8005CAB4 0C013081 */  jal        func_8004C204
/* 5D6B8 8005CAB8 97A50012 */   lhu       $a1, 0x12($sp)
/* 5D6BC 8005CABC 00021400 */  sll        $v0, $v0, 0x10
/* 5D6C0 8005CAC0 00021403 */  sra        $v0, $v0, 0x10
/* 5D6C4 8005CAC4 3C03800E */  lui        $v1, %hi(D_800D89A0)
/* 5D6C8 8005CAC8 846389A0 */  lh         $v1, %lo(D_800D89A0)($v1)
/* 5D6CC 8005CACC 1443FF97 */  bne        $v0, $v1, .L8005C92C
/* 5D6D0 8005CAD0 02801021 */   addu      $v0, $s4, $zero
.L8005CAD4:
/* 5D6D4 8005CAD4 10400003 */  beqz       $v0, .L8005CAE4
/* 5D6D8 8005CAD8 00000000 */   nop
/* 5D6DC 8005CADC 0C017049 */  jal        func_8005C124
/* 5D6E0 8005CAE0 0000A021 */   addu      $s4, $zero, $zero
.L8005CAE4:
/* 5D6E4 8005CAE4 3C01800E */  lui        $at, %hi(D_800D89A0)
/* 5D6E8 8005CAE8 A43389A0 */  sh         $s3, %lo(D_800D89A0)($at)
/* 5D6EC 8005CAEC 97A20010 */  lhu        $v0, 0x10($sp)
/* 5D6F0 8005CAF0 A6420012 */  sh         $v0, 0x12($s2)
/* 5D6F4 8005CAF4 97A20012 */  lhu        $v0, 0x12($sp)
/* 5D6F8 8005CAF8 A6420014 */  sh         $v0, 0x14($s2)
/* 5D6FC 8005CAFC 97A40010 */  lhu        $a0, 0x10($sp)
/* 5D700 8005CB00 0C013081 */  jal        func_8004C204
/* 5D704 8005CB04 97A50012 */   lhu       $a1, 0x12($sp)
/* 5D708 8005CB08 00409821 */  addu       $s3, $v0, $zero
/* 5D70C 8005CB0C 00132400 */  sll        $a0, $s3, 0x10
/* 5D710 8005CB10 0C01307B */  jal        func_8004C1EC
/* 5D714 8005CB14 00042403 */   sra       $a0, $a0, 0x10
/* 5D718 8005CB18 0040A821 */  addu       $s5, $v0, $zero
/* 5D71C 8005CB1C 96A20002 */  lhu        $v0, 2($s5)
/* 5D720 8005CB20 30428000 */  andi       $v0, $v0, 0x8000
/* 5D724 8005CB24 10400016 */  beqz       $v0, .L8005CB80
/* 5D728 8005CB28 24040127 */   addiu     $a0, $zero, 0x127
/* 5D72C 8005CB2C 0C01811A */  jal        func_80060468
/* 5D730 8005CB30 00002821 */   addu      $a1, $zero, $zero
/* 5D734 8005CB34 2404FFFF */  addiu      $a0, $zero, -1
/* 5D738 8005CB38 24050002 */  addiu      $a1, $zero, 2
/* 5D73C 8005CB3C 0C014AFA */  jal        func_80052BE8
/* 5D740 8005CB40 00003021 */   addu      $a2, $zero, $zero
/* 5D744 8005CB44 8E420020 */  lw         $v0, 0x20($s2)
/* 5D748 8005CB48 3C014220 */  lui        $at, 0x4220
/* 5D74C 8005CB4C 44810000 */  mtc1       $at, $f0
/* 5D750 8005CB50 00000000 */  nop
/* 5D754 8005CB54 E4400034 */  swc1       $f0, 0x34($v0)
/* 5D758 8005CB58 8E420020 */  lw         $v0, 0x20($s2)
/* 5D75C 8005CB5C 3C01C080 */  lui        $at, 0xc080
/* 5D760 8005CB60 44810000 */  mtc1       $at, $f0
/* 5D764 8005CB64 00000000 */  nop
/* 5D768 8005CB68 E4400038 */  swc1       $f0, 0x38($v0)
/* 5D76C 8005CB6C 86C4001C */  lh         $a0, 0x1c($s6)
/* 5D770 8005CB70 0C01352A */  jal        func_8004D4A8
/* 5D774 8005CB74 24050014 */   addiu     $a1, $zero, 0x14
/* 5D778 8005CB78 080172EA */  j          .L8005CBA8
/* 5D77C 8005CB7C 00000000 */   nop
.L8005CB80:
/* 5D780 8005CB80 8E420020 */  lw         $v0, 0x20($s2)
/* 5D784 8005CB84 84420046 */  lh         $v0, 0x46($v0)
/* 5D788 8005CB88 10400004 */  beqz       $v0, .L8005CB9C
/* 5D78C 8005CB8C 2404FFFF */   addiu     $a0, $zero, -1
/* 5D790 8005CB90 00002821 */  addu       $a1, $zero, $zero
/* 5D794 8005CB94 0C014AFA */  jal        func_80052BE8
/* 5D798 8005CB98 24060002 */   addiu     $a2, $zero, 2
.L8005CB9C:
/* 5D79C 8005CB9C 86C4001C */  lh         $a0, 0x1c($s6)
/* 5D7A0 8005CBA0 0C0135BF */  jal        func_8004D6FC
/* 5D7A4 8005CBA4 3C054198 */   lui       $a1, 0x4198
.L8005CBA8:
/* 5D7A8 8005CBA8 96420012 */  lhu        $v0, 0x12($s2)
/* 5D7AC 8005CBAC A642000E */  sh         $v0, 0xe($s2)
/* 5D7B0 8005CBB0 96420014 */  lhu        $v0, 0x14($s2)
/* 5D7B4 8005CBB4 A6420010 */  sh         $v0, 0x10($s2)
/* 5D7B8 8005CBB8 92A30001 */  lbu        $v1, 1($s5)
/* 5D7BC 8005CBBC 28620005 */  slti       $v0, $v1, 5
/* 5D7C0 8005CBC0 10400008 */  beqz       $v0, .L8005CBE4
/* 5D7C4 8005CBC4 00000000 */   nop
/* 5D7C8 8005CBC8 10600006 */  beqz       $v1, .L8005CBE4
/* 5D7CC 8005CBCC 00000000 */   nop
/* 5D7D0 8005CBD0 00132400 */  sll        $a0, $s3, 0x10
/* 5D7D4 8005CBD4 0C013187 */  jal        func_8004C61C
/* 5D7D8 8005CBD8 00042403 */   sra       $a0, $a0, 0x10
/* 5D7DC 8005CBDC 0C0180AB */  jal        func_800602AC
/* 5D7E0 8005CBE0 2404002F */   addiu     $a0, $zero, 0x2f
.L8005CBE4:
/* 5D7E4 8005CBE4 92A20001 */  lbu        $v0, 1($s5)
/* 5D7E8 8005CBE8 145E0004 */  bne        $v0, $fp, .L8005CBFC
/* 5D7EC 8005CBEC 00000000 */   nop
/* 5D7F0 8005CBF0 2404FFFF */  addiu      $a0, $zero, -1
/* 5D7F4 8005CBF4 0C016244 */  jal        func_80058910
/* 5D7F8 8005CBF8 00002821 */   addu      $a1, $zero, $zero
.L8005CBFC:
/* 5D7FC 8005CBFC 0C0173A3 */  jal        func_8005CE8C
/* 5D800 8005CC00 24040003 */   addiu     $a0, $zero, 3
/* 5D804 8005CC04 0801722F */  j          .L8005C8BC
/* 5D808 8005CC08 2402FFFF */   addiu     $v0, $zero, -1
/* 5D80C 8005CC0C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 5D810 8005CC10 8FBE0038 */  lw         $fp, 0x38($sp)
/* 5D814 8005CC14 8FB70034 */  lw         $s7, 0x34($sp)
/* 5D818 8005CC18 8FB60030 */  lw         $s6, 0x30($sp)
/* 5D81C 8005CC1C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 5D820 8005CC20 8FB40028 */  lw         $s4, 0x28($sp)
/* 5D824 8005CC24 8FB30024 */  lw         $s3, 0x24($sp)
/* 5D828 8005CC28 8FB20020 */  lw         $s2, 0x20($sp)
/* 5D82C 8005CC2C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5D830 8005CC30 8FB00018 */  lw         $s0, 0x18($sp)
/* 5D834 8005CC34 03E00008 */  jr         $ra
/* 5D838 8005CC38 27BD0040 */   addiu     $sp, $sp, 0x40
