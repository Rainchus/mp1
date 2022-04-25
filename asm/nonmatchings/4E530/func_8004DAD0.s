	.set noat
	.set noreorder

glabel func_8004DAD0
/* 4E6D0 8004DAD0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4E6D4 8004DAD4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4E6D8 8004DAD8 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4E6DC 8004DADC AFB20018 */  sw         $s2, 0x18($sp)
/* 4E6E0 8004DAE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E6E4 8004DAE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E6E8 8004DAE8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4E6EC 8004DAEC 00809021 */  addu       $s2, $a0, $zero
/* 4E6F0 8004DAF0 0C0180AB */  jal        func_800602AC
/* 4E6F4 8004DAF4 24040037 */   addiu     $a0, $zero, 0x37
/* 4E6F8 8004DAF8 241000B4 */  addiu      $s0, $zero, 0xb4
/* 4E6FC 8004DAFC 00121400 */  sll        $v0, $s2, 0x10
/* 4E700 8004DB00 00028C03 */  sra        $s1, $v0, 0x10
/* 4E704 8004DB04 241300B4 */  addiu      $s3, $zero, 0xb4
/* 4E708 8004DB08 3C014334 */  lui        $at, 0x4334
/* 4E70C 8004DB0C 4481A000 */  mtc1       $at, $f20
.L8004DB10:
/* 4E710 8004DB10 0C018D6D */  jal        func_800635B4
/* 4E714 8004DB14 00000000 */   nop
/* 4E718 8004DB18 02701023 */  subu       $v0, $s3, $s0
/* 4E71C 8004DB1C 00021040 */  sll        $v0, $v0, 1
/* 4E720 8004DB20 44821000 */  mtc1       $v0, $f2
/* 4E724 8004DB24 00000000 */  nop
/* 4E728 8004DB28 468010A0 */  cvt.s.w    $f2, $f2
/* 4E72C 8004DB2C 44051000 */  mfc1       $a1, $f2
/* 4E730 8004DB30 00000000 */  nop
/* 4E734 8004DB34 0C01B807 */  jal        func_8006E01C
/* 4E738 8004DB38 02202021 */   addu      $a0, $s1, $zero
/* 4E73C 8004DB3C 44900000 */  mtc1       $s0, $f0
/* 4E740 8004DB40 00000000 */  nop
/* 4E744 8004DB44 46800020 */  cvt.s.w    $f0, $f0
/* 4E748 8004DB48 46140003 */  div.s      $f0, $f0, $f20
/* 4E74C 8004DB4C 44050000 */  mfc1       $a1, $f0
/* 4E750 8004DB50 44060000 */  mfc1       $a2, $f0
/* 4E754 8004DB54 00000000 */  nop
/* 4E758 8004DB58 0C01B788 */  jal        func_8006DE20
/* 4E75C 8004DB5C 02202021 */   addu      $a0, $s1, $zero
/* 4E760 8004DB60 2610FFEC */  addiu      $s0, $s0, -0x14
/* 4E764 8004DB64 0601FFEA */  bgez       $s0, .L8004DB10
/* 4E768 8004DB68 00122400 */   sll       $a0, $s2, 0x10
/* 4E76C 8004DB6C 0C01C364 */  jal        func_80070D90
/* 4E770 8004DB70 00042403 */   sra       $a0, $a0, 0x10
/* 4E774 8004DB74 0C018D6D */  jal        func_800635B4
/* 4E778 8004DB78 00000000 */   nop
/* 4E77C 8004DB7C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4E780 8004DB80 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4E784 8004DB84 8FB20018 */  lw         $s2, 0x18($sp)
/* 4E788 8004DB88 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E78C 8004DB8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E790 8004DB90 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4E794 8004DB94 03E00008 */  jr         $ra
/* 4E798 8004DB98 27BD0030 */   addiu     $sp, $sp, 0x30
