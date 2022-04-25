	.set noat
	.set noreorder

glabel func_8004ACEC
/* 4B8EC 8004ACEC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4B8F0 8004ACF0 AFBF0030 */  sw         $ra, 0x30($sp)
/* 4B8F4 8004ACF4 AFB7002C */  sw         $s7, 0x2c($sp)
/* 4B8F8 8004ACF8 AFB60028 */  sw         $s6, 0x28($sp)
/* 4B8FC 8004ACFC AFB50024 */  sw         $s5, 0x24($sp)
/* 4B900 8004AD00 AFB40020 */  sw         $s4, 0x20($sp)
/* 4B904 8004AD04 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4B908 8004AD08 AFB20018 */  sw         $s2, 0x18($sp)
/* 4B90C 8004AD0C AFB10014 */  sw         $s1, 0x14($sp)
/* 4B910 8004AD10 AFB00010 */  sw         $s0, 0x10($sp)
/* 4B914 8004AD14 30C600FF */  andi       $a2, $a2, 0xff
/* 4B918 8004AD18 14C000AD */  bnez       $a2, .L8004AFD0
/* 4B91C 8004AD1C 00808821 */   addu      $s1, $a0, $zero
/* 4B920 8004AD20 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4B924 8004AD24 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4B928 8004AD28 30420004 */  andi       $v0, $v0, 4
/* 4B92C 8004AD2C 104000A8 */  beqz       $v0, .L8004AFD0
/* 4B930 8004AD30 00000000 */   nop
/* 4B934 8004AD34 0C01295B */  jal        func_8004A56C
/* 4B938 8004AD38 00000000 */   nop
/* 4B93C 8004AD3C 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4B940 8004AD40 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4B944 8004AD44 30420001 */  andi       $v0, $v0, 1
/* 4B948 8004AD48 104000A1 */  beqz       $v0, .L8004AFD0
/* 4B94C 8004AD4C 00000000 */   nop
/* 4B950 8004AD50 0C0129BE */  jal        func_8004A6F8
/* 4B954 8004AD54 00000000 */   nop
/* 4B958 8004AD58 00002021 */  addu       $a0, $zero, $zero
/* 4B95C 8004AD5C 00002821 */  addu       $a1, $zero, $zero
/* 4B960 8004AD60 0C01848A */  jal        func_80061228
/* 4B964 8004AD64 00003021 */   addu      $a2, $zero, $zero
/* 4B968 8004AD68 0C012A54 */  jal        func_8004A950
/* 4B96C 8004AD6C 00408021 */   addu      $s0, $v0, $zero
/* 4B970 8004AD70 00108400 */  sll        $s0, $s0, 0x10
/* 4B974 8004AD74 0C018499 */  jal        func_80061264
/* 4B978 8004AD78 00102403 */   sra       $a0, $s0, 0x10
/* 4B97C 8004AD7C 3C04800D */  lui        $a0, %hi(D_800D6738)
/* 4B980 8004AD80 84846738 */  lh         $a0, %lo(D_800D6738)($a0)
/* 4B984 8004AD84 3C02800D */  lui        $v0, %hi(D_800D6734)
/* 4B988 8004AD88 84426734 */  lh         $v0, %lo(D_800D6734)($v0)
/* 4B98C 8004AD8C 00822021 */  addu       $a0, $a0, $v0
/* 4B990 8004AD90 2484FF88 */  addiu      $a0, $a0, -0x78
/* 4B994 8004AD94 3C022AAA */  lui        $v0, 0x2aaa
/* 4B998 8004AD98 3442AAAB */  ori        $v0, $v0, 0xaaab
/* 4B99C 8004AD9C 00820018 */  mult       $a0, $v0
/* 4B9A0 8004ADA0 00004010 */  mfhi       $t0
/* 4B9A4 8004ADA4 000818C3 */  sra        $v1, $t0, 3
/* 4B9A8 8004ADA8 000417C3 */  sra        $v0, $a0, 0x1f
/* 4B9AC 8004ADAC 00621823 */  subu       $v1, $v1, $v0
/* 4B9B0 8004ADB0 00031040 */  sll        $v0, $v1, 1
/* 4B9B4 8004ADB4 00431021 */  addu       $v0, $v0, $v1
/* 4B9B8 8004ADB8 00021100 */  sll        $v0, $v0, 4
/* 4B9BC 8004ADBC 0082B823 */  subu       $s7, $a0, $v0
/* 4B9C0 8004ADC0 3C03800D */  lui        $v1, %hi(D_800D6736)
/* 4B9C4 8004ADC4 84636736 */  lh         $v1, %lo(D_800D6736)($v1)
/* 4B9C8 8004ADC8 3C02800D */  lui        $v0, %hi(D_800D6732)
/* 4B9CC 8004ADCC 84426732 */  lh         $v0, %lo(D_800D6732)($v0)
/* 4B9D0 8004ADD0 00621821 */  addu       $v1, $v1, $v0
/* 4B9D4 8004ADD4 2464FF60 */  addiu      $a0, $v1, -0xa0
/* 4B9D8 8004ADD8 04810002 */  bgez       $a0, .L8004ADE4
/* 4B9DC 8004ADDC 00801021 */   addu      $v0, $a0, $zero
/* 4B9E0 8004ADE0 2462FF9F */  addiu      $v0, $v1, -0x61
.L8004ADE4:
/* 4B9E4 8004ADE4 00021183 */  sra        $v0, $v0, 6
/* 4B9E8 8004ADE8 00021180 */  sll        $v0, $v0, 6
/* 4B9EC 8004ADEC 0082B023 */  subu       $s6, $a0, $v0
/* 4B9F0 8004ADF0 8E230000 */  lw         $v1, ($s1)
/* 4B9F4 8004ADF4 24620008 */  addiu      $v0, $v1, 8
/* 4B9F8 8004ADF8 AE220000 */  sw         $v0, ($s1)
/* 4B9FC 8004ADFC 3C02DE00 */  lui        $v0, 0xde00
/* 4BA00 8004AE00 AC620000 */  sw         $v0, ($v1)
/* 4BA04 8004AE04 3C02800C */  lui        $v0, %hi(D_800C4F80)
/* 4BA08 8004AE08 24424F80 */  addiu      $v0, $v0, %lo(D_800C4F80)
/* 4BA0C 8004AE0C AC620004 */  sw         $v0, 4($v1)
/* 4BA10 8004AE10 8E240000 */  lw         $a0, ($s1)
/* 4BA14 8004AE14 24820008 */  addiu      $v0, $a0, 8
/* 4BA18 8004AE18 AE220000 */  sw         $v0, ($s1)
/* 4BA1C 8004AE1C 3C02FB00 */  lui        $v0, 0xfb00
/* 4BA20 8004AE20 AC820000 */  sw         $v0, ($a0)
/* 4BA24 8004AE24 3C03800C */  lui        $v1, %hi(D_800C4F7C)
/* 4BA28 8004AE28 90634F7C */  lbu        $v1, %lo(D_800C4F7C)($v1)
/* 4BA2C 8004AE2C 2402FF00 */  addiu      $v0, $zero, -0x100
/* 4BA30 8004AE30 00621025 */  or         $v0, $v1, $v0
/* 4BA34 8004AE34 2C6300FF */  sltiu      $v1, $v1, 0xff
/* 4BA38 8004AE38 10600021 */  beqz       $v1, .L8004AEC0
/* 4BA3C 8004AE3C AC820004 */   sw        $v0, 4($a0)
/* 4BA40 8004AE40 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4BA44 8004AE44 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4BA48 8004AE48 30420008 */  andi       $v0, $v0, 8
/* 4BA4C 8004AE4C 1040000A */  beqz       $v0, .L8004AE78
/* 4BA50 8004AE50 00000000 */   nop
/* 4BA54 8004AE54 8E230000 */  lw         $v1, ($s1)
/* 4BA58 8004AE58 24620008 */  addiu      $v0, $v1, 8
/* 4BA5C 8004AE5C AE220000 */  sw         $v0, ($s1)
/* 4BA60 8004AE60 3C02FC52 */  lui        $v0, 0xfc52
/* 4BA64 8004AE64 3442FEA5 */  ori        $v0, $v0, 0xfea5
/* 4BA68 8004AE68 AC620000 */  sw         $v0, ($v1)
/* 4BA6C 8004AE6C 3C0211FF */  lui        $v0, 0x11ff
/* 4BA70 8004AE70 08012BA6 */  j          .L8004AE98
/* 4BA74 8004AE74 3442FBFD */   ori       $v0, $v0, 0xfbfd
.L8004AE78:
/* 4BA78 8004AE78 8E230000 */  lw         $v1, ($s1)
/* 4BA7C 8004AE7C 24620008 */  addiu      $v0, $v1, 8
/* 4BA80 8004AE80 AE220000 */  sw         $v0, ($s1)
/* 4BA84 8004AE84 3C02FCFF */  lui        $v0, 0xfcff
/* 4BA88 8004AE88 3442FFFF */  ori        $v0, $v0, 0xffff
/* 4BA8C 8004AE8C AC620000 */  sw         $v0, ($v1)
/* 4BA90 8004AE90 3C02FFFC */  lui        $v0, 0xfffc
/* 4BA94 8004AE94 3442FA7D */  ori        $v0, $v0, 0xfa7d
.L8004AE98:
/* 4BA98 8004AE98 AC620004 */  sw         $v0, 4($v1)
/* 4BA9C 8004AE9C 8E230000 */  lw         $v1, ($s1)
/* 4BAA0 8004AEA0 24620008 */  addiu      $v0, $v1, 8
/* 4BAA4 8004AEA4 AE220000 */  sw         $v0, ($s1)
/* 4BAA8 8004AEA8 3C02E200 */  lui        $v0, 0xe200
/* 4BAAC 8004AEAC 3442001C */  ori        $v0, $v0, 0x1c
/* 4BAB0 8004AEB0 AC620000 */  sw         $v0, ($v1)
/* 4BAB4 8004AEB4 3C020050 */  lui        $v0, 0x50
/* 4BAB8 8004AEB8 08012BC6 */  j          .L8004AF18
/* 4BABC 8004AEBC 34424240 */   ori       $v0, $v0, 0x4240
.L8004AEC0:
/* 4BAC0 8004AEC0 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4BAC4 8004AEC4 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4BAC8 8004AEC8 30420008 */  andi       $v0, $v0, 8
/* 4BACC 8004AECC 1040000A */  beqz       $v0, .L8004AEF8
/* 4BAD0 8004AED0 00000000 */   nop
/* 4BAD4 8004AED4 8E230000 */  lw         $v1, ($s1)
/* 4BAD8 8004AED8 24620008 */  addiu      $v0, $v1, 8
/* 4BADC 8004AEDC AE220000 */  sw         $v0, ($s1)
/* 4BAE0 8004AEE0 3C02FC52 */  lui        $v0, 0xfc52
/* 4BAE4 8004AEE4 3442FEA5 */  ori        $v0, $v0, 0xfea5
/* 4BAE8 8004AEE8 AC620000 */  sw         $v0, ($v1)
/* 4BAEC 8004AEEC 3C0211FF */  lui        $v0, 0x11ff
/* 4BAF0 8004AEF0 3442F3F9 */  ori        $v0, $v0, 0xf3f9
/* 4BAF4 8004AEF4 AC620004 */  sw         $v0, 4($v1)
.L8004AEF8:
/* 4BAF8 8004AEF8 8E230000 */  lw         $v1, ($s1)
/* 4BAFC 8004AEFC 24620008 */  addiu      $v0, $v1, 8
/* 4BB00 8004AF00 AE220000 */  sw         $v0, ($s1)
/* 4BB04 8004AF04 3C02E200 */  lui        $v0, 0xe200
/* 4BB08 8004AF08 3442001C */  ori        $v0, $v0, 0x1c
/* 4BB0C 8004AF0C AC620000 */  sw         $v0, ($v1)
/* 4BB10 8004AF10 3C020055 */  lui        $v0, 0x55
/* 4BB14 8004AF14 34422048 */  ori        $v0, $v0, 0x2048
.L8004AF18:
/* 4BB18 8004AF18 AC620004 */  sw         $v0, 4($v1)
/* 4BB1C 8004AF1C 00009821 */  addu       $s3, $zero, $zero
/* 4BB20 8004AF20 3C15800D */  lui        $s5, %hi(D_800D6A60)
/* 4BB24 8004AF24 26B56A60 */  addiu      $s5, $s5, %lo(D_800D6A60)
/* 4BB28 8004AF28 00008021 */  addu       $s0, $zero, $zero
.L8004AF2C:
/* 4BB2C 8004AF2C 00131C00 */  sll        $v1, $s3, 0x10
/* 4BB30 8004AF30 00031C03 */  sra        $v1, $v1, 0x10
/* 4BB34 8004AF34 0003A080 */  sll        $s4, $v1, 2
/* 4BB38 8004AF38 00031040 */  sll        $v0, $v1, 1
/* 4BB3C 8004AF3C 00431021 */  addu       $v0, $v0, $v1
/* 4BB40 8004AF40 00021100 */  sll        $v0, $v0, 4
/* 4BB44 8004AF44 00571023 */  subu       $v0, $v0, $s7
/* 4BB48 8004AF48 00029400 */  sll        $s2, $v0, 0x10
/* 4BB4C 8004AF4C 00101400 */  sll        $v0, $s0, 0x10
.L8004AF50:
/* 4BB50 8004AF50 00023403 */  sra        $a2, $v0, 0x10
/* 4BB54 8004AF54 00061040 */  sll        $v0, $a2, 1
/* 4BB58 8004AF58 00461021 */  addu       $v0, $v0, $a2
/* 4BB5C 8004AF5C 000210C0 */  sll        $v0, $v0, 3
/* 4BB60 8004AF60 00551021 */  addu       $v0, $v0, $s5
/* 4BB64 8004AF64 02821021 */  addu       $v0, $s4, $v0
/* 4BB68 8004AF68 8C420000 */  lw         $v0, ($v0)
/* 4BB6C 8004AF6C 10400008 */  beqz       $v0, .L8004AF90
/* 4BB70 8004AF70 00063180 */   sll       $a2, $a2, 6
/* 4BB74 8004AF74 00D63023 */  subu       $a2, $a2, $s6
/* 4BB78 8004AF78 00063400 */  sll        $a2, $a2, 0x10
/* 4BB7C 8004AF7C 02202021 */  addu       $a0, $s1, $zero
/* 4BB80 8004AF80 8C450004 */  lw         $a1, 4($v0)
/* 4BB84 8004AF84 00063403 */  sra        $a2, $a2, 0x10
/* 4BB88 8004AF88 0C012AAA */  jal        func_8004AAA8
/* 4BB8C 8004AF8C 00123C03 */   sra       $a3, $s2, 0x10
.L8004AF90:
/* 4BB90 8004AF90 26020001 */  addiu      $v0, $s0, 1
/* 4BB94 8004AF94 00408021 */  addu       $s0, $v0, $zero
/* 4BB98 8004AF98 00021400 */  sll        $v0, $v0, 0x10
/* 4BB9C 8004AF9C 00021403 */  sra        $v0, $v0, 0x10
/* 4BBA0 8004AFA0 28420006 */  slti       $v0, $v0, 6
/* 4BBA4 8004AFA4 1440FFEA */  bnez       $v0, .L8004AF50
/* 4BBA8 8004AFA8 00101400 */   sll       $v0, $s0, 0x10
/* 4BBAC 8004AFAC 26620001 */  addiu      $v0, $s3, 1
/* 4BBB0 8004AFB0 00409821 */  addu       $s3, $v0, $zero
/* 4BBB4 8004AFB4 00021400 */  sll        $v0, $v0, 0x10
/* 4BBB8 8004AFB8 00021403 */  sra        $v0, $v0, 0x10
/* 4BBBC 8004AFBC 28420006 */  slti       $v0, $v0, 6
/* 4BBC0 8004AFC0 5440FFDA */  bnel       $v0, $zero, .L8004AF2C
/* 4BBC4 8004AFC4 00008021 */   addu      $s0, $zero, $zero
/* 4BBC8 8004AFC8 0C01294C */  jal        func_8004A530
/* 4BBCC 8004AFCC 00000000 */   nop
.L8004AFD0:
/* 4BBD0 8004AFD0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 4BBD4 8004AFD4 8FB7002C */  lw         $s7, 0x2c($sp)
/* 4BBD8 8004AFD8 8FB60028 */  lw         $s6, 0x28($sp)
/* 4BBDC 8004AFDC 8FB50024 */  lw         $s5, 0x24($sp)
/* 4BBE0 8004AFE0 8FB40020 */  lw         $s4, 0x20($sp)
/* 4BBE4 8004AFE4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4BBE8 8004AFE8 8FB20018 */  lw         $s2, 0x18($sp)
/* 4BBEC 8004AFEC 8FB10014 */  lw         $s1, 0x14($sp)
/* 4BBF0 8004AFF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 4BBF4 8004AFF4 03E00008 */  jr         $ra
/* 4BBF8 8004AFF8 27BD0038 */   addiu     $sp, $sp, 0x38
