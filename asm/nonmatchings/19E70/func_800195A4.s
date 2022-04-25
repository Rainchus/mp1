	.set noat
	.set noreorder

glabel func_800195A4
/* 1A1A4 800195A4 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A1A8 800195A8 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1A1AC 800195AC 24840008 */  addiu      $a0, $a0, 8
/* 1A1B0 800195B0 A7A40020 */  sh         $a0, 0x20($sp)
/* 1A1B4 800195B4 AFA50024 */  sw         $a1, 0x24($sp)
/* 1A1B8 800195B8 A7A60028 */  sh         $a2, 0x28($sp)
/* 1A1BC 800195BC 27A40010 */  addiu      $a0, $sp, 0x10
/* 1A1C0 800195C0 3C058002 */  lui        $a1, %hi(func_80019540)
/* 1A1C4 800195C4 24A59540 */  addiu      $a1, $a1, %lo(func_80019540)
/* 1A1C8 800195C8 27A60020 */  addiu      $a2, $sp, 0x20
/* 1A1CC 800195CC 0C0190BF */  jal        func_800642FC
/* 1A1D0 800195D0 24070001 */   addiu     $a3, $zero, 1
/* 1A1D4 800195D4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1A1D8 800195D8 03E00008 */  jr         $ra
/* 1A1DC 800195DC 27BD0038 */   addiu     $sp, $sp, 0x38
