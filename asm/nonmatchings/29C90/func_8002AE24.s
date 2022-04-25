	.set noat
	.set noreorder

glabel func_8002AE24
/* 2BA24 8002AE24 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 2BA28 8002AE28 AFBF0064 */  sw         $ra, 0x64($sp)
/* 2BA2C 8002AE2C AFBE0060 */  sw         $fp, 0x60($sp)
/* 2BA30 8002AE30 AFB7005C */  sw         $s7, 0x5c($sp)
/* 2BA34 8002AE34 AFB60058 */  sw         $s6, 0x58($sp)
/* 2BA38 8002AE38 AFB50054 */  sw         $s5, 0x54($sp)
/* 2BA3C 8002AE3C AFB40050 */  sw         $s4, 0x50($sp)
/* 2BA40 8002AE40 AFB3004C */  sw         $s3, 0x4c($sp)
/* 2BA44 8002AE44 AFB20048 */  sw         $s2, 0x48($sp)
/* 2BA48 8002AE48 AFB10044 */  sw         $s1, 0x44($sp)
/* 2BA4C 8002AE4C AFB00040 */  sw         $s0, 0x40($sp)
/* 2BA50 8002AE50 00A0B821 */  addu       $s7, $a1, $zero
/* 2BA54 8002AE54 AFA60014 */  sw         $a2, 0x14($sp)
/* 2BA58 8002AE58 AFA7001C */  sw         $a3, 0x1c($sp)
/* 2BA5C 8002AE5C A6E00006 */  sh         $zero, 6($s7)
/* 2BA60 8002AE60 A6E00004 */  sh         $zero, 4($s7)
/* 2BA64 8002AE64 00042400 */  sll        $a0, $a0, 0x10
/* 2BA68 8002AE68 00042403 */  sra        $a0, $a0, 0x10
/* 2BA6C 8002AE6C 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 2BA70 8002AE70 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 2BA74 8002AE74 00041040 */  sll        $v0, $a0, 1
/* 2BA78 8002AE78 00441021 */  addu       $v0, $v0, $a0
/* 2BA7C 8002AE7C 00021180 */  sll        $v0, $v0, 6
/* 2BA80 8002AE80 00431021 */  addu       $v0, $v0, $v1
/* 2BA84 8002AE84 8C48006C */  lw         $t0, 0x6c($v0)
/* 2BA88 8002AE88 AFA80034 */  sw         $t0, 0x34($sp)
/* 2BA8C 8002AE8C 84430004 */  lh         $v1, 4($v0)
/* 2BA90 8002AE90 000310C0 */  sll        $v0, $v1, 3
/* 2BA94 8002AE94 00431021 */  addu       $v0, $v0, $v1
/* 2BA98 8002AE98 00021080 */  sll        $v0, $v0, 2
/* 2BA9C 8002AE9C 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2BAA0 8002AEA0 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2BAA4 8002AEA4 0043A021 */  addu       $s4, $v0, $v1
/* 2BAA8 8002AEA8 C6800000 */  lwc1       $f0, ($s4)
/* 2BAAC 8002AEAC 46800020 */  cvt.s.w    $f0, $f0
/* 2BAB0 8002AEB0 C6840008 */  lwc1       $f4, 8($s4)
/* 2BAB4 8002AEB4 46040002 */  mul.s      $f0, $f0, $f4
/* 2BAB8 8002AEB8 3C014000 */  lui        $at, 0x4000
/* 2BABC 8002AEBC 44813000 */  mtc1       $at, $f6
/* 2BAC0 8002AEC0 00000000 */  nop
/* 2BAC4 8002AEC4 46060003 */  div.s      $f0, $f0, $f6
/* 2BAC8 8002AEC8 8FA8001C */  lw         $t0, 0x1c($sp)
/* 2BACC 8002AECC C5020000 */  lwc1       $f2, ($t0)
/* 2BAD0 8002AED0 46020000 */  add.s      $f0, $f0, $f2
/* 2BAD4 8002AED4 46040003 */  div.s      $f0, $f0, $f4
/* 2BAD8 8002AED8 4600008D */  trunc.w.s  $f2, $f0
/* 2BADC 8002AEDC 44121000 */  mfc1       $s2, $f2
/* 2BAE0 8002AEE0 C6800004 */  lwc1       $f0, 4($s4)
/* 2BAE4 8002AEE4 46800020 */  cvt.s.w    $f0, $f0
/* 2BAE8 8002AEE8 C684000C */  lwc1       $f4, 0xc($s4)
/* 2BAEC 8002AEEC 46040002 */  mul.s      $f0, $f0, $f4
/* 2BAF0 8002AEF0 46060003 */  div.s      $f0, $f0, $f6
/* 2BAF4 8002AEF4 C5020008 */  lwc1       $f2, 8($t0)
/* 2BAF8 8002AEF8 46020000 */  add.s      $f0, $f0, $f2
/* 2BAFC 8002AEFC 46040003 */  div.s      $f0, $f0, $f4
/* 2BB00 8002AF00 4600008D */  trunc.w.s  $f2, $f0
/* 2BB04 8002AF04 44151000 */  mfc1       $s5, $f2
/* 2BB08 8002AF08 2648FFFF */  addiu      $t0, $s2, -1
/* 2BB0C 8002AF0C 265E0002 */  addiu      $fp, $s2, 2
/* 2BB10 8002AF10 26A4FFFF */  addiu      $a0, $s5, -1
/* 2BB14 8002AF14 26B50002 */  addiu      $s5, $s5, 2
/* 2BB18 8002AF18 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2BB1C 8002AF1C 00081027 */  nor        $v0, $zero, $t0
/* 2BB20 8002AF20 000217C3 */  sra        $v0, $v0, 0x1f
/* 2BB24 8002AF24 00484024 */  and        $t0, $v0, $t0
/* 2BB28 8002AF28 AFA80024 */  sw         $t0, 0x24($sp)
/* 2BB2C 8002AF2C 00041027 */  nor        $v0, $zero, $a0
/* 2BB30 8002AF30 000217C3 */  sra        $v0, $v0, 0x1f
/* 2BB34 8002AF34 00442024 */  and        $a0, $v0, $a0
/* 2BB38 8002AF38 8E830000 */  lw         $v1, ($s4)
/* 2BB3C 8002AF3C 007E102A */  slt        $v0, $v1, $fp
/* 2BB40 8002AF40 54400001 */  bnel       $v0, $zero, .L8002AF48
/* 2BB44 8002AF44 0060F021 */   addu      $fp, $v1, $zero
.L8002AF48:
/* 2BB48 8002AF48 8E830004 */  lw         $v1, 4($s4)
/* 2BB4C 8002AF4C 8FA8002C */  lw         $t0, 0x2c($sp)
/* 2BB50 8002AF50 0068102A */  slt        $v0, $v1, $t0
/* 2BB54 8002AF54 54400001 */  bnel       $v0, $zero, .L8002AF5C
/* 2BB58 8002AF58 AFA3002C */   sw        $v1, 0x2c($sp)
.L8002AF5C:
/* 2BB5C 8002AF5C 8EF60000 */  lw         $s6, ($s7)
/* 2BB60 8002AF60 0800AC0D */  j          .L8002B034
/* 2BB64 8002AF64 0080A821 */   addu      $s5, $a0, $zero
.L8002AF68:
/* 2BB68 8002AF68 8FB20024 */  lw         $s2, 0x24($sp)
/* 2BB6C 8002AF6C 025E102A */  slt        $v0, $s2, $fp
/* 2BB70 8002AF70 50400030 */  beql       $v0, $zero, .L8002B034
/* 2BB74 8002AF74 26B50001 */   addiu     $s5, $s5, 1
.L8002AF78:
/* 2BB78 8002AF78 8E820000 */  lw         $v0, ($s4)
/* 2BB7C 8002AF7C 02A20018 */  mult       $s5, $v0
/* 2BB80 8002AF80 00001012 */  mflo       $v0
/* 2BB84 8002AF84 00521021 */  addu       $v0, $v0, $s2
/* 2BB88 8002AF88 000210C0 */  sll        $v0, $v0, 3
/* 2BB8C 8002AF8C 8E830020 */  lw         $v1, 0x20($s4)
/* 2BB90 8002AF90 00439821 */  addu       $s3, $v0, $v1
/* 2BB94 8002AF94 86640004 */  lh         $a0, 4($s3)
/* 2BB98 8002AF98 50800022 */  beql       $a0, $zero, .L8002B024
/* 2BB9C 8002AF9C 26520001 */   addiu     $s2, $s2, 1
/* 2BBA0 8002AFA0 8E620000 */  lw         $v0, ($s3)
/* 2BBA4 8002AFA4 00021040 */  sll        $v0, $v0, 1
/* 2BBA8 8002AFA8 8E830010 */  lw         $v1, 0x10($s4)
/* 2BBAC 8002AFAC 00438021 */  addu       $s0, $v0, $v1
/* 2BBB0 8002AFB0 1880001B */  blez       $a0, .L8002B020
/* 2BBB4 8002AFB4 00008821 */   addu      $s1, $zero, $zero
.L8002AFB8:
/* 2BBB8 8002AFB8 96040000 */  lhu        $a0, ($s0)
/* 2BBBC 8002AFBC 00042382 */  srl        $a0, $a0, 0xe
/* 2BBC0 8002AFC0 24840002 */  addiu      $a0, $a0, 2
/* 2BBC4 8002AFC4 8FA80034 */  lw         $t0, 0x34($sp)
/* 2BBC8 8002AFC8 8D060078 */  lw         $a2, 0x78($t0)
/* 2BBCC 8002AFCC 8FA7001C */  lw         $a3, 0x1c($sp)
/* 2BBD0 8002AFD0 8FA80014 */  lw         $t0, 0x14($sp)
/* 2BBD4 8002AFD4 0100F809 */  jalr       $t0
/* 2BBD8 8002AFD8 26050002 */   addiu     $a1, $s0, 2
/* 2BBDC 8002AFDC 10400006 */  beqz       $v0, .L8002AFF8
/* 2BBE0 8002AFE0 00000000 */   nop
/* 2BBE4 8002AFE4 AED00000 */  sw         $s0, ($s6)
/* 2BBE8 8002AFE8 26D60004 */  addiu      $s6, $s6, 4
/* 2BBEC 8002AFEC 96E20004 */  lhu        $v0, 4($s7)
/* 2BBF0 8002AFF0 24420001 */  addiu      $v0, $v0, 1
/* 2BBF4 8002AFF4 A6E20004 */  sh         $v0, 4($s7)
.L8002AFF8:
/* 2BBF8 8002AFF8 96020000 */  lhu        $v0, ($s0)
/* 2BBFC 8002AFFC 00021382 */  srl        $v0, $v0, 0xe
/* 2BC00 8002B000 00021040 */  sll        $v0, $v0, 1
/* 2BC04 8002B004 24420006 */  addiu      $v0, $v0, 6
/* 2BC08 8002B008 02028021 */  addu       $s0, $s0, $v0
/* 2BC0C 8002B00C 26310001 */  addiu      $s1, $s1, 1
/* 2BC10 8002B010 86620004 */  lh         $v0, 4($s3)
/* 2BC14 8002B014 0222102A */  slt        $v0, $s1, $v0
/* 2BC18 8002B018 1440FFE7 */  bnez       $v0, .L8002AFB8
/* 2BC1C 8002B01C 00000000 */   nop
.L8002B020:
/* 2BC20 8002B020 26520001 */  addiu      $s2, $s2, 1
.L8002B024:
/* 2BC24 8002B024 025E102A */  slt        $v0, $s2, $fp
/* 2BC28 8002B028 1440FFD3 */  bnez       $v0, .L8002AF78
/* 2BC2C 8002B02C 00000000 */   nop
/* 2BC30 8002B030 26B50001 */  addiu      $s5, $s5, 1
.L8002B034:
/* 2BC34 8002B034 8FA8002C */  lw         $t0, 0x2c($sp)
/* 2BC38 8002B038 02A8102A */  slt        $v0, $s5, $t0
/* 2BC3C 8002B03C 1440FFCA */  bnez       $v0, .L8002AF68
/* 2BC40 8002B040 00000000 */   nop
/* 2BC44 8002B044 8FBF0064 */  lw         $ra, 0x64($sp)
/* 2BC48 8002B048 8FBE0060 */  lw         $fp, 0x60($sp)
/* 2BC4C 8002B04C 8FB7005C */  lw         $s7, 0x5c($sp)
/* 2BC50 8002B050 8FB60058 */  lw         $s6, 0x58($sp)
/* 2BC54 8002B054 8FB50054 */  lw         $s5, 0x54($sp)
/* 2BC58 8002B058 8FB40050 */  lw         $s4, 0x50($sp)
/* 2BC5C 8002B05C 8FB3004C */  lw         $s3, 0x4c($sp)
/* 2BC60 8002B060 8FB20048 */  lw         $s2, 0x48($sp)
/* 2BC64 8002B064 8FB10044 */  lw         $s1, 0x44($sp)
/* 2BC68 8002B068 8FB00040 */  lw         $s0, 0x40($sp)
/* 2BC6C 8002B06C 03E00008 */  jr         $ra
/* 2BC70 8002B070 27BD0068 */   addiu     $sp, $sp, 0x68
