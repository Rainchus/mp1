	.set noat
	.set noreorder

glabel func_8003B7E0
/* 3C3E0 8003B7E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C3E4 8003B7E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C3E8 8003B7E8 3C04800D */  lui        $a0, %hi(D_800D6040)
/* 3C3EC 8003B7EC 0C0166A9 */  jal        func_80059AA4
/* 3C3F0 8003B7F0 8C846040 */   lw        $a0, %lo(D_800D6040)($a0)
/* 3C3F4 8003B7F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C3F8 8003B7F8 03E00008 */  jr         $ra
/* 3C3FC 8003B7FC 27BD0018 */   addiu     $sp, $sp, 0x18
