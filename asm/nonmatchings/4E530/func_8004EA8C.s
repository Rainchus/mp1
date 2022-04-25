	.set noat
	.set noreorder

glabel func_8004EA8C
/* 4F68C 8004EA8C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4F690 8004EA90 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4F694 8004EA94 AFB40028 */  sw         $s4, 0x28($sp)
/* 4F698 8004EA98 AFB30024 */  sw         $s3, 0x24($sp)
/* 4F69C 8004EA9C AFB20020 */  sw         $s2, 0x20($sp)
/* 4F6A0 8004EAA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4F6A4 8004EAA4 AFB00018 */  sw         $s0, 0x18($sp)
/* 4F6A8 8004EAA8 00809021 */  addu       $s2, $a0, $zero
/* 4F6AC 8004EAAC 00A08021 */  addu       $s0, $a1, $zero
/* 4F6B0 8004EAB0 00C09821 */  addu       $s3, $a2, $zero
/* 4F6B4 8004EAB4 00E0A021 */  addu       $s4, $a3, $zero
/* 4F6B8 8004EAB8 2411FFFF */  addiu      $s1, $zero, -1
/* 4F6BC 8004EABC 3C028005 */  lui        $v0, %hi(func_8004E564)
/* 4F6C0 8004EAC0 2442E564 */  addiu      $v0, $v0, %lo(func_8004E564)
/* 4F6C4 8004EAC4 AFA20010 */  sw         $v0, 0x10($sp)
/* 4F6C8 8004EAC8 24041000 */  addiu      $a0, $zero, 0x1000
/* 4F6CC 8004EACC 00002821 */  addu       $a1, $zero, $zero
/* 4F6D0 8004EAD0 00003021 */  addu       $a2, $zero, $zero
/* 4F6D4 8004EAD4 0C0174E1 */  jal        func_8005D384
/* 4F6D8 8004EAD8 2407FFFF */   addiu     $a3, $zero, -1
/* 4F6DC 8004EADC 06400004 */  bltz       $s2, .L8004EAF0
/* 4F6E0 8004EAE0 00402821 */   addu      $a1, $v0, $zero
/* 4F6E4 8004EAE4 02408821 */  addu       $s1, $s2, $zero
/* 4F6E8 8004EAE8 00009021 */  addu       $s2, $zero, $zero
/* 4F6EC 8004EAEC A0B1004C */  sb         $s1, 0x4c($a1)
.L8004EAF0:
/* 4F6F0 8004EAF0 A0B3004D */  sb         $s3, 0x4d($a1)
/* 4F6F4 8004EAF4 A0B3004E */  sb         $s3, 0x4e($a1)
/* 4F6F8 8004EAF8 C6000000 */  lwc1       $f0, ($s0)
/* 4F6FC 8004EAFC E4A00018 */  swc1       $f0, 0x18($a1)
/* 4F700 8004EB00 C6000004 */  lwc1       $f0, 4($s0)
/* 4F704 8004EB04 E4A0001C */  swc1       $f0, 0x1c($a1)
/* 4F708 8004EB08 C6000008 */  lwc1       $f0, 8($s0)
/* 4F70C 8004EB0C 16400020 */  bnez       $s2, .L8004EB90
/* 4F710 8004EB10 E4A00020 */   swc1      $f0, 0x20($a1)
/* 4F714 8004EB14 00111040 */  sll        $v0, $s1, 1
/* 4F718 8004EB18 00511021 */  addu       $v0, $v0, $s1
/* 4F71C 8004EB1C 00021100 */  sll        $v0, $v0, 4
/* 4F720 8004EB20 3C03800F */  lui        $v1, %hi(D_800F32D0)
/* 4F724 8004EB24 00621821 */  addu       $v1, $v1, $v0
/* 4F728 8004EB28 8C6332D0 */  lw         $v1, %lo(D_800F32D0)($v1)
/* 4F72C 8004EB2C C6000000 */  lwc1       $f0, ($s0)
/* 4F730 8004EB30 C462000C */  lwc1       $f2, 0xc($v1)
/* 4F734 8004EB34 46020001 */  sub.s      $f0, $f0, $f2
/* 4F738 8004EB38 44932000 */  mtc1       $s3, $f4
/* 4F73C 8004EB3C 00000000 */  nop
/* 4F740 8004EB40 46802120 */  cvt.s.w    $f4, $f4
/* 4F744 8004EB44 46040003 */  div.s      $f0, $f0, $f4
/* 4F748 8004EB48 E4A00030 */  swc1       $f0, 0x30($a1)
/* 4F74C 8004EB4C 3C03800F */  lui        $v1, %hi(D_800F32D0)
/* 4F750 8004EB50 00621821 */  addu       $v1, $v1, $v0
/* 4F754 8004EB54 8C6332D0 */  lw         $v1, %lo(D_800F32D0)($v1)
/* 4F758 8004EB58 C6000004 */  lwc1       $f0, 4($s0)
/* 4F75C 8004EB5C C4620010 */  lwc1       $f2, 0x10($v1)
/* 4F760 8004EB60 46020001 */  sub.s      $f0, $f0, $f2
/* 4F764 8004EB64 46040003 */  div.s      $f0, $f0, $f4
/* 4F768 8004EB68 E4A00034 */  swc1       $f0, 0x34($a1)
/* 4F76C 8004EB6C 3C01800F */  lui        $at, %hi(D_800F32D0)
/* 4F770 8004EB70 00220821 */  addu       $at, $at, $v0
/* 4F774 8004EB74 8C2232D0 */  lw         $v0, %lo(D_800F32D0)($at)
/* 4F778 8004EB78 C6000008 */  lwc1       $f0, 8($s0)
/* 4F77C 8004EB7C C4420014 */  lwc1       $f2, 0x14($v0)
/* 4F780 8004EB80 08013AF4 */  j          .L8004EBD0
/* 4F784 8004EB84 46020001 */   sub.s     $f0, $f0, $f2
.L8004EB88:
/* 4F788 8004EB88 08013B08 */  j          .L8004EC20
/* 4F78C 8004EB8C AC850000 */   sw        $a1, ($a0)
.L8004EB90:
/* 4F790 8004EB90 C6000000 */  lwc1       $f0, ($s0)
/* 4F794 8004EB94 C642000C */  lwc1       $f2, 0xc($s2)
/* 4F798 8004EB98 46020001 */  sub.s      $f0, $f0, $f2
/* 4F79C 8004EB9C 44932000 */  mtc1       $s3, $f4
/* 4F7A0 8004EBA0 00000000 */  nop
/* 4F7A4 8004EBA4 46802120 */  cvt.s.w    $f4, $f4
/* 4F7A8 8004EBA8 46040003 */  div.s      $f0, $f0, $f4
/* 4F7AC 8004EBAC E4A00030 */  swc1       $f0, 0x30($a1)
/* 4F7B0 8004EBB0 C6000004 */  lwc1       $f0, 4($s0)
/* 4F7B4 8004EBB4 C6420010 */  lwc1       $f2, 0x10($s2)
/* 4F7B8 8004EBB8 46020001 */  sub.s      $f0, $f0, $f2
/* 4F7BC 8004EBBC 46040003 */  div.s      $f0, $f0, $f4
/* 4F7C0 8004EBC0 E4A00034 */  swc1       $f0, 0x34($a1)
/* 4F7C4 8004EBC4 C6000008 */  lwc1       $f0, 8($s0)
/* 4F7C8 8004EBC8 C6420014 */  lwc1       $f2, 0x14($s2)
/* 4F7CC 8004EBCC 46020001 */  sub.s      $f0, $f0, $f2
.L8004EBD0:
/* 4F7D0 8004EBD0 46040003 */  div.s      $f0, $f0, $f4
/* 4F7D4 8004EBD4 E4A00038 */  swc1       $f0, 0x38($a1)
/* 4F7D8 8004EBD8 C6800000 */  lwc1       $f0, ($s4)
/* 4F7DC 8004EBDC E4A00024 */  swc1       $f0, 0x24($a1)
/* 4F7E0 8004EBE0 C6800004 */  lwc1       $f0, 4($s4)
/* 4F7E4 8004EBE4 E4A00028 */  swc1       $f0, 0x28($a1)
/* 4F7E8 8004EBE8 C6800008 */  lwc1       $f0, 8($s4)
/* 4F7EC 8004EBEC E4A0002C */  swc1       $f0, 0x2c($a1)
/* 4F7F0 8004EBF0 ACB20050 */  sw         $s2, 0x50($a1)
/* 4F7F4 8004EBF4 00001821 */  addu       $v1, $zero, $zero
/* 4F7F8 8004EBF8 3C06800F */  lui        $a2, %hi(D_800F50C0)
/* 4F7FC 8004EBFC 24C650C0 */  addiu      $a2, $a2, %lo(D_800F50C0)
/* 4F800 8004EC00 00031080 */  sll        $v0, $v1, 2
.L8004EC04:
/* 4F804 8004EC04 00462021 */  addu       $a0, $v0, $a2
/* 4F808 8004EC08 8C820000 */  lw         $v0, ($a0)
/* 4F80C 8004EC0C 1040FFDE */  beqz       $v0, .L8004EB88
/* 4F810 8004EC10 24630001 */   addiu     $v1, $v1, 1
/* 4F814 8004EC14 28620020 */  slti       $v0, $v1, 0x20
/* 4F818 8004EC18 1440FFFA */  bnez       $v0, .L8004EC04
/* 4F81C 8004EC1C 00031080 */   sll       $v0, $v1, 2
.L8004EC20:
/* 4F820 8004EC20 00A01021 */  addu       $v0, $a1, $zero
/* 4F824 8004EC24 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4F828 8004EC28 8FB40028 */  lw         $s4, 0x28($sp)
/* 4F82C 8004EC2C 8FB30024 */  lw         $s3, 0x24($sp)
/* 4F830 8004EC30 8FB20020 */  lw         $s2, 0x20($sp)
/* 4F834 8004EC34 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4F838 8004EC38 8FB00018 */  lw         $s0, 0x18($sp)
/* 4F83C 8004EC3C 03E00008 */  jr         $ra
/* 4F840 8004EC40 27BD0030 */   addiu     $sp, $sp, 0x30
