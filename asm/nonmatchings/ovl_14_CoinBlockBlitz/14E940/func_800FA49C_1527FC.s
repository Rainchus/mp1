	.set noat
	.set noreorder

glabel func_800FA49C_1527FC
/* 1527FC 800FA49C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152800 800FA4A0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 152804 800FA4A4 AFB10024 */  sw         $s1, 0x24($sp)
/* 152808 800FA4A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 15280C 800FA4AC 00808821 */  addu       $s1, $a0, $zero
/* 152810 800FA4B0 27B00010 */  addiu      $s0, $sp, 0x10
/* 152814 800FA4B4 3C01C396 */  lui        $at, 0xc396
/* 152818 800FA4B8 44810000 */  mtc1       $at, $f0
/* 15281C 800FA4BC 00000000 */  nop
/* 152820 800FA4C0 44050000 */  mfc1       $a1, $f0
/* 152824 800FA4C4 3C06447A */  lui        $a2, 0x447a
/* 152828 800FA4C8 44070000 */  mfc1       $a3, $f0
/* 15282C 800FA4CC 00000000 */  nop
/* 152830 800FA4D0 0C028340 */  jal        func_800A0D00
/* 152834 800FA4D4 02002021 */   addu      $a0, $s0, $zero
/* 152838 800FA4D8 02202021 */  addu       $a0, $s1, $zero
/* 15283C 800FA4DC 02002821 */  addu       $a1, $s0, $zero
/* 152840 800FA4E0 00003021 */  addu       $a2, $zero, $zero
/* 152844 800FA4E4 0C03E4F8 */  jal        func_800F93E0_151740
/* 152848 800FA4E8 00003821 */   addu      $a3, $zero, $zero
/* 15284C 800FA4EC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 152850 800FA4F0 8FB10024 */  lw         $s1, 0x24($sp)
/* 152854 800FA4F4 8FB00020 */  lw         $s0, 0x20($sp)
/* 152858 800FA4F8 03E00008 */  jr         $ra
/* 15285C 800FA4FC 27BD0030 */   addiu     $sp, $sp, 0x30
