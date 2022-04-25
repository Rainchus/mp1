	.set noat
	.set noreorder

glabel func_8004FA90
/* 50690 8004FA90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50694 8004FA94 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50698 8004FA98 000420C0 */  sll        $a0, $a0, 3
/* 5069C 8004FA9C 3C01800E */  lui        $at, %hi(D_800D8264)
/* 506A0 8004FAA0 00240821 */  addu       $at, $at, $a0
/* 506A4 8004FAA4 0C0086BD */  jal        func_80021AF4
/* 506A8 8004FAA8 8C248264 */   lw        $a0, %lo(D_800D8264)($at)
/* 506AC 8004FAAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 506B0 8004FAB0 03E00008 */  jr         $ra
/* 506B4 8004FAB4 27BD0018 */   addiu     $sp, $sp, 0x18
