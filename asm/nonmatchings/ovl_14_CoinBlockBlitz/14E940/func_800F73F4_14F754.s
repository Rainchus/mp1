	.set noat
	.set noreorder

glabel func_800F73F4_14F754
/* 14F754 800F73F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14F758 800F73F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 14F75C 800F73FC AFB00010 */  sw         $s0, 0x10($sp)
/* 14F760 800F7400 3084FFFF */  andi       $a0, $a0, 0xffff
/* 14F764 800F7404 00042080 */  sll        $a0, $a0, 2
/* 14F768 800F7408 3C01800F */  lui        $at, %hi(D_800F3FB0)
/* 14F76C 800F740C 00240821 */  addu       $at, $at, $a0
/* 14F770 800F7410 8C243FB0 */  lw         $a0, %lo(D_800F3FB0)($at)
/* 14F774 800F7414 0C005E98 */  jal        func_80017A60
/* 14F778 800F7418 8C900050 */   lw        $s0, 0x50($a0)
/* 14F77C 800F741C 00401821 */  addu       $v1, $v0, $zero
/* 14F780 800F7420 C6020038 */  lwc1       $f2, 0x38($s0)
/* 14F784 800F7424 3C01447A */  lui        $at, 0x447a
/* 14F788 800F7428 44810000 */  mtc1       $at, $f0
/* 14F78C 800F742C 00000000 */  nop
/* 14F790 800F7430 46001032 */  c.eq.s     $f2, $f0
/* 14F794 800F7434 00000000 */  nop
/* 14F798 800F7438 00000000 */  nop
/* 14F79C 800F743C 45000003 */  bc1f       .L800F744C
/* 14F7A0 800F7440 00001021 */   addu      $v0, $zero, $zero
/* 14F7A4 800F7444 30620006 */  andi       $v0, $v1, 6
/* 14F7A8 800F7448 0002102B */  sltu       $v0, $zero, $v0
.L800F744C:
/* 14F7AC 800F744C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14F7B0 800F7450 8FB00010 */  lw         $s0, 0x10($sp)
/* 14F7B4 800F7454 03E00008 */  jr         $ra
/* 14F7B8 800F7458 27BD0018 */   addiu     $sp, $sp, 0x18
