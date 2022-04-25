	.set noat
	.set noreorder

glabel func_80014730
/* 15330 80014730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15334 80014734 10800003 */  beqz       $a0, .L80014744
/* 15338 80014738 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1533C 8001473C 0C00EDB2 */  jal        func_8003B6C8
/* 15340 80014740 00000000 */   nop
.L80014744:
/* 15344 80014744 8FBF0010 */  lw         $ra, 0x10($sp)
/* 15348 80014748 03E00008 */  jr         $ra
/* 1534C 8001474C 27BD0018 */   addiu     $sp, $sp, 0x18
