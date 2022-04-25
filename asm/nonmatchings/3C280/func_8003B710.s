	.set noat
	.set noreorder

glabel func_8003B710
/* 3C310 8003B710 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C314 8003B714 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C318 8003B718 3C04800D */  lui        $a0, %hi(D_800D6030)
/* 3C31C 8003B71C 0C0166A9 */  jal        func_80059AA4
/* 3C320 8003B720 8C846030 */   lw        $a0, %lo(D_800D6030)($a0)
/* 3C324 8003B724 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C328 8003B728 03E00008 */  jr         $ra
/* 3C32C 8003B72C 27BD0018 */   addiu     $sp, $sp, 0x18
