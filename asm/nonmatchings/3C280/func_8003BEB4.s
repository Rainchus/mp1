	.set noat
	.set noreorder

glabel func_8003BEB4
/* 3CAB4 8003BEB4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 3CAB8 8003BEB8 AFBF0050 */  sw         $ra, 0x50($sp)
/* 3CABC 8003BEBC AFB5004C */  sw         $s5, 0x4c($sp)
/* 3CAC0 8003BEC0 AFB40048 */  sw         $s4, 0x48($sp)
/* 3CAC4 8003BEC4 AFB30044 */  sw         $s3, 0x44($sp)
/* 3CAC8 8003BEC8 AFB20040 */  sw         $s2, 0x40($sp)
/* 3CACC 8003BECC AFB1003C */  sw         $s1, 0x3c($sp)
/* 3CAD0 8003BED0 AFB00038 */  sw         $s0, 0x38($sp)
/* 3CAD4 8003BED4 F7B40058 */  sdc1       $f20, 0x58($sp)
/* 3CAD8 8003BED8 0C018CEA */  jal        func_800633A8
/* 3CADC 8003BEDC 24140001 */   addiu     $s4, $zero, 1
/* 3CAE0 8003BEE0 8C51008C */  lw         $s1, 0x8c($v0)
/* 3CAE4 8003BEE4 8E350068 */  lw         $s5, 0x68($s1)
/* 3CAE8 8003BEE8 8632000C */  lh         $s2, 0xc($s1)
/* 3CAEC 8003BEEC 27B30020 */  addiu      $s3, $sp, 0x20
/* 3CAF0 8003BEF0 3C014218 */  lui        $at, 0x4218
/* 3CAF4 8003BEF4 4481A000 */  mtc1       $at, $f20
.L8003BEF8:
/* 3CAF8 8003BEF8 0C018D6D */  jal        func_800635B4
/* 3CAFC 8003BEFC 00000000 */   nop
/* 3CB00 8003BF00 8622000E */  lh         $v0, 0xe($s1)
/* 3CB04 8003BF04 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 3CB08 8003BF08 00220821 */  addu       $at, $at, $v0
/* 3CB0C 8003BF0C 8022CE14 */  lb         $v0, %lo(D_800ECE14)($at)
/* 3CB10 8003BF10 44820000 */  mtc1       $v0, $f0
/* 3CB14 8003BF14 00000000 */  nop
/* 3CB18 8003BF18 46800020 */  cvt.s.w    $f0, $f0
/* 3CB1C 8003BF1C E7A00010 */  swc1       $f0, 0x10($sp)
/* 3CB20 8003BF20 8622000E */  lh         $v0, 0xe($s1)
/* 3CB24 8003BF24 3C01800F */  lui        $at, %hi(D_800F3843)
/* 3CB28 8003BF28 00220821 */  addu       $at, $at, $v0
/* 3CB2C 8003BF2C 80223843 */  lb         $v0, %lo(D_800F3843)($at)
/* 3CB30 8003BF30 44820000 */  mtc1       $v0, $f0
/* 3CB34 8003BF34 00000000 */  nop
/* 3CB38 8003BF38 46800020 */  cvt.s.w    $f0, $f0
/* 3CB3C 8003BF3C 46000007 */  neg.s      $f0, $f0
/* 3CB40 8003BF40 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3CB44 8003BF44 AFA00014 */  sw         $zero, 0x14($sp)
/* 3CB48 8003BF48 8624000E */  lh         $a0, 0xe($s1)
/* 3CB4C 8003BF4C 0C01340B */  jal        func_8004D02C
/* 3CB50 8003BF50 3C054220 */   lui       $a1, 0x4220
/* 3CB54 8003BF54 00021400 */  sll        $v0, $v0, 0x10
/* 3CB58 8003BF58 10400022 */  beqz       $v0, .L8003BFE4
/* 3CB5C 8003BF5C 00000000 */   nop
/* 3CB60 8003BF60 86220002 */  lh         $v0, 2($s1)
/* 3CB64 8003BF64 1840001F */  blez       $v0, .L8003BFE4
/* 3CB68 8003BF68 00008021 */   addu      $s0, $zero, $zero
/* 3CB6C 8003BF6C 00102C00 */  sll        $a1, $s0, 0x10
.L8003BF70:
/* 3CB70 8003BF70 02202021 */  addu       $a0, $s1, $zero
/* 3CB74 8003BF74 0C00EECC */  jal        func_8003BB30
/* 3CB78 8003BF78 00052C03 */   sra       $a1, $a1, 0x10
/* 3CB7C 8003BF7C 8C450004 */  lw         $a1, 4($v0)
/* 3CB80 8003BF80 8EA60020 */  lw         $a2, 0x20($s5)
/* 3CB84 8003BF84 02602021 */  addu       $a0, $s3, $zero
/* 3CB88 8003BF88 24A5000C */  addiu      $a1, $a1, 0xc
/* 3CB8C 8003BF8C 0C0283A0 */  jal        func_800A0E80
/* 3CB90 8003BF90 24C6000C */   addiu     $a2, $a2, 0xc
/* 3CB94 8003BF94 AFA00024 */  sw         $zero, 0x24($sp)
/* 3CB98 8003BF98 27A40010 */  addiu      $a0, $sp, 0x10
/* 3CB9C 8003BF9C 0C00F633 */  jal        func_8003D8CC
/* 3CBA0 8003BFA0 02602821 */   addu      $a1, $s3, $zero
/* 3CBA4 8003BFA4 4614003E */  c.le.s     $f0, $f20
/* 3CBA8 8003BFA8 00000000 */  nop
/* 3CBAC 8003BFAC 00000000 */  nop
/* 3CBB0 8003BFB0 45020008 */  bc1fl      .L8003BFD4
/* 3CBB4 8003BFB4 26100001 */   addiu     $s0, $s0, 1
/* 3CBB8 8003BFB8 1250000A */  beq        $s2, $s0, .L8003BFE4
/* 3CBBC 8003BFBC 02202021 */   addu      $a0, $s1, $zero
/* 3CBC0 8003BFC0 02009021 */  addu       $s2, $s0, $zero
/* 3CBC4 8003BFC4 0C00EFA1 */  jal        func_8003BE84
/* 3CBC8 8003BFC8 02402821 */   addu      $a1, $s2, $zero
/* 3CBCC 8003BFCC 0800EFF9 */  j          .L8003BFE4
/* 3CBD0 8003BFD0 00000000 */   nop
.L8003BFD4:
/* 3CBD4 8003BFD4 86220002 */  lh         $v0, 2($s1)
/* 3CBD8 8003BFD8 0202102A */  slt        $v0, $s0, $v0
/* 3CBDC 8003BFDC 1440FFE4 */  bnez       $v0, .L8003BF70
/* 3CBE0 8003BFE0 00102C00 */   sll       $a1, $s0, 0x10
.L8003BFE4:
/* 3CBE4 8003BFE4 8622000E */  lh         $v0, 0xe($s1)
/* 3CBE8 8003BFE8 00021040 */  sll        $v0, $v0, 1
/* 3CBEC 8003BFEC 3C03800F */  lui        $v1, %hi(D_800EC6EA)
/* 3CBF0 8003BFF0 00621821 */  addu       $v1, $v1, $v0
/* 3CBF4 8003BFF4 9463C6EA */  lhu        $v1, %lo(D_800EC6EA)($v1)
/* 3CBF8 8003BFF8 00031BC2 */  srl        $v1, $v1, 0xf
/* 3CBFC 8003BFFC 00121027 */  nor        $v0, $zero, $s2
/* 3CC00 8003C000 000217C2 */  srl        $v0, $v0, 0x1f
/* 3CC04 8003C004 00621824 */  and        $v1, $v1, $v0
/* 3CC08 8003C008 10600007 */  beqz       $v1, .L8003C028
/* 3CC0C 8003C00C 02801021 */   addu      $v0, $s4, $zero
/* 3CC10 8003C010 2412FFFC */  addiu      $s2, $zero, -4
/* 3CC14 8003C014 02202021 */  addu       $a0, $s1, $zero
/* 3CC18 8003C018 0C00EFA1 */  jal        func_8003BE84
/* 3CC1C 8003C01C 2405FFFC */   addiu     $a1, $zero, -4
/* 3CC20 8003C020 0000A021 */  addu       $s4, $zero, $zero
/* 3CC24 8003C024 02801021 */  addu       $v0, $s4, $zero
.L8003C028:
/* 3CC28 8003C028 1440FFB3 */  bnez       $v0, .L8003BEF8
/* 3CC2C 8003C02C 00000000 */   nop
/* 3CC30 8003C030 0C017764 */  jal        func_8005DD90
/* 3CC34 8003C034 00002021 */   addu      $a0, $zero, $zero
/* 3CC38 8003C038 8FBF0050 */  lw         $ra, 0x50($sp)
/* 3CC3C 8003C03C 8FB5004C */  lw         $s5, 0x4c($sp)
/* 3CC40 8003C040 8FB40048 */  lw         $s4, 0x48($sp)
/* 3CC44 8003C044 8FB30044 */  lw         $s3, 0x44($sp)
/* 3CC48 8003C048 8FB20040 */  lw         $s2, 0x40($sp)
/* 3CC4C 8003C04C 8FB1003C */  lw         $s1, 0x3c($sp)
/* 3CC50 8003C050 8FB00038 */  lw         $s0, 0x38($sp)
/* 3CC54 8003C054 D7B40058 */  ldc1       $f20, 0x58($sp)
/* 3CC58 8003C058 03E00008 */  jr         $ra
/* 3CC5C 8003C05C 27BD0060 */   addiu     $sp, $sp, 0x60
