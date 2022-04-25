	.set noat
	.set noreorder

glabel func_8004B994
/* 4C594 8004B994 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C598 8004B998 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4C59C 8004B99C 0C012E18 */  jal        func_8004B860
/* 4C5A0 8004B9A0 00002021 */   addu      $a0, $zero, $zero
/* 4C5A4 8004B9A4 3C01800C */  lui        $at, %hi(D_800C4FD0)
/* 4C5A8 8004B9A8 AC204FD0 */  sw         $zero, %lo(D_800C4FD0)($at)
/* 4C5AC 8004B9AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4C5B0 8004B9B0 03E00008 */  jr         $ra
/* 4C5B4 8004B9B4 27BD0018 */   addiu     $sp, $sp, 0x18
