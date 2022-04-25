	.set noat
	.set noreorder

glabel func_8006CDDC
/* 6D9DC 8006CDDC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6D9E0 8006CDE0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6D9E4 8006CDE4 A7A40020 */  sh         $a0, 0x20($sp)
/* 6D9E8 8006CDE8 27A40010 */  addiu      $a0, $sp, 0x10
/* 6D9EC 8006CDEC 3C058007 */  lui        $a1, %hi(func_8006CDA0)
/* 6D9F0 8006CDF0 24A5CDA0 */  addiu      $a1, $a1, %lo(func_8006CDA0)
/* 6D9F4 8006CDF4 27A60020 */  addiu      $a2, $sp, 0x20
/* 6D9F8 8006CDF8 0C0190BF */  jal        func_800642FC
/* 6D9FC 8006CDFC 24070001 */   addiu     $a3, $zero, 1
/* 6DA00 8006CE00 8FBF0028 */  lw         $ra, 0x28($sp)
/* 6DA04 8006CE04 03E00008 */  jr         $ra
/* 6DA08 8006CE08 27BD0030 */   addiu     $sp, $sp, 0x30
