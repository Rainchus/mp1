	.set noat
	.set noreorder

glabel func_80019408
/* 1A008 80019408 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1A00C 8001940C AFBF0028 */  sw         $ra, 0x28($sp)
/* 1A010 80019410 AFA40020 */  sw         $a0, 0x20($sp)
/* 1A014 80019414 27A40010 */  addiu      $a0, $sp, 0x10
/* 1A018 80019418 3C058002 */  lui        $a1, %hi(func_80019270)
/* 1A01C 8001941C 24A59270 */  addiu      $a1, $a1, %lo(func_80019270)
/* 1A020 80019420 27A60020 */  addiu      $a2, $sp, 0x20
/* 1A024 80019424 0C0190BF */  jal        func_800642FC
/* 1A028 80019428 24070001 */   addiu     $a3, $zero, 1
/* 1A02C 8001942C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1A030 80019430 03E00008 */  jr         $ra
/* 1A034 80019434 27BD0030 */   addiu     $sp, $sp, 0x30
