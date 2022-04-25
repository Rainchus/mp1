	.set noat
	.set noreorder

glabel func_8004F25C
/* 4FE5C 8004F25C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FE60 8004F260 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4FE64 8004F264 3C04001F */  lui        $a0, 0x1f
/* 4FE68 8004F268 34840001 */  ori        $a0, $a0, 1
/* 4FE6C 8004F26C 0C005D4A */  jal        func_80017528
/* 4FE70 8004F270 240502B9 */   addiu     $a1, $zero, 0x2b9
/* 4FE74 8004F274 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4FE78 8004F278 3042FFFF */  andi       $v0, $v0, 0xffff
/* 4FE7C 8004F27C 03E00008 */  jr         $ra
/* 4FE80 8004F280 27BD0018 */   addiu     $sp, $sp, 0x18
