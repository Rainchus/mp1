	.set noat
	.set noreorder

glabel func_8006CD0C
/* 6D90C 8006CD0C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6D910 8006CD10 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6D914 8006CD14 A7A40020 */  sh         $a0, 0x20($sp)
/* 6D918 8006CD18 27A40010 */  addiu      $a0, $sp, 0x10
/* 6D91C 8006CD1C 3C058007 */  lui        $a1, %hi(func_8006CC18)
/* 6D920 8006CD20 24A5CC18 */  addiu      $a1, $a1, %lo(func_8006CC18)
/* 6D924 8006CD24 27A60020 */  addiu      $a2, $sp, 0x20
/* 6D928 8006CD28 0C0190BF */  jal        func_800642FC
/* 6D92C 8006CD2C 24070001 */   addiu     $a3, $zero, 1
/* 6D930 8006CD30 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6D934 8006CD34 03E00008 */  jr         $ra
/* 6D938 8006CD38 27BD0030 */   addiu     $sp, $sp, 0x30
