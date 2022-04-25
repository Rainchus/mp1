	.set noat
	.set noreorder

glabel func_800FA5A8_152908
/* 152908 800FA5A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 15290C 800FA5AC AFBF0028 */  sw         $ra, 0x28($sp)
/* 152910 800FA5B0 AFB10024 */  sw         $s1, 0x24($sp)
/* 152914 800FA5B4 AFB00020 */  sw         $s0, 0x20($sp)
/* 152918 800FA5B8 00808821 */  addu       $s1, $a0, $zero
/* 15291C 800FA5BC 27B00010 */  addiu      $s0, $sp, 0x10
/* 152920 800FA5C0 02002021 */  addu       $a0, $s0, $zero
/* 152924 800FA5C4 3C05C396 */  lui        $a1, 0xc396
/* 152928 800FA5C8 3C06447A */  lui        $a2, 0x447a
/* 15292C 800FA5CC 0C028340 */  jal        func_800A0D00
/* 152930 800FA5D0 00003821 */   addu      $a3, $zero, $zero
/* 152934 800FA5D4 02202021 */  addu       $a0, $s1, $zero
/* 152938 800FA5D8 02002821 */  addu       $a1, $s0, $zero
/* 15293C 800FA5DC 24060003 */  addiu      $a2, $zero, 3
/* 152940 800FA5E0 0C03E4F8 */  jal        func_800F93E0_151740
/* 152944 800FA5E4 24070046 */   addiu     $a3, $zero, 0x46
/* 152948 800FA5E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 15294C 800FA5EC 8FB10024 */  lw         $s1, 0x24($sp)
/* 152950 800FA5F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 152954 800FA5F4 03E00008 */  jr         $ra
/* 152958 800FA5F8 27BD0030 */   addiu     $sp, $sp, 0x30
