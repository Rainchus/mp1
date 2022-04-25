	.set noat
	.set noreorder

glabel func_8004CC14
/* 4D814 8004CC14 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4D818 8004CC18 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4D81C 8004CC1C AFB10014 */  sw         $s1, 0x14($sp)
/* 4D820 8004CC20 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D824 8004CC24 00808021 */  addu       $s0, $a0, $zero
/* 4D828 8004CC28 00C08821 */  addu       $s1, $a2, $zero
/* 4D82C 8004CC2C 00052400 */  sll        $a0, $a1, 0x10
/* 4D830 8004CC30 0C01307B */  jal        func_8004C1EC
/* 4D834 8004CC34 00042403 */   sra       $a0, $a0, 0x10
/* 4D838 8004CC38 00108400 */  sll        $s0, $s0, 0x10
/* 4D83C 8004CC3C 00108343 */  sra        $s0, $s0, 0xd
/* 4D840 8004CC40 C4400004 */  lwc1       $f0, 4($v0)
/* 4D844 8004CC44 3C01800C */  lui        $at, %hi(D_800C51E0)
/* 4D848 8004CC48 00300821 */  addu       $at, $at, $s0
/* 4D84C 8004CC4C C42251E0 */  lwc1       $f2, %lo(D_800C51E0)($at)
/* 4D850 8004CC50 46020000 */  add.s      $f0, $f0, $f2
/* 4D854 8004CC54 E6200000 */  swc1       $f0, ($s1)
/* 4D858 8004CC58 C4400008 */  lwc1       $f0, 8($v0)
/* 4D85C 8004CC5C E6200004 */  swc1       $f0, 4($s1)
/* 4D860 8004CC60 C440000C */  lwc1       $f0, 0xc($v0)
/* 4D864 8004CC64 3C01800C */  lui        $at, %hi(D_800C51E4)
/* 4D868 8004CC68 00300821 */  addu       $at, $at, $s0
/* 4D86C 8004CC6C C42251E4 */  lwc1       $f2, %lo(D_800C51E4)($at)
/* 4D870 8004CC70 46020000 */  add.s      $f0, $f0, $f2
/* 4D874 8004CC74 E6200008 */  swc1       $f0, 8($s1)
/* 4D878 8004CC78 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4D87C 8004CC7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4D880 8004CC80 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D884 8004CC84 03E00008 */  jr         $ra
/* 4D888 8004CC88 27BD0020 */   addiu     $sp, $sp, 0x20
