	.set noat
	.set noreorder

glabel func_8003B800
/* 3C400 8003B800 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C404 8003B804 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C408 8003B808 3C04800D */  lui        $a0, %hi(D_800D6040)
/* 3C40C 8003B80C 0C0166B6 */  jal        func_80059AD8
/* 3C410 8003B810 8C846040 */   lw        $a0, %lo(D_800D6040)($a0)
/* 3C414 8003B814 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C418 8003B818 03E00008 */  jr         $ra
/* 3C41C 8003B81C 27BD0018 */   addiu     $sp, $sp, 0x18
