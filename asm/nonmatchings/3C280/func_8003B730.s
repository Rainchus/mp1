	.set noat
	.set noreorder

glabel func_8003B730
/* 3C330 8003B730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C334 8003B734 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C338 8003B738 3C04800D */  lui        $a0, %hi(D_800D6030)
/* 3C33C 8003B73C 0C0166B6 */  jal        func_80059AD8
/* 3C340 8003B740 8C846030 */   lw        $a0, %lo(D_800D6030)($a0)
/* 3C344 8003B744 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C348 8003B748 03E00008 */  jr         $ra
/* 3C34C 8003B74C 27BD0018 */   addiu     $sp, $sp, 0x18
