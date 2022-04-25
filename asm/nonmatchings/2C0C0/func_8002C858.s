	.set noat
	.set noreorder

glabel func_8002C858
/* 2D458 8002C858 27BDFF38 */  addiu      $sp, $sp, -0xc8
/* 2D45C 8002C85C AFBF00C4 */  sw         $ra, 0xc4($sp)
/* 2D460 8002C860 AFBE00C0 */  sw         $fp, 0xc0($sp)
/* 2D464 8002C864 AFB700BC */  sw         $s7, 0xbc($sp)
/* 2D468 8002C868 AFB600B8 */  sw         $s6, 0xb8($sp)
/* 2D46C 8002C86C AFB500B4 */  sw         $s5, 0xb4($sp)
/* 2D470 8002C870 AFB400B0 */  sw         $s4, 0xb0($sp)
/* 2D474 8002C874 AFB300AC */  sw         $s3, 0xac($sp)
/* 2D478 8002C878 AFB200A8 */  sw         $s2, 0xa8($sp)
/* 2D47C 8002C87C AFB100A4 */  sw         $s1, 0xa4($sp)
/* 2D480 8002C880 AFB000A0 */  sw         $s0, 0xa0($sp)
/* 2D484 8002C884 0080A821 */  addu       $s5, $a0, $zero
/* 2D488 8002C888 30A57FFF */  andi       $a1, $a1, 0x7fff
/* 2D48C 8002C88C 00051080 */  sll        $v0, $a1, 2
/* 2D490 8002C890 00451021 */  addu       $v0, $v0, $a1
/* 2D494 8002C894 000210C0 */  sll        $v0, $v0, 3
/* 2D498 8002C898 00451021 */  addu       $v0, $v0, $a1
/* 2D49C 8002C89C 00021080 */  sll        $v0, $v0, 2
/* 2D4A0 8002C8A0 8EA300A0 */  lw         $v1, 0xa0($s5)
/* 2D4A4 8002C8A4 00438821 */  addu       $s1, $v0, $v1
/* 2D4A8 8002C8A8 0000B821 */  addu       $s7, $zero, $zero
/* 2D4AC 8002C8AC 8EA200AC */  lw         $v0, 0xac($s5)
/* 2D4B0 8002C8B0 1440002E */  bnez       $v0, .L8002C96C
/* 2D4B4 8002C8B4 0000A021 */   addu      $s4, $zero, $zero
/* 2D4B8 8002C8B8 26240064 */  addiu      $a0, $s1, 0x64
/* 2D4BC 8002C8BC 3C05800F */  lui        $a1, %hi(D_800F54C0)
/* 2D4C0 8002C8C0 24A554C0 */  addiu      $a1, $a1, %lo(D_800F54C0)
/* 2D4C4 8002C8C4 0C0089F1 */  jal        func_800227C4
/* 2D4C8 8002C8C8 27A60010 */   addiu     $a2, $sp, 0x10
/* 2D4CC 8002C8CC C6200020 */  lwc1       $f0, 0x20($s1)
/* 2D4D0 8002C8D0 3C013F80 */  lui        $at, 0x3f80
/* 2D4D4 8002C8D4 44811000 */  mtc1       $at, $f2
/* 2D4D8 8002C8D8 00000000 */  nop
/* 2D4DC 8002C8DC 46020032 */  c.eq.s     $f0, $f2
/* 2D4E0 8002C8E0 00000000 */  nop
/* 2D4E4 8002C8E4 00000000 */  nop
/* 2D4E8 8002C8E8 4500000B */  bc1f       .L8002C918
/* 2D4EC 8002C8EC 27B00050 */   addiu     $s0, $sp, 0x50
/* 2D4F0 8002C8F0 C6200024 */  lwc1       $f0, 0x24($s1)
/* 2D4F4 8002C8F4 46020032 */  c.eq.s     $f0, $f2
/* 2D4F8 8002C8F8 00000000 */  nop
/* 2D4FC 8002C8FC 45000006 */  bc1f       .L8002C918
/* 2D500 8002C900 00000000 */   nop
/* 2D504 8002C904 C6200028 */  lwc1       $f0, 0x28($s1)
/* 2D508 8002C908 46020032 */  c.eq.s     $f0, $f2
/* 2D50C 8002C90C 00000000 */  nop
/* 2D510 8002C910 450100A7 */  bc1t       .L8002CBB0
/* 2D514 8002C914 00000000 */   nop
.L8002C918:
/* 2D518 8002C918 8E250020 */  lw         $a1, 0x20($s1)
/* 2D51C 8002C91C 8E260024 */  lw         $a2, 0x24($s1)
/* 2D520 8002C920 8E270028 */  lw         $a3, 0x28($s1)
/* 2D524 8002C924 0C0279F8 */  jal        func_8009E7E0
/* 2D528 8002C928 02002021 */   addu      $a0, $s0, $zero
/* 2D52C 8002C92C 3C02800F */  lui        $v0, %hi(D_800F5030)
/* 2D530 8002C930 94425030 */  lhu        $v0, %lo(D_800F5030)($v0)
/* 2D534 8002C934 24420001 */  addiu      $v0, $v0, 1
/* 2D538 8002C938 3C01800F */  lui        $at, %hi(D_800F5030)
/* 2D53C 8002C93C A4225030 */  sh         $v0, %lo(D_800F5030)($at)
/* 2D540 8002C940 00021400 */  sll        $v0, $v0, 0x10
/* 2D544 8002C944 00021283 */  sra        $v0, $v0, 0xa
/* 2D548 8002C948 3C05800F */  lui        $a1, %hi(D_800F3FE0)
/* 2D54C 8002C94C 24A53FE0 */  addiu      $a1, $a1, %lo(D_800F3FE0)
/* 2D550 8002C950 24A60040 */  addiu      $a2, $a1, 0x40
/* 2D554 8002C954 02002021 */  addu       $a0, $s0, $zero
/* 2D558 8002C958 00452821 */  addu       $a1, $v0, $a1
/* 2D55C 8002C95C 0C0089F1 */  jal        func_800227C4
/* 2D560 8002C960 00463021 */   addu      $a2, $v0, $a2
/* 2D564 8002C964 0800B2EC */  j          .L8002CBB0
/* 2D568 8002C968 24170001 */   addiu     $s7, $zero, 1
.L8002C96C:
/* 2D56C 8002C96C C6200038 */  lwc1       $f0, 0x38($s1)
/* 2D570 8002C970 44801000 */  mtc1       $zero, $f2
/* 2D574 8002C974 00000000 */  nop
/* 2D578 8002C978 46020032 */  c.eq.s     $f0, $f2
/* 2D57C 8002C97C 00000000 */  nop
/* 2D580 8002C980 00000000 */  nop
/* 2D584 8002C984 4500000B */  bc1f       .L8002C9B4
/* 2D588 8002C988 02801021 */   addu      $v0, $s4, $zero
/* 2D58C 8002C98C C620003C */  lwc1       $f0, 0x3c($s1)
/* 2D590 8002C990 46020032 */  c.eq.s     $f0, $f2
/* 2D594 8002C994 00000000 */  nop
/* 2D598 8002C998 45000006 */  bc1f       .L8002C9B4
/* 2D59C 8002C99C 00000000 */   nop
/* 2D5A0 8002C9A0 C6200040 */  lwc1       $f0, 0x40($s1)
/* 2D5A4 8002C9A4 46020032 */  c.eq.s     $f0, $f2
/* 2D5A8 8002C9A8 00000000 */  nop
/* 2D5AC 8002C9AC 45010010 */  bc1t       .L8002C9F0
/* 2D5B0 8002C9B0 00000000 */   nop
.L8002C9B4:
/* 2D5B4 8002C9B4 10400008 */  beqz       $v0, .L8002C9D8
/* 2D5B8 8002C9B8 00000000 */   nop
/* 2D5BC 8002C9BC 8E250038 */  lw         $a1, 0x38($s1)
/* 2D5C0 8002C9C0 8E26003C */  lw         $a2, 0x3c($s1)
/* 2D5C4 8002C9C4 8E270040 */  lw         $a3, 0x40($s1)
/* 2D5C8 8002C9C8 0C0088E4 */  jal        func_80022390
/* 2D5CC 8002C9CC 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D5D0 8002C9D0 0800B27C */  j          .L8002C9F0
/* 2D5D4 8002C9D4 24140001 */   addiu     $s4, $zero, 1
.L8002C9D8:
/* 2D5D8 8002C9D8 8E250038 */  lw         $a1, 0x38($s1)
/* 2D5DC 8002C9DC 8E26003C */  lw         $a2, 0x3c($s1)
/* 2D5E0 8002C9E0 8E270040 */  lw         $a3, 0x40($s1)
/* 2D5E4 8002C9E4 0C027A90 */  jal        func_8009EA40
/* 2D5E8 8002C9E8 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D5EC 8002C9EC 24140001 */  addiu      $s4, $zero, 1
.L8002C9F0:
/* 2D5F0 8002C9F0 C6200044 */  lwc1       $f0, 0x44($s1)
/* 2D5F4 8002C9F4 44801000 */  mtc1       $zero, $f2
/* 2D5F8 8002C9F8 00000000 */  nop
/* 2D5FC 8002C9FC 46020032 */  c.eq.s     $f0, $f2
/* 2D600 8002CA00 00000000 */  nop
/* 2D604 8002CA04 00000000 */  nop
/* 2D608 8002CA08 4500000B */  bc1f       .L8002CA38
/* 2D60C 8002CA0C 02801021 */   addu      $v0, $s4, $zero
/* 2D610 8002CA10 C6200048 */  lwc1       $f0, 0x48($s1)
/* 2D614 8002CA14 46020032 */  c.eq.s     $f0, $f2
/* 2D618 8002CA18 00000000 */  nop
/* 2D61C 8002CA1C 45000006 */  bc1f       .L8002CA38
/* 2D620 8002CA20 00000000 */   nop
/* 2D624 8002CA24 C620004C */  lwc1       $f0, 0x4c($s1)
/* 2D628 8002CA28 46020032 */  c.eq.s     $f0, $f2
/* 2D62C 8002CA2C 00000000 */  nop
/* 2D630 8002CA30 45010010 */  bc1t       .L8002CA74
/* 2D634 8002CA34 00000000 */   nop
.L8002CA38:
/* 2D638 8002CA38 10400008 */  beqz       $v0, .L8002CA5C
/* 2D63C 8002CA3C 00000000 */   nop
/* 2D640 8002CA40 8E250044 */  lw         $a1, 0x44($s1)
/* 2D644 8002CA44 8E260048 */  lw         $a2, 0x48($s1)
/* 2D648 8002CA48 8E27004C */  lw         $a3, 0x4c($s1)
/* 2D64C 8002CA4C 0C008929 */  jal        func_800224A4
/* 2D650 8002CA50 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D654 8002CA54 0800B29D */  j          .L8002CA74
/* 2D658 8002CA58 24140001 */   addiu     $s4, $zero, 1
.L8002CA5C:
/* 2D65C 8002CA5C 8E250044 */  lw         $a1, 0x44($s1)
/* 2D660 8002CA60 8E260048 */  lw         $a2, 0x48($s1)
/* 2D664 8002CA64 8E27004C */  lw         $a3, 0x4c($s1)
/* 2D668 8002CA68 0C027B2C */  jal        func_8009ECB0
/* 2D66C 8002CA6C 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D670 8002CA70 24140001 */  addiu      $s4, $zero, 1
.L8002CA74:
/* 2D674 8002CA74 C6200050 */  lwc1       $f0, 0x50($s1)
/* 2D678 8002CA78 3C013F80 */  lui        $at, 0x3f80
/* 2D67C 8002CA7C 44811000 */  mtc1       $at, $f2
/* 2D680 8002CA80 00000000 */  nop
/* 2D684 8002CA84 46020032 */  c.eq.s     $f0, $f2
/* 2D688 8002CA88 00000000 */  nop
/* 2D68C 8002CA8C 00000000 */  nop
/* 2D690 8002CA90 4500000B */  bc1f       .L8002CAC0
/* 2D694 8002CA94 02801021 */   addu      $v0, $s4, $zero
/* 2D698 8002CA98 C6200054 */  lwc1       $f0, 0x54($s1)
/* 2D69C 8002CA9C 46020032 */  c.eq.s     $f0, $f2
/* 2D6A0 8002CAA0 00000000 */  nop
/* 2D6A4 8002CAA4 45000006 */  bc1f       .L8002CAC0
/* 2D6A8 8002CAA8 00000000 */   nop
/* 2D6AC 8002CAAC C6200058 */  lwc1       $f0, 0x58($s1)
/* 2D6B0 8002CAB0 46020032 */  c.eq.s     $f0, $f2
/* 2D6B4 8002CAB4 00000000 */  nop
/* 2D6B8 8002CAB8 45010026 */  bc1t       .L8002CB54
/* 2D6BC 8002CABC 00000000 */   nop
.L8002CAC0:
/* 2D6C0 8002CAC0 10400008 */  beqz       $v0, .L8002CAE4
/* 2D6C4 8002CAC4 00000000 */   nop
/* 2D6C8 8002CAC8 8E250050 */  lw         $a1, 0x50($s1)
/* 2D6CC 8002CACC 8E260054 */  lw         $a2, 0x54($s1)
/* 2D6D0 8002CAD0 8E270058 */  lw         $a3, 0x58($s1)
/* 2D6D4 8002CAD4 0C008914 */  jal        func_80022450
/* 2D6D8 8002CAD8 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D6DC 8002CADC 0800B2BF */  j          .L8002CAFC
/* 2D6E0 8002CAE0 27B00050 */   addiu     $s0, $sp, 0x50
.L8002CAE4:
/* 2D6E4 8002CAE4 8E250050 */  lw         $a1, 0x50($s1)
/* 2D6E8 8002CAE8 8E260054 */  lw         $a2, 0x54($s1)
/* 2D6EC 8002CAEC 8E270058 */  lw         $a3, 0x58($s1)
/* 2D6F0 8002CAF0 0C0279F8 */  jal        func_8009E7E0
/* 2D6F4 8002CAF4 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D6F8 8002CAF8 27B00050 */  addiu      $s0, $sp, 0x50
.L8002CAFC:
/* 2D6FC 8002CAFC 8E250050 */  lw         $a1, 0x50($s1)
/* 2D700 8002CB00 8E260054 */  lw         $a2, 0x54($s1)
/* 2D704 8002CB04 8E270058 */  lw         $a3, 0x58($s1)
/* 2D708 8002CB08 0C0279F8 */  jal        func_8009E7E0
/* 2D70C 8002CB0C 02002021 */   addu      $a0, $s0, $zero
/* 2D710 8002CB10 3C02800F */  lui        $v0, %hi(D_800F5030)
/* 2D714 8002CB14 94425030 */  lhu        $v0, %lo(D_800F5030)($v0)
/* 2D718 8002CB18 24420001 */  addiu      $v0, $v0, 1
/* 2D71C 8002CB1C 3C01800F */  lui        $at, %hi(D_800F5030)
/* 2D720 8002CB20 A4225030 */  sh         $v0, %lo(D_800F5030)($at)
/* 2D724 8002CB24 00021400 */  sll        $v0, $v0, 0x10
/* 2D728 8002CB28 00021283 */  sra        $v0, $v0, 0xa
/* 2D72C 8002CB2C 3C05800F */  lui        $a1, %hi(D_800F3FE0)
/* 2D730 8002CB30 24A53FE0 */  addiu      $a1, $a1, %lo(D_800F3FE0)
/* 2D734 8002CB34 24A60040 */  addiu      $a2, $a1, 0x40
/* 2D738 8002CB38 02002021 */  addu       $a0, $s0, $zero
/* 2D73C 8002CB3C 00452821 */  addu       $a1, $v0, $a1
/* 2D740 8002CB40 0C0089F1 */  jal        func_800227C4
/* 2D744 8002CB44 00463021 */   addu      $a2, $v0, $a2
/* 2D748 8002CB48 24170001 */  addiu      $s7, $zero, 1
/* 2D74C 8002CB4C 24140001 */  addiu      $s4, $zero, 1
/* 2D750 8002CB50 02801021 */  addu       $v0, $s4, $zero
.L8002CB54:
/* 2D754 8002CB54 1040000E */  beqz       $v0, .L8002CB90
/* 2D758 8002CB58 27A40010 */   addiu     $a0, $sp, 0x10
/* 2D75C 8002CB5C 3C06800F */  lui        $a2, %hi(D_800F33D4)
/* 2D760 8002CB60 94C633D4 */  lhu        $a2, %lo(D_800F33D4)($a2)
/* 2D764 8002CB64 24C60001 */  addiu      $a2, $a2, 1
/* 2D768 8002CB68 3C01800F */  lui        $at, %hi(D_800F33D4)
/* 2D76C 8002CB6C A42633D4 */  sh         $a2, %lo(D_800F33D4)($at)
/* 2D770 8002CB70 00063400 */  sll        $a2, $a2, 0x10
/* 2D774 8002CB74 00063283 */  sra        $a2, $a2, 0xa
/* 2D778 8002CB78 3C05800F */  lui        $a1, %hi(D_800F5480)
/* 2D77C 8002CB7C 24A55480 */  addiu      $a1, $a1, %lo(D_800F5480)
/* 2D780 8002CB80 24A20040 */  addiu      $v0, $a1, 0x40
/* 2D784 8002CB84 00C52821 */  addu       $a1, $a2, $a1
/* 2D788 8002CB88 0C0089F1 */  jal        func_800227C4
/* 2D78C 8002CB8C 00C23021 */   addu      $a2, $a2, $v0
.L8002CB90:
/* 2D790 8002CB90 3C04800F */  lui        $a0, %hi(D_800F33D4)
/* 2D794 8002CB94 848433D4 */  lh         $a0, %lo(D_800F33D4)($a0)
/* 2D798 8002CB98 00042180 */  sll        $a0, $a0, 6
/* 2D79C 8002CB9C 3C05800F */  lui        $a1, %hi(D_800F54C0)
/* 2D7A0 8002CBA0 24A554C0 */  addiu      $a1, $a1, %lo(D_800F54C0)
/* 2D7A4 8002CBA4 00852021 */  addu       $a0, $a0, $a1
/* 2D7A8 8002CBA8 0C0089F1 */  jal        func_800227C4
/* 2D7AC 8002CBAC 27A60010 */   addiu     $a2, $sp, 0x10
.L8002CBB0:
/* 2D7B0 8002CBB0 3C05800F */  lui        $a1, %hi(D_800ED52C)
/* 2D7B4 8002CBB4 84A5D52C */  lh         $a1, %lo(D_800ED52C)($a1)
/* 2D7B8 8002CBB8 00052980 */  sll        $a1, $a1, 6
/* 2D7BC 8002CBBC 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2D7C0 8002CBC0 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2D7C4 8002CBC4 27A40010 */  addiu      $a0, $sp, 0x10
/* 2D7C8 8002CBC8 0C028288 */  jal        func_800A0A20
/* 2D7CC 8002CBCC 00A22821 */   addu      $a1, $a1, $v0
/* 2D7D0 8002CBD0 3C03800F */  lui        $v1, %hi(D_800ED52C)
/* 2D7D4 8002CBD4 9463D52C */  lhu        $v1, %lo(D_800ED52C)($v1)
/* 2D7D8 8002CBD8 24620001 */  addiu      $v0, $v1, 1
/* 2D7DC 8002CBDC 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2D7E0 8002CBE0 A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2D7E4 8002CBE4 00609821 */  addu       $s3, $v1, $zero
/* 2D7E8 8002CBE8 00009021 */  addu       $s2, $zero, $zero
/* 2D7EC 8002CBEC 86220000 */  lh         $v0, ($s1)
/* 2D7F0 8002CBF0 18400062 */  blez       $v0, .L8002CD7C
/* 2D7F4 8002CBF4 00401821 */   addu      $v1, $v0, $zero
/* 2D7F8 8002CBF8 27B60050 */  addiu      $s6, $sp, 0x50
/* 2D7FC 8002CBFC 00031400 */  sll        $v0, $v1, 0x10
/* 2D800 8002CC00 0002F403 */  sra        $fp, $v0, 0x10
/* 2D804 8002CC04 00121400 */  sll        $v0, $s2, 0x10
.L8002CC08:
/* 2D808 8002CC08 8E230004 */  lw         $v1, 4($s1)
/* 2D80C 8002CC0C 000213C3 */  sra        $v0, $v0, 0xf
/* 2D810 8002CC10 00431021 */  addu       $v0, $v0, $v1
/* 2D814 8002CC14 84430000 */  lh         $v1, ($v0)
/* 2D818 8002CC18 30628000 */  andi       $v0, $v1, 0x8000
/* 2D81C 8002CC1C 10400006 */  beqz       $v0, .L8002CC38
/* 2D820 8002CC20 00608021 */   addu      $s0, $v1, $zero
/* 2D824 8002CC24 2402FFFF */  addiu      $v0, $zero, -1
/* 2D828 8002CC28 1062004D */  beq        $v1, $v0, .L8002CD60
/* 2D82C 8002CC2C 02A02021 */   addu      $a0, $s5, $zero
/* 2D830 8002CC30 0800B356 */  j          .L8002CD58
/* 2D834 8002CC34 32057FFF */   andi      $a1, $s0, 0x7fff
.L8002CC38:
/* 2D838 8002CC38 8E240060 */  lw         $a0, 0x60($s1)
/* 2D83C 8002CC3C 00101400 */  sll        $v0, $s0, 0x10
/* 2D840 8002CC40 00022C03 */  sra        $a1, $v0, 0x10
/* 2D844 8002CC44 8C830080 */  lw         $v1, 0x80($a0)
/* 2D848 8002CC48 00051040 */  sll        $v0, $a1, 1
/* 2D84C 8002CC4C 00451021 */  addu       $v0, $v0, $a1
/* 2D850 8002CC50 000210C0 */  sll        $v0, $v0, 3
/* 2D854 8002CC54 00451023 */  subu       $v0, $v0, $a1
/* 2D858 8002CC58 00021080 */  sll        $v0, $v0, 2
/* 2D85C 8002CC5C 00431021 */  addu       $v0, $v0, $v1
/* 2D860 8002CC60 8C420014 */  lw         $v0, 0x14($v0)
/* 2D864 8002CC64 3C037000 */  lui        $v1, 0x7000
/* 2D868 8002CC68 00431024 */  and        $v0, $v0, $v1
/* 2D86C 8002CC6C 1040001A */  beqz       $v0, .L8002CCD8
/* 2D870 8002CC70 27A60010 */   addiu     $a2, $sp, 0x10
/* 2D874 8002CC74 0C00CC17 */  jal        func_8003305C
/* 2D878 8002CC78 02C03821 */   addu      $a3, $s6, $zero
/* 2D87C 8002CC7C 3C04800F */  lui        $a0, %hi(D_800F5030)
/* 2D880 8002CC80 84845030 */  lh         $a0, %lo(D_800F5030)($a0)
/* 2D884 8002CC84 00042180 */  sll        $a0, $a0, 6
/* 2D888 8002CC88 3C02800F */  lui        $v0, %hi(D_800F4020)
/* 2D88C 8002CC8C 24424020 */  addiu      $v0, $v0, %lo(D_800F4020)
/* 2D890 8002CC90 00822021 */  addu       $a0, $a0, $v0
/* 2D894 8002CC94 02C02821 */  addu       $a1, $s6, $zero
/* 2D898 8002CC98 0C0089F1 */  jal        func_800227C4
/* 2D89C 8002CC9C 27A60010 */   addiu     $a2, $sp, 0x10
/* 2D8A0 8002CCA0 3C05800F */  lui        $a1, %hi(D_800ED52C)
/* 2D8A4 8002CCA4 84A5D52C */  lh         $a1, %lo(D_800ED52C)($a1)
/* 2D8A8 8002CCA8 00052980 */  sll        $a1, $a1, 6
/* 2D8AC 8002CCAC 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2D8B0 8002CCB0 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2D8B4 8002CCB4 27A40010 */  addiu      $a0, $sp, 0x10
/* 2D8B8 8002CCB8 0C028288 */  jal        func_800A0A20
/* 2D8BC 8002CCBC 00A22821 */   addu      $a1, $a1, $v0
/* 2D8C0 8002CCC0 3C03800F */  lui        $v1, %hi(D_800ED52C)
/* 2D8C4 8002CCC4 9463D52C */  lhu        $v1, %lo(D_800ED52C)($v1)
/* 2D8C8 8002CCC8 24620001 */  addiu      $v0, $v1, 1
/* 2D8CC 8002CCCC 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2D8D0 8002CCD0 A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2D8D4 8002CCD4 00609821 */  addu       $s3, $v1, $zero
.L8002CCD8:
/* 2D8D8 8002CCD8 00102C00 */  sll        $a1, $s0, 0x10
/* 2D8DC 8002CCDC 00052C03 */  sra        $a1, $a1, 0x10
/* 2D8E0 8002CCE0 8EA30080 */  lw         $v1, 0x80($s5)
/* 2D8E4 8002CCE4 00058040 */  sll        $s0, $a1, 1
/* 2D8E8 8002CCE8 02058021 */  addu       $s0, $s0, $a1
/* 2D8EC 8002CCEC 001080C0 */  sll        $s0, $s0, 3
/* 2D8F0 8002CCF0 02058023 */  subu       $s0, $s0, $a1
/* 2D8F4 8002CCF4 00108080 */  sll        $s0, $s0, 2
/* 2D8F8 8002CCF8 02031821 */  addu       $v1, $s0, $v1
/* 2D8FC 8002CCFC 3C02800F */  lui        $v0, %hi(D_800F64F6)
/* 2D900 8002CD00 944264F6 */  lhu        $v0, %lo(D_800F64F6)($v0)
/* 2D904 8002CD04 94630004 */  lhu        $v1, 4($v1)
/* 2D908 8002CD08 00431021 */  addu       $v0, $v0, $v1
/* 2D90C 8002CD0C 3C01800F */  lui        $at, %hi(D_800F64F6)
/* 2D910 8002CD10 A42264F6 */  sh         $v0, %lo(D_800F64F6)($at)
/* 2D914 8002CD14 00133400 */  sll        $a2, $s3, 0x10
/* 2D918 8002CD18 00063283 */  sra        $a2, $a2, 0xa
/* 2D91C 8002CD1C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2D920 8002CD20 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2D924 8002CD24 8E240060 */  lw         $a0, 0x60($s1)
/* 2D928 8002CD28 00C23021 */  addu       $a2, $a2, $v0
/* 2D92C 8002CD2C 0C00B4B3 */  jal        func_8002D2CC
/* 2D930 8002CD30 27A70010 */   addiu     $a3, $sp, 0x10
/* 2D934 8002CD34 8EA20080 */  lw         $v0, 0x80($s5)
/* 2D938 8002CD38 02028021 */  addu       $s0, $s0, $v0
/* 2D93C 8002CD3C 8E040058 */  lw         $a0, 0x58($s0)
/* 2D940 8002CD40 10800008 */  beqz       $a0, .L8002CD64
/* 2D944 8002CD44 26420001 */   addiu     $v0, $s2, 1
/* 2D948 8002CD48 8E220060 */  lw         $v0, 0x60($s1)
/* 2D94C 8002CD4C 16A20005 */  bne        $s5, $v0, .L8002CD64
/* 2D950 8002CD50 26420001 */   addiu     $v0, $s2, 1
/* 2D954 8002CD54 00002821 */  addu       $a1, $zero, $zero
.L8002CD58:
/* 2D958 8002CD58 0C00B216 */  jal        func_8002C858
/* 2D95C 8002CD5C 00000000 */   nop
.L8002CD60:
/* 2D960 8002CD60 26420001 */  addiu      $v0, $s2, 1
.L8002CD64:
/* 2D964 8002CD64 00409021 */  addu       $s2, $v0, $zero
/* 2D968 8002CD68 00021400 */  sll        $v0, $v0, 0x10
/* 2D96C 8002CD6C 00021403 */  sra        $v0, $v0, 0x10
/* 2D970 8002CD70 005E102A */  slt        $v0, $v0, $fp
/* 2D974 8002CD74 1440FFA4 */  bnez       $v0, .L8002CC08
/* 2D978 8002CD78 00121400 */   sll       $v0, $s2, 0x10
.L8002CD7C:
/* 2D97C 8002CD7C 02801021 */  addu       $v0, $s4, $zero
/* 2D980 8002CD80 10400007 */  beqz       $v0, .L8002CDA0
/* 2D984 8002CD84 02E01021 */   addu      $v0, $s7, $zero
/* 2D988 8002CD88 3C02800F */  lui        $v0, %hi(D_800F33D4)
/* 2D98C 8002CD8C 944233D4 */  lhu        $v0, %lo(D_800F33D4)($v0)
/* 2D990 8002CD90 2442FFFF */  addiu      $v0, $v0, -1
/* 2D994 8002CD94 3C01800F */  lui        $at, %hi(D_800F33D4)
/* 2D998 8002CD98 A42233D4 */  sh         $v0, %lo(D_800F33D4)($at)
/* 2D99C 8002CD9C 02E01021 */  addu       $v0, $s7, $zero
.L8002CDA0:
/* 2D9A0 8002CDA0 10400006 */  beqz       $v0, .L8002CDBC
/* 2D9A4 8002CDA4 00000000 */   nop
/* 2D9A8 8002CDA8 3C02800F */  lui        $v0, %hi(D_800F5030)
/* 2D9AC 8002CDAC 94425030 */  lhu        $v0, %lo(D_800F5030)($v0)
/* 2D9B0 8002CDB0 2442FFFF */  addiu      $v0, $v0, -1
/* 2D9B4 8002CDB4 3C01800F */  lui        $at, %hi(D_800F5030)
/* 2D9B8 8002CDB8 A4225030 */  sh         $v0, %lo(D_800F5030)($at)
.L8002CDBC:
/* 2D9BC 8002CDBC 8FBF00C4 */  lw         $ra, 0xc4($sp)
/* 2D9C0 8002CDC0 8FBE00C0 */  lw         $fp, 0xc0($sp)
/* 2D9C4 8002CDC4 8FB700BC */  lw         $s7, 0xbc($sp)
/* 2D9C8 8002CDC8 8FB600B8 */  lw         $s6, 0xb8($sp)
/* 2D9CC 8002CDCC 8FB500B4 */  lw         $s5, 0xb4($sp)
/* 2D9D0 8002CDD0 8FB400B0 */  lw         $s4, 0xb0($sp)
/* 2D9D4 8002CDD4 8FB300AC */  lw         $s3, 0xac($sp)
/* 2D9D8 8002CDD8 8FB200A8 */  lw         $s2, 0xa8($sp)
/* 2D9DC 8002CDDC 8FB100A4 */  lw         $s1, 0xa4($sp)
/* 2D9E0 8002CDE0 8FB000A0 */  lw         $s0, 0xa0($sp)
/* 2D9E4 8002CDE4 03E00008 */  jr         $ra
/* 2D9E8 8002CDE8 27BD00C8 */   addiu     $sp, $sp, 0xc8
