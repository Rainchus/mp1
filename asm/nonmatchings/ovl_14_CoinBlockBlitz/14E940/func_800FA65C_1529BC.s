	.set noat
	.set noreorder

glabel func_800FA65C_1529BC
/* 1529BC 800FA65C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1529C0 800FA660 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1529C4 800FA664 AFB10024 */  sw         $s1, 0x24($sp)
/* 1529C8 800FA668 AFB00020 */  sw         $s0, 0x20($sp)
/* 1529CC 800FA66C 00808821 */  addu       $s1, $a0, $zero
/* 1529D0 800FA670 27B00010 */  addiu      $s0, $sp, 0x10
/* 1529D4 800FA674 02002021 */  addu       $a0, $s0, $zero
/* 1529D8 800FA678 3C054396 */  lui        $a1, 0x4396
/* 1529DC 800FA67C 3C06447A */  lui        $a2, 0x447a
/* 1529E0 800FA680 0C028340 */  jal        func_800A0D00
/* 1529E4 800FA684 00003821 */   addu      $a3, $zero, $zero
/* 1529E8 800FA688 02202021 */  addu       $a0, $s1, $zero
/* 1529EC 800FA68C 02002821 */  addu       $a1, $s0, $zero
/* 1529F0 800FA690 24060005 */  addiu      $a2, $zero, 5
/* 1529F4 800FA694 0C03E4F8 */  jal        func_800F93E0_151740
/* 1529F8 800FA698 2407001E */   addiu     $a3, $zero, 0x1e
/* 1529FC 800FA69C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 152A00 800FA6A0 8FB10024 */  lw         $s1, 0x24($sp)
/* 152A04 800FA6A4 8FB00020 */  lw         $s0, 0x20($sp)
/* 152A08 800FA6A8 03E00008 */  jr         $ra
/* 152A0C 800FA6AC 27BD0030 */   addiu     $sp, $sp, 0x30
