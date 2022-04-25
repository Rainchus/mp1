	.set noat
	.set noreorder

glabel func_8002BEC4
/* 2CAC4 8002BEC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CAC8 8002BEC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2CACC 8002BECC 00804021 */  addu       $t0, $a0, $zero
/* 2CAD0 8002BED0 24090004 */  addiu      $t1, $zero, 4
/* 2CAD4 8002BED4 8502006C */  lh         $v0, 0x6c($t0)
/* 2CAD8 8002BED8 18400052 */  blez       $v0, .L8002C024
/* 2CADC 8002BEDC 00005021 */   addu      $t2, $zero, $zero
/* 2CAE0 8002BEE0 000A1400 */  sll        $v0, $t2, 0x10
.L8002BEE4:
/* 2CAE4 8002BEE4 00403021 */  addu       $a2, $v0, $zero
/* 2CAE8 8002BEE8 00022C03 */  sra        $a1, $v0, 0x10
/* 2CAEC 8002BEEC 8D0300A4 */  lw         $v1, 0xa4($t0)
/* 2CAF0 8002BEF0 00051100 */  sll        $v0, $a1, 4
/* 2CAF4 8002BEF4 00431021 */  addu       $v0, $v0, $v1
/* 2CAF8 8002BEF8 90430009 */  lbu        $v1, 9($v0)
/* 2CAFC 8002BEFC 240200FF */  addiu      $v0, $zero, 0xff
/* 2CB00 8002BF00 50620041 */  beql       $v1, $v0, .L8002C008
/* 2CB04 8002BF04 25420001 */   addiu     $v0, $t2, 1
/* 2CB08 8002BF08 18A00012 */  blez       $a1, .L8002BF54
/* 2CB0C 8002BF0C 00002021 */   addu      $a0, $zero, $zero
/* 2CB10 8002BF10 8D0700A4 */  lw         $a3, 0xa4($t0)
/* 2CB14 8002BF14 00062C03 */  sra        $a1, $a2, 0x10
/* 2CB18 8002BF18 00051900 */  sll        $v1, $a1, 4
.L8002BF1C:
/* 2CB1C 8002BF1C 00671821 */  addu       $v1, $v1, $a3
/* 2CB20 8002BF20 00041400 */  sll        $v0, $a0, 0x10
/* 2CB24 8002BF24 00021303 */  sra        $v0, $v0, 0xc
/* 2CB28 8002BF28 00471021 */  addu       $v0, $v0, $a3
/* 2CB2C 8002BF2C 8C63000C */  lw         $v1, 0xc($v1)
/* 2CB30 8002BF30 8C42000C */  lw         $v0, 0xc($v0)
/* 2CB34 8002BF34 10620007 */  beq        $v1, $v0, .L8002BF54
/* 2CB38 8002BF38 24820001 */   addiu     $v0, $a0, 1
/* 2CB3C 8002BF3C 00402021 */  addu       $a0, $v0, $zero
/* 2CB40 8002BF40 00021400 */  sll        $v0, $v0, 0x10
/* 2CB44 8002BF44 00021403 */  sra        $v0, $v0, 0x10
/* 2CB48 8002BF48 0045102A */  slt        $v0, $v0, $a1
/* 2CB4C 8002BF4C 1440FFF3 */  bnez       $v0, .L8002BF1C
/* 2CB50 8002BF50 00051900 */   sll       $v1, $a1, 4
.L8002BF54:
/* 2CB54 8002BF54 00041400 */  sll        $v0, $a0, 0x10
/* 2CB58 8002BF58 00021C03 */  sra        $v1, $v0, 0x10
/* 2CB5C 8002BF5C 000A1400 */  sll        $v0, $t2, 0x10
/* 2CB60 8002BF60 00022403 */  sra        $a0, $v0, 0x10
/* 2CB64 8002BF64 1064000D */  beq        $v1, $a0, .L8002BF9C
/* 2CB68 8002BF68 00042100 */   sll       $a0, $a0, 4
/* 2CB6C 8002BF6C 8D0200A4 */  lw         $v0, 0xa4($t0)
/* 2CB70 8002BF70 00822821 */  addu       $a1, $a0, $v0
/* 2CB74 8002BF74 00031900 */  sll        $v1, $v1, 4
/* 2CB78 8002BF78 00621021 */  addu       $v0, $v1, $v0
/* 2CB7C 8002BF7C 90420003 */  lbu        $v0, 3($v0)
/* 2CB80 8002BF80 A0A20003 */  sb         $v0, 3($a1)
/* 2CB84 8002BF84 8D0200A4 */  lw         $v0, 0xa4($t0)
/* 2CB88 8002BF88 00822021 */  addu       $a0, $a0, $v0
/* 2CB8C 8002BF8C 00621821 */  addu       $v1, $v1, $v0
/* 2CB90 8002BF90 90620004 */  lbu        $v0, 4($v1)
/* 2CB94 8002BF94 0800B001 */  j          .L8002C004
/* 2CB98 8002BF98 A0820004 */   sb        $v0, 4($a0)
.L8002BF9C:
/* 2CB9C 8002BF9C 000A1C00 */  sll        $v1, $t2, 0x10
/* 2CBA0 8002BFA0 8D0200A4 */  lw         $v0, 0xa4($t0)
/* 2CBA4 8002BFA4 00031B03 */  sra        $v1, $v1, 0xc
/* 2CBA8 8002BFA8 00621021 */  addu       $v0, $v1, $v0
/* 2CBAC 8002BFAC 01202021 */  addu       $a0, $t1, $zero
/* 2CBB0 8002BFB0 25250001 */  addiu      $a1, $t1, 1
/* 2CBB4 8002BFB4 A0440003 */  sb         $a0, 3($v0)
/* 2CBB8 8002BFB8 8D0200A4 */  lw         $v0, 0xa4($t0)
/* 2CBBC 8002BFBC 00621821 */  addu       $v1, $v1, $v0
/* 2CBC0 8002BFC0 8C62000C */  lw         $v0, 0xc($v1)
/* 2CBC4 8002BFC4 8C42002C */  lw         $v0, 0x2c($v0)
/* 2CBC8 8002BFC8 10400004 */  beqz       $v0, .L8002BFDC
/* 2CBCC 8002BFCC 00A04821 */   addu      $t1, $a1, $zero
/* 2CBD0 8002BFD0 01201021 */  addu       $v0, $t1, $zero
/* 2CBD4 8002BFD4 24A90001 */  addiu      $t1, $a1, 1
/* 2CBD8 8002BFD8 A0620004 */  sb         $v0, 4($v1)
.L8002BFDC:
/* 2CBDC 8002BFDC 00091400 */  sll        $v0, $t1, 0x10
/* 2CBE0 8002BFE0 00021403 */  sra        $v0, $v0, 0x10
/* 2CBE4 8002BFE4 28420011 */  slti       $v0, $v0, 0x11
/* 2CBE8 8002BFE8 14400007 */  bnez       $v0, .L8002C008
/* 2CBEC 8002BFEC 25420001 */   addiu     $v0, $t2, 1
/* 2CBF0 8002BFF0 3C04800D */  lui        $a0, %hi(D_800CA908)
/* 2CBF4 8002BFF4 0C023148 */  jal        func_8008C520
/* 2CBF8 8002BFF8 2484A908 */   addiu     $a0, $a0, %lo(D_800CA908)
/* 2CBFC 8002BFFC 0800B009 */  j          .L8002C024
/* 2CC00 8002C000 00000000 */   nop
.L8002C004:
/* 2CC04 8002C004 25420001 */  addiu      $v0, $t2, 1
.L8002C008:
/* 2CC08 8002C008 00405021 */  addu       $t2, $v0, $zero
/* 2CC0C 8002C00C 00021400 */  sll        $v0, $v0, 0x10
/* 2CC10 8002C010 00021403 */  sra        $v0, $v0, 0x10
/* 2CC14 8002C014 8503006C */  lh         $v1, 0x6c($t0)
/* 2CC18 8002C018 0043102A */  slt        $v0, $v0, $v1
/* 2CC1C 8002C01C 1440FFB1 */  bnez       $v0, .L8002BEE4
/* 2CC20 8002C020 000A1400 */   sll       $v0, $t2, 0x10
.L8002C024:
/* 2CC24 8002C024 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2CC28 8002C028 03E00008 */  jr         $ra
/* 2CC2C 8002C02C 27BD0018 */   addiu     $sp, $sp, 0x18
