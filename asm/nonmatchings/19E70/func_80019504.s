	.set noat
	.set noreorder

glabel func_80019504
/* 1A104 80019504 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1A108 80019508 AFBF0030 */  sw         $ra, 0x30($sp)
/* 1A10C 8001950C 24840008 */  addiu      $a0, $a0, 8
/* 1A110 80019510 A7A40020 */  sh         $a0, 0x20($sp)
/* 1A114 80019514 AFA50024 */  sw         $a1, 0x24($sp)
/* 1A118 80019518 A7A60028 */  sh         $a2, 0x28($sp)
/* 1A11C 8001951C 27A40010 */  addiu      $a0, $sp, 0x10
/* 1A120 80019520 3C058002 */  lui        $a1, %hi(func_80019438)
/* 1A124 80019524 24A59438 */  addiu      $a1, $a1, %lo(func_80019438)
/* 1A128 80019528 27A60020 */  addiu      $a2, $sp, 0x20
/* 1A12C 8001952C 0C0190BF */  jal        func_800642FC
/* 1A130 80019530 24070001 */   addiu     $a3, $zero, 1
/* 1A134 80019534 8FBF0030 */  lw         $ra, 0x30($sp)
/* 1A138 80019538 03E00008 */  jr         $ra
/* 1A13C 8001953C 27BD0038 */   addiu     $sp, $sp, 0x38
