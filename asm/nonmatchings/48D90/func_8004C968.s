	.set noat
	.set noreorder

glabel func_8004C968
/* 4D568 8004C968 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4D56C 8004C96C AFBF0034 */  sw         $ra, 0x34($sp)
/* 4D570 8004C970 AFB60030 */  sw         $s6, 0x30($sp)
/* 4D574 8004C974 AFB5002C */  sw         $s5, 0x2c($sp)
/* 4D578 8004C978 AFB40028 */  sw         $s4, 0x28($sp)
/* 4D57C 8004C97C AFB30024 */  sw         $s3, 0x24($sp)
/* 4D580 8004C980 AFB20020 */  sw         $s2, 0x20($sp)
/* 4D584 8004C984 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4D588 8004C988 AFB00018 */  sw         $s0, 0x18($sp)
/* 4D58C 8004C98C 00808021 */  addu       $s0, $a0, $zero
/* 4D590 8004C990 00042400 */  sll        $a0, $a0, 0x10
/* 4D594 8004C994 00042403 */  sra        $a0, $a0, 0x10
/* 4D598 8004C998 2402FFFC */  addiu      $v0, $zero, -4
/* 4D59C 8004C99C 10820013 */  beq        $a0, $v0, .L8004C9EC
/* 4D5A0 8004C9A0 00A09821 */   addu      $s3, $a1, $zero
/* 4D5A4 8004C9A4 2882FFFD */  slti       $v0, $a0, -3
/* 4D5A8 8004C9A8 10400005 */  beqz       $v0, .L8004C9C0
/* 4D5AC 8004C9AC 2402FFFB */   addiu     $v0, $zero, -5
/* 4D5B0 8004C9B0 10820011 */  beq        $a0, $v0, .L8004C9F8
/* 4D5B4 8004C9B4 00000000 */   nop
/* 4D5B8 8004C9B8 08013281 */  j          .L8004CA04
/* 4D5BC 8004C9BC 00102400 */   sll       $a0, $s0, 0x10
.L8004C9C0:
/* 4D5C0 8004C9C0 2402FFFD */  addiu      $v0, $zero, -3
/* 4D5C4 8004C9C4 10820006 */  beq        $a0, $v0, .L8004C9E0
/* 4D5C8 8004C9C8 2402FFFE */   addiu     $v0, $zero, -2
/* 4D5CC 8004C9CC 5482000D */  bnel       $a0, $v0, .L8004CA04
/* 4D5D0 8004C9D0 00102400 */   sll       $a0, $s0, 0x10
/* 4D5D4 8004C9D4 3C11800E */  lui        $s1, %hi(D_800D8144)
/* 4D5D8 8004C9D8 08013284 */  j          .L8004CA10
/* 4D5DC 8004C9DC 8E318144 */   lw        $s1, %lo(D_800D8144)($s1)
.L8004C9E0:
/* 4D5E0 8004C9E0 3C11800E */  lui        $s1, %hi(D_800D8148)
/* 4D5E4 8004C9E4 08013284 */  j          .L8004CA10
/* 4D5E8 8004C9E8 8E318148 */   lw        $s1, %lo(D_800D8148)($s1)
.L8004C9EC:
/* 4D5EC 8004C9EC 3C11800E */  lui        $s1, %hi(D_800D814C)
/* 4D5F0 8004C9F0 08013284 */  j          .L8004CA10
/* 4D5F4 8004C9F4 8E31814C */   lw        $s1, %lo(D_800D814C)($s1)
.L8004C9F8:
/* 4D5F8 8004C9F8 3C11800E */  lui        $s1, %hi(D_800D8150)
/* 4D5FC 8004C9FC 08013284 */  j          .L8004CA10
/* 4D600 8004CA00 8E318150 */   lw        $s1, %lo(D_800D8150)($s1)
.L8004CA04:
/* 4D604 8004CA04 0C01307B */  jal        func_8004C1EC
/* 4D608 8004CA08 00042403 */   sra       $a0, $a0, 0x10
/* 4D60C 8004CA0C 8C51001C */  lw         $s1, 0x1c($v0)
.L8004CA10:
/* 4D610 8004CA10 0C0132CE */  jal        func_8004CB38
/* 4D614 8004CA14 00009021 */   addu      $s2, $zero, $zero
/* 4D618 8004CA18 0040B021 */  addu       $s6, $v0, $zero
/* 4D61C 8004CA1C 00102400 */  sll        $a0, $s0, 0x10
/* 4D620 8004CA20 0C0132CB */  jal        func_8004CB2C
/* 4D624 8004CA24 00042403 */   sra       $a0, $a0, 0x10
/* 4D628 8004CA28 52200030 */  beql       $s1, $zero, .L8004CAEC
/* 4D62C 8004CA2C 00162400 */   sll       $a0, $s6, 0x10
/* 4D630 8004CA30 96220000 */  lhu        $v0, ($s1)
/* 4D634 8004CA34 1040002C */  beqz       $v0, .L8004CAE8
/* 4D638 8004CA38 00401821 */   addu      $v1, $v0, $zero
/* 4D63C 8004CA3C 00131400 */  sll        $v0, $s3, 0x10
/* 4D640 8004CA40 00029C03 */  sra        $s3, $v0, 0x10
/* 4D644 8004CA44 24150001 */  addiu      $s5, $zero, 1
/* 4D648 8004CA48 24140002 */  addiu      $s4, $zero, 2
/* 4D64C 8004CA4C 00031400 */  sll        $v0, $v1, 0x10
.L8004CA50:
/* 4D650 8004CA50 00021403 */  sra        $v0, $v0, 0x10
/* 4D654 8004CA54 54530020 */  bnel       $v0, $s3, .L8004CAD8
/* 4D658 8004CA58 26310008 */   addiu     $s1, $s1, 8
/* 4D65C 8004CA5C 3C01800E */  lui        $at, %hi(D_800D8154)
/* 4D660 8004CA60 AC208154 */  sw         $zero, %lo(D_800D8154)($at)
/* 4D664 8004CA64 86220002 */  lh         $v0, 2($s1)
/* 4D668 8004CA68 10550005 */  beq        $v0, $s5, .L8004CA80
/* 4D66C 8004CA6C 00000000 */   nop
/* 4D670 8004CA70 10540008 */  beq        $v0, $s4, .L8004CA94
/* 4D674 8004CA74 00000000 */   nop
/* 4D678 8004CA78 080132B2 */  j          .L8004CAC8
/* 4D67C 8004CA7C 00000000 */   nop
.L8004CA80:
/* 4D680 8004CA80 8E220004 */  lw         $v0, 4($s1)
/* 4D684 8004CA84 0040F809 */  jalr       $v0
/* 4D688 8004CA88 00000000 */   nop
/* 4D68C 8004CA8C 080132B2 */  j          .L8004CAC8
/* 4D690 8004CA90 00000000 */   nop
.L8004CA94:
/* 4D694 8004CA94 0C018CEA */  jal        func_800633A8
/* 4D698 8004CA98 00000000 */   nop
/* 4D69C 8004CA9C 00408021 */  addu       $s0, $v0, $zero
/* 4D6A0 8004CAA0 8E240004 */  lw         $a0, 4($s1)
/* 4D6A4 8004CAA4 24054800 */  addiu      $a1, $zero, 0x4800
/* 4D6A8 8004CAA8 00003021 */  addu       $a2, $zero, $zero
/* 4D6AC 8004CAAC 0C01770A */  jal        func_8005DC28
/* 4D6B0 8004CAB0 00003821 */   addu      $a3, $zero, $zero
/* 4D6B4 8004CAB4 02002021 */  addu       $a0, $s0, $zero
/* 4D6B8 8004CAB8 0C018C9C */  jal        func_80063270
/* 4D6BC 8004CABC 00402821 */   addu      $a1, $v0, $zero
/* 4D6C0 8004CAC0 0C018CD6 */  jal        func_80063358
/* 4D6C4 8004CAC4 00000000 */   nop
.L8004CAC8:
/* 4D6C8 8004CAC8 3C02800E */  lui        $v0, %hi(D_800D8154)
/* 4D6CC 8004CACC 8C428154 */  lw         $v0, %lo(D_800D8154)($v0)
/* 4D6D0 8004CAD0 02429025 */  or         $s2, $s2, $v0
/* 4D6D4 8004CAD4 26310008 */  addiu      $s1, $s1, 8
.L8004CAD8:
/* 4D6D8 8004CAD8 96230000 */  lhu        $v1, ($s1)
/* 4D6DC 8004CADC 86220000 */  lh         $v0, ($s1)
/* 4D6E0 8004CAE0 1440FFDB */  bnez       $v0, .L8004CA50
/* 4D6E4 8004CAE4 00031400 */   sll       $v0, $v1, 0x10
.L8004CAE8:
/* 4D6E8 8004CAE8 00162400 */  sll        $a0, $s6, 0x10
.L8004CAEC:
/* 4D6EC 8004CAEC 0C0132CB */  jal        func_8004CB2C
/* 4D6F0 8004CAF0 00042403 */   sra       $a0, $a0, 0x10
/* 4D6F4 8004CAF4 02401021 */  addu       $v0, $s2, $zero
/* 4D6F8 8004CAF8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 4D6FC 8004CAFC 8FB60030 */  lw         $s6, 0x30($sp)
/* 4D700 8004CB00 8FB5002C */  lw         $s5, 0x2c($sp)
/* 4D704 8004CB04 8FB40028 */  lw         $s4, 0x28($sp)
/* 4D708 8004CB08 8FB30024 */  lw         $s3, 0x24($sp)
/* 4D70C 8004CB0C 8FB20020 */  lw         $s2, 0x20($sp)
/* 4D710 8004CB10 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4D714 8004CB14 8FB00018 */  lw         $s0, 0x18($sp)
/* 4D718 8004CB18 03E00008 */  jr         $ra
/* 4D71C 8004CB1C 27BD0038 */   addiu     $sp, $sp, 0x38
