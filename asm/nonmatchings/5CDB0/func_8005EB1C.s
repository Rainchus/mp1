	.set noat
	.set noreorder

glabel func_8005EB1C
/* 5F71C 8005EB1C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 5F720 8005EB20 AFBF0048 */  sw         $ra, 0x48($sp)
/* 5F724 8005EB24 AFB10044 */  sw         $s1, 0x44($sp)
/* 5F728 8005EB28 AFB00040 */  sw         $s0, 0x40($sp)
/* 5F72C 8005EB2C F7B80060 */  sdc1       $f24, 0x60($sp)
/* 5F730 8005EB30 F7B60058 */  sdc1       $f22, 0x58($sp)
/* 5F734 8005EB34 F7B40050 */  sdc1       $f20, 0x50($sp)
/* 5F738 8005EB38 3C11800F */  lui        $s1, %hi(D_800F33EC)
/* 5F73C 8005EB3C 263133EC */  addiu      $s1, $s1, %lo(D_800F33EC)
/* 5F740 8005EB40 C6360000 */  lwc1       $f22, ($s1)
/* 5F744 8005EB44 C6380004 */  lwc1       $f24, 4($s1)
/* 5F748 8005EB48 0C02BAB0 */  jal        func_800AEAC0
/* 5F74C 8005EB4C 4600C306 */   mov.s     $f12, $f24
/* 5F750 8005EB50 46000506 */  mov.s      $f20, $f0
/* 5F754 8005EB54 0C02BBF4 */  jal        func_800AEFD0
/* 5F758 8005EB58 4600B306 */   mov.s     $f12, $f22
/* 5F75C 8005EB5C 3C10800F */  lui        $s0, %hi(D_800F6524)
/* 5F760 8005EB60 26106524 */  addiu      $s0, $s0, %lo(D_800F6524)
/* 5F764 8005EB64 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F768 8005EB68 3C01800F */  lui        $at, %hi(D_800EE98C)
/* 5F76C 8005EB6C C420E98C */  lwc1       $f0, %lo(D_800EE98C)($at)
/* 5F770 8005EB70 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F774 8005EB74 C6000000 */  lwc1       $f0, ($s0)
/* 5F778 8005EB78 4600A500 */  add.s      $f20, $f20, $f0
/* 5F77C 8005EB7C E7B40010 */  swc1       $f20, 0x10($sp)
/* 5F780 8005EB80 0C02BAB0 */  jal        func_800AEAC0
/* 5F784 8005EB84 4600B306 */   mov.s     $f12, $f22
/* 5F788 8005EB88 46000007 */  neg.s      $f0, $f0
/* 5F78C 8005EB8C 3C01800F */  lui        $at, %hi(D_800EE98C)
/* 5F790 8005EB90 C422E98C */  lwc1       $f2, %lo(D_800EE98C)($at)
/* 5F794 8005EB94 46020002 */  mul.s      $f0, $f0, $f2
/* 5F798 8005EB98 C6020004 */  lwc1       $f2, 4($s0)
/* 5F79C 8005EB9C 46020000 */  add.s      $f0, $f0, $f2
/* 5F7A0 8005EBA0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 5F7A4 8005EBA4 0C02BBF4 */  jal        func_800AEFD0
/* 5F7A8 8005EBA8 4600C306 */   mov.s     $f12, $f24
/* 5F7AC 8005EBAC 46000506 */  mov.s      $f20, $f0
/* 5F7B0 8005EBB0 0C02BBF4 */  jal        func_800AEFD0
/* 5F7B4 8005EBB4 4600B306 */   mov.s     $f12, $f22
/* 5F7B8 8005EBB8 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F7BC 8005EBBC 3C01800F */  lui        $at, %hi(D_800EE98C)
/* 5F7C0 8005EBC0 C420E98C */  lwc1       $f0, %lo(D_800EE98C)($at)
/* 5F7C4 8005EBC4 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F7C8 8005EBC8 C6020008 */  lwc1       $f2, 8($s0)
/* 5F7CC 8005EBCC 4602A500 */  add.s      $f20, $f20, $f2
/* 5F7D0 8005EBD0 E7B40018 */  swc1       $f20, 0x18($sp)
/* 5F7D4 8005EBD4 C6000000 */  lwc1       $f0, ($s0)
/* 5F7D8 8005EBD8 E7A00020 */  swc1       $f0, 0x20($sp)
/* 5F7DC 8005EBDC C6000004 */  lwc1       $f0, 4($s0)
/* 5F7E0 8005EBE0 E7A00024 */  swc1       $f0, 0x24($sp)
/* 5F7E4 8005EBE4 E7A20028 */  swc1       $f2, 0x28($sp)
/* 5F7E8 8005EBE8 0C02BAB0 */  jal        func_800AEAC0
/* 5F7EC 8005EBEC 4600C306 */   mov.s     $f12, $f24
/* 5F7F0 8005EBF0 46000506 */  mov.s      $f20, $f0
/* 5F7F4 8005EBF4 0C02BAB0 */  jal        func_800AEAC0
/* 5F7F8 8005EBF8 4600B306 */   mov.s     $f12, $f22
/* 5F7FC 8005EBFC 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F800 8005EC00 E7B40030 */  swc1       $f20, 0x30($sp)
/* 5F804 8005EC04 0C02BBF4 */  jal        func_800AEFD0
/* 5F808 8005EC08 4600B306 */   mov.s     $f12, $f22
/* 5F80C 8005EC0C E7A00034 */  swc1       $f0, 0x34($sp)
/* 5F810 8005EC10 0C02BBF4 */  jal        func_800AEFD0
/* 5F814 8005EC14 4600C306 */   mov.s     $f12, $f24
/* 5F818 8005EC18 46000506 */  mov.s      $f20, $f0
/* 5F81C 8005EC1C 0C02BAB0 */  jal        func_800AEAC0
/* 5F820 8005EC20 4600B306 */   mov.s     $f12, $f22
/* 5F824 8005EC24 4600A502 */  mul.s      $f20, $f20, $f0
/* 5F828 8005EC28 E7B40038 */  swc1       $f20, 0x38($sp)
/* 5F82C 8005EC2C 3C03800F */  lui        $v1, %hi(D_800EE73C)
/* 5F830 8005EC30 2463E73C */  addiu      $v1, $v1, %lo(D_800EE73C)
/* 5F834 8005EC34 C7A00010 */  lwc1       $f0, 0x10($sp)
/* 5F838 8005EC38 E4600000 */  swc1       $f0, ($v1)
/* 5F83C 8005EC3C C7A00018 */  lwc1       $f0, 0x18($sp)
/* 5F840 8005EC40 E4600004 */  swc1       $f0, 4($v1)
/* 5F844 8005EC44 C6200004 */  lwc1       $f0, 4($s1)
/* 5F848 8005EC48 E460FFFC */  swc1       $f0, -4($v1)
/* 5F84C 8005EC4C 3C02800C */  lui        $v0, %hi(D_800C3110)
/* 5F850 8005EC50 8C423110 */  lw         $v0, %lo(D_800C3110)($v0)
/* 5F854 8005EC54 C4400040 */  lwc1       $f0, 0x40($v0)
/* 5F858 8005EC58 E4600008 */  swc1       $f0, 8($v1)
/* 5F85C 8005EC5C 3C01469C */  lui        $at, 0x469c
/* 5F860 8005EC60 34214000 */  ori        $at, $at, 0x4000
/* 5F864 8005EC64 44810000 */  mtc1       $at, $f0
/* 5F868 8005EC68 00000000 */  nop
/* 5F86C 8005EC6C E460000C */  swc1       $f0, 0xc($v1)
/* 5F870 8005EC70 3C01461C */  lui        $at, 0x461c
/* 5F874 8005EC74 34214000 */  ori        $at, $at, 0x4000
/* 5F878 8005EC78 44810000 */  mtc1       $at, $f0
/* 5F87C 8005EC7C 00000000 */  nop
/* 5F880 8005EC80 E4600010 */  swc1       $f0, 0x10($v1)
/* 5F884 8005EC84 00002021 */  addu       $a0, $zero, $zero
/* 5F888 8005EC88 27A50010 */  addiu      $a1, $sp, 0x10
/* 5F88C 8005EC8C 27A60020 */  addiu      $a2, $sp, 0x20
/* 5F890 8005EC90 0C007508 */  jal        func_8001D420
/* 5F894 8005EC94 27A70030 */   addiu     $a3, $sp, 0x30
/* 5F898 8005EC98 0C00755F */  jal        func_8001D57C
/* 5F89C 8005EC9C 00002021 */   addu      $a0, $zero, $zero
/* 5F8A0 8005ECA0 8FBF0048 */  lw         $ra, 0x48($sp)
/* 5F8A4 8005ECA4 8FB10044 */  lw         $s1, 0x44($sp)
/* 5F8A8 8005ECA8 8FB00040 */  lw         $s0, 0x40($sp)
/* 5F8AC 8005ECAC D7B80060 */  ldc1       $f24, 0x60($sp)
/* 5F8B0 8005ECB0 D7B60058 */  ldc1       $f22, 0x58($sp)
/* 5F8B4 8005ECB4 D7B40050 */  ldc1       $f20, 0x50($sp)
/* 5F8B8 8005ECB8 03E00008 */  jr         $ra
/* 5F8BC 8005ECBC 27BD0068 */   addiu     $sp, $sp, 0x68
