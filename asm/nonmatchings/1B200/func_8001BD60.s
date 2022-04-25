	.set noat
	.set noreorder

glabel func_8001BD60
/* 1C960 8001BD60 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1C964 8001BD64 AFBF0044 */  sw         $ra, 0x44($sp)
/* 1C968 8001BD68 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1C96C 8001BD6C AFB7003C */  sw         $s7, 0x3c($sp)
/* 1C970 8001BD70 AFB60038 */  sw         $s6, 0x38($sp)
/* 1C974 8001BD74 AFB50034 */  sw         $s5, 0x34($sp)
/* 1C978 8001BD78 AFB40030 */  sw         $s4, 0x30($sp)
/* 1C97C 8001BD7C AFB3002C */  sw         $s3, 0x2c($sp)
/* 1C980 8001BD80 AFB20028 */  sw         $s2, 0x28($sp)
/* 1C984 8001BD84 AFB10024 */  sw         $s1, 0x24($sp)
/* 1C988 8001BD88 AFB00020 */  sw         $s0, 0x20($sp)
/* 1C98C 8001BD8C 00809021 */  addu       $s2, $a0, $zero
/* 1C990 8001BD90 8E420054 */  lw         $v0, 0x54($s2)
/* 1C994 8001BD94 90540008 */  lbu        $s4, 8($v0)
/* 1C998 8001BD98 00141A00 */  sll        $v1, $s4, 8
/* 1C99C 8001BD9C 90500009 */  lbu        $s0, 9($v0)
/* 1C9A0 8001BDA0 02038021 */  addu       $s0, $s0, $v1
/* 1C9A4 8001BDA4 0200A021 */  addu       $s4, $s0, $zero
/* 1C9A8 8001BDA8 00108400 */  sll        $s0, $s0, 0x10
/* 1C9AC 8001BDAC 00108403 */  sra        $s0, $s0, 0x10
/* 1C9B0 8001BDB0 3C05800F */  lui        $a1, %hi(D_800EE32E)
/* 1C9B4 8001BDB4 84A5E32E */  lh         $a1, %lo(D_800EE32E)($a1)
/* 1C9B8 8001BDB8 0C008DA1 */  jal        func_80023684
/* 1C9BC 8001BDBC 00102100 */   sll       $a0, $s0, 4
/* 1C9C0 8001BDC0 AE4200A4 */  sw         $v0, 0xa4($s2)
/* 1C9C4 8001BDC4 0C008D9A */  jal        func_80023668
/* 1C9C8 8001BDC8 00102040 */   sll       $a0, $s0, 1
/* 1C9CC 8001BDCC AFA20014 */  sw         $v0, 0x14($sp)
/* 1C9D0 8001BDD0 8E420054 */  lw         $v0, 0x54($s2)
/* 1C9D4 8001BDD4 2451000A */  addiu      $s1, $v0, 0xa
/* 1C9D8 8001BDD8 A654006C */  sh         $s4, 0x6c($s2)
/* 1C9DC 8001BDDC 1A000050 */  blez       $s0, .L8001BF20
/* 1C9E0 8001BDE0 00009821 */   addu      $s3, $zero, $zero
/* 1C9E4 8001BDE4 241E002E */  addiu      $fp, $zero, 0x2e
/* 1C9E8 8001BDE8 24170002 */  addiu      $s7, $zero, 2
/* 1C9EC 8001BDEC 24160001 */  addiu      $s6, $zero, 1
/* 1C9F0 8001BDF0 2415FFFF */  addiu      $s5, $zero, -1
/* 1C9F4 8001BDF4 00141400 */  sll        $v0, $s4, 0x10
/* 1C9F8 8001BDF8 00021403 */  sra        $v0, $v0, 0x10
/* 1C9FC 8001BDFC AFA2001C */  sw         $v0, 0x1c($sp)
/* 1CA00 8001BE00 00131400 */  sll        $v0, $s3, 0x10
.L8001BE04:
/* 1CA04 8001BE04 00021303 */  sra        $v0, $v0, 0xc
/* 1CA08 8001BE08 8E4300A4 */  lw         $v1, 0xa4($s2)
/* 1CA0C 8001BE0C 00438021 */  addu       $s0, $v0, $v1
/* 1CA10 8001BE10 92240002 */  lbu        $a0, 2($s1)
/* 1CA14 8001BE14 A2040000 */  sb         $a0, ($s0)
/* 1CA18 8001BE18 92220003 */  lbu        $v0, 3($s1)
/* 1CA1C 8001BE1C 00021200 */  sll        $v0, $v0, 8
/* 1CA20 8001BE20 92230004 */  lbu        $v1, 4($s1)
/* 1CA24 8001BE24 00431021 */  addu       $v0, $v0, $v1
/* 1CA28 8001BE28 00021080 */  sll        $v0, $v0, 2
/* 1CA2C 8001BE2C 2442000A */  addiu      $v0, $v0, 0xa
/* 1CA30 8001BE30 8E430050 */  lw         $v1, 0x50($s2)
/* 1CA34 8001BE34 00431821 */  addu       $v1, $v0, $v1
/* 1CA38 8001BE38 00042600 */  sll        $a0, $a0, 0x18
/* 1CA3C 8001BE3C 00042603 */  sra        $a0, $a0, 0x18
/* 1CA40 8001BE40 2402002B */  addiu      $v0, $zero, 0x2b
/* 1CA44 8001BE44 5482000A */  bnel       $a0, $v0, .L8001BE70
/* 1CA48 8001BE48 A2000008 */   sb        $zero, 8($s0)
/* 1CA4C 8001BE4C 90620000 */  lbu        $v0, ($v1)
/* 1CA50 8001BE50 A2020005 */  sb         $v0, 5($s0)
/* 1CA54 8001BE54 90620001 */  lbu        $v0, 1($v1)
/* 1CA58 8001BE58 A2020006 */  sb         $v0, 6($s0)
/* 1CA5C 8001BE5C 90620002 */  lbu        $v0, 2($v1)
/* 1CA60 8001BE60 A2020007 */  sb         $v0, 7($s0)
/* 1CA64 8001BE64 90620003 */  lbu        $v0, 3($v1)
/* 1CA68 8001BE68 08006F9F */  j          .L8001BE7C
/* 1CA6C 8001BE6C A2020008 */   sb        $v0, 8($s0)
.L8001BE70:
/* 1CA70 8001BE70 A2000007 */  sb         $zero, 7($s0)
/* 1CA74 8001BE74 A2000006 */  sb         $zero, 6($s0)
/* 1CA78 8001BE78 A2000005 */  sb         $zero, 5($s0)
.L8001BE7C:
/* 1CA7C 8001BE7C 92220005 */  lbu        $v0, 5($s1)
/* 1CA80 8001BE80 2406002D */  addiu      $a2, $zero, 0x2d
/* 1CA84 8001BE84 50460004 */  beql       $v0, $a2, .L8001BE98
/* 1CA88 8001BE88 A2000001 */   sb        $zero, 1($s0)
/* 1CA8C 8001BE8C 505E0002 */  beql       $v0, $fp, .L8001BE98
/* 1CA90 8001BE90 A2170001 */   sb        $s7, 1($s0)
/* 1CA94 8001BE94 A2160001 */  sb         $s6, 1($s0)
.L8001BE98:
/* 1CA98 8001BE98 92220006 */  lbu        $v0, 6($s1)
/* 1CA9C 8001BE9C 2406002D */  addiu      $a2, $zero, 0x2d
/* 1CAA0 8001BEA0 50460004 */  beql       $v0, $a2, .L8001BEB4
/* 1CAA4 8001BEA4 A2000002 */   sb        $zero, 2($s0)
/* 1CAA8 8001BEA8 505E0002 */  beql       $v0, $fp, .L8001BEB4
/* 1CAAC 8001BEAC A2170002 */   sb        $s7, 2($s0)
/* 1CAB0 8001BEB0 A2160002 */  sb         $s6, 2($s0)
.L8001BEB4:
/* 1CAB4 8001BEB4 9222000A */  lbu        $v0, 0xa($s1)
/* 1CAB8 8001BEB8 00021200 */  sll        $v0, $v0, 8
/* 1CABC 8001BEBC 9225000B */  lbu        $a1, 0xb($s1)
/* 1CAC0 8001BEC0 00A22821 */  addu       $a1, $a1, $v0
/* 1CAC4 8001BEC4 00052C00 */  sll        $a1, $a1, 0x10
/* 1CAC8 8001BEC8 02402021 */  addu       $a0, $s2, $zero
/* 1CACC 8001BECC 0C00E04F */  jal        func_8003813C
/* 1CAD0 8001BED0 00052C03 */   sra       $a1, $a1, 0x10
/* 1CAD4 8001BED4 AE02000C */  sw         $v0, 0xc($s0)
/* 1CAD8 8001BED8 A2150003 */  sb         $s5, 3($s0)
/* 1CADC 8001BEDC A2150004 */  sb         $s5, 4($s0)
/* 1CAE0 8001BEE0 240200FF */  addiu      $v0, $zero, 0xff
/* 1CAE4 8001BEE4 A2020009 */  sb         $v0, 9($s0)
/* 1CAE8 8001BEE8 92220000 */  lbu        $v0, ($s1)
/* 1CAEC 8001BEEC 00021200 */  sll        $v0, $v0, 8
/* 1CAF0 8001BEF0 92230001 */  lbu        $v1, 1($s1)
/* 1CAF4 8001BEF4 00431021 */  addu       $v0, $v0, $v1
/* 1CAF8 8001BEF8 24420002 */  addiu      $v0, $v0, 2
/* 1CAFC 8001BEFC 02228821 */  addu       $s1, $s1, $v0
/* 1CB00 8001BF00 26620001 */  addiu      $v0, $s3, 1
/* 1CB04 8001BF04 00409821 */  addu       $s3, $v0, $zero
/* 1CB08 8001BF08 00021400 */  sll        $v0, $v0, 0x10
/* 1CB0C 8001BF0C 00021403 */  sra        $v0, $v0, 0x10
/* 1CB10 8001BF10 8FA6001C */  lw         $a2, 0x1c($sp)
/* 1CB14 8001BF14 0046102A */  slt        $v0, $v0, $a2
/* 1CB18 8001BF18 1440FFBA */  bnez       $v0, .L8001BE04
/* 1CB1C 8001BF1C 00131400 */   sll       $v0, $s3, 0x10
.L8001BF20:
/* 1CB20 8001BF20 8FA40014 */  lw         $a0, 0x14($sp)
/* 1CB24 8001BF24 0C008DCA */  jal        func_80023728
/* 1CB28 8001BF28 00000000 */   nop
/* 1CB2C 8001BF2C 00141400 */  sll        $v0, $s4, 0x10
/* 1CB30 8001BF30 00021403 */  sra        $v0, $v0, 0x10
/* 1CB34 8001BF34 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1CB38 8001BF38 8FBE0040 */  lw         $fp, 0x40($sp)
/* 1CB3C 8001BF3C 8FB7003C */  lw         $s7, 0x3c($sp)
/* 1CB40 8001BF40 8FB60038 */  lw         $s6, 0x38($sp)
/* 1CB44 8001BF44 8FB50034 */  lw         $s5, 0x34($sp)
/* 1CB48 8001BF48 8FB40030 */  lw         $s4, 0x30($sp)
/* 1CB4C 8001BF4C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1CB50 8001BF50 8FB20028 */  lw         $s2, 0x28($sp)
/* 1CB54 8001BF54 8FB10024 */  lw         $s1, 0x24($sp)
/* 1CB58 8001BF58 8FB00020 */  lw         $s0, 0x20($sp)
/* 1CB5C 8001BF5C 03E00008 */  jr         $ra
/* 1CB60 8001BF60 27BD0048 */   addiu     $sp, $sp, 0x48
