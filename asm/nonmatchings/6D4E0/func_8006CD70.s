	.set noat
	.set noreorder

glabel func_8006CD70
/* 6D970 8006CD70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6D974 8006CD74 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6D978 8006CD78 A7A40020 */  sh         $a0, 0x20($sp)
/* 6D97C 8006CD7C 27A40010 */  addiu      $a0, $sp, 0x10
/* 6D980 8006CD80 3C058007 */  lui        $a1, %hi(func_8006CD3C)
/* 6D984 8006CD84 24A5CD3C */  addiu      $a1, $a1, %lo(func_8006CD3C)
/* 6D988 8006CD88 27A60020 */  addiu      $a2, $sp, 0x20
/* 6D98C 8006CD8C 0C0190BF */  jal        func_800642FC
/* 6D990 8006CD90 24070001 */   addiu     $a3, $zero, 1
/* 6D994 8006CD94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6D998 8006CD98 03E00008 */  jr         $ra
/* 6D99C 8006CD9C 27BD0030 */   addiu     $sp, $sp, 0x30
