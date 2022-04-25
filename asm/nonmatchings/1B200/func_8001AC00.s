	.set noat
	.set noreorder

glabel func_8001AC00
/* 1B800 8001AC00 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1B804 8001AC04 AFBF0054 */  sw         $ra, 0x54($sp)
/* 1B808 8001AC08 AFBE0050 */  sw         $fp, 0x50($sp)
/* 1B80C 8001AC0C AFB7004C */  sw         $s7, 0x4c($sp)
/* 1B810 8001AC10 AFB60048 */  sw         $s6, 0x48($sp)
/* 1B814 8001AC14 AFB50044 */  sw         $s5, 0x44($sp)
/* 1B818 8001AC18 AFB40040 */  sw         $s4, 0x40($sp)
/* 1B81C 8001AC1C AFB3003C */  sw         $s3, 0x3c($sp)
/* 1B820 8001AC20 AFB20038 */  sw         $s2, 0x38($sp)
/* 1B824 8001AC24 AFB10034 */  sw         $s1, 0x34($sp)
/* 1B828 8001AC28 AFB00030 */  sw         $s0, 0x30($sp)
/* 1B82C 8001AC2C 00808821 */  addu       $s1, $a0, $zero
/* 1B830 8001AC30 00A08021 */  addu       $s0, $a1, $zero
/* 1B834 8001AC34 82030000 */  lb         $v1, ($s0)
/* 1B838 8001AC38 24020046 */  addiu      $v0, $zero, 0x46
/* 1B83C 8001AC3C 14620005 */  bne        $v1, $v0, .L8001AC54
/* 1B840 8001AC40 00C09021 */   addu      $s2, $a2, $zero
/* 1B844 8001AC44 82030001 */  lb         $v1, 1($s0)
/* 1B848 8001AC48 2402004F */  addiu      $v0, $zero, 0x4f
/* 1B84C 8001AC4C 50620005 */  beql       $v1, $v0, .L8001AC64
/* 1B850 8001AC50 AE300034 */   sw        $s0, 0x34($s1)
.L8001AC54:
/* 1B854 8001AC54 3C04800D */  lui        $a0, %hi(D_800CA7E0)
/* 1B858 8001AC58 0C023148 */  jal        func_8008C520
/* 1B85C 8001AC5C 2484A7E0 */   addiu     $a0, $a0, %lo(D_800CA7E0)
/* 1B860 8001AC60 AE300034 */  sw         $s0, 0x34($s1)
.L8001AC64:
/* 1B864 8001AC64 2602000C */  addiu      $v0, $s0, 0xc
/* 1B868 8001AC68 AE22003C */  sw         $v0, 0x3c($s1)
/* 1B86C 8001AC6C 8E230034 */  lw         $v1, 0x34($s1)
/* 1B870 8001AC70 90660005 */  lbu        $a2, 5($v1)
/* 1B874 8001AC74 00063400 */  sll        $a2, $a2, 0x10
/* 1B878 8001AC78 00C33021 */  addu       $a2, $a2, $v1
/* 1B87C 8001AC7C 90620006 */  lbu        $v0, 6($v1)
/* 1B880 8001AC80 00021200 */  sll        $v0, $v0, 8
/* 1B884 8001AC84 00C23021 */  addu       $a2, $a2, $v0
/* 1B888 8001AC88 90620007 */  lbu        $v0, 7($v1)
/* 1B88C 8001AC8C 00C23021 */  addu       $a2, $a2, $v0
/* 1B890 8001AC90 24C60008 */  addiu      $a2, $a2, 8
/* 1B894 8001AC94 AE260038 */  sw         $a2, 0x38($s1)
/* 1B898 8001AC98 3C045654 */  lui        $a0, 0x5654
/* 1B89C 8001AC9C 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B8A0 8001ACA0 0C0070BA */  jal        func_8001C2E8
/* 1B8A4 8001ACA4 34845831 */   ori       $a0, $a0, 0x5831
/* 1B8A8 8001ACA8 AE220040 */  sw         $v0, 0x40($s1)
/* 1B8AC 8001ACAC 3C044641 */  lui        $a0, 0x4641
/* 1B8B0 8001ACB0 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B8B4 8001ACB4 8E260038 */  lw         $a2, 0x38($s1)
/* 1B8B8 8001ACB8 0C0070BA */  jal        func_8001C2E8
/* 1B8BC 8001ACBC 34844331 */   ori       $a0, $a0, 0x4331
/* 1B8C0 8001ACC0 AE220044 */  sw         $v0, 0x44($s1)
/* 1B8C4 8001ACC4 3C044F42 */  lui        $a0, 0x4f42
/* 1B8C8 8001ACC8 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B8CC 8001ACCC 8E260038 */  lw         $a2, 0x38($s1)
/* 1B8D0 8001ACD0 0C0070BA */  jal        func_8001C2E8
/* 1B8D4 8001ACD4 34844A31 */   ori       $a0, $a0, 0x4a31
/* 1B8D8 8001ACD8 AE220048 */  sw         $v0, 0x48($s1)
/* 1B8DC 8001ACDC 3C044D41 */  lui        $a0, 0x4d41
/* 1B8E0 8001ACE0 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B8E4 8001ACE4 8E260038 */  lw         $a2, 0x38($s1)
/* 1B8E8 8001ACE8 0C0070BA */  jal        func_8001C2E8
/* 1B8EC 8001ACEC 34845431 */   ori       $a0, $a0, 0x5431
/* 1B8F0 8001ACF0 AE22004C */  sw         $v0, 0x4c($s1)
/* 1B8F4 8001ACF4 3C04434F */  lui        $a0, 0x434f
/* 1B8F8 8001ACF8 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B8FC 8001ACFC 8E260038 */  lw         $a2, 0x38($s1)
/* 1B900 8001AD00 0C0070BA */  jal        func_8001C2E8
/* 1B904 8001AD04 34844C31 */   ori       $a0, $a0, 0x4c31
/* 1B908 8001AD08 AE220050 */  sw         $v0, 0x50($s1)
/* 1B90C 8001AD0C 3C044154 */  lui        $a0, 0x4154
/* 1B910 8001AD10 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B914 8001AD14 8E260038 */  lw         $a2, 0x38($s1)
/* 1B918 8001AD18 0C0070BA */  jal        func_8001C2E8
/* 1B91C 8001AD1C 34845231 */   ori       $a0, $a0, 0x5231
/* 1B920 8001AD20 AE220054 */  sw         $v0, 0x54($s1)
/* 1B924 8001AD24 3C044D54 */  lui        $a0, 0x4d54
/* 1B928 8001AD28 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B92C 8001AD2C 8E260038 */  lw         $a2, 0x38($s1)
/* 1B930 8001AD30 0C0070BA */  jal        func_8001C2E8
/* 1B934 8001AD34 34844E31 */   ori       $a0, $a0, 0x4e31
/* 1B938 8001AD38 AE220058 */  sw         $v0, 0x58($s1)
/* 1B93C 8001AD3C 3C045354 */  lui        $a0, 0x5354
/* 1B940 8001AD40 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B944 8001AD44 8E260038 */  lw         $a2, 0x38($s1)
/* 1B948 8001AD48 0C0070BA */  jal        func_8001C2E8
/* 1B94C 8001AD4C 34845247 */   ori       $a0, $a0, 0x5247
/* 1B950 8001AD50 AE22005C */  sw         $v0, 0x5c($s1)
/* 1B954 8001AD54 3C044D41 */  lui        $a0, 0x4d41
/* 1B958 8001AD58 8E25003C */  lw         $a1, 0x3c($s1)
/* 1B95C 8001AD5C 8E260038 */  lw         $a2, 0x38($s1)
/* 1B960 8001AD60 0C0070BA */  jal        func_8001C2E8
/* 1B964 8001AD64 34845031 */   ori       $a0, $a0, 0x5031
/* 1B968 8001AD68 AE220060 */  sw         $v0, 0x60($s1)
/* 1B96C 8001AD6C A6200070 */  sh         $zero, 0x70($s1)
/* 1B970 8001AD70 A620006E */  sh         $zero, 0x6e($s1)
/* 1B974 8001AD74 A620006C */  sh         $zero, 0x6c($s1)
/* 1B978 8001AD78 A620006A */  sh         $zero, 0x6a($s1)
/* 1B97C 8001AD7C AE200004 */  sw         $zero, 4($s1)
/* 1B980 8001AD80 AE200000 */  sw         $zero, ($s1)
/* 1B984 8001AD84 AE2000D0 */  sw         $zero, 0xd0($s1)
/* 1B988 8001AD88 AE2000BC */  sw         $zero, 0xbc($s1)
/* 1B98C 8001AD8C A2200064 */  sb         $zero, 0x64($s1)
/* 1B990 8001AD90 0C007358 */  jal        func_8001CD60
/* 1B994 8001AD94 02202021 */   addu      $a0, $s1, $zero
/* 1B998 8001AD98 8E220040 */  lw         $v0, 0x40($s1)
/* 1B99C 8001AD9C 10400003 */  beqz       $v0, .L8001ADAC
/* 1B9A0 8001ADA0 00000000 */   nop
/* 1B9A4 8001ADA4 0C006DBF */  jal        func_8001B6FC
/* 1B9A8 8001ADA8 02202021 */   addu      $a0, $s1, $zero
.L8001ADAC:
/* 1B9AC 8001ADAC 8E22004C */  lw         $v0, 0x4c($s1)
/* 1B9B0 8001ADB0 10400003 */  beqz       $v0, .L8001ADC0
/* 1B9B4 8001ADB4 00000000 */   nop
/* 1B9B8 8001ADB8 0C006E40 */  jal        func_8001B900
/* 1B9BC 8001ADBC 02202021 */   addu      $a0, $s1, $zero
.L8001ADC0:
/* 1B9C0 8001ADC0 3C01800F */  lui        $at, %hi(D_800ED565)
/* 1B9C4 8001ADC4 A032D565 */  sb         $s2, %lo(D_800ED565)($at)
/* 1B9C8 8001ADC8 0C00DF68 */  jal        func_80037DA0
/* 1B9CC 8001ADCC 02202021 */   addu      $a0, $s1, $zero
/* 1B9D0 8001ADD0 8E220054 */  lw         $v0, 0x54($s1)
/* 1B9D4 8001ADD4 50400004 */  beql       $v0, $zero, .L8001ADE8
/* 1B9D8 8001ADD8 AE2000B0 */   sw        $zero, 0xb0($s1)
/* 1B9DC 8001ADDC 0C006F58 */  jal        func_8001BD60
/* 1B9E0 8001ADE0 02202021 */   addu      $a0, $s1, $zero
/* 1B9E4 8001ADE4 AE2000B0 */  sw         $zero, 0xb0($s1)
.L8001ADE8:
/* 1B9E8 8001ADE8 AE2000AC */  sw         $zero, 0xac($s1)
/* 1B9EC 8001ADEC AE2000B8 */  sw         $zero, 0xb8($s1)
/* 1B9F0 8001ADF0 8E220048 */  lw         $v0, 0x48($s1)
/* 1B9F4 8001ADF4 24530008 */  addiu      $s3, $v0, 8
/* 1B9F8 8001ADF8 90520008 */  lbu        $s2, 8($v0)
/* 1B9FC 8001ADFC 00121A00 */  sll        $v1, $s2, 8
/* 1BA00 8001AE00 90420009 */  lbu        $v0, 9($v0)
/* 1BA04 8001AE04 00431021 */  addu       $v0, $v0, $v1
/* 1BA08 8001AE08 00409021 */  addu       $s2, $v0, $zero
/* 1BA0C 8001AE0C A6200084 */  sh         $zero, 0x84($s1)
/* 1BA10 8001AE10 2403FFFF */  addiu      $v1, $zero, -1
/* 1BA14 8001AE14 00021400 */  sll        $v0, $v0, 0x10
/* 1BA18 8001AE18 14400004 */  bnez       $v0, .L8001AE2C
/* 1BA1C 8001AE1C AE2300A0 */   sw        $v1, 0xa0($s1)
/* 1BA20 8001AE20 A6200070 */  sh         $zero, 0x70($s1)
/* 1BA24 8001AE24 08006C69 */  j          .L8001B1A4
/* 1BA28 8001AE28 A620006A */   sh        $zero, 0x6a($s1)
.L8001AE2C:
/* 1BA2C 8001AE2C 00128400 */  sll        $s0, $s2, 0x10
/* 1BA30 8001AE30 00108403 */  sra        $s0, $s0, 0x10
/* 1BA34 8001AE34 00102040 */  sll        $a0, $s0, 1
/* 1BA38 8001AE38 00902021 */  addu       $a0, $a0, $s0
/* 1BA3C 8001AE3C 000420C0 */  sll        $a0, $a0, 3
/* 1BA40 8001AE40 00902023 */  subu       $a0, $a0, $s0
/* 1BA44 8001AE44 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 1BA48 8001AE48 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 1BA4C 8001AE4C 0C008DA1 */  jal        func_80023684
/* 1BA50 8001AE50 00042080 */   sll       $a0, $a0, 2
/* 1BA54 8001AE54 AE220080 */  sw         $v0, 0x80($s1)
/* 1BA58 8001AE58 26730004 */  addiu      $s3, $s3, 4
/* 1BA5C 8001AE5C A7A00016 */  sh         $zero, 0x16($sp)
/* 1BA60 8001AE60 0000B021 */  addu       $s6, $zero, $zero
/* 1BA64 8001AE64 1A0000CB */  blez       $s0, .L8001B194
/* 1BA68 8001AE68 0000F021 */   addu      $fp, $zero, $zero
/* 1BA6C 8001AE6C 00121400 */  sll        $v0, $s2, 0x10
/* 1BA70 8001AE70 00021403 */  sra        $v0, $v0, 0x10
/* 1BA74 8001AE74 AFA20024 */  sw         $v0, 0x24($sp)
/* 1BA78 8001AE78 00021080 */  sll        $v0, $v0, 2
/* 1BA7C 8001AE7C 8FA80024 */  lw         $t0, 0x24($sp)
/* 1BA80 8001AE80 00481021 */  addu       $v0, $v0, $t0
/* 1BA84 8001AE84 000210C0 */  sll        $v0, $v0, 3
/* 1BA88 8001AE88 AFA2002C */  sw         $v0, 0x2c($sp)
/* 1BA8C 8001AE8C 00404821 */  addu       $t1, $v0, $zero
/* 1BA90 8001AE90 01284821 */  addu       $t1, $t1, $t0
/* 1BA94 8001AE94 AFA9002C */  sw         $t1, 0x2c($sp)
.L8001AE98:
/* 1BA98 8001AE98 92630002 */  lbu        $v1, 2($s3)
/* 1BA9C 8001AE9C 2402003A */  addiu      $v0, $zero, 0x3a
/* 1BAA0 8001AEA0 1062000C */  beq        $v1, $v0, .L8001AED4
/* 1BAA4 8001AEA4 2862003B */   slti      $v0, $v1, 0x3b
/* 1BAA8 8001AEA8 10400005 */  beqz       $v0, .L8001AEC0
/* 1BAAC 8001AEAC 24020010 */   addiu     $v0, $zero, 0x10
/* 1BAB0 8001AEB0 10620098 */  beq        $v1, $v0, .L8001B114
/* 1BAB4 8001AEB4 02202021 */   addu      $a0, $s1, $zero
/* 1BAB8 8001AEB8 08006C56 */  j          .L8001B158
/* 1BABC 8001AEBC 00000000 */   nop
.L8001AEC0:
/* 1BAC0 8001AEC0 2402003D */  addiu      $v0, $zero, 0x3d
/* 1BAC4 8001AEC4 10620097 */  beq        $v1, $v0, .L8001B124
/* 1BAC8 8001AEC8 001E1400 */   sll       $v0, $fp, 0x10
/* 1BACC 8001AECC 08006C56 */  j          .L8001B158
/* 1BAD0 8001AED0 00000000 */   nop
.L8001AED4:
/* 1BAD4 8001AED4 92620000 */  lbu        $v0, ($s3)
/* 1BAD8 8001AED8 00021200 */  sll        $v0, $v0, 8
/* 1BADC 8001AEDC 92630001 */  lbu        $v1, 1($s3)
/* 1BAE0 8001AEE0 00621021 */  addu       $v0, $v1, $v0
/* 1BAE4 8001AEE4 A7A2001E */  sh         $v0, 0x1e($sp)
/* 1BAE8 8001AEE8 26750005 */  addiu      $s5, $s3, 5
/* 1BAEC 8001AEEC 92620006 */  lbu        $v0, 6($s3)
/* 1BAF0 8001AEF0 00021200 */  sll        $v0, $v0, 8
/* 1BAF4 8001AEF4 92630007 */  lbu        $v1, 7($s3)
/* 1BAF8 8001AEF8 0062B821 */  addu       $s7, $v1, $v0
/* 1BAFC 8001AEFC 00161400 */  sll        $v0, $s6, 0x10
/* 1BB00 8001AF00 0002A403 */  sra        $s4, $v0, 0x10
/* 1BB04 8001AF04 00141040 */  sll        $v0, $s4, 1
/* 1BB08 8001AF08 00541021 */  addu       $v0, $v0, $s4
/* 1BB0C 8001AF0C 000210C0 */  sll        $v0, $v0, 3
/* 1BB10 8001AF10 00541023 */  subu       $v0, $v0, $s4
/* 1BB14 8001AF14 00029080 */  sll        $s2, $v0, 2
/* 1BB18 8001AF18 8E250080 */  lw         $a1, 0x80($s1)
/* 1BB1C 8001AF1C 02452821 */  addu       $a1, $s2, $a1
/* 1BB20 8001AF20 92620003 */  lbu        $v0, 3($s3)
/* 1BB24 8001AF24 00021200 */  sll        $v0, $v0, 8
/* 1BB28 8001AF28 92660004 */  lbu        $a2, 4($s3)
/* 1BB2C 8001AF2C 00C23021 */  addu       $a2, $a2, $v0
/* 1BB30 8001AF30 00063400 */  sll        $a2, $a2, 0x10
/* 1BB34 8001AF34 02202021 */  addu       $a0, $s1, $zero
/* 1BB38 8001AF38 24A50018 */  addiu      $a1, $a1, 0x18
/* 1BB3C 8001AF3C 0C0072F6 */  jal        func_8001CBD8
/* 1BB40 8001AF40 00063403 */   sra       $a2, $a2, 0x10
/* 1BB44 8001AF44 8E230080 */  lw         $v1, 0x80($s1)
/* 1BB48 8001AF48 02431821 */  addu       $v1, $s2, $v1
/* 1BB4C 8001AF4C A4620008 */  sh         $v0, 8($v1)
/* 1BB50 8001AF50 8E240080 */  lw         $a0, 0x80($s1)
/* 1BB54 8001AF54 02442021 */  addu       $a0, $s2, $a0
/* 1BB58 8001AF58 92620008 */  lbu        $v0, 8($s3)
/* 1BB5C 8001AF5C 00021200 */  sll        $v0, $v0, 8
/* 1BB60 8001AF60 92630009 */  lbu        $v1, 9($s3)
/* 1BB64 8001AF64 00628021 */  addu       $s0, $v1, $v0
/* 1BB68 8001AF68 A4900004 */  sh         $s0, 4($a0)
/* 1BB6C 8001AF6C 8E220080 */  lw         $v0, 0x80($s1)
/* 1BB70 8001AF70 02421021 */  addu       $v0, $s2, $v0
/* 1BB74 8001AF74 24032B00 */  addiu      $v1, $zero, 0x2b00
/* 1BB78 8001AF78 AC430014 */  sw         $v1, 0x14($v0)
/* 1BB7C 8001AF7C 8E220080 */  lw         $v0, 0x80($s1)
/* 1BB80 8001AF80 02421021 */  addu       $v0, $s2, $v0
/* 1BB84 8001AF84 AC400058 */  sw         $zero, 0x58($v0)
/* 1BB88 8001AF88 8E220080 */  lw         $v0, 0x80($s1)
/* 1BB8C 8001AF8C 02421021 */  addu       $v0, $s2, $v0
/* 1BB90 8001AF90 2403FFFF */  addiu      $v1, $zero, -1
/* 1BB94 8001AF94 A4430002 */  sh         $v1, 2($v0)
/* 1BB98 8001AF98 8622006E */  lh         $v0, 0x6e($s1)
/* 1BB9C 8001AF9C 1040001A */  beqz       $v0, .L8001B008
/* 1BBA0 8001AFA0 00173400 */   sll       $a2, $s7, 0x10
/* 1BBA4 8001AFA4 00108400 */  sll        $s0, $s0, 0x10
/* 1BBA8 8001AFA8 00108403 */  sra        $s0, $s0, 0x10
/* 1BBAC 8001AFAC 02202021 */  addu       $a0, $s1, $zero
/* 1BBB0 8001AFB0 02802821 */  addu       $a1, $s4, $zero
/* 1BBB4 8001AFB4 00063403 */  sra        $a2, $a2, 0x10
/* 1BBB8 8001AFB8 0C0070EA */  jal        func_8001C3A8
/* 1BBBC 8001AFBC 02003821 */   addu      $a3, $s0, $zero
/* 1BBC0 8001AFC0 12000007 */  beqz       $s0, .L8001AFE0
/* 1BBC4 8001AFC4 00161C00 */   sll       $v1, $s6, 0x10
/* 1BBC8 8001AFC8 8E220080 */  lw         $v0, 0x80($s1)
/* 1BBCC 8001AFCC 02421021 */  addu       $v0, $s2, $v0
/* 1BBD0 8001AFD0 8C430034 */  lw         $v1, 0x34($v0)
/* 1BBD4 8001AFD4 90630033 */  lbu        $v1, 0x33($v1)
/* 1BBD8 8001AFD8 08006C02 */  j          .L8001B008
/* 1BBDC 8001AFDC A0430030 */   sb        $v1, 0x30($v0)
.L8001AFE0:
/* 1BBE0 8001AFE0 00031C03 */  sra        $v1, $v1, 0x10
/* 1BBE4 8001AFE4 8E240080 */  lw         $a0, 0x80($s1)
/* 1BBE8 8001AFE8 00031040 */  sll        $v0, $v1, 1
/* 1BBEC 8001AFEC 00431021 */  addu       $v0, $v0, $v1
/* 1BBF0 8001AFF0 000210C0 */  sll        $v0, $v0, 3
/* 1BBF4 8001AFF4 00431023 */  subu       $v0, $v0, $v1
/* 1BBF8 8001AFF8 00021080 */  sll        $v0, $v0, 2
/* 1BBFC 8001AFFC 00441021 */  addu       $v0, $v0, $a0
/* 1BC00 8001B000 240300FF */  addiu      $v1, $zero, 0xff
/* 1BC04 8001B004 A0430030 */  sb         $v1, 0x30($v0)
.L8001B008:
/* 1BC08 8001B008 00161C00 */  sll        $v1, $s6, 0x10
/* 1BC0C 8001B00C 00031C03 */  sra        $v1, $v1, 0x10
/* 1BC10 8001B010 8E240080 */  lw         $a0, 0x80($s1)
/* 1BC14 8001B014 00031040 */  sll        $v0, $v1, 1
/* 1BC18 8001B018 00431021 */  addu       $v0, $v0, $v1
/* 1BC1C 8001B01C 000210C0 */  sll        $v0, $v0, 3
/* 1BC20 8001B020 00431023 */  subu       $v0, $v0, $v1
/* 1BC24 8001B024 00021080 */  sll        $v0, $v0, 2
/* 1BC28 8001B028 00442821 */  addu       $a1, $v0, $a0
/* 1BC2C 8001B02C 8CA30014 */  lw         $v1, 0x14($a1)
/* 1BC30 8001B030 3C020001 */  lui        $v0, 1
/* 1BC34 8001B034 00623024 */  and        $a2, $v1, $v0
/* 1BC38 8001B038 3C03800F */  lui        $v1, %hi(D_800ECB30)
/* 1BC3C 8001B03C 9063CB30 */  lbu        $v1, %lo(D_800ECB30)($v1)
/* 1BC40 8001B040 0003182B */  sltu       $v1, $zero, $v1
/* 1BC44 8001B044 97A8001E */  lhu        $t0, 0x1e($sp)
/* 1BC48 8001B048 00081400 */  sll        $v0, $t0, 0x10
/* 1BC4C 8001B04C 00022403 */  sra        $a0, $v0, 0x10
/* 1BC50 8001B050 2882003A */  slti       $v0, $a0, 0x3a
/* 1BC54 8001B054 38420001 */  xori       $v0, $v0, 1
/* 1BC58 8001B058 00621824 */  and        $v1, $v1, $v0
/* 1BC5C 8001B05C 5060003E */  beql       $v1, $zero, .L8001B158
/* 1BC60 8001B060 26D60001 */   addiu     $s6, $s6, 1
/* 1BC64 8001B064 92A20035 */  lbu        $v0, 0x35($s5)
/* 1BC68 8001B068 5040003B */  beql       $v0, $zero, .L8001B158
/* 1BC6C 8001B06C 26D60001 */   addiu     $s6, $s6, 1
/* 1BC70 8001B070 92A20036 */  lbu        $v0, 0x36($s5)
/* 1BC74 8001B074 54400038 */  bnel       $v0, $zero, .L8001B158
/* 1BC78 8001B078 26D60001 */   addiu     $s6, $s6, 1
/* 1BC7C 8001B07C 2402003E */  addiu      $v0, $zero, 0x3e
/* 1BC80 8001B080 1482000B */  bne        $a0, $v0, .L8001B0B0
/* 1BC84 8001B084 00161400 */   sll       $v0, $s6, 0x10
/* 1BC88 8001B088 92A20037 */  lbu        $v0, 0x37($s5)
/* 1BC8C 8001B08C 00021600 */  sll        $v0, $v0, 0x18
/* 1BC90 8001B090 92A30039 */  lbu        $v1, 0x39($s5)
/* 1BC94 8001B094 00031A00 */  sll        $v1, $v1, 8
/* 1BC98 8001B098 00431025 */  or         $v0, $v0, $v1
/* 1BC9C 8001B09C 92A3003A */  lbu        $v1, 0x3a($s5)
/* 1BCA0 8001B0A0 00431025 */  or         $v0, $v0, $v1
/* 1BCA4 8001B0A4 00461025 */  or         $v0, $v0, $a2
/* 1BCA8 8001B0A8 08006C38 */  j          .L8001B0E0
/* 1BCAC 8001B0AC ACA20014 */   sw        $v0, 0x14($a1)
.L8001B0B0:
/* 1BCB0 8001B0B0 00021403 */  sra        $v0, $v0, 0x10
/* 1BCB4 8001B0B4 8E240080 */  lw         $a0, 0x80($s1)
/* 1BCB8 8001B0B8 00021840 */  sll        $v1, $v0, 1
/* 1BCBC 8001B0BC 00621821 */  addu       $v1, $v1, $v0
/* 1BCC0 8001B0C0 000318C0 */  sll        $v1, $v1, 3
/* 1BCC4 8001B0C4 00621823 */  subu       $v1, $v1, $v0
/* 1BCC8 8001B0C8 00031880 */  sll        $v1, $v1, 2
/* 1BCCC 8001B0CC 00641821 */  addu       $v1, $v1, $a0
/* 1BCD0 8001B0D0 92A20037 */  lbu        $v0, 0x37($s5)
/* 1BCD4 8001B0D4 00021600 */  sll        $v0, $v0, 0x18
/* 1BCD8 8001B0D8 00461025 */  or         $v0, $v0, $a2
/* 1BCDC 8001B0DC AC620014 */  sw         $v0, 0x14($v1)
.L8001B0E0:
/* 1BCE0 8001B0E0 00161C00 */  sll        $v1, $s6, 0x10
/* 1BCE4 8001B0E4 00031C03 */  sra        $v1, $v1, 0x10
/* 1BCE8 8001B0E8 8E240080 */  lw         $a0, 0x80($s1)
/* 1BCEC 8001B0EC 00031040 */  sll        $v0, $v1, 1
/* 1BCF0 8001B0F0 00431021 */  addu       $v0, $v0, $v1
/* 1BCF4 8001B0F4 000210C0 */  sll        $v0, $v0, 3
/* 1BCF8 8001B0F8 00431023 */  subu       $v0, $v0, $v1
/* 1BCFC 8001B0FC 00021080 */  sll        $v0, $v0, 2
/* 1BD00 8001B100 00441021 */  addu       $v0, $v0, $a0
/* 1BD04 8001B104 92A30038 */  lbu        $v1, 0x38($s5)
/* 1BD08 8001B108 A4430006 */  sh         $v1, 6($v0)
/* 1BD0C 8001B10C 08006C56 */  j          .L8001B158
/* 1BD10 8001B110 26D60001 */   addiu     $s6, $s6, 1
.L8001B114:
/* 1BD14 8001B114 0C006CA4 */  jal        func_8001B290
/* 1BD18 8001B118 26650005 */   addiu     $a1, $s3, 5
/* 1BD1C 8001B11C 08006C56 */  j          .L8001B158
/* 1BD20 8001B120 00000000 */   nop
.L8001B124:
/* 1BD24 8001B124 14400008 */  bnez       $v0, .L8001B148
/* 1BD28 8001B128 02202021 */   addu      $a0, $s1, $zero
/* 1BD2C 8001B12C 8FA9002C */  lw         $t1, 0x2c($sp)
/* 1BD30 8001B130 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 1BD34 8001B134 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 1BD38 8001B138 0C008DA1 */  jal        func_80023684
/* 1BD3C 8001B13C 00092080 */   sll       $a0, $t1, 2
/* 1BD40 8001B140 AE2200A0 */  sw         $v0, 0xa0($s1)
/* 1BD44 8001B144 02202021 */  addu       $a0, $s1, $zero
.L8001B148:
/* 1BD48 8001B148 33C5FFFF */  andi       $a1, $fp, 0xffff
/* 1BD4C 8001B14C 0C006FD9 */  jal        func_8001BF64
/* 1BD50 8001B150 26660005 */   addiu     $a2, $s3, 5
/* 1BD54 8001B154 27DE0001 */  addiu      $fp, $fp, 1
.L8001B158:
/* 1BD58 8001B158 92620000 */  lbu        $v0, ($s3)
/* 1BD5C 8001B15C 00021200 */  sll        $v0, $v0, 8
/* 1BD60 8001B160 92630001 */  lbu        $v1, 1($s3)
/* 1BD64 8001B164 00431021 */  addu       $v0, $v0, $v1
/* 1BD68 8001B168 24420002 */  addiu      $v0, $v0, 2
/* 1BD6C 8001B16C 02629821 */  addu       $s3, $s3, $v0
/* 1BD70 8001B170 97A80016 */  lhu        $t0, 0x16($sp)
/* 1BD74 8001B174 25020001 */  addiu      $v0, $t0, 1
/* 1BD78 8001B178 A7A20016 */  sh         $v0, 0x16($sp)
/* 1BD7C 8001B17C 00021400 */  sll        $v0, $v0, 0x10
/* 1BD80 8001B180 00021403 */  sra        $v0, $v0, 0x10
/* 1BD84 8001B184 8FA90024 */  lw         $t1, 0x24($sp)
/* 1BD88 8001B188 0049102A */  slt        $v0, $v0, $t1
/* 1BD8C 8001B18C 1440FF42 */  bnez       $v0, .L8001AE98
/* 1BD90 8001B190 00000000 */   nop
.L8001B194:
/* 1BD94 8001B194 A636006A */  sh         $s6, 0x6a($s1)
/* 1BD98 8001B198 A63E0070 */  sh         $fp, 0x70($s1)
/* 1BD9C 8001B19C 0C00CE53 */  jal        func_8003394C
/* 1BDA0 8001B1A0 02202021 */   addu      $a0, $s1, $zero
.L8001B1A4:
/* 1BDA4 8001B1A4 8FBF0054 */  lw         $ra, 0x54($sp)
/* 1BDA8 8001B1A8 8FBE0050 */  lw         $fp, 0x50($sp)
/* 1BDAC 8001B1AC 8FB7004C */  lw         $s7, 0x4c($sp)
/* 1BDB0 8001B1B0 8FB60048 */  lw         $s6, 0x48($sp)
/* 1BDB4 8001B1B4 8FB50044 */  lw         $s5, 0x44($sp)
/* 1BDB8 8001B1B8 8FB40040 */  lw         $s4, 0x40($sp)
/* 1BDBC 8001B1BC 8FB3003C */  lw         $s3, 0x3c($sp)
/* 1BDC0 8001B1C0 8FB20038 */  lw         $s2, 0x38($sp)
/* 1BDC4 8001B1C4 8FB10034 */  lw         $s1, 0x34($sp)
/* 1BDC8 8001B1C8 8FB00030 */  lw         $s0, 0x30($sp)
/* 1BDCC 8001B1CC 03E00008 */  jr         $ra
/* 1BDD0 8001B1D0 27BD0058 */   addiu     $sp, $sp, 0x58
