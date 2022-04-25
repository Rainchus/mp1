	.set noat
	.set noreorder

glabel func_8003C8A8
/* 3D4A8 8003C8A8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3D4AC 8003C8AC AFBF0038 */  sw         $ra, 0x38($sp)
/* 3D4B0 8003C8B0 AFB50034 */  sw         $s5, 0x34($sp)
/* 3D4B4 8003C8B4 AFB40030 */  sw         $s4, 0x30($sp)
/* 3D4B8 8003C8B8 AFB3002C */  sw         $s3, 0x2c($sp)
/* 3D4BC 8003C8BC AFB20028 */  sw         $s2, 0x28($sp)
/* 3D4C0 8003C8C0 AFB10024 */  sw         $s1, 0x24($sp)
/* 3D4C4 8003C8C4 AFB00020 */  sw         $s0, 0x20($sp)
/* 3D4C8 8003C8C8 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 3D4CC 8003C8CC 2412FFFF */  addiu      $s2, $zero, -1
/* 3D4D0 8003C8D0 3C0142B4 */  lui        $at, 0x42b4
/* 3D4D4 8003C8D4 4481A000 */  mtc1       $at, $f20
/* 3D4D8 8003C8D8 3C15800D */  lui        $s5, %hi(D_800D61A8)
/* 3D4DC 8003C8DC 26B561A8 */  addiu      $s5, $s5, %lo(D_800D61A8)
/* 3D4E0 8003C8E0 241400FF */  addiu      $s4, $zero, 0xff
.L8003C8E4:
/* 3D4E4 8003C8E4 0C018D6D */  jal        func_800635B4
/* 3D4E8 8003C8E8 00000000 */   nop
/* 3D4EC 8003C8EC 00121400 */  sll        $v0, $s2, 0x10
/* 3D4F0 8003C8F0 00021403 */  sra        $v0, $v0, 0x10
/* 3D4F4 8003C8F4 3C03800D */  lui        $v1, %hi(D_800D61B8)
/* 3D4F8 8003C8F8 846361B8 */  lh         $v1, %lo(D_800D61B8)($v1)
/* 3D4FC 8003C8FC 10430034 */  beq        $v0, $v1, .L8003C9D0
/* 3D500 8003C900 00602021 */   addu      $a0, $v1, $zero
/* 3D504 8003C904 00809021 */  addu       $s2, $a0, $zero
/* 3D508 8003C908 00008021 */  addu       $s0, $zero, $zero
/* 3D50C 8003C90C 00121400 */  sll        $v0, $s2, 0x10
/* 3D510 8003C910 00029C03 */  sra        $s3, $v0, 0x10
/* 3D514 8003C914 00101080 */  sll        $v0, $s0, 2
.L8003C918:
/* 3D518 8003C918 00551021 */  addu       $v0, $v0, $s5
/* 3D51C 8003C91C 8C510000 */  lw         $s1, ($v0)
/* 3D520 8003C920 16130009 */  bne        $s0, $s3, .L8003C948
/* 3D524 8003C924 240200A0 */   addiu     $v0, $zero, 0xa0
/* 3D528 8003C928 8624000A */  lh         $a0, 0xa($s1)
/* 3D52C 8003C92C 00002821 */  addu       $a1, $zero, $zero
/* 3D530 8003C930 0C019CE1 */  jal        func_80067384
/* 3D534 8003C934 24060002 */   addiu     $a2, $zero, 2
/* 3D538 8003C938 8624000A */  lh         $a0, 0xa($s1)
/* 3D53C 8003C93C 24050001 */  addiu      $a1, $zero, 1
/* 3D540 8003C940 0800F267 */  j          .L8003C99C
/* 3D544 8003C944 24060002 */   addiu     $a2, $zero, 2
.L8003C948:
/* 3D548 8003C948 8624000A */  lh         $a0, 0xa($s1)
/* 3D54C 8003C94C AFB40010 */  sw         $s4, 0x10($sp)
/* 3D550 8003C950 AFA20014 */  sw         $v0, 0x14($sp)
/* 3D554 8003C954 00002821 */  addu       $a1, $zero, $zero
/* 3D558 8003C958 00003021 */  addu       $a2, $zero, $zero
/* 3D55C 8003C95C 0C019D56 */  jal        func_80067558
/* 3D560 8003C960 00003821 */   addu      $a3, $zero, $zero
/* 3D564 8003C964 8624000A */  lh         $a0, 0xa($s1)
/* 3D568 8003C968 AFB40010 */  sw         $s4, 0x10($sp)
/* 3D56C 8003C96C AFB40014 */  sw         $s4, 0x14($sp)
/* 3D570 8003C970 24050001 */  addiu      $a1, $zero, 1
/* 3D574 8003C974 00003021 */  addu       $a2, $zero, $zero
/* 3D578 8003C978 0C019D56 */  jal        func_80067558
/* 3D57C 8003C97C 00003821 */   addu      $a3, $zero, $zero
/* 3D580 8003C980 8624000A */  lh         $a0, 0xa($s1)
/* 3D584 8003C984 00002821 */  addu       $a1, $zero, $zero
/* 3D588 8003C988 0C019CE1 */  jal        func_80067384
/* 3D58C 8003C98C 24060003 */   addiu     $a2, $zero, 3
/* 3D590 8003C990 8624000A */  lh         $a0, 0xa($s1)
/* 3D594 8003C994 24050001 */  addiu      $a1, $zero, 1
/* 3D598 8003C998 24060003 */  addiu      $a2, $zero, 3
.L8003C99C:
/* 3D59C 8003C99C 0C019CE1 */  jal        func_80067384
/* 3D5A0 8003C9A0 26100001 */   addiu     $s0, $s0, 1
/* 3D5A4 8003C9A4 8624000A */  lh         $a0, 0xa($s1)
/* 3D5A8 8003C9A8 00002821 */  addu       $a1, $zero, $zero
/* 3D5AC 8003C9AC 0C019D20 */  jal        func_80067480
/* 3D5B0 8003C9B0 34068000 */   ori       $a2, $zero, 0x8000
/* 3D5B4 8003C9B4 8624000A */  lh         $a0, 0xa($s1)
/* 3D5B8 8003C9B8 24050001 */  addiu      $a1, $zero, 1
/* 3D5BC 8003C9BC 0C019D20 */  jal        func_80067480
/* 3D5C0 8003C9C0 34068000 */   ori       $a2, $zero, 0x8000
/* 3D5C4 8003C9C4 2A020004 */  slti       $v0, $s0, 4
/* 3D5C8 8003C9C8 1440FFD3 */  bnez       $v0, .L8003C918
/* 3D5CC 8003C9CC 00101080 */   sll       $v0, $s0, 2
.L8003C9D0:
/* 3D5D0 8003C9D0 00121400 */  sll        $v0, $s2, 0x10
/* 3D5D4 8003C9D4 00021383 */  sra        $v0, $v0, 0xe
/* 3D5D8 8003C9D8 00551021 */  addu       $v0, $v0, $s5
/* 3D5DC 8003C9DC 8C510000 */  lw         $s1, ($v0)
/* 3D5E0 8003C9E0 0C02BAB0 */  jal        func_800AEAC0
/* 3D5E4 8003C9E4 4600A306 */   mov.s     $f12, $f20
/* 3D5E8 8003C9E8 3C01437F */  lui        $at, 0x437f
/* 3D5EC 8003C9EC 44811000 */  mtc1       $at, $f2
/* 3D5F0 8003C9F0 00000000 */  nop
/* 3D5F4 8003C9F4 46020002 */  mul.s      $f0, $f0, $f2
/* 3D5F8 8003C9F8 4600008D */  trunc.w.s  $f2, $f0
/* 3D5FC 8003C9FC 44021000 */  mfc1       $v0, $f2
/* 3D600 8003CA00 00000000 */  nop
/* 3D604 8003CA04 00021400 */  sll        $v0, $v0, 0x10
/* 3D608 8003CA08 00021403 */  sra        $v0, $v0, 0x10
/* 3D60C 8003CA0C 04420001 */  bltzl      $v0, .L8003CA14
/* 3D610 8003CA10 00021023 */   negu      $v0, $v0
.L8003CA14:
/* 3D614 8003CA14 3C0140C0 */  lui        $at, 0x40c0
/* 3D618 8003CA18 44810000 */  mtc1       $at, $f0
/* 3D61C 8003CA1C 00000000 */  nop
/* 3D620 8003CA20 4600A500 */  add.s      $f20, $f20, $f0
/* 3D624 8003CA24 3C0143B4 */  lui        $at, 0x43b4
/* 3D628 8003CA28 44810000 */  mtc1       $at, $f0
/* 3D62C 8003CA2C 00000000 */  nop
/* 3D630 8003CA30 4614003C */  c.lt.s     $f0, $f20
/* 3D634 8003CA34 00000000 */  nop
/* 3D638 8003CA38 00000000 */  nop
/* 3D63C 8003CA3C 45030001 */  bc1tl      .L8003CA44
/* 3D640 8003CA40 4600A501 */   sub.s     $f20, $f20, $f0
.L8003CA44:
/* 3D644 8003CA44 8624000A */  lh         $a0, 0xa($s1)
/* 3D648 8003CA48 305000FF */  andi       $s0, $v0, 0xff
/* 3D64C 8003CA4C AFA00010 */  sw         $zero, 0x10($sp)
/* 3D650 8003CA50 240200A0 */  addiu      $v0, $zero, 0xa0
/* 3D654 8003CA54 AFA20014 */  sw         $v0, 0x14($sp)
/* 3D658 8003CA58 00002821 */  addu       $a1, $zero, $zero
/* 3D65C 8003CA5C 240600FF */  addiu      $a2, $zero, 0xff
/* 3D660 8003CA60 0C019D56 */  jal        func_80067558
/* 3D664 8003CA64 02003821 */   addu      $a3, $s0, $zero
/* 3D668 8003CA68 8624000A */  lh         $a0, 0xa($s1)
/* 3D66C 8003CA6C AFA00010 */  sw         $zero, 0x10($sp)
/* 3D670 8003CA70 AFB40014 */  sw         $s4, 0x14($sp)
/* 3D674 8003CA74 24050001 */  addiu      $a1, $zero, 1
/* 3D678 8003CA78 240600FF */  addiu      $a2, $zero, 0xff
/* 3D67C 8003CA7C 0C019D56 */  jal        func_80067558
/* 3D680 8003CA80 02003821 */   addu      $a3, $s0, $zero
/* 3D684 8003CA84 0800F239 */  j          .L8003C8E4
/* 3D688 8003CA88 00000000 */   nop
/* 3D68C 8003CA8C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 3D690 8003CA90 8FB50034 */  lw         $s5, 0x34($sp)
/* 3D694 8003CA94 8FB40030 */  lw         $s4, 0x30($sp)
/* 3D698 8003CA98 8FB3002C */  lw         $s3, 0x2c($sp)
/* 3D69C 8003CA9C 8FB20028 */  lw         $s2, 0x28($sp)
/* 3D6A0 8003CAA0 8FB10024 */  lw         $s1, 0x24($sp)
/* 3D6A4 8003CAA4 8FB00020 */  lw         $s0, 0x20($sp)
/* 3D6A8 8003CAA8 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 3D6AC 8003CAAC 03E00008 */  jr         $ra
/* 3D6B0 8003CAB0 27BD0048 */   addiu     $sp, $sp, 0x48
