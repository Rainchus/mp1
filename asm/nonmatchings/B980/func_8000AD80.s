	.set noat
	.set noreorder

glabel func_8000AD80
/* B980 8000AD80 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* B984 8000AD84 AFBF0044 */  sw         $ra, 0x44($sp)
/* B988 8000AD88 AFB20040 */  sw         $s2, 0x40($sp)
/* B98C 8000AD8C AFB1003C */  sw         $s1, 0x3c($sp)
/* B990 8000AD90 AFB00038 */  sw         $s0, 0x38($sp)
/* B994 8000AD94 00809021 */  addu       $s2, $a0, $zero
/* B998 8000AD98 00A08021 */  addu       $s0, $a1, $zero
/* B99C 8000AD9C 00C08821 */  addu       $s1, $a2, $zero
/* B9A0 8000ADA0 02002021 */  addu       $a0, $s0, $zero
/* B9A4 8000ADA4 0C0220C0 */  jal        func_80088300
/* B9A8 8000ADA8 02202821 */   addu      $a1, $s1, $zero
/* B9AC 8000ADAC AFB00010 */  sw         $s0, 0x10($sp)
/* B9B0 8000ADB0 AFB10014 */  sw         $s1, 0x14($sp)
/* B9B4 8000ADB4 3C10800D */  lui        $s0, %hi(D_800CDA90)
/* B9B8 8000ADB8 2610DA90 */  addiu      $s0, $s0, %lo(D_800CDA90)
/* B9BC 8000ADBC AFB00018 */  sw         $s0, 0x18($sp)
/* B9C0 8000ADC0 27A40020 */  addiu      $a0, $sp, 0x20
/* B9C4 8000ADC4 00002821 */  addu       $a1, $zero, $zero
/* B9C8 8000ADC8 00003021 */  addu       $a2, $zero, $zero
/* B9CC 8000ADCC 0C0187E8 */  jal        func_80061FA0
/* B9D0 8000ADD0 02403821 */   addu      $a3, $s2, $zero
/* B9D4 8000ADD4 02002021 */  addu       $a0, $s0, $zero
/* B9D8 8000ADD8 00002821 */  addu       $a1, $zero, $zero
/* B9DC 8000ADDC 0C022278 */  jal        func_800889E0
/* B9E0 8000ADE0 24060001 */   addiu     $a2, $zero, 1
/* B9E4 8000ADE4 8FBF0044 */  lw         $ra, 0x44($sp)
/* B9E8 8000ADE8 8FB20040 */  lw         $s2, 0x40($sp)
/* B9EC 8000ADEC 8FB1003C */  lw         $s1, 0x3c($sp)
/* B9F0 8000ADF0 8FB00038 */  lw         $s0, 0x38($sp)
/* B9F4 8000ADF4 03E00008 */  jr         $ra
/* B9F8 8000ADF8 27BD0048 */   addiu     $sp, $sp, 0x48
