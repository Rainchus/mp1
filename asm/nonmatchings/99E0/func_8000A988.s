	.set noat
	.set noreorder

glabel func_8000A988
/* B588 8000A988 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* B58C 8000A98C AFBF0020 */  sw         $ra, 0x20($sp)
/* B590 8000A990 AFB1001C */  sw         $s1, 0x1c($sp)
/* B594 8000A994 AFB00018 */  sw         $s0, 0x18($sp)
/* B598 8000A998 F7B80038 */  sdc1       $f24, 0x38($sp)
/* B59C 8000A99C F7B60030 */  sdc1       $f22, 0x30($sp)
/* B5A0 8000A9A0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* B5A4 8000A9A4 00808821 */  addu       $s1, $a0, $zero
/* B5A8 8000A9A8 4485B000 */  mtc1       $a1, $f22
/* B5AC 8000A9AC 4486C000 */  mtc1       $a2, $f24
/* B5B0 8000A9B0 8E300050 */  lw         $s0, 0x50($s1)
/* B5B4 8000A9B4 8E02005C */  lw         $v0, 0x5c($s0)
/* B5B8 8000A9B8 30420200 */  andi       $v0, $v0, 0x200
/* B5BC 8000A9BC 10400007 */  beqz       $v0, .L8000A9DC
/* B5C0 8000A9C0 00000000 */   nop
/* B5C4 8000A9C4 3C013F33 */  lui        $at, 0x3f33
/* B5C8 8000A9C8 34213333 */  ori        $at, $at, 0x3333
/* B5CC 8000A9CC 44810000 */  mtc1       $at, $f0
/* B5D0 8000A9D0 00000000 */  nop
/* B5D4 8000A9D4 08002A7C */  j          .L8000A9F0
/* B5D8 8000A9D8 E600004C */   swc1      $f0, 0x4c($s0)
.L8000A9DC:
/* B5DC 8000A9DC 3C013F19 */  lui        $at, 0x3f19
/* B5E0 8000A9E0 3421999A */  ori        $at, $at, 0x999a
/* B5E4 8000A9E4 44810000 */  mtc1       $at, $f0
/* B5E8 8000A9E8 00000000 */  nop
/* B5EC 8000A9EC E600004C */  swc1       $f0, 0x4c($s0)
.L8000A9F0:
/* B5F0 8000A9F0 02202021 */  addu       $a0, $s1, $zero
/* B5F4 8000A9F4 0C00612F */  jal        func_800184BC
/* B5F8 8000A9F8 24050006 */   addiu     $a1, $zero, 6
/* B5FC 8000A9FC 82030056 */  lb         $v1, 0x56($s0)
/* B600 8000AA00 3C02800F */  lui        $v0, %hi(D_800ECE14)
/* B604 8000AA04 00431021 */  addu       $v0, $v0, $v1
/* B608 8000AA08 8042CE14 */  lb         $v0, %lo(D_800ECE14)($v0)
/* B60C 8000AA0C 04420001 */  bltzl      $v0, .L8000AA14
/* B610 8000AA10 00021023 */   negu      $v0, $v0
.L8000AA14:
/* B614 8000AA14 28420009 */  slti       $v0, $v0, 9
/* B618 8000AA18 10400009 */  beqz       $v0, .L8000AA40
/* B61C 8000AA1C 00000000 */   nop
/* B620 8000AA20 3C02800F */  lui        $v0, %hi(D_800F3843)
/* B624 8000AA24 00431021 */  addu       $v0, $v0, $v1
/* B628 8000AA28 80423843 */  lb         $v0, %lo(D_800F3843)($v0)
/* B62C 8000AA2C 04420001 */  bltzl      $v0, .L8000AA34
/* B630 8000AA30 00021023 */   negu      $v0, $v0
.L8000AA34:
/* B634 8000AA34 28420009 */  slti       $v0, $v0, 9
/* B638 8000AA38 1440004D */  bnez       $v0, .L8000AB70
/* B63C 8000AA3C 00000000 */   nop
.L8000AA40:
/* B640 8000AA40 82020056 */  lb         $v0, 0x56($s0)
/* B644 8000AA44 3C03800F */  lui        $v1, %hi(D_800ECE14)
/* B648 8000AA48 00621821 */  addu       $v1, $v1, $v0
/* B64C 8000AA4C 8063CE14 */  lb         $v1, %lo(D_800ECE14)($v1)
/* B650 8000AA50 A7A30010 */  sh         $v1, 0x10($sp)
/* B654 8000AA54 82020056 */  lb         $v0, 0x56($s0)
/* B658 8000AA58 3C01800F */  lui        $at, %hi(D_800F3843)
/* B65C 8000AA5C 00220821 */  addu       $at, $at, $v0
/* B660 8000AA60 80223843 */  lb         $v0, %lo(D_800F3843)($at)
/* B664 8000AA64 2863003D */  slti       $v1, $v1, 0x3d
/* B668 8000AA68 14600003 */  bnez       $v1, .L8000AA78
/* B66C 8000AA6C A7A20012 */   sh        $v0, 0x12($sp)
/* B670 8000AA70 2402003C */  addiu      $v0, $zero, 0x3c
/* B674 8000AA74 A7A20010 */  sh         $v0, 0x10($sp)
.L8000AA78:
/* B678 8000AA78 87A20012 */  lh         $v0, 0x12($sp)
/* B67C 8000AA7C 2842003D */  slti       $v0, $v0, 0x3d
/* B680 8000AA80 14400002 */  bnez       $v0, .L8000AA8C
/* B684 8000AA84 2402003C */   addiu     $v0, $zero, 0x3c
/* B688 8000AA88 A7A20012 */  sh         $v0, 0x12($sp)
.L8000AA8C:
/* B68C 8000AA8C 87A20010 */  lh         $v0, 0x10($sp)
/* B690 8000AA90 2842FFC4 */  slti       $v0, $v0, -0x3c
/* B694 8000AA94 10400002 */  beqz       $v0, .L8000AAA0
/* B698 8000AA98 2402FFC4 */   addiu     $v0, $zero, -0x3c
/* B69C 8000AA9C A7A20010 */  sh         $v0, 0x10($sp)
.L8000AAA0:
/* B6A0 8000AAA0 87A20012 */  lh         $v0, 0x12($sp)
/* B6A4 8000AAA4 2842FFC4 */  slti       $v0, $v0, -0x3c
/* B6A8 8000AAA8 10400002 */  beqz       $v0, .L8000AAB4
/* B6AC 8000AAAC 2402FFC4 */   addiu     $v0, $zero, -0x3c
/* B6B0 8000AAB0 A7A20012 */  sh         $v0, 0x12($sp)
.L8000AAB4:
/* B6B4 8000AAB4 27A40010 */  addiu      $a0, $sp, 0x10
/* B6B8 8000AAB8 0C002752 */  jal        func_80009D48
/* B6BC 8000AABC 27A50012 */   addiu     $a1, $sp, 0x12
/* B6C0 8000AAC0 87A50010 */  lh         $a1, 0x10($sp)
/* B6C4 8000AAC4 87A60012 */  lh         $a2, 0x12($sp)
/* B6C8 8000AAC8 0C002724 */  jal        func_80009C90
/* B6CC 8000AACC 02202021 */   addu      $a0, $s1, $zero
/* B6D0 8000AAD0 87A50010 */  lh         $a1, 0x10($sp)
/* B6D4 8000AAD4 87A60012 */  lh         $a2, 0x12($sp)
/* B6D8 8000AAD8 0C002724 */  jal        func_80009C90
/* B6DC 8000AADC 02202021 */   addu      $a0, $s1, $zero
/* B6E0 8000AAE0 87A50010 */  lh         $a1, 0x10($sp)
/* B6E4 8000AAE4 87A60012 */  lh         $a2, 0x12($sp)
/* B6E8 8000AAE8 0C002724 */  jal        func_80009C90
/* B6EC 8000AAEC 02202021 */   addu      $a0, $s1, $zero
/* B6F0 8000AAF0 87A50010 */  lh         $a1, 0x10($sp)
/* B6F4 8000AAF4 87A60012 */  lh         $a2, 0x12($sp)
/* B6F8 8000AAF8 0C002724 */  jal        func_80009C90
/* B6FC 8000AAFC 02202021 */   addu      $a0, $s1, $zero
/* B700 8000AB00 87A50010 */  lh         $a1, 0x10($sp)
/* B704 8000AB04 87A60012 */  lh         $a2, 0x12($sp)
/* B708 8000AB08 0C002724 */  jal        func_80009C90
/* B70C 8000AB0C 02202021 */   addu      $a0, $s1, $zero
/* B710 8000AB10 87A50010 */  lh         $a1, 0x10($sp)
/* B714 8000AB14 87A60012 */  lh         $a2, 0x12($sp)
/* B718 8000AB18 0C002724 */  jal        func_80009C90
/* B71C 8000AB1C 02202021 */   addu      $a0, $s1, $zero
/* B720 8000AB20 00021C03 */  sra        $v1, $v0, 0x10
/* B724 8000AB24 A7A30010 */  sh         $v1, 0x10($sp)
/* B728 8000AB28 A7A20012 */  sh         $v0, 0x12($sp)
/* B72C 8000AB2C 00021400 */  sll        $v0, $v0, 0x10
/* B730 8000AB30 00021403 */  sra        $v0, $v0, 0x10
/* B734 8000AB34 00021023 */  negu       $v0, $v0
/* B738 8000AB38 44836000 */  mtc1       $v1, $f12
/* B73C 8000AB3C 00000000 */  nop
/* B740 8000AB40 46806320 */  cvt.s.w    $f12, $f12
/* B744 8000AB44 44827000 */  mtc1       $v0, $f14
/* B748 8000AB48 00000000 */  nop
/* B74C 8000AB4C 0C02C336 */  jal        func_800B0CD8
/* B750 8000AB50 468073A0 */   cvt.s.w   $f14, $f14
/* B754 8000AB54 C6020060 */  lwc1       $f2, 0x60($s0)
/* B758 8000AB58 46020000 */  add.s      $f0, $f0, $f2
/* B75C 8000AB5C E600003C */  swc1       $f0, 0x3c($s0)
/* B760 8000AB60 3C01800C */  lui        $at, %hi(D_800B8980)
/* B764 8000AB64 C4208980 */  lwc1       $f0, %lo(D_800B8980)($at)
/* B768 8000AB68 08002AF6 */  j          .L8000ABD8
/* B76C 8000AB6C E6000040 */   swc1      $f0, 0x40($s0)
.L8000AB70:
/* B770 8000AB70 C60C003C */  lwc1       $f12, 0x3c($s0)
/* B774 8000AB74 0C02BAB0 */  jal        func_800AEAC0
/* B778 8000AB78 00000000 */   nop
/* B77C 8000AB7C C60C003C */  lwc1       $f12, 0x3c($s0)
/* B780 8000AB80 0C02BBF4 */  jal        func_800AEFD0
/* B784 8000AB84 46000506 */   mov.s     $f20, $f0
/* B788 8000AB88 4600A306 */  mov.s      $f12, $f20
/* B78C 8000AB8C 4406B000 */  mfc1       $a2, $f22
/* B790 8000AB90 4407C000 */  mfc1       $a3, $f24
/* B794 8000AB94 00000000 */  nop
/* B798 8000AB98 0C0029CB */  jal        func_8000A72C
/* B79C 8000AB9C 46000386 */   mov.s     $f14, $f0
/* B7A0 8000ABA0 44801000 */  mtc1       $zero, $f2
/* B7A4 8000ABA4 00000000 */  nop
/* B7A8 8000ABA8 4602003C */  c.lt.s     $f0, $f2
/* B7AC 8000ABAC 00000000 */  nop
/* B7B0 8000ABB0 45000005 */  bc1f       .L8000ABC8
/* B7B4 8000ABB4 00000000 */   nop
/* B7B8 8000ABB8 3C01800C */  lui        $at, %hi(D_800B8980)
/* B7BC 8000ABBC C4208980 */  lwc1       $f0, %lo(D_800B8980)($at)
/* B7C0 8000ABC0 08002AF6 */  j          .L8000ABD8
/* B7C4 8000ABC4 E6000040 */   swc1      $f0, 0x40($s0)
.L8000ABC8:
/* B7C8 8000ABC8 3C01800C */  lui        $at, %hi(D_800B8980)
/* B7CC 8000ABCC C4208980 */  lwc1       $f0, %lo(D_800B8980)($at)
/* B7D0 8000ABD0 46000007 */  neg.s      $f0, $f0
/* B7D4 8000ABD4 E6000040 */  swc1       $f0, 0x40($s0)
.L8000ABD8:
/* B7D8 8000ABD8 3C01800C */  lui        $at, %hi(D_800B8964)
/* B7DC 8000ABDC C4208964 */  lwc1       $f0, %lo(D_800B8964)($at)
/* B7E0 8000ABE0 46000007 */  neg.s      $f0, $f0
/* B7E4 8000ABE4 3C013F66 */  lui        $at, 0x3f66
/* B7E8 8000ABE8 34216666 */  ori        $at, $at, 0x6666
/* B7EC 8000ABEC 44811000 */  mtc1       $at, $f2
/* B7F0 8000ABF0 00000000 */  nop
/* B7F4 8000ABF4 46020002 */  mul.s      $f0, $f0, $f2
/* B7F8 8000ABF8 E6000038 */  swc1       $f0, 0x38($s0)
/* B7FC 8000ABFC 96020050 */  lhu        $v0, 0x50($s0)
/* B800 8000AC00 34420010 */  ori        $v0, $v0, 0x10
/* B804 8000AC04 A6020050 */  sh         $v0, 0x50($s0)
/* B808 8000AC08 8FBF0020 */  lw         $ra, 0x20($sp)
/* B80C 8000AC0C 8FB1001C */  lw         $s1, 0x1c($sp)
/* B810 8000AC10 8FB00018 */  lw         $s0, 0x18($sp)
/* B814 8000AC14 D7B80038 */  ldc1       $f24, 0x38($sp)
/* B818 8000AC18 D7B60030 */  ldc1       $f22, 0x30($sp)
/* B81C 8000AC1C D7B40028 */  ldc1       $f20, 0x28($sp)
/* B820 8000AC20 03E00008 */  jr         $ra
/* B824 8000AC24 27BD0040 */   addiu     $sp, $sp, 0x40
