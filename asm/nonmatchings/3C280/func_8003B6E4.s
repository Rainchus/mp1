	.set noat
	.set noreorder

glabel func_8003B6E4
/* 3C2E4 8003B6E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C2E8 8003B6E8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C2EC 8003B6EC 00801021 */  addu       $v0, $a0, $zero
/* 3C2F0 8003B6F0 00A03021 */  addu       $a2, $a1, $zero
/* 3C2F4 8003B6F4 3C04800D */  lui        $a0, %hi(D_800D6030)
/* 3C2F8 8003B6F8 8C846030 */  lw         $a0, %lo(D_800D6030)($a0)
/* 3C2FC 8003B6FC 0C016677 */  jal        func_800599DC
/* 3C300 8003B700 00402821 */   addu      $a1, $v0, $zero
/* 3C304 8003B704 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C308 8003B708 03E00008 */  jr         $ra
/* 3C30C 8003B70C 27BD0018 */   addiu     $sp, $sp, 0x18
