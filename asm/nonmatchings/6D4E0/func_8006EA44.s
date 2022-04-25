	.set noat
	.set noreorder

glabel func_8006EA44
/* 6F644 8006EA44 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6F648 8006EA48 AFBF0020 */  sw         $ra, 0x20($sp)
/* 6F64C 8006EA4C AFB1001C */  sw         $s1, 0x1c($sp)
/* 6F650 8006EA50 AFB00018 */  sw         $s0, 0x18($sp)
/* 6F654 8006EA54 00802821 */  addu       $a1, $a0, $zero
/* 6F658 8006EA58 00042400 */  sll        $a0, $a0, 0x10
/* 6F65C 8006EA5C 00048C03 */  sra        $s1, $a0, 0x10
/* 6F660 8006EA60 00111080 */  sll        $v0, $s1, 2
/* 6F664 8006EA64 00511021 */  addu       $v0, $v0, $s1
/* 6F668 8006EA68 00021140 */  sll        $v0, $v0, 5
/* 6F66C 8006EA6C 00511023 */  subu       $v0, $v0, $s1
/* 6F670 8006EA70 00021080 */  sll        $v0, $v0, 2
/* 6F674 8006EA74 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6F678 8006EA78 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6F67C 8006EA7C 00438021 */  addu       $s0, $v0, $v1
/* 6F680 8006EA80 3C02800C */  lui        $v0, %hi(D_800C5DF0)
/* 6F684 8006EA84 90425DF0 */  lbu        $v0, %lo(D_800C5DF0)($v0)
/* 6F688 8006EA88 30420007 */  andi       $v0, $v0, 7
/* 6F68C 8006EA8C 2C420006 */  sltiu      $v0, $v0, 6
/* 6F690 8006EA90 10400016 */  beqz       $v0, .L8006EAEC
/* 6F694 8006EA94 02202021 */   addu      $a0, $s1, $zero
/* 6F698 8006EA98 86070030 */  lh         $a3, 0x30($s0)
/* 6F69C 8006EA9C 86020032 */  lh         $v0, 0x32($s0)
/* 6F6A0 8006EAA0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6F6A4 8006EAA4 240500FF */  addiu      $a1, $zero, 0xff
/* 6F6A8 8006EAA8 0C01BBAE */  jal        func_8006EEB8
/* 6F6AC 8006EAAC 00003021 */   addu      $a2, $zero, $zero
/* 6F6B0 8006EAB0 92060012 */  lbu        $a2, 0x12($s0)
/* 6F6B4 8006EAB4 96070030 */  lhu        $a3, 0x30($s0)
/* 6F6B8 8006EAB8 24E7FFFF */  addiu      $a3, $a3, -1
/* 6F6BC 8006EABC 00073C00 */  sll        $a3, $a3, 0x10
/* 6F6C0 8006EAC0 96020032 */  lhu        $v0, 0x32($s0)
/* 6F6C4 8006EAC4 2442FFFF */  addiu      $v0, $v0, -1
/* 6F6C8 8006EAC8 00021400 */  sll        $v0, $v0, 0x10
/* 6F6CC 8006EACC 00021403 */  sra        $v0, $v0, 0x10
/* 6F6D0 8006EAD0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6F6D4 8006EAD4 02202021 */  addu       $a0, $s1, $zero
/* 6F6D8 8006EAD8 240500FF */  addiu      $a1, $zero, 0xff
/* 6F6DC 8006EADC 0C01BBAE */  jal        func_8006EEB8
/* 6F6E0 8006EAE0 00073C03 */   sra       $a3, $a3, 0x10
/* 6F6E4 8006EAE4 0801BACB */  j          .L8006EB2C
/* 6F6E8 8006EAE8 00000000 */   nop
.L8006EAEC:
/* 6F6EC 8006EAEC 00052400 */  sll        $a0, $a1, 0x10
/* 6F6F0 8006EAF0 96050030 */  lhu        $a1, 0x30($s0)
/* 6F6F4 8006EAF4 24A5FFFF */  addiu      $a1, $a1, -1
/* 6F6F8 8006EAF8 00052C00 */  sll        $a1, $a1, 0x10
/* 6F6FC 8006EAFC 96060032 */  lhu        $a2, 0x32($s0)
/* 6F700 8006EB00 24C6FFFF */  addiu      $a2, $a2, -1
/* 6F704 8006EB04 00063400 */  sll        $a2, $a2, 0x10
/* 6F708 8006EB08 92070007 */  lbu        $a3, 7($s0)
/* 6F70C 8006EB0C 92020008 */  lbu        $v0, 8($s0)
/* 6F710 8006EB10 24420001 */  addiu      $v0, $v0, 1
/* 6F714 8006EB14 AFA20010 */  sw         $v0, 0x10($sp)
/* 6F718 8006EB18 00042403 */  sra        $a0, $a0, 0x10
/* 6F71C 8006EB1C 00052C03 */  sra        $a1, $a1, 0x10
/* 6F720 8006EB20 00063403 */  sra        $a2, $a2, 0x10
/* 6F724 8006EB24 0C01BCEF */  jal        func_8006F3BC
/* 6F728 8006EB28 24E70001 */   addiu     $a3, $a3, 1
.L8006EB2C:
/* 6F72C 8006EB2C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6F730 8006EB30 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6F734 8006EB34 8FB00018 */  lw         $s0, 0x18($sp)
/* 6F738 8006EB38 03E00008 */  jr         $ra
/* 6F73C 8006EB3C 27BD0028 */   addiu     $sp, $sp, 0x28
