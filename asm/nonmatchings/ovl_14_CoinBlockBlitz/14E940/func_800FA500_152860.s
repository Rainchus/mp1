	.set noat
	.set noreorder

glabel func_800FA500_152860
/* 152860 800FA500 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152864 800FA504 AFBF0028 */  sw         $ra, 0x28($sp)
/* 152868 800FA508 AFB10024 */  sw         $s1, 0x24($sp)
/* 15286C 800FA50C AFB00020 */  sw         $s0, 0x20($sp)
/* 152870 800FA510 00808821 */  addu       $s1, $a0, $zero
/* 152874 800FA514 27B00010 */  addiu      $s0, $sp, 0x10
/* 152878 800FA518 02002021 */  addu       $a0, $s0, $zero
/* 15287C 800FA51C 3C06447A */  lui        $a2, 0x447a
/* 152880 800FA520 3C07C396 */  lui        $a3, 0xc396
/* 152884 800FA524 0C028340 */  jal        func_800A0D00
/* 152888 800FA528 00002821 */   addu      $a1, $zero, $zero
/* 15288C 800FA52C 02202021 */  addu       $a0, $s1, $zero
/* 152890 800FA530 02002821 */  addu       $a1, $s0, $zero
/* 152894 800FA534 24060001 */  addiu      $a2, $zero, 1
/* 152898 800FA538 0C03E4F8 */  jal        func_800F93E0_151740
/* 15289C 800FA53C 2407000A */   addiu     $a3, $zero, 0xa
/* 1528A0 800FA540 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1528A4 800FA544 8FB10024 */  lw         $s1, 0x24($sp)
/* 1528A8 800FA548 8FB00020 */  lw         $s0, 0x20($sp)
/* 1528AC 800FA54C 03E00008 */  jr         $ra
/* 1528B0 800FA550 27BD0030 */   addiu     $sp, $sp, 0x30
