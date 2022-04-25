	.set noat
	.set noreorder

glabel func_8003B680
/* 3C280 8003B680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C284 8003B684 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C288 8003B688 0C016620 */  jal        func_80059880
/* 3C28C 8003B68C 00000000 */   nop
/* 3C290 8003B690 3C01800D */  lui        $at, %hi(D_800D6030)
/* 3C294 8003B694 AC226030 */  sw         $v0, %lo(D_800D6030)($at)
/* 3C298 8003B698 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C29C 8003B69C 03E00008 */  jr         $ra
/* 3C2A0 8003B6A0 27BD0018 */   addiu     $sp, $sp, 0x18
