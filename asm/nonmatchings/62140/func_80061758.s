	.set noat
	.set noreorder

glabel func_80061758
/* 62358 80061758 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6235C 8006175C AFBF0020 */  sw         $ra, 0x20($sp)
/* 62360 80061760 27A40010 */  addiu      $a0, $sp, 0x10
/* 62364 80061764 3C058006 */  lui        $a1, %hi(func_80061714)
/* 62368 80061768 24A51714 */  addiu      $a1, $a1, %lo(func_80061714)
/* 6236C 8006176C 00003021 */  addu       $a2, $zero, $zero
/* 62370 80061770 0C0190BF */  jal        func_800642FC
/* 62374 80061774 24070001 */   addiu     $a3, $zero, 1
/* 62378 80061778 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6237C 8006177C 03E00008 */  jr         $ra
/* 62380 80061780 27BD0028 */   addiu     $sp, $sp, 0x28
