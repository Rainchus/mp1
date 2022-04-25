	.set noat
	.set noreorder

glabel func_8000E92C
/* F52C 8000E92C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F530 8000E930 AFBF0018 */  sw         $ra, 0x18($sp)
/* F534 8000E934 AFB10014 */  sw         $s1, 0x14($sp)
/* F538 8000E938 AFB00010 */  sw         $s0, 0x10($sp)
/* F53C 8000E93C F7B40020 */  sdc1       $f20, 0x20($sp)
/* F540 8000E940 00042400 */  sll        $a0, $a0, 0x10
/* F544 8000E944 00042403 */  sra        $a0, $a0, 0x10
/* F548 8000E948 00041040 */  sll        $v0, $a0, 1
/* F54C 8000E94C 00441021 */  addu       $v0, $v0, $a0
/* F550 8000E950 00021080 */  sll        $v0, $v0, 2
/* F554 8000E954 00441023 */  subu       $v0, $v0, $a0
/* F558 8000E958 00021080 */  sll        $v0, $v0, 2
/* F55C 8000E95C 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* F560 8000E960 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* F564 8000E964 00438021 */  addu       $s0, $v0, $v1
/* F568 8000E968 86020016 */  lh         $v0, 0x16($s0)
/* F56C 8000E96C 04410004 */  bgez       $v0, .L8000E980
/* F570 8000E970 2403FFF0 */   addiu     $v1, $zero, -0x10
/* F574 8000E974 8E020008 */  lw         $v0, 8($s0)
/* F578 8000E978 08003AFE */  j          .L8000EBF8
/* F57C 8000E97C 00431024 */   and       $v0, $v0, $v1
.L8000E980:
/* F580 8000E980 8E020008 */  lw         $v0, 8($s0)
/* F584 8000E984 30420001 */  andi       $v0, $v0, 1
/* F588 8000E988 10400016 */  beqz       $v0, .L8000E9E4
/* F58C 8000E98C 00000000 */   nop
/* F590 8000E990 86020018 */  lh         $v0, 0x18($s0)
/* F594 8000E994 8604001A */  lh         $a0, 0x1a($s0)
/* F598 8000E998 0C022C58 */  jal        func_8008B160
/* F59C 8000E99C 00442021 */   addu      $a0, $v0, $a0
/* F5A0 8000E9A0 C602001C */  lwc1       $f2, 0x1c($s0)
/* F5A4 8000E9A4 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F5A8 8000E9A8 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F5AC 8000E9AC 86050016 */  lh         $a1, 0x16($s0)
/* F5B0 8000E9B0 0C022A44 */  jal        func_8008A910
/* F5B4 8000E9B4 46020502 */   mul.s     $f20, $f0, $f2
/* F5B8 8000E9B8 C6000004 */  lwc1       $f0, 4($s0)
/* F5BC 8000E9BC 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F5C0 8000E9C0 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F5C4 8000E9C4 4600A002 */  mul.s      $f0, $f20, $f0
/* F5C8 8000E9C8 44050000 */  mfc1       $a1, $f0
/* F5CC 8000E9CC 0C022A80 */  jal        func_8008AA00
/* F5D0 8000E9D0 00000000 */   nop
/* F5D4 8000E9D4 8E020008 */  lw         $v0, 8($s0)
/* F5D8 8000E9D8 2403FFFE */  addiu      $v1, $zero, -2
/* F5DC 8000E9DC 00431024 */  and        $v0, $v0, $v1
/* F5E0 8000E9E0 AE020008 */  sw         $v0, 8($s0)
.L8000E9E4:
/* F5E4 8000E9E4 8E040008 */  lw         $a0, 8($s0)
/* F5E8 8000E9E8 30820002 */  andi       $v0, $a0, 2
/* F5EC 8000E9EC 10400046 */  beqz       $v0, .L8000EB08
/* F5F0 8000E9F0 00000000 */   nop
/* F5F4 8000E9F4 86020020 */  lh         $v0, 0x20($s0)
/* F5F8 8000E9F8 82030022 */  lb         $v1, 0x22($s0)
/* F5FC 8000E9FC 00430018 */  mult       $v0, $v1
/* F600 8000EA00 00001012 */  mflo       $v0
/* F604 8000EA04 82030023 */  lb         $v1, 0x23($s0)
/* F608 8000EA08 00000000 */  nop
/* F60C 8000EA0C 00430018 */  mult       $v0, $v1
/* F610 8000EA10 00001012 */  mflo       $v0
/* F614 8000EA14 3C038206 */  lui        $v1, 0x8206
/* F618 8000EA18 34631029 */  ori        $v1, $v1, 0x1029
/* F61C 8000EA1C 00430018 */  mult       $v0, $v1
/* F620 8000EA20 00003010 */  mfhi       $a2
/* F624 8000EA24 00C21821 */  addu       $v1, $a2, $v0
/* F628 8000EA28 00031B43 */  sra        $v1, $v1, 0xd
/* F62C 8000EA2C 000217C3 */  sra        $v0, $v0, 0x1f
/* F630 8000EA30 00621823 */  subu       $v1, $v1, $v0
/* F634 8000EA34 3C02800D */  lui        $v0, %hi(D_800CEAA4)
/* F638 8000EA38 8C42EAA4 */  lw         $v0, %lo(D_800CEAA4)($v0)
/* F63C 8000EA3C 30420001 */  andi       $v0, $v0, 1
/* F640 8000EA40 10400011 */  beqz       $v0, .L8000EA88
/* F644 8000EA44 00608821 */   addu      $s1, $v1, $zero
/* F648 8000EA48 30820100 */  andi       $v0, $a0, 0x100
/* F64C 8000EA4C 1440000E */  bnez       $v0, .L8000EA88
/* F650 8000EA50 00031400 */   sll       $v0, $v1, 0x10
/* F654 8000EA54 00021403 */  sra        $v0, $v0, 0x10
/* F658 8000EA58 3C03800D */  lui        $v1, %hi(D_800CEAB6)
/* F65C 8000EA5C 8463EAB6 */  lh         $v1, %lo(D_800CEAB6)($v1)
/* F660 8000EA60 00430018 */  mult       $v0, $v1
/* F664 8000EA64 00001012 */  mflo       $v0
/* F668 8000EA68 3C038102 */  lui        $v1, 0x8102
/* F66C 8000EA6C 34630409 */  ori        $v1, $v1, 0x409
/* F670 8000EA70 00430018 */  mult       $v0, $v1
/* F674 8000EA74 00003010 */  mfhi       $a2
/* F678 8000EA78 00C21821 */  addu       $v1, $a2, $v0
/* F67C 8000EA7C 00031983 */  sra        $v1, $v1, 6
/* F680 8000EA80 000217C3 */  sra        $v0, $v0, 0x1f
/* F684 8000EA84 00628823 */  subu       $s1, $v1, $v0
.L8000EA88:
/* F688 8000EA88 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F68C 8000EA8C 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F690 8000EA90 0C022A44 */  jal        func_8008A910
/* F694 8000EA94 86050016 */   lh        $a1, 0x16($s0)
/* F698 8000EA98 8E020008 */  lw         $v0, 8($s0)
/* F69C 8000EA9C 30420100 */  andi       $v0, $v0, 0x100
/* F6A0 8000EAA0 10400003 */  beqz       $v0, .L8000EAB0
/* F6A4 8000EAA4 00111400 */   sll       $v0, $s1, 0x10
/* F6A8 8000EAA8 08003ABA */  j          .L8000EAE8
/* F6AC 8000EAAC 00112C00 */   sll       $a1, $s1, 0x10
.L8000EAB0:
/* F6B0 8000EAB0 00021403 */  sra        $v0, $v0, 0x10
/* F6B4 8000EAB4 3C03800D */  lui        $v1, %hi(D_800CEAB2)
/* F6B8 8000EAB8 8463EAB2 */  lh         $v1, %lo(D_800CEAB2)($v1)
/* F6BC 8000EABC 00430018 */  mult       $v0, $v1
/* F6C0 8000EAC0 00001012 */  mflo       $v0
/* F6C4 8000EAC4 3C038001 */  lui        $v1, 0x8001
/* F6C8 8000EAC8 34630003 */  ori        $v1, $v1, 3
/* F6CC 8000EACC 00430018 */  mult       $v0, $v1
/* F6D0 8000EAD0 00003010 */  mfhi       $a2
/* F6D4 8000EAD4 00C22821 */  addu       $a1, $a2, $v0
/* F6D8 8000EAD8 00052B83 */  sra        $a1, $a1, 0xe
/* F6DC 8000EADC 000217C3 */  sra        $v0, $v0, 0x1f
/* F6E0 8000EAE0 00A22823 */  subu       $a1, $a1, $v0
/* F6E4 8000EAE4 00052C00 */  sll        $a1, $a1, 0x10
.L8000EAE8:
/* F6E8 8000EAE8 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F6EC 8000EAEC 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F6F0 8000EAF0 0C022AA0 */  jal        func_8008AA80
/* F6F4 8000EAF4 00052C03 */   sra       $a1, $a1, 0x10
/* F6F8 8000EAF8 8E020008 */  lw         $v0, 8($s0)
/* F6FC 8000EAFC 2403FFFD */  addiu      $v1, $zero, -3
/* F700 8000EB00 00431024 */  and        $v0, $v0, $v1
/* F704 8000EB04 AE020008 */  sw         $v0, 8($s0)
.L8000EB08:
/* F708 8000EB08 8E020008 */  lw         $v0, 8($s0)
/* F70C 8000EB0C 30420008 */  andi       $v0, $v0, 8
/* F710 8000EB10 1040000D */  beqz       $v0, .L8000EB48
/* F714 8000EB14 00000000 */   nop
/* F718 8000EB18 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F71C 8000EB1C 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F720 8000EB20 0C022A44 */  jal        func_8008A910
/* F724 8000EB24 86050016 */   lh        $a1, 0x16($s0)
/* F728 8000EB28 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F72C 8000EB2C 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F730 8000EB30 0C022AC8 */  jal        func_8008AB20
/* F734 8000EB34 92050028 */   lbu       $a1, 0x28($s0)
/* F738 8000EB38 8E020008 */  lw         $v0, 8($s0)
/* F73C 8000EB3C 2403FFF7 */  addiu      $v1, $zero, -9
/* F740 8000EB40 00431024 */  and        $v0, $v0, $v1
/* F744 8000EB44 AE020008 */  sw         $v0, 8($s0)
.L8000EB48:
/* F748 8000EB48 8E020008 */  lw         $v0, 8($s0)
/* F74C 8000EB4C 30420004 */  andi       $v0, $v0, 4
/* F750 8000EB50 1040002A */  beqz       $v0, .L8000EBFC
/* F754 8000EB54 00000000 */   nop
/* F758 8000EB58 3C02800F */  lui        $v0, %hi(D_800ECB2C)
/* F75C 8000EB5C 9042CB2C */  lbu        $v0, %lo(D_800ECB2C)($v0)
/* F760 8000EB60 30420001 */  andi       $v0, $v0, 1
/* F764 8000EB64 10400009 */  beqz       $v0, .L8000EB8C
/* F768 8000EB68 3402FFC0 */   ori       $v0, $zero, 0xffc0
/* F76C 8000EB6C 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F770 8000EB70 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F774 8000EB74 0C022A44 */  jal        func_8008A910
/* F778 8000EB78 86050016 */   lh        $a1, 0x16($s0)
/* F77C 8000EB7C 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F780 8000EB80 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F784 8000EB84 08003AF9 */  j          .L8000EBE4
/* F788 8000EB88 24050040 */   addiu     $a1, $zero, 0x40
.L8000EB8C:
/* F78C 8000EB8C 92110025 */  lbu        $s1, 0x25($s0)
/* F790 8000EB90 02221021 */  addu       $v0, $s1, $v0
/* F794 8000EB94 92030024 */  lbu        $v1, 0x24($s0)
/* F798 8000EB98 00621821 */  addu       $v1, $v1, $v0
/* F79C 8000EB9C 00031400 */  sll        $v0, $v1, 0x10
/* F7A0 8000EBA0 00021403 */  sra        $v0, $v0, 0x10
/* F7A4 8000EBA4 00021027 */  nor        $v0, $zero, $v0
/* F7A8 8000EBA8 000217C3 */  sra        $v0, $v0, 0x1f
/* F7AC 8000EBAC 00621824 */  and        $v1, $v1, $v0
/* F7B0 8000EBB0 00608821 */  addu       $s1, $v1, $zero
/* F7B4 8000EBB4 00031C00 */  sll        $v1, $v1, 0x10
/* F7B8 8000EBB8 00031C03 */  sra        $v1, $v1, 0x10
/* F7BC 8000EBBC 28630080 */  slti       $v1, $v1, 0x80
/* F7C0 8000EBC0 50600001 */  beql       $v1, $zero, .L8000EBC8
/* F7C4 8000EBC4 2411007F */   addiu     $s1, $zero, 0x7f
.L8000EBC8:
/* F7C8 8000EBC8 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F7CC 8000EBCC 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F7D0 8000EBD0 0C022A44 */  jal        func_8008A910
/* F7D4 8000EBD4 86050016 */   lh        $a1, 0x16($s0)
/* F7D8 8000EBD8 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* F7DC 8000EBDC 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* F7E0 8000EBE0 322500FF */  andi       $a1, $s1, 0xff
.L8000EBE4:
/* F7E4 8000EBE4 0C022AB4 */  jal        func_8008AAD0
/* F7E8 8000EBE8 00000000 */   nop
/* F7EC 8000EBEC 8E020008 */  lw         $v0, 8($s0)
/* F7F0 8000EBF0 2403FFFB */  addiu      $v1, $zero, -5
/* F7F4 8000EBF4 00431024 */  and        $v0, $v0, $v1
.L8000EBF8:
/* F7F8 8000EBF8 AE020008 */  sw         $v0, 8($s0)
.L8000EBFC:
/* F7FC 8000EBFC 8FBF0018 */  lw         $ra, 0x18($sp)
/* F800 8000EC00 8FB10014 */  lw         $s1, 0x14($sp)
/* F804 8000EC04 8FB00010 */  lw         $s0, 0x10($sp)
/* F808 8000EC08 D7B40020 */  ldc1       $f20, 0x20($sp)
/* F80C 8000EC0C 03E00008 */  jr         $ra
/* F810 8000EC10 27BD0028 */   addiu     $sp, $sp, 0x28
