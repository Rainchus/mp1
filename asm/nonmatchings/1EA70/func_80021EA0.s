	.set noat
	.set noreorder

glabel func_80021EA0
/* 22AA0 80021EA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22AA4 80021EA4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22AA8 80021EA8 3C04800F */  lui        $a0, %hi(D_800ED4A8)
/* 22AAC 80021EAC 0C00853F */  jal        func_800214FC
/* 22AB0 80021EB0 8C84D4A8 */   lw        $a0, %lo(D_800ED4A8)($a0)
/* 22AB4 80021EB4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22AB8 80021EB8 03E00008 */  jr         $ra
/* 22ABC 80021EBC 27BD0018 */   addiu     $sp, $sp, 0x18
