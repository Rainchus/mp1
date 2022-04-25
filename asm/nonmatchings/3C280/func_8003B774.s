	.set noat
	.set noreorder

glabel func_8003B774
/* 3C374 8003B774 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C378 8003B778 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C37C 8003B77C 00802821 */  addu       $a1, $a0, $zero
/* 3C380 8003B780 3C04800D */  lui        $a0, %hi(D_800D6040)
/* 3C384 8003B784 0C016628 */  jal        func_800598A0
/* 3C388 8003B788 8C846040 */   lw        $a0, %lo(D_800D6040)($a0)
/* 3C38C 8003B78C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C390 8003B790 03E00008 */  jr         $ra
/* 3C394 8003B794 27BD0018 */   addiu     $sp, $sp, 0x18
