	.set noat
	.set noreorder

glabel func_8007BDF0
/* 7C9F0 8007BDF0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7C9F4 8007BDF4 AFBF0030 */  sw         $ra, 0x30($sp)
/* 7C9F8 8007BDF8 AFBE002C */  sw         $fp, 0x2c($sp)
/* 7C9FC 8007BDFC AFB20028 */  sw         $s2, 0x28($sp)
/* 7CA00 8007BE00 AFB10024 */  sw         $s1, 0x24($sp)
/* 7CA04 8007BE04 AFB00020 */  sw         $s0, 0x20($sp)
/* 7CA08 8007BE08 03A0F021 */  addu       $fp, $sp, $zero
/* 7CA0C 8007BE0C AFC40038 */  sw         $a0, 0x38($fp)
/* 7CA10 8007BE10 AFC5003C */  sw         $a1, 0x3c($fp)
/* 7CA14 8007BE14 AFC60040 */  sw         $a2, 0x40($fp)
/* 7CA18 8007BE18 AFC70044 */  sw         $a3, 0x44($fp)
/* 7CA1C 8007BE1C 8FD00048 */  lw         $s0, 0x48($fp)
/* 7CA20 8007BE20 8FD1004C */  lw         $s1, 0x4c($fp)
/* 7CA24 8007BE24 8FD20050 */  lw         $s2, 0x50($fp)
/* 7CA28 8007BE28 A7D00010 */  sh         $s0, 0x10($fp)
/* 7CA2C 8007BE2C A3D10012 */  sb         $s1, 0x12($fp)
/* 7CA30 8007BE30 A3D20013 */  sb         $s2, 0x13($fp)
/* 7CA34 8007BE34 8FC2003C */  lw         $v0, 0x3c($fp)
/* 7CA38 8007BE38 8C430008 */  lw         $v1, 8($v0)
/* 7CA3C 8007BE3C 10600048 */  beqz       $v1, .L8007BF60
/* 7CA40 8007BE40 00000000 */   nop
/* 7CA44 8007BE44 0C023D9B */  jal        func_8008F66C
/* 7CA48 8007BE48 00000000 */   nop
/* 7CA4C 8007BE4C AFC20014 */  sw         $v0, 0x14($fp)
/* 7CA50 8007BE50 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CA54 8007BE54 14400003 */  bnez       $v0, .L8007BE64
/* 7CA58 8007BE58 00000000 */   nop
/* 7CA5C 8007BE5C 0801EFD8 */  j          .L8007BF60
/* 7CA60 8007BE60 00000000 */   nop
.L8007BE64:
/* 7CA64 8007BE64 83C20013 */  lb         $v0, 0x13($fp)
/* 7CA68 8007BE68 04410004 */  bgez       $v0, .L8007BE7C
/* 7CA6C 8007BE6C 00000000 */   nop
/* 7CA70 8007BE70 93C20013 */  lbu        $v0, 0x13($fp)
/* 7CA74 8007BE74 00021823 */  negu       $v1, $v0
/* 7CA78 8007BE78 A3C30013 */  sb         $v1, 0x13($fp)
.L8007BE7C:
/* 7CA7C 8007BE7C 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CA80 8007BE80 8FC30038 */  lw         $v1, 0x38($fp)
/* 7CA84 8007BE84 8FC4003C */  lw         $a0, 0x3c($fp)
/* 7CA88 8007BE88 8C850008 */  lw         $a1, 8($a0)
/* 7CA8C 8007BE8C 8C63001C */  lw         $v1, 0x1c($v1)
/* 7CA90 8007BE90 8CA400D8 */  lw         $a0, 0xd8($a1)
/* 7CA94 8007BE94 00641821 */  addu       $v1, $v1, $a0
/* 7CA98 8007BE98 AC430004 */  sw         $v1, 4($v0)
/* 7CA9C 8007BE9C 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CAA0 8007BEA0 AC400000 */  sw         $zero, ($v0)
/* 7CAA4 8007BEA4 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CAA8 8007BEA8 2403000D */  addiu      $v1, $zero, 0xd
/* 7CAAC 8007BEAC A4430008 */  sh         $v1, 8($v0)
/* 7CAB0 8007BEB0 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CAB4 8007BEB4 8FC3003C */  lw         $v1, 0x3c($fp)
/* 7CAB8 8007BEB8 9464001A */  lhu        $a0, 0x1a($v1)
/* 7CABC 8007BEBC A444000A */  sh         $a0, 0xa($v0)
/* 7CAC0 8007BEC0 3C02800F */  lui        $v0, %hi(D_800ECB2C)
/* 7CAC4 8007BEC4 9042CB2C */  lbu        $v0, %lo(D_800ECB2C)($v0)
/* 7CAC8 8007BEC8 30430001 */  andi       $v1, $v0, 1
/* 7CACC 8007BECC 306200FF */  andi       $v0, $v1, 0xff
/* 7CAD0 8007BED0 10400005 */  beqz       $v0, .L8007BEE8
/* 7CAD4 8007BED4 00000000 */   nop
/* 7CAD8 8007BED8 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CADC 8007BEDC 24030040 */  addiu      $v1, $zero, 0x40
/* 7CAE0 8007BEE0 0801EFBD */  j          .L8007BEF4
/* 7CAE4 8007BEE4 A0430012 */   sb        $v1, 0x12($v0)
.L8007BEE8:
/* 7CAE8 8007BEE8 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CAEC 8007BEEC 93C30012 */  lbu        $v1, 0x12($fp)
/* 7CAF0 8007BEF0 A0430012 */  sb         $v1, 0x12($v0)
.L8007BEF4:
/* 7CAF4 8007BEF4 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CAF8 8007BEF8 97C30010 */  lhu        $v1, 0x10($fp)
/* 7CAFC 8007BEFC A4430010 */  sh         $v1, 0x10($v0)
/* 7CB00 8007BF00 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CB04 8007BF04 93C30013 */  lbu        $v1, 0x13($fp)
/* 7CB08 8007BF08 A0430013 */  sb         $v1, 0x13($v0)
/* 7CB0C 8007BF0C 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CB10 8007BF10 C7C00044 */  lwc1       $f0, 0x44($fp)
/* 7CB14 8007BF14 E440000C */  swc1       $f0, 0xc($v0)
/* 7CB18 8007BF18 8FC40038 */  lw         $a0, 0x38($fp)
/* 7CB1C 8007BF1C 0C023DE3 */  jal        func_8008F78C
/* 7CB20 8007BF20 8FC50054 */   lw        $a1, 0x54($fp)
/* 7CB24 8007BF24 8FC30014 */  lw         $v1, 0x14($fp)
/* 7CB28 8007BF28 AC620014 */  sw         $v0, 0x14($v1)
/* 7CB2C 8007BF2C 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CB30 8007BF30 8FC30040 */  lw         $v1, 0x40($fp)
/* 7CB34 8007BF34 AC430018 */  sw         $v1, 0x18($v0)
/* 7CB38 8007BF38 8FC2003C */  lw         $v0, 0x3c($fp)
/* 7CB3C 8007BF3C 8C430008 */  lw         $v1, 8($v0)
/* 7CB40 8007BF40 8C62000C */  lw         $v0, 0xc($v1)
/* 7CB44 8007BF44 AFC20018 */  sw         $v0, 0x18($fp)
/* 7CB48 8007BF48 8FC30018 */  lw         $v1, 0x18($fp)
/* 7CB4C 8007BF4C 8C620008 */  lw         $v0, 8($v1)
/* 7CB50 8007BF50 8FC40018 */  lw         $a0, 0x18($fp)
/* 7CB54 8007BF54 24050003 */  addiu      $a1, $zero, 3
/* 7CB58 8007BF58 0040F809 */  jalr       $v0
/* 7CB5C 8007BF5C 8FC60014 */   lw        $a2, 0x14($fp)
.L8007BF60:
/* 7CB60 8007BF60 03C0E821 */  addu       $sp, $fp, $zero
/* 7CB64 8007BF64 8FBF0030 */  lw         $ra, 0x30($sp)
/* 7CB68 8007BF68 8FBE002C */  lw         $fp, 0x2c($sp)
/* 7CB6C 8007BF6C 8FB20028 */  lw         $s2, 0x28($sp)
/* 7CB70 8007BF70 8FB10024 */  lw         $s1, 0x24($sp)
/* 7CB74 8007BF74 8FB00020 */  lw         $s0, 0x20($sp)
/* 7CB78 8007BF78 03E00008 */  jr         $ra
/* 7CB7C 8007BF7C 27BD0038 */   addiu     $sp, $sp, 0x38
