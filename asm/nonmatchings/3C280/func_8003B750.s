	.set noat
	.set noreorder

glabel func_8003B750
/* 3C350 8003B750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C354 8003B754 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C358 8003B758 0C016620 */  jal        func_80059880
/* 3C35C 8003B75C 00000000 */   nop
/* 3C360 8003B760 3C01800D */  lui        $at, %hi(D_800D6040)
/* 3C364 8003B764 AC226040 */  sw         $v0, %lo(D_800D6040)($at)
/* 3C368 8003B768 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C36C 8003B76C 03E00008 */  jr         $ra
/* 3C370 8003B770 27BD0018 */   addiu     $sp, $sp, 0x18
