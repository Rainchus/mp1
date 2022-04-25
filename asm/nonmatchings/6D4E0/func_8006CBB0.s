	.set noat
	.set noreorder

glabel func_8006CBB0
/* 6D7B0 8006CBB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6D7B4 8006CBB4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 6D7B8 8006CBB8 24020001 */  addiu      $v0, $zero, 1
/* 6D7BC 8006CBBC 3C01800E */  lui        $at, %hi(D_800E4328)
/* 6D7C0 8006CBC0 A4224328 */  sh         $v0, %lo(D_800E4328)($at)
/* 6D7C4 8006CBC4 27A40010 */  addiu      $a0, $sp, 0x10
/* 6D7C8 8006CBC8 3C058007 */  lui        $a1, %hi(func_8006CB6C)
/* 6D7CC 8006CBCC 24A5CB6C */  addiu      $a1, $a1, %lo(func_8006CB6C)
/* 6D7D0 8006CBD0 00003021 */  addu       $a2, $zero, $zero
/* 6D7D4 8006CBD4 0C0190BF */  jal        func_800642FC
/* 6D7D8 8006CBD8 24070001 */   addiu     $a3, $zero, 1
/* 6D7DC 8006CBDC 3C04800E */  lui        $a0, %hi(D_800E4310)
/* 6D7E0 8006CBE0 24844310 */  addiu      $a0, $a0, %lo(D_800E4310)
/* 6D7E4 8006CBE4 3C068007 */  lui        $a2, %hi(func_8006C8E0)
/* 6D7E8 8006CBE8 24C6C8E0 */  addiu      $a2, $a2, %lo(func_8006C8E0)
/* 6D7EC 8006CBEC 0C01901F */  jal        func_8006407C
/* 6D7F0 8006CBF0 00002821 */   addu      $a1, $zero, $zero
/* 6D7F4 8006CBF4 3C04800E */  lui        $a0, %hi(D_800E431C)
/* 6D7F8 8006CBF8 2484431C */  addiu      $a0, $a0, %lo(D_800E431C)
/* 6D7FC 8006CBFC 3C068007 */  lui        $a2, %hi(func_8006CB1C)
/* 6D800 8006CC00 24C6CB1C */  addiu      $a2, $a2, %lo(func_8006CB1C)
/* 6D804 8006CC04 0C01901F */  jal        func_8006407C
/* 6D808 8006CC08 24050001 */   addiu     $a1, $zero, 1
/* 6D80C 8006CC0C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6D810 8006CC10 03E00008 */  jr         $ra
/* 6D814 8006CC14 27BD0028 */   addiu     $sp, $sp, 0x28
