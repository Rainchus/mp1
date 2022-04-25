	.set noat
	.set noreorder

glabel func_8004BDFC
/* 4C9FC 8004BDFC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 4CA00 8004BE00 AFBF0048 */  sw         $ra, 0x48($sp)
/* 4CA04 8004BE04 AFB30044 */  sw         $s3, 0x44($sp)
/* 4CA08 8004BE08 AFB20040 */  sw         $s2, 0x40($sp)
/* 4CA0C 8004BE0C AFB1003C */  sw         $s1, 0x3c($sp)
/* 4CA10 8004BE10 AFB00038 */  sw         $s0, 0x38($sp)
/* 4CA14 8004BE14 00042400 */  sll        $a0, $a0, 0x10
/* 4CA18 8004BE18 00052C00 */  sll        $a1, $a1, 0x10
/* 4CA1C 8004BE1C 00052C03 */  sra        $a1, $a1, 0x10
/* 4CA20 8004BE20 0C00516C */  jal        func_800145B0
/* 4CA24 8004BE24 00852025 */   or        $a0, $a0, $a1
/* 4CA28 8004BE28 3C01800C */  lui        $at, %hi(D_800C4FD0)
/* 4CA2C 8004BE2C AC224FD0 */  sw         $v0, %lo(D_800C4FD0)($at)
/* 4CA30 8004BE30 504000AC */  beql       $v0, $zero, .L8004C0E4
/* 4CA34 8004BE34 00001021 */   addu      $v0, $zero, $zero
/* 4CA38 8004BE38 3C01800E */  lui        $at, %hi(D_800D8144)
/* 4CA3C 8004BE3C AC208144 */  sw         $zero, %lo(D_800D8144)($at)
/* 4CA40 8004BE40 3C01800E */  lui        $at, %hi(D_800D8148)
/* 4CA44 8004BE44 AC208148 */  sw         $zero, %lo(D_800D8148)($at)
/* 4CA48 8004BE48 3C01800E */  lui        $at, %hi(D_800D814C)
/* 4CA4C 8004BE4C AC20814C */  sw         $zero, %lo(D_800D814C)($at)
/* 4CA50 8004BE50 3C01800E */  lui        $at, %hi(D_800D8150)
/* 4CA54 8004BE54 AC208150 */  sw         $zero, %lo(D_800D8150)($at)
/* 4CA58 8004BE58 00408021 */  addu       $s0, $v0, $zero
/* 4CA5C 8004BE5C 96020000 */  lhu        $v0, ($s0)
/* 4CA60 8004BE60 3C01800E */  lui        $at, %hi(D_800D8100)
/* 4CA64 8004BE64 A4228100 */  sh         $v0, %lo(D_800D8100)($at)
/* 4CA68 8004BE68 26100002 */  addiu      $s0, $s0, 2
/* 4CA6C 8004BE6C 96020000 */  lhu        $v0, ($s0)
/* 4CA70 8004BE70 3C01800E */  lui        $at, %hi(D_800D8102)
/* 4CA74 8004BE74 A4228102 */  sh         $v0, %lo(D_800D8102)($at)
/* 4CA78 8004BE78 96020002 */  lhu        $v0, 2($s0)
/* 4CA7C 8004BE7C 3C01800E */  lui        $at, %hi(D_800D8104)
/* 4CA80 8004BE80 A4228104 */  sh         $v0, %lo(D_800D8104)($at)
/* 4CA84 8004BE84 3C04800E */  lui        $a0, %hi(D_800D8100)
/* 4CA88 8004BE88 94848100 */  lhu        $a0, %lo(D_800D8100)($a0)
/* 4CA8C 8004BE8C 0C00EDDD */  jal        func_8003B774
/* 4CA90 8004BE90 00042140 */   sll       $a0, $a0, 5
/* 4CA94 8004BE94 3C01800E */  lui        $at, %hi(D_800D8108)
/* 4CA98 8004BE98 AC228108 */  sw         $v0, %lo(D_800D8108)($at)
/* 4CA9C 8004BE9C 3C04800C */  lui        $a0, %hi(D_800C4FD0)
/* 4CAA0 8004BEA0 8C844FD0 */  lw         $a0, %lo(D_800C4FD0)($a0)
/* 4CAA4 8004BEA4 0C012F7B */  jal        func_8004BDEC
/* 4CAA8 8004BEA8 24050006 */   addiu     $a1, $zero, 6
/* 4CAAC 8004BEAC 00408021 */  addu       $s0, $v0, $zero
/* 4CAB0 8004BEB0 3C03800E */  lui        $v1, %hi(D_800D8108)
/* 4CAB4 8004BEB4 8C638108 */  lw         $v1, %lo(D_800D8108)($v1)
/* 4CAB8 8004BEB8 3C02800E */  lui        $v0, %hi(D_800D8100)
/* 4CABC 8004BEBC 94428100 */  lhu        $v0, %lo(D_800D8100)($v0)
/* 4CAC0 8004BEC0 18400021 */  blez       $v0, .L8004BF48
/* 4CAC4 8004BEC4 00009021 */   addu      $s2, $zero, $zero
/* 4CAC8 8004BEC8 24040001 */  addiu      $a0, $zero, 1
/* 4CACC 8004BECC 3C0140A0 */  lui        $at, 0x40a0
/* 4CAD0 8004BED0 44812000 */  mtc1       $at, $f4
/* 4CAD4 8004BED4 3C013F80 */  lui        $at, 0x3f80
/* 4CAD8 8004BED8 44811000 */  mtc1       $at, $f2
.L8004BEDC:
/* 4CADC 8004BEDC A0640000 */  sb         $a0, ($v1)
/* 4CAE0 8004BEE0 96020000 */  lhu        $v0, ($s0)
/* 4CAE4 8004BEE4 A4620002 */  sh         $v0, 2($v1)
/* 4CAE8 8004BEE8 26100002 */  addiu      $s0, $s0, 2
/* 4CAEC 8004BEEC 92020001 */  lbu        $v0, 1($s0)
/* 4CAF0 8004BEF0 A0620001 */  sb         $v0, 1($v1)
/* 4CAF4 8004BEF4 26100002 */  addiu      $s0, $s0, 2
/* 4CAF8 8004BEF8 C6000000 */  lwc1       $f0, ($s0)
/* 4CAFC 8004BEFC 46040002 */  mul.s      $f0, $f0, $f4
/* 4CB00 8004BF00 E4600004 */  swc1       $f0, 4($v1)
/* 4CB04 8004BF04 C6000004 */  lwc1       $f0, 4($s0)
/* 4CB08 8004BF08 46040002 */  mul.s      $f0, $f0, $f4
/* 4CB0C 8004BF0C E4600008 */  swc1       $f0, 8($v1)
/* 4CB10 8004BF10 C6000008 */  lwc1       $f0, 8($s0)
/* 4CB14 8004BF14 46040002 */  mul.s      $f0, $f0, $f4
/* 4CB18 8004BF18 E460000C */  swc1       $f0, 0xc($v1)
/* 4CB1C 8004BF1C 2610000C */  addiu      $s0, $s0, 0xc
/* 4CB20 8004BF20 E4620010 */  swc1       $f2, 0x10($v1)
/* 4CB24 8004BF24 E4620014 */  swc1       $f2, 0x14($v1)
/* 4CB28 8004BF28 E4620018 */  swc1       $f2, 0x18($v1)
/* 4CB2C 8004BF2C AC60001C */  sw         $zero, 0x1c($v1)
/* 4CB30 8004BF30 26520001 */  addiu      $s2, $s2, 1
/* 4CB34 8004BF34 3C02800E */  lui        $v0, %hi(D_800D8100)
/* 4CB38 8004BF38 94428100 */  lhu        $v0, %lo(D_800D8100)($v0)
/* 4CB3C 8004BF3C 0242102A */  slt        $v0, $s2, $v0
/* 4CB40 8004BF40 1440FFE6 */  bnez       $v0, .L8004BEDC
/* 4CB44 8004BF44 24630020 */   addiu     $v1, $v1, 0x20
.L8004BF48:
/* 4CB48 8004BF48 3C04800E */  lui        $a0, %hi(D_800D8102)
/* 4CB4C 8004BF4C 94848102 */  lhu        $a0, %lo(D_800D8102)($a0)
/* 4CB50 8004BF50 0C00EDDD */  jal        func_8003B774
/* 4CB54 8004BF54 000420C0 */   sll       $a0, $a0, 3
/* 4CB58 8004BF58 3C01800E */  lui        $at, %hi(D_800D810C)
/* 4CB5C 8004BF5C AC22810C */  sw         $v0, %lo(D_800D810C)($at)
/* 4CB60 8004BF60 3C04800C */  lui        $a0, %hi(D_800C4FD0)
/* 4CB64 8004BF64 8C844FD0 */  lw         $a0, %lo(D_800C4FD0)($a0)
/* 4CB68 8004BF68 0C012F7B */  jal        func_8004BDEC
/* 4CB6C 8004BF6C 24050008 */   addiu     $a1, $zero, 8
/* 4CB70 8004BF70 00409821 */  addu       $s3, $v0, $zero
/* 4CB74 8004BF74 3C11800E */  lui        $s1, %hi(D_800D810C)
/* 4CB78 8004BF78 8E31810C */  lw         $s1, %lo(D_800D810C)($s1)
/* 4CB7C 8004BF7C 3C02800E */  lui        $v0, %hi(D_800D8102)
/* 4CB80 8004BF80 94428102 */  lhu        $v0, %lo(D_800D8102)($v0)
/* 4CB84 8004BF84 1840001E */  blez       $v0, .L8004C000
/* 4CB88 8004BF88 00009021 */   addu      $s2, $zero, $zero
.L8004BF8C:
/* 4CB8C 8004BF8C 02602021 */  addu       $a0, $s3, $zero
/* 4CB90 8004BF90 0C012F7B */  jal        func_8004BDEC
/* 4CB94 8004BF94 00122840 */   sll       $a1, $s2, 1
/* 4CB98 8004BF98 00408021 */  addu       $s0, $v0, $zero
/* 4CB9C 8004BF9C 96040000 */  lhu        $a0, ($s0)
/* 4CBA0 8004BFA0 A6240000 */  sh         $a0, ($s1)
/* 4CBA4 8004BFA4 26100002 */  addiu      $s0, $s0, 2
/* 4CBA8 8004BFA8 00042400 */  sll        $a0, $a0, 0x10
/* 4CBAC 8004BFAC 0C00EDDD */  jal        func_8003B774
/* 4CBB0 8004BFB0 000423C3 */   sra       $a0, $a0, 0xf
/* 4CBB4 8004BFB4 AE220004 */  sw         $v0, 4($s1)
/* 4CBB8 8004BFB8 00402021 */  addu       $a0, $v0, $zero
/* 4CBBC 8004BFBC 86220000 */  lh         $v0, ($s1)
/* 4CBC0 8004BFC0 18400009 */  blez       $v0, .L8004BFE8
/* 4CBC4 8004BFC4 00001821 */   addu      $v1, $zero, $zero
.L8004BFC8:
/* 4CBC8 8004BFC8 96020000 */  lhu        $v0, ($s0)
/* 4CBCC 8004BFCC A4820000 */  sh         $v0, ($a0)
/* 4CBD0 8004BFD0 26100002 */  addiu      $s0, $s0, 2
/* 4CBD4 8004BFD4 24630001 */  addiu      $v1, $v1, 1
/* 4CBD8 8004BFD8 86220000 */  lh         $v0, ($s1)
/* 4CBDC 8004BFDC 0062102A */  slt        $v0, $v1, $v0
/* 4CBE0 8004BFE0 1440FFF9 */  bnez       $v0, .L8004BFC8
/* 4CBE4 8004BFE4 24840002 */   addiu     $a0, $a0, 2
.L8004BFE8:
/* 4CBE8 8004BFE8 26520001 */  addiu      $s2, $s2, 1
/* 4CBEC 8004BFEC 3C02800E */  lui        $v0, %hi(D_800D8102)
/* 4CBF0 8004BFF0 94428102 */  lhu        $v0, %lo(D_800D8102)($v0)
/* 4CBF4 8004BFF4 0242102A */  slt        $v0, $s2, $v0
/* 4CBF8 8004BFF8 1440FFE4 */  bnez       $v0, .L8004BF8C
/* 4CBFC 8004BFFC 26310008 */   addiu     $s1, $s1, 8
.L8004C000:
/* 4CC00 8004C000 3C04800E */  lui        $a0, %hi(D_800D8104)
/* 4CC04 8004C004 94848104 */  lhu        $a0, %lo(D_800D8104)($a0)
/* 4CC08 8004C008 0C00EDDD */  jal        func_8003B774
/* 4CC0C 8004C00C 000420C0 */   sll       $a0, $a0, 3
/* 4CC10 8004C010 3C01800E */  lui        $at, %hi(D_800D8110)
/* 4CC14 8004C014 AC228110 */  sw         $v0, %lo(D_800D8110)($at)
/* 4CC18 8004C018 3C04800C */  lui        $a0, %hi(D_800C4FD0)
/* 4CC1C 8004C01C 8C844FD0 */  lw         $a0, %lo(D_800C4FD0)($a0)
/* 4CC20 8004C020 0C012F7B */  jal        func_8004BDEC
/* 4CC24 8004C024 2405000A */   addiu     $a1, $zero, 0xa
/* 4CC28 8004C028 00409821 */  addu       $s3, $v0, $zero
/* 4CC2C 8004C02C 3C11800E */  lui        $s1, %hi(D_800D8110)
/* 4CC30 8004C030 8E318110 */  lw         $s1, %lo(D_800D8110)($s1)
/* 4CC34 8004C034 3C02800E */  lui        $v0, %hi(D_800D8104)
/* 4CC38 8004C038 94428104 */  lhu        $v0, %lo(D_800D8104)($v0)
/* 4CC3C 8004C03C 1840001E */  blez       $v0, .L8004C0B8
/* 4CC40 8004C040 00009021 */   addu      $s2, $zero, $zero
.L8004C044:
/* 4CC44 8004C044 02602021 */  addu       $a0, $s3, $zero
/* 4CC48 8004C048 0C012F7B */  jal        func_8004BDEC
/* 4CC4C 8004C04C 00122840 */   sll       $a1, $s2, 1
/* 4CC50 8004C050 00408021 */  addu       $s0, $v0, $zero
/* 4CC54 8004C054 96040000 */  lhu        $a0, ($s0)
/* 4CC58 8004C058 A6240000 */  sh         $a0, ($s1)
/* 4CC5C 8004C05C 26100002 */  addiu      $s0, $s0, 2
/* 4CC60 8004C060 00042400 */  sll        $a0, $a0, 0x10
/* 4CC64 8004C064 0C00EDDD */  jal        func_8003B774
/* 4CC68 8004C068 000423C3 */   sra       $a0, $a0, 0xf
/* 4CC6C 8004C06C AE220004 */  sw         $v0, 4($s1)
/* 4CC70 8004C070 00402021 */  addu       $a0, $v0, $zero
/* 4CC74 8004C074 86220000 */  lh         $v0, ($s1)
/* 4CC78 8004C078 18400009 */  blez       $v0, .L8004C0A0
/* 4CC7C 8004C07C 00001821 */   addu      $v1, $zero, $zero
.L8004C080:
/* 4CC80 8004C080 96020000 */  lhu        $v0, ($s0)
/* 4CC84 8004C084 A4820000 */  sh         $v0, ($a0)
/* 4CC88 8004C088 26100002 */  addiu      $s0, $s0, 2
/* 4CC8C 8004C08C 24630001 */  addiu      $v1, $v1, 1
/* 4CC90 8004C090 86220000 */  lh         $v0, ($s1)
/* 4CC94 8004C094 0062102A */  slt        $v0, $v1, $v0
/* 4CC98 8004C098 1440FFF9 */  bnez       $v0, .L8004C080
/* 4CC9C 8004C09C 24840002 */   addiu     $a0, $a0, 2
.L8004C0A0:
/* 4CCA0 8004C0A0 26520001 */  addiu      $s2, $s2, 1
/* 4CCA4 8004C0A4 3C02800E */  lui        $v0, %hi(D_800D8104)
/* 4CCA8 8004C0A8 94428104 */  lhu        $v0, %lo(D_800D8104)($v0)
/* 4CCAC 8004C0AC 0242102A */  slt        $v0, $s2, $v0
/* 4CCB0 8004C0B0 1440FFE4 */  bnez       $v0, .L8004C044
/* 4CCB4 8004C0B4 26310008 */   addiu     $s1, $s1, 8
.L8004C0B8:
/* 4CCB8 8004C0B8 3C04800C */  lui        $a0, %hi(D_800C4FD0)
/* 4CCBC 8004C0BC 0C0051CC */  jal        func_80014730
/* 4CCC0 8004C0C0 8C844FD0 */   lw        $a0, %lo(D_800C4FD0)($a0)
/* 4CCC4 8004C0C4 3C058005 */  lui        $a1, %hi(func_8004BA04)
/* 4CCC8 8004C0C8 24A5BA04 */  addiu      $a1, $a1, %lo(func_8004BA04)
/* 4CCCC 8004C0CC 0C00A3A3 */  jal        func_80028E8C
/* 4CCD0 8004C0D0 24040001 */   addiu     $a0, $zero, 1
/* 4CCD4 8004C0D4 24020001 */  addiu      $v0, $zero, 1
/* 4CCD8 8004C0D8 3C01800F */  lui        $at, %hi(D_800F3290)
/* 4CCDC 8004C0DC A4223290 */  sh         $v0, %lo(D_800F3290)($at)
/* 4CCE0 8004C0E0 00001021 */  addu       $v0, $zero, $zero
.L8004C0E4:
/* 4CCE4 8004C0E4 8FBF0048 */  lw         $ra, 0x48($sp)
/* 4CCE8 8004C0E8 8FB30044 */  lw         $s3, 0x44($sp)
/* 4CCEC 8004C0EC 8FB20040 */  lw         $s2, 0x40($sp)
/* 4CCF0 8004C0F0 8FB1003C */  lw         $s1, 0x3c($sp)
/* 4CCF4 8004C0F4 8FB00038 */  lw         $s0, 0x38($sp)
/* 4CCF8 8004C0F8 03E00008 */  jr         $ra
/* 4CCFC 8004C0FC 27BD0050 */   addiu     $sp, $sp, 0x50
