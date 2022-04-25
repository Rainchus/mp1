	.set noat
	.set noreorder

glabel func_800607A8
/* 613A8 800607A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 613AC 800607AC AFBF0010 */  sw         $ra, 0x10($sp)
/* 613B0 800607B0 0C004A1B */  jal        func_8001286C
/* 613B4 800607B4 308400FF */   andi      $a0, $a0, 0xff
/* 613B8 800607B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 613BC 800607BC 03E00008 */  jr         $ra
/* 613C0 800607C0 27BD0018 */   addiu     $sp, $sp, 0x18
