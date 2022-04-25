	.set noat
	.set noreorder

glabel func_800148BC
/* 154BC 800148BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 154C0 800148C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 154C4 800148C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 154C8 800148C8 00808021 */  addu       $s0, $a0, $zero
/* 154CC 800148CC 0C00EDB2 */  jal        func_8003B6C8
/* 154D0 800148D0 8E040008 */   lw        $a0, 8($s0)
/* 154D4 800148D4 0C00EDB2 */  jal        func_8003B6C8
/* 154D8 800148D8 02002021 */   addu      $a0, $s0, $zero
/* 154DC 800148DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 154E0 800148E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 154E4 800148E4 03E00008 */  jr         $ra
/* 154E8 800148E8 27BD0018 */   addiu     $sp, $sp, 0x18
