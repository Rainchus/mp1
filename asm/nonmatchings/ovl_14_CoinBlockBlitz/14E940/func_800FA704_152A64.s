	.set noat
	.set noreorder

glabel func_800FA704_152A64
/* 152A64 800FA704 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 152A68 800FA708 AFBF0028 */  sw         $ra, 0x28($sp)
/* 152A6C 800FA70C AFB10024 */  sw         $s1, 0x24($sp)
/* 152A70 800FA710 AFB00020 */  sw         $s0, 0x20($sp)
/* 152A74 800FA714 00808821 */  addu       $s1, $a0, $zero
/* 152A78 800FA718 27B00010 */  addiu      $s0, $sp, 0x10
/* 152A7C 800FA71C 02002021 */  addu       $a0, $s0, $zero
/* 152A80 800FA720 3C06447A */  lui        $a2, 0x447a
/* 152A84 800FA724 3C074396 */  lui        $a3, 0x4396
/* 152A88 800FA728 0C028340 */  jal        func_800A0D00
/* 152A8C 800FA72C 00002821 */   addu      $a1, $zero, $zero
/* 152A90 800FA730 02202021 */  addu       $a0, $s1, $zero
/* 152A94 800FA734 02002821 */  addu       $a1, $s0, $zero
/* 152A98 800FA738 24060007 */  addiu      $a2, $zero, 7
/* 152A9C 800FA73C 0C03E4F8 */  jal        func_800F93E0_151740
/* 152AA0 800FA740 24070032 */   addiu     $a3, $zero, 0x32
/* 152AA4 800FA744 8FBF0028 */  lw         $ra, 0x28($sp)
/* 152AA8 800FA748 8FB10024 */  lw         $s1, 0x24($sp)
/* 152AAC 800FA74C 8FB00020 */  lw         $s0, 0x20($sp)
/* 152AB0 800FA750 03E00008 */  jr         $ra
/* 152AB4 800FA754 27BD0030 */   addiu     $sp, $sp, 0x30
