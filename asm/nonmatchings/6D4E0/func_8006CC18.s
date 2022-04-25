	.set noat
	.set noreorder

glabel func_8006CC18
/* 6D818 8006CC18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6D81C 8006CC1C AFBF001C */  sw         $ra, 0x1c($sp)
/* 6D820 8006CC20 AFB20018 */  sw         $s2, 0x18($sp)
/* 6D824 8006CC24 AFB10014 */  sw         $s1, 0x14($sp)
/* 6D828 8006CC28 AFB00010 */  sw         $s0, 0x10($sp)
/* 6D82C 8006CC2C 00808021 */  addu       $s0, $a0, $zero
/* 6D830 8006CC30 86060000 */  lh         $a2, ($s0)
/* 6D834 8006CC34 00062840 */  sll        $a1, $a2, 1
/* 6D838 8006CC38 00A62821 */  addu       $a1, $a1, $a2
/* 6D83C 8006CC3C 00052880 */  sll        $a1, $a1, 2
/* 6D840 8006CC40 00A62821 */  addu       $a1, $a1, $a2
/* 6D844 8006CC44 000528C0 */  sll        $a1, $a1, 3
/* 6D848 8006CC48 3C12800E */  lui        $s2, %hi(D_800E4140)
/* 6D84C 8006CC4C 26524140 */  addiu      $s2, $s2, %lo(D_800E4140)
/* 6D850 8006CC50 3C04800F */  lui        $a0, %hi(D_800EE960)
/* 6D854 8006CC54 2484E960 */  addiu      $a0, $a0, %lo(D_800EE960)
/* 6D858 8006CC58 0C0241BD */  jal        func_800906F4
/* 6D85C 8006CC5C 00B22821 */   addu      $a1, $a1, $s2
/* 6D860 8006CC60 00408821 */  addu       $s1, $v0, $zero
/* 6D864 8006CC64 16200014 */  bnez       $s1, .L8006CCB8
/* 6D868 8006CC68 00000000 */   nop
/* 6D86C 8006CC6C 86030000 */  lh         $v1, ($s0)
/* 6D870 8006CC70 00031040 */  sll        $v0, $v1, 1
/* 6D874 8006CC74 00431021 */  addu       $v0, $v0, $v1
/* 6D878 8006CC78 00021080 */  sll        $v0, $v0, 2
/* 6D87C 8006CC7C 24030001 */  addiu      $v1, $zero, 1
/* 6D880 8006CC80 3C01800E */  lui        $at, %hi(D_800E42E0)
/* 6D884 8006CC84 00220821 */  addu       $at, $at, $v0
/* 6D888 8006CC88 A42342E0 */  sh         $v1, %lo(D_800E42E0)($at)
/* 6D88C 8006CC8C 86020000 */  lh         $v0, ($s0)
/* 6D890 8006CC90 00022040 */  sll        $a0, $v0, 1
/* 6D894 8006CC94 00822021 */  addu       $a0, $a0, $v0
/* 6D898 8006CC98 00042080 */  sll        $a0, $a0, 2
/* 6D89C 8006CC9C 00822021 */  addu       $a0, $a0, $v0
/* 6D8A0 8006CCA0 000420C0 */  sll        $a0, $a0, 3
/* 6D8A4 8006CCA4 00922021 */  addu       $a0, $a0, $s2
/* 6D8A8 8006CCA8 0C02416C */  jal        func_800905B0
/* 6D8AC 8006CCAC 00002821 */   addu      $a1, $zero, $zero
/* 6D8B0 8006CCB0 0801B335 */  j          .L8006CCD4
/* 6D8B4 8006CCB4 00000000 */   nop
.L8006CCB8:
/* 6D8B8 8006CCB8 86030000 */  lh         $v1, ($s0)
/* 6D8BC 8006CCBC 00031040 */  sll        $v0, $v1, 1
/* 6D8C0 8006CCC0 00431021 */  addu       $v0, $v0, $v1
/* 6D8C4 8006CCC4 00021080 */  sll        $v0, $v0, 2
/* 6D8C8 8006CCC8 3C01800E */  lui        $at, %hi(D_800E42E0)
/* 6D8CC 8006CCCC 00220821 */  addu       $at, $at, $v0
/* 6D8D0 8006CCD0 A42042E0 */  sh         $zero, %lo(D_800E42E0)($at)
.L8006CCD4:
/* 6D8D4 8006CCD4 86030000 */  lh         $v1, ($s0)
/* 6D8D8 8006CCD8 00031040 */  sll        $v0, $v1, 1
/* 6D8DC 8006CCDC 00431021 */  addu       $v0, $v0, $v1
/* 6D8E0 8006CCE0 00021080 */  sll        $v0, $v0, 2
/* 6D8E4 8006CCE4 3C01800E */  lui        $at, %hi(D_800E42E2)
/* 6D8E8 8006CCE8 00220821 */  addu       $at, $at, $v0
/* 6D8EC 8006CCEC A42042E2 */  sh         $zero, %lo(D_800E42E2)($at)
/* 6D8F0 8006CCF0 02201021 */  addu       $v0, $s1, $zero
/* 6D8F4 8006CCF4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6D8F8 8006CCF8 8FB20018 */  lw         $s2, 0x18($sp)
/* 6D8FC 8006CCFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 6D900 8006CD00 8FB00010 */  lw         $s0, 0x10($sp)
/* 6D904 8006CD04 03E00008 */  jr         $ra
/* 6D908 8006CD08 27BD0020 */   addiu     $sp, $sp, 0x20
