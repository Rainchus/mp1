	.set noat
	.set noreorder

glabel func_80061DD4
/* 629D4 80061DD4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 629D8 80061DD8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 629DC 80061DDC A7A40020 */  sh         $a0, 0x20($sp)
/* 629E0 80061DE0 AFA50024 */  sw         $a1, 0x24($sp)
/* 629E4 80061DE4 A7A60028 */  sh         $a2, 0x28($sp)
/* 629E8 80061DE8 AFA7002C */  sw         $a3, 0x2c($sp)
/* 629EC 80061DEC 27A40010 */  addiu      $a0, $sp, 0x10
/* 629F0 80061DF0 3C058006 */  lui        $a1, %hi(func_80061D64)
/* 629F4 80061DF4 24A51D64 */  addiu      $a1, $a1, %lo(func_80061D64)
/* 629F8 80061DF8 27A60020 */  addiu      $a2, $sp, 0x20
/* 629FC 80061DFC 0C0190BF */  jal        func_800642FC
/* 62A00 80061E00 24070002 */   addiu     $a3, $zero, 2
/* 62A04 80061E04 8FBF0030 */  lw         $ra, 0x30($sp)
/* 62A08 80061E08 03E00008 */  jr         $ra
/* 62A0C 80061E0C 27BD0038 */   addiu     $sp, $sp, 0x38
