	.set noat
	.set noreorder

glabel func_80058818
/* 59418 80058818 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5941C 8005881C AFBF0010 */  sw         $ra, 0x10($sp)
/* 59420 80058820 24020010 */  addiu      $v0, $zero, 0x10
/* 59424 80058824 3C01800E */  lui        $at, %hi(D_800D86EC)
/* 59428 80058828 A42286EC */  sh         $v0, %lo(D_800D86EC)($at)
/* 5942C 8005882C 3C01800E */  lui        $at, %hi(D_800D86EE)
/* 59430 80058830 A42486EE */  sh         $a0, %lo(D_800D86EE)($at)
/* 59434 80058834 3C01800E */  lui        $at, %hi(D_800D86F0)
/* 59438 80058838 0C015A61 */  jal        func_80056984
/* 5943C 8005883C A42586F0 */   sh        $a1, %lo(D_800D86F0)($at)
/* 59440 80058840 8FBF0010 */  lw         $ra, 0x10($sp)
/* 59444 80058844 03E00008 */  jr         $ra
/* 59448 80058848 27BD0018 */   addiu     $sp, $sp, 0x18
