	.set noat
	.set noreorder

glabel func_8005BDA0
/* 5C9A0 8005BDA0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 5C9A4 8005BDA4 AFBF0050 */  sw         $ra, 0x50($sp)
/* 5C9A8 8005BDA8 AFB5004C */  sw         $s5, 0x4c($sp)
/* 5C9AC 8005BDAC AFB40048 */  sw         $s4, 0x48($sp)
/* 5C9B0 8005BDB0 AFB30044 */  sw         $s3, 0x44($sp)
/* 5C9B4 8005BDB4 AFB20040 */  sw         $s2, 0x40($sp)
/* 5C9B8 8005BDB8 AFB1003C */  sw         $s1, 0x3c($sp)
/* 5C9BC 8005BDBC AFB00038 */  sw         $s0, 0x38($sp)
/* 5C9C0 8005BDC0 F7B40058 */  sdc1       $f20, 0x58($sp)
/* 5C9C4 8005BDC4 0080A021 */  addu       $s4, $a0, $zero
/* 5C9C8 8005BDC8 00A0A821 */  addu       $s5, $a1, $zero
/* 5C9CC 8005BDCC 0C014AA3 */  jal        func_80052A8C
/* 5C9D0 8005BDD0 00002021 */   addu      $a0, $zero, $zero
/* 5C9D4 8005BDD4 00409821 */  addu       $s3, $v0, $zero
/* 5C9D8 8005BDD8 92620003 */  lbu        $v0, 3($s3)
/* 5C9DC 8005BDDC 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 5C9E0 8005BDE0 00220821 */  addu       $at, $at, $v0
/* 5C9E4 8005BDE4 8022CE14 */  lb         $v0, %lo(D_800ECE14)($at)
/* 5C9E8 8005BDE8 44820000 */  mtc1       $v0, $f0
/* 5C9EC 8005BDEC 00000000 */  nop
/* 5C9F0 8005BDF0 46800020 */  cvt.s.w    $f0, $f0
/* 5C9F4 8005BDF4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 5C9F8 8005BDF8 92620003 */  lbu        $v0, 3($s3)
/* 5C9FC 8005BDFC 3C01800F */  lui        $at, %hi(D_800F3843)
/* 5CA00 8005BE00 00220821 */  addu       $at, $at, $v0
/* 5CA04 8005BE04 80223843 */  lb         $v0, %lo(D_800F3843)($at)
/* 5CA08 8005BE08 44820000 */  mtc1       $v0, $f0
/* 5CA0C 8005BE0C 00000000 */  nop
/* 5CA10 8005BE10 46800020 */  cvt.s.w    $f0, $f0
/* 5CA14 8005BE14 46000007 */  neg.s      $f0, $f0
/* 5CA18 8005BE18 E7A00018 */  swc1       $f0, 0x18($sp)
/* 5CA1C 8005BE1C AFA00014 */  sw         $zero, 0x14($sp)
/* 5CA20 8005BE20 3C02800F */  lui        $v0, %hi(D_800F524A)
/* 5CA24 8005BE24 8042524A */  lb         $v0, %lo(D_800F524A)($v0)
/* 5CA28 8005BE28 1840002C */  blez       $v0, .L8005BEDC
/* 5CA2C 8005BE2C 00008821 */   addu      $s1, $zero, $zero
/* 5CA30 8005BE30 27B20020 */  addiu      $s2, $sp, 0x20
/* 5CA34 8005BE34 3C0141F0 */  lui        $at, 0x41f0
/* 5CA38 8005BE38 4481A000 */  mtc1       $at, $f20
/* 5CA3C 8005BE3C 00118080 */  sll        $s0, $s1, 2
.L8005BE40:
/* 5CA40 8005BE40 3C04800F */  lui        $a0, %hi(D_800F33D8)
/* 5CA44 8005BE44 00902021 */  addu       $a0, $a0, $s0
/* 5CA48 8005BE48 948433D8 */  lhu        $a0, %lo(D_800F33D8)($a0)
/* 5CA4C 8005BE4C 3C05800F */  lui        $a1, %hi(D_800F33DA)
/* 5CA50 8005BE50 00B02821 */  addu       $a1, $a1, $s0
/* 5CA54 8005BE54 0C013081 */  jal        func_8004C204
/* 5CA58 8005BE58 94A533DA */   lhu       $a1, %lo(D_800F33DA)($a1)
/* 5CA5C 8005BE5C 00021400 */  sll        $v0, $v0, 0x10
/* 5CA60 8005BE60 0C01307B */  jal        func_8004C1EC
/* 5CA64 8005BE64 00022403 */   sra       $a0, $v0, 0x10
/* 5CA68 8005BE68 8E660020 */  lw         $a2, 0x20($s3)
/* 5CA6C 8005BE6C 02402021 */  addu       $a0, $s2, $zero
/* 5CA70 8005BE70 24450004 */  addiu      $a1, $v0, 4
/* 5CA74 8005BE74 0C0283A0 */  jal        func_800A0E80
/* 5CA78 8005BE78 24C6000C */   addiu     $a2, $a2, 0xc
/* 5CA7C 8005BE7C AFA00024 */  sw         $zero, 0x24($sp)
/* 5CA80 8005BE80 27A40010 */  addiu      $a0, $sp, 0x10
/* 5CA84 8005BE84 0C00F633 */  jal        func_8003D8CC
/* 5CA88 8005BE88 02402821 */   addu      $a1, $s2, $zero
/* 5CA8C 8005BE8C 4614003E */  c.le.s     $f0, $f20
/* 5CA90 8005BE90 00000000 */  nop
/* 5CA94 8005BE94 00000000 */  nop
/* 5CA98 8005BE98 4500000B */  bc1f       .L8005BEC8
/* 5CA9C 8005BE9C 26310001 */   addiu     $s1, $s1, 1
/* 5CAA0 8005BEA0 3C02800F */  lui        $v0, %hi(D_800F33D8)
/* 5CAA4 8005BEA4 00501021 */  addu       $v0, $v0, $s0
/* 5CAA8 8005BEA8 944233D8 */  lhu        $v0, %lo(D_800F33D8)($v0)
/* 5CAAC 8005BEAC A6820000 */  sh         $v0, ($s4)
/* 5CAB0 8005BEB0 3C02800F */  lui        $v0, %hi(D_800F33DA)
/* 5CAB4 8005BEB4 00501021 */  addu       $v0, $v0, $s0
/* 5CAB8 8005BEB8 944233DA */  lhu        $v0, %lo(D_800F33DA)($v0)
/* 5CABC 8005BEBC A6A20000 */  sh         $v0, ($s5)
/* 5CAC0 8005BEC0 08016FB8 */  j          .L8005BEE0
/* 5CAC4 8005BEC4 24020001 */   addiu     $v0, $zero, 1
.L8005BEC8:
/* 5CAC8 8005BEC8 3C02800F */  lui        $v0, %hi(D_800F524A)
/* 5CACC 8005BECC 8042524A */  lb         $v0, %lo(D_800F524A)($v0)
/* 5CAD0 8005BED0 0222102A */  slt        $v0, $s1, $v0
/* 5CAD4 8005BED4 1440FFDA */  bnez       $v0, .L8005BE40
/* 5CAD8 8005BED8 00118080 */   sll       $s0, $s1, 2
.L8005BEDC:
/* 5CADC 8005BEDC 00001021 */  addu       $v0, $zero, $zero
.L8005BEE0:
/* 5CAE0 8005BEE0 8FBF0050 */  lw         $ra, 0x50($sp)
/* 5CAE4 8005BEE4 8FB5004C */  lw         $s5, 0x4c($sp)
/* 5CAE8 8005BEE8 8FB40048 */  lw         $s4, 0x48($sp)
/* 5CAEC 8005BEEC 8FB30044 */  lw         $s3, 0x44($sp)
/* 5CAF0 8005BEF0 8FB20040 */  lw         $s2, 0x40($sp)
/* 5CAF4 8005BEF4 8FB1003C */  lw         $s1, 0x3c($sp)
/* 5CAF8 8005BEF8 8FB00038 */  lw         $s0, 0x38($sp)
/* 5CAFC 8005BEFC D7B40058 */  ldc1       $f20, 0x58($sp)
/* 5CB00 8005BF00 03E00008 */  jr         $ra
/* 5CB04 8005BF04 27BD0060 */   addiu     $sp, $sp, 0x60
