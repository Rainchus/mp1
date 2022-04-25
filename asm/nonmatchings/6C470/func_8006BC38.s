	.set noat
	.set noreorder

glabel func_8006BC38
/* 6C838 8006BC38 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 6C83C 8006BC3C AFBF0030 */  sw         $ra, 0x30($sp)
/* 6C840 8006BC40 AFB7002C */  sw         $s7, 0x2c($sp)
/* 6C844 8006BC44 AFB60028 */  sw         $s6, 0x28($sp)
/* 6C848 8006BC48 AFB50024 */  sw         $s5, 0x24($sp)
/* 6C84C 8006BC4C AFB40020 */  sw         $s4, 0x20($sp)
/* 6C850 8006BC50 AFB3001C */  sw         $s3, 0x1c($sp)
/* 6C854 8006BC54 AFB20018 */  sw         $s2, 0x18($sp)
/* 6C858 8006BC58 AFB10014 */  sw         $s1, 0x14($sp)
/* 6C85C 8006BC5C AFB00010 */  sw         $s0, 0x10($sp)
/* 6C860 8006BC60 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 6C864 8006BC64 0080B021 */  addu       $s6, $a0, $zero
/* 6C868 8006BC68 8ED30050 */  lw         $s3, 0x50($s6)
/* 6C86C 8006BC6C 3C10800E */  lui        $s0, %hi(D_800E4130)
/* 6C870 8006BC70 26104130 */  addiu      $s0, $s0, %lo(D_800E4130)
/* 6C874 8006BC74 86020000 */  lh         $v0, ($s0)
/* 6C878 8006BC78 04410007 */  bgez       $v0, .L8006BC98
/* 6C87C 8006BC7C 00000000 */   nop
/* 6C880 8006BC80 96650282 */  lhu        $a1, 0x282($s3)
/* 6C884 8006BC84 0C005D4A */  jal        func_80017528
/* 6C888 8006BC88 24040035 */   addiu     $a0, $zero, 0x35
/* 6C88C 8006BC8C 00402821 */  addu       $a1, $v0, $zero
/* 6C890 8006BC90 0801AF2A */  j          .L8006BCA8
/* 6C894 8006BC94 A6050000 */   sh        $a1, ($s0)
.L8006BC98:
/* 6C898 8006BC98 3C04800E */  lui        $a0, %hi(D_800E4130)
/* 6C89C 8006BC9C 0C008FF2 */  jal        func_80023FC8
/* 6C8A0 8006BCA0 84844130 */   lh        $a0, %lo(D_800E4130)($a0)
/* 6C8A4 8006BCA4 00402821 */  addu       $a1, $v0, $zero
.L8006BCA8:
/* 6C8A8 8006BCA8 8EC20040 */  lw         $v0, 0x40($s6)
/* 6C8AC 8006BCAC A4450000 */  sh         $a1, ($v0)
/* 6C8B0 8006BCB0 00052400 */  sll        $a0, $a1, 0x10
/* 6C8B4 8006BCB4 00042403 */  sra        $a0, $a0, 0x10
/* 6C8B8 8006BCB8 24050001 */  addiu      $a1, $zero, 1
/* 6C8BC 8006BCBC 0C0097AD */  jal        func_80025EB4
/* 6C8C0 8006BCC0 24060001 */   addiu     $a2, $zero, 1
/* 6C8C4 8006BCC4 3C02800E */  lui        $v0, %hi(D_800E4132)
/* 6C8C8 8006BCC8 84424132 */  lh         $v0, %lo(D_800E4132)($v0)
/* 6C8CC 8006BCCC 0441000B */  bgez       $v0, .L8006BCFC
/* 6C8D0 8006BCD0 00000000 */   nop
/* 6C8D4 8006BCD4 96620288 */  lhu        $v0, 0x288($s3)
/* 6C8D8 8006BCD8 14400002 */  bnez       $v0, .L8006BCE4
/* 6C8DC 8006BCDC 24040020 */   addiu     $a0, $zero, 0x20
/* 6C8E0 8006BCE0 24040010 */  addiu      $a0, $zero, 0x10
.L8006BCE4:
/* 6C8E4 8006BCE4 0C005D3D */  jal        func_800174F4
/* 6C8E8 8006BCE8 96650284 */   lhu       $a1, 0x284($s3)
/* 6C8EC 8006BCEC 00402821 */  addu       $a1, $v0, $zero
/* 6C8F0 8006BCF0 3C01800E */  lui        $at, %hi(D_800E4132)
/* 6C8F4 8006BCF4 0801AF43 */  j          .L8006BD0C
/* 6C8F8 8006BCF8 A4254132 */   sh        $a1, %lo(D_800E4132)($at)
.L8006BCFC:
/* 6C8FC 8006BCFC 3C04800E */  lui        $a0, %hi(D_800E4132)
/* 6C900 8006BD00 0C008FF2 */  jal        func_80023FC8
/* 6C904 8006BD04 84844132 */   lh        $a0, %lo(D_800E4132)($a0)
/* 6C908 8006BD08 00402821 */  addu       $a1, $v0, $zero
.L8006BD0C:
/* 6C90C 8006BD0C 8EC20040 */  lw         $v0, 0x40($s6)
/* 6C910 8006BD10 A4450002 */  sh         $a1, 2($v0)
/* 6C914 8006BD14 3C11800E */  lui        $s1, %hi(D_800E4134)
/* 6C918 8006BD18 26314134 */  addiu      $s1, $s1, %lo(D_800E4134)
/* 6C91C 8006BD1C 86220000 */  lh         $v0, ($s1)
/* 6C920 8006BD20 04410009 */  bgez       $v0, .L8006BD48
/* 6C924 8006BD24 00000000 */   nop
/* 6C928 8006BD28 96650286 */  lhu        $a1, 0x286($s3)
/* 6C92C 8006BD2C 2404002A */  addiu      $a0, $zero, 0x2a
/* 6C930 8006BD30 34A50004 */  ori        $a1, $a1, 4
/* 6C934 8006BD34 0C005DFD */  jal        func_800177F4
/* 6C938 8006BD38 24060008 */   addiu     $a2, $zero, 8
/* 6C93C 8006BD3C 00408021 */  addu       $s0, $v0, $zero
/* 6C940 8006BD40 0801AF57 */  j          .L8006BD5C
/* 6C944 8006BD44 A6300000 */   sh        $s0, ($s1)
.L8006BD48:
/* 6C948 8006BD48 3C04800E */  lui        $a0, %hi(D_800E4134)
/* 6C94C 8006BD4C 84844134 */  lh         $a0, %lo(D_800E4134)($a0)
/* 6C950 8006BD50 0C007874 */  jal        func_8001E1D0
/* 6C954 8006BD54 24050008 */   addiu     $a1, $zero, 8
/* 6C958 8006BD58 00408021 */  addu       $s0, $v0, $zero
.L8006BD5C:
/* 6C95C 8006BD5C A6700258 */  sh         $s0, 0x258($s3)
/* 6C960 8006BD60 00108400 */  sll        $s0, $s0, 0x10
/* 6C964 8006BD64 00108403 */  sra        $s0, $s0, 0x10
/* 6C968 8006BD68 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 6C96C 8006BD6C 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 6C970 8006BD70 001010C0 */  sll        $v0, $s0, 3
/* 6C974 8006BD74 00501021 */  addu       $v0, $v0, $s0
/* 6C978 8006BD78 00021080 */  sll        $v0, $v0, 2
/* 6C97C 8006BD7C 00431021 */  addu       $v0, $v0, $v1
/* 6C980 8006BD80 94450000 */  lhu        $a1, ($v0)
/* 6C984 8006BD84 8EC20040 */  lw         $v0, 0x40($s6)
/* 6C988 8006BD88 A4450004 */  sh         $a1, 4($v0)
/* 6C98C 8006BD8C 00058C00 */  sll        $s1, $a1, 0x10
/* 6C990 8006BD90 00118C03 */  sra        $s1, $s1, 0x10
/* 6C994 8006BD94 02202021 */  addu       $a0, $s1, $zero
/* 6C998 8006BD98 24050004 */  addiu      $a1, $zero, 4
/* 6C99C 8006BD9C 0C00963B */  jal        func_800258EC
/* 6C9A0 8006BDA0 24060004 */   addiu     $a2, $zero, 4
/* 6C9A4 8006BDA4 02002021 */  addu       $a0, $s0, $zero
/* 6C9A8 8006BDA8 0C0078BE */  jal        func_8001E2F8
/* 6C9AC 8006BDAC 240500C0 */   addiu     $a1, $zero, 0xc0
/* 6C9B0 8006BDB0 02002021 */  addu       $a0, $s0, $zero
/* 6C9B4 8006BDB4 240500FF */  addiu      $a1, $zero, 0xff
/* 6C9B8 8006BDB8 240600FF */  addiu      $a2, $zero, 0xff
/* 6C9BC 8006BDBC 0C0078D8 */  jal        func_8001E360
/* 6C9C0 8006BDC0 240700BE */   addiu     $a3, $zero, 0xbe
/* 6C9C4 8006BDC4 02202021 */  addu       $a0, $s1, $zero
/* 6C9C8 8006BDC8 3C057000 */  lui        $a1, 0x7000
/* 6C9CC 8006BDCC 0C00964C */  jal        func_80025930
/* 6C9D0 8006BDD0 3C067000 */   lui       $a2, 0x7000
/* 6C9D4 8006BDD4 02002021 */  addu       $a0, $s0, $zero
/* 6C9D8 8006BDD8 24050004 */  addiu      $a1, $zero, 4
/* 6C9DC 8006BDDC 0C00789A */  jal        func_8001E268
/* 6C9E0 8006BDE0 00003021 */   addu      $a2, $zero, $zero
/* 6C9E4 8006BDE4 9662028E */  lhu        $v0, 0x28e($s3)
/* 6C9E8 8006BDE8 44820000 */  mtc1       $v0, $f0
/* 6C9EC 8006BDEC 00000000 */  nop
/* 6C9F0 8006BDF0 46800020 */  cvt.s.w    $f0, $f0
/* 6C9F4 8006BDF4 3C014040 */  lui        $at, 0x4040
/* 6C9F8 8006BDF8 44811000 */  mtc1       $at, $f2
/* 6C9FC 8006BDFC 00000000 */  nop
/* 6CA00 8006BE00 46020002 */  mul.s      $f0, $f0, $f2
/* 6CA04 8006BE04 44050000 */  mfc1       $a1, $f0
/* 6CA08 8006BE08 44060000 */  mfc1       $a2, $f0
/* 6CA0C 8006BE0C 44070000 */  mfc1       $a3, $f0
/* 6CA10 8006BE10 00000000 */  nop
/* 6CA14 8006BE14 0C00960C */  jal        func_80025830
/* 6CA18 8006BE18 02202021 */   addu      $a0, $s1, $zero
/* 6CA1C 8006BE1C 24150003 */  addiu      $s5, $zero, 3
/* 6CA20 8006BE20 2414000D */  addiu      $s4, $zero, 0xd
/* 6CA24 8006BE24 00009021 */  addu       $s2, $zero, $zero
/* 6CA28 8006BE28 3C17800E */  lui        $s7, %hi(D_800E4136)
/* 6CA2C 8006BE2C 26F74136 */  addiu      $s7, $s7, %lo(D_800E4136)
/* 6CA30 8006BE30 3C014000 */  lui        $at, 0x4000
/* 6CA34 8006BE34 4481A000 */  mtc1       $at, $f20
.L8006BE38:
/* 6CA38 8006BE38 86E20000 */  lh         $v0, ($s7)
/* 6CA3C 8006BE3C 04410008 */  bgez       $v0, .L8006BE60
/* 6CA40 8006BE40 00000000 */   nop
/* 6CA44 8006BE44 24040021 */  addiu      $a0, $zero, 0x21
/* 6CA48 8006BE48 96650286 */  lhu        $a1, 0x286($s3)
/* 6CA4C 8006BE4C 0C005DFD */  jal        func_800177F4
/* 6CA50 8006BE50 24060008 */   addiu     $a2, $zero, 8
/* 6CA54 8006BE54 00408021 */  addu       $s0, $v0, $zero
/* 6CA58 8006BE58 0801AF9D */  j          .L8006BE74
/* 6CA5C 8006BE5C A6F00000 */   sh        $s0, ($s7)
.L8006BE60:
/* 6CA60 8006BE60 3C04800E */  lui        $a0, %hi(D_800E4136)
/* 6CA64 8006BE64 84844136 */  lh         $a0, %lo(D_800E4136)($a0)
/* 6CA68 8006BE68 0C007874 */  jal        func_8001E1D0
/* 6CA6C 8006BE6C 24050008 */   addiu     $a1, $zero, 8
/* 6CA70 8006BE70 00408021 */  addu       $s0, $v0, $zero
.L8006BE74:
/* 6CA74 8006BE74 00152400 */  sll        $a0, $s5, 0x10
/* 6CA78 8006BE78 000423C3 */  sra        $a0, $a0, 0xf
/* 6CA7C 8006BE7C 00931021 */  addu       $v0, $a0, $s3
/* 6CA80 8006BE80 A4500254 */  sh         $s0, 0x254($v0)
/* 6CA84 8006BE84 00101C00 */  sll        $v1, $s0, 0x10
/* 6CA88 8006BE88 00031C03 */  sra        $v1, $v1, 0x10
/* 6CA8C 8006BE8C 3C05800F */  lui        $a1, %hi(D_800ECDE0)
/* 6CA90 8006BE90 8CA5CDE0 */  lw         $a1, %lo(D_800ECDE0)($a1)
/* 6CA94 8006BE94 000310C0 */  sll        $v0, $v1, 3
/* 6CA98 8006BE98 00431021 */  addu       $v0, $v0, $v1
/* 6CA9C 8006BE9C 00021080 */  sll        $v0, $v0, 2
/* 6CAA0 8006BEA0 00451021 */  addu       $v0, $v0, $a1
/* 6CAA4 8006BEA4 94450000 */  lhu        $a1, ($v0)
/* 6CAA8 8006BEA8 8EC20040 */  lw         $v0, 0x40($s6)
/* 6CAAC 8006BEAC 00822021 */  addu       $a0, $a0, $v0
/* 6CAB0 8006BEB0 A4850000 */  sh         $a1, ($a0)
/* 6CAB4 8006BEB4 00058400 */  sll        $s0, $a1, 0x10
/* 6CAB8 8006BEB8 00108403 */  sra        $s0, $s0, 0x10
/* 6CABC 8006BEBC 02002021 */  addu       $a0, $s0, $zero
/* 6CAC0 8006BEC0 3C057000 */  lui        $a1, 0x7000
/* 6CAC4 8006BEC4 0C00964C */  jal        func_80025930
/* 6CAC8 8006BEC8 3C067000 */   lui       $a2, 0x7000
/* 6CACC 8006BECC 4405A000 */  mfc1       $a1, $f20
/* 6CAD0 8006BED0 4406A000 */  mfc1       $a2, $f20
/* 6CAD4 8006BED4 4407A000 */  mfc1       $a3, $f20
/* 6CAD8 8006BED8 00000000 */  nop
/* 6CADC 8006BEDC 0C00960C */  jal        func_80025830
/* 6CAE0 8006BEE0 02002021 */   addu      $a0, $s0, $zero
/* 6CAE4 8006BEE4 02002021 */  addu       $a0, $s0, $zero
/* 6CAE8 8006BEE8 24050004 */  addiu      $a1, $zero, 4
/* 6CAEC 8006BEEC 0C00963B */  jal        func_800258EC
/* 6CAF0 8006BEF0 24060004 */   addiu     $a2, $zero, 4
/* 6CAF4 8006BEF4 3C04800E */  lui        $a0, %hi(D_800E4136)
/* 6CAF8 8006BEF8 84844136 */  lh         $a0, %lo(D_800E4136)($a0)
/* 6CAFC 8006BEFC 0C007874 */  jal        func_8001E1D0
/* 6CB00 8006BF00 24050008 */   addiu     $a1, $zero, 8
/* 6CB04 8006BF04 00408021 */  addu       $s0, $v0, $zero
/* 6CB08 8006BF08 00141C00 */  sll        $v1, $s4, 0x10
/* 6CB0C 8006BF0C 00031BC3 */  sra        $v1, $v1, 0xf
/* 6CB10 8006BF10 00731021 */  addu       $v0, $v1, $s3
/* 6CB14 8006BF14 A4500254 */  sh         $s0, 0x254($v0)
/* 6CB18 8006BF18 00108C00 */  sll        $s1, $s0, 0x10
/* 6CB1C 8006BF1C 00118C03 */  sra        $s1, $s1, 0x10
/* 6CB20 8006BF20 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* 6CB24 8006BF24 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* 6CB28 8006BF28 001110C0 */  sll        $v0, $s1, 3
/* 6CB2C 8006BF2C 00511021 */  addu       $v0, $v0, $s1
/* 6CB30 8006BF30 00021080 */  sll        $v0, $v0, 2
/* 6CB34 8006BF34 00441021 */  addu       $v0, $v0, $a0
/* 6CB38 8006BF38 94450000 */  lhu        $a1, ($v0)
/* 6CB3C 8006BF3C 8EC20040 */  lw         $v0, 0x40($s6)
/* 6CB40 8006BF40 00621821 */  addu       $v1, $v1, $v0
/* 6CB44 8006BF44 A4650000 */  sh         $a1, ($v1)
/* 6CB48 8006BF48 00058400 */  sll        $s0, $a1, 0x10
/* 6CB4C 8006BF4C 00108403 */  sra        $s0, $s0, 0x10
/* 6CB50 8006BF50 02002021 */  addu       $a0, $s0, $zero
/* 6CB54 8006BF54 3C057000 */  lui        $a1, 0x7000
/* 6CB58 8006BF58 0C00964C */  jal        func_80025930
/* 6CB5C 8006BF5C 3C067000 */   lui       $a2, 0x7000
/* 6CB60 8006BF60 4405A000 */  mfc1       $a1, $f20
/* 6CB64 8006BF64 4406A000 */  mfc1       $a2, $f20
/* 6CB68 8006BF68 4407A000 */  mfc1       $a3, $f20
/* 6CB6C 8006BF6C 00000000 */  nop
/* 6CB70 8006BF70 0C00960C */  jal        func_80025830
/* 6CB74 8006BF74 02002021 */   addu      $a0, $s0, $zero
/* 6CB78 8006BF78 02002021 */  addu       $a0, $s0, $zero
/* 6CB7C 8006BF7C 24050004 */  addiu      $a1, $zero, 4
/* 6CB80 8006BF80 0C00963B */  jal        func_800258EC
/* 6CB84 8006BF84 24060004 */   addiu     $a2, $zero, 4
/* 6CB88 8006BF88 00122900 */  sll        $a1, $s2, 4
/* 6CB8C 8006BF8C 00B22823 */  subu       $a1, $a1, $s2
/* 6CB90 8006BF90 24A50060 */  addiu      $a1, $a1, 0x60
/* 6CB94 8006BF94 02202021 */  addu       $a0, $s1, $zero
/* 6CB98 8006BF98 0C0078BE */  jal        func_8001E2F8
/* 6CB9C 8006BF9C 30A500FF */   andi      $a1, $a1, 0xff
/* 6CBA0 8006BFA0 26520001 */  addiu      $s2, $s2, 1
/* 6CBA4 8006BFA4 26B50001 */  addiu      $s5, $s5, 1
/* 6CBA8 8006BFA8 2A42000A */  slti       $v0, $s2, 0xa
/* 6CBAC 8006BFAC 1440FFA2 */  bnez       $v0, .L8006BE38
/* 6CBB0 8006BFB0 26940001 */   addiu     $s4, $s4, 1
/* 6CBB4 8006BFB4 3C028007 */  lui        $v0, %hi(func_8006BFF0)
/* 6CBB8 8006BFB8 2442BFF0 */  addiu      $v0, $v0, %lo(func_8006BFF0)
/* 6CBBC 8006BFBC AEC20014 */  sw         $v0, 0x14($s6)
/* 6CBC0 8006BFC0 8FBF0030 */  lw         $ra, 0x30($sp)
/* 6CBC4 8006BFC4 8FB7002C */  lw         $s7, 0x2c($sp)
/* 6CBC8 8006BFC8 8FB60028 */  lw         $s6, 0x28($sp)
/* 6CBCC 8006BFCC 8FB50024 */  lw         $s5, 0x24($sp)
/* 6CBD0 8006BFD0 8FB40020 */  lw         $s4, 0x20($sp)
/* 6CBD4 8006BFD4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 6CBD8 8006BFD8 8FB20018 */  lw         $s2, 0x18($sp)
/* 6CBDC 8006BFDC 8FB10014 */  lw         $s1, 0x14($sp)
/* 6CBE0 8006BFE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 6CBE4 8006BFE4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 6CBE8 8006BFE8 03E00008 */  jr         $ra
/* 6CBEC 8006BFEC 27BD0040 */   addiu     $sp, $sp, 0x40
