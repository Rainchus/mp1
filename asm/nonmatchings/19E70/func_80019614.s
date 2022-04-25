	.set noat
	.set noreorder

glabel func_80019614
/* 1A214 80019614 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1A218 80019618 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1A21C 8001961C 27A40010 */  addiu      $a0, $sp, 0x10
/* 1A220 80019620 3C058002 */  lui        $a1, %hi(func_800195E0)
/* 1A224 80019624 24A595E0 */  addiu      $a1, $a1, %lo(func_800195E0)
/* 1A228 80019628 00003021 */  addu       $a2, $zero, $zero
/* 1A22C 8001962C 0C0190BF */  jal        func_800642FC
/* 1A230 80019630 24070001 */   addiu     $a3, $zero, 1
/* 1A234 80019634 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1A238 80019638 03E00008 */  jr         $ra
/* 1A23C 8001963C 27BD0028 */   addiu     $sp, $sp, 0x28
