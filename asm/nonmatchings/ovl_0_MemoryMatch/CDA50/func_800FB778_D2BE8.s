	.set noat
	.set noreorder

glabel func_800FB778_D2BE8
/* D2BE8 800FB778 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2BEC 800FB77C AFBF0018 */  sw         $ra, 0x18($sp)
/* D2BF0 800FB780 AFB10014 */  sw         $s1, 0x14($sp)
/* D2BF4 800FB784 AFB00010 */  sw         $s0, 0x10($sp)
/* D2BF8 800FB788 00808821 */  addu       $s1, $a0, $zero
/* D2BFC 800FB78C 0C005D63 */  jal        func_8001758C
/* D2C00 800FB790 8E300050 */   lw        $s0, 0x50($s1)
/* D2C04 800FB794 30420007 */  andi       $v0, $v0, 7
/* D2C08 800FB798 A222004D */  sb         $v0, 0x4d($s1)
/* D2C0C 800FB79C 44800000 */  mtc1       $zero, $f0
/* D2C10 800FB7A0 00000000 */  nop
/* D2C14 800FB7A4 E6200028 */  swc1       $f0, 0x28($s1)
/* D2C18 800FB7A8 0C005D63 */  jal        func_8001758C
/* D2C1C 800FB7AC E6200024 */   swc1      $f0, 0x24($s1)
/* D2C20 800FB7B0 304200FF */  andi       $v0, $v0, 0xff
/* D2C24 800FB7B4 00021900 */  sll        $v1, $v0, 4
/* D2C28 800FB7B8 00621823 */  subu       $v1, $v1, $v0
/* D2C2C 800FB7BC 00031A03 */  sra        $v1, $v1, 8
/* D2C30 800FB7C0 44830000 */  mtc1       $v1, $f0
/* D2C34 800FB7C4 00000000 */  nop
/* D2C38 800FB7C8 46800021 */  cvt.d.w    $f0, $f0
/* D2C3C 800FB7CC 3C018010 */  lui        $at, %hi(D_800FDC30)
/* D2C40 800FB7D0 D422DC30 */  ldc1       $f2, %lo(D_800FDC30)($at)
/* D2C44 800FB7D4 46220000 */  add.d      $f0, $f0, $f2
/* D2C48 800FB7D8 46200020 */  cvt.s.d    $f0, $f0
/* D2C4C 800FB7DC E620002C */  swc1       $f0, 0x2c($s1)
/* D2C50 800FB7E0 92020005 */  lbu        $v0, 5($s0)
/* D2C54 800FB7E4 30420001 */  andi       $v0, $v0, 1
/* D2C58 800FB7E8 10400003 */  beqz       $v0, .L800FB7F8
/* D2C5C 800FB7EC 00000000 */   nop
/* D2C60 800FB7F0 46000007 */  neg.s      $f0, $f0
/* D2C64 800FB7F4 E620002C */  swc1       $f0, 0x2c($s1)
.L800FB7F8:
/* D2C68 800FB7F8 8E220040 */  lw         $v0, 0x40($s1)
/* D2C6C 800FB7FC 84440000 */  lh         $a0, ($v0)
/* D2C70 800FB800 8E250024 */  lw         $a1, 0x24($s1)
/* D2C74 800FB804 8E260028 */  lw         $a2, 0x28($s1)
/* D2C78 800FB808 0C0095F9 */  jal        func_800257E4
/* D2C7C 800FB80C 8E27002C */   lw        $a3, 0x2c($s1)
/* D2C80 800FB810 3C013F80 */  lui        $at, 0x3f80
/* D2C84 800FB814 44810000 */  mtc1       $at, $f0
/* D2C88 800FB818 00000000 */  nop
/* D2C8C 800FB81C E6200038 */  swc1       $f0, 0x38($s1)
/* D2C90 800FB820 0C005D63 */  jal        func_8001758C
/* D2C94 800FB824 E6200034 */   swc1      $f0, 0x34($s1)
/* D2C98 800FB828 304200FF */  andi       $v0, $v0, 0xff
/* D2C9C 800FB82C 44820000 */  mtc1       $v0, $f0
/* D2CA0 800FB830 00000000 */  nop
/* D2CA4 800FB834 46800020 */  cvt.s.w    $f0, $f0
/* D2CA8 800FB838 46000021 */  cvt.d.s    $f0, $f0
/* D2CAC 800FB83C 3C018010 */  lui        $at, %hi(D_800FDC38)
/* D2CB0 800FB840 D422DC38 */  ldc1       $f2, %lo(D_800FDC38)($at)
/* D2CB4 800FB844 46220003 */  div.d      $f0, $f0, $f2
/* D2CB8 800FB848 3C018010 */  lui        $at, %hi(D_800FDC40)
/* D2CBC 800FB84C D422DC40 */  ldc1       $f2, %lo(D_800FDC40)($at)
/* D2CC0 800FB850 46220000 */  add.d      $f0, $f0, $f2
/* D2CC4 800FB854 46200020 */  cvt.s.d    $f0, $f0
/* D2CC8 800FB858 E6200030 */  swc1       $f0, 0x30($s1)
/* D2CCC 800FB85C 8E220040 */  lw         $v0, 0x40($s1)
/* D2CD0 800FB860 84440000 */  lh         $a0, ($v0)
/* D2CD4 800FB864 44050000 */  mfc1       $a1, $f0
/* D2CD8 800FB868 8E260034 */  lw         $a2, 0x34($s1)
/* D2CDC 800FB86C 0C00960C */  jal        func_80025830
/* D2CE0 800FB870 8E270038 */   lw        $a3, 0x38($s1)
/* D2CE4 800FB874 8FBF0018 */  lw         $ra, 0x18($sp)
/* D2CE8 800FB878 8FB10014 */  lw         $s1, 0x14($sp)
/* D2CEC 800FB87C 8FB00010 */  lw         $s0, 0x10($sp)
/* D2CF0 800FB880 03E00008 */  jr         $ra
/* D2CF4 800FB884 27BD0020 */   addiu     $sp, $sp, 0x20
