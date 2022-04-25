	.set noat
	.set noreorder

glabel func_8003B7B4
/* 3C3B4 8003B7B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C3B8 8003B7B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C3BC 8003B7BC 00801021 */  addu       $v0, $a0, $zero
/* 3C3C0 8003B7C0 00A03021 */  addu       $a2, $a1, $zero
/* 3C3C4 8003B7C4 3C04800D */  lui        $a0, %hi(D_800D6040)
/* 3C3C8 8003B7C8 8C846040 */  lw         $a0, %lo(D_800D6040)($a0)
/* 3C3CC 8003B7CC 0C016677 */  jal        func_800599DC
/* 3C3D0 8003B7D0 00402821 */   addu      $a1, $v0, $zero
/* 3C3D4 8003B7D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C3D8 8003B7D8 03E00008 */  jr         $ra
/* 3C3DC 8003B7DC 27BD0018 */   addiu     $sp, $sp, 0x18
