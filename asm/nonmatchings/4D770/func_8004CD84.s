	.set noat
	.set noreorder

glabel func_8004CD84
/* 4D984 8004CD84 AC800000 */  sw         $zero, ($a0)
/* 4D988 8004CD88 AC800004 */  sw         $zero, 4($a0)
/* 4D98C 8004CD8C 3C013F80 */  lui        $at, 0x3f80
/* 4D990 8004CD90 44810000 */  mtc1       $at, $f0
/* 4D994 8004CD94 00000000 */  nop
/* 4D998 8004CD98 03E00008 */  jr         $ra
/* 4D99C 8004CD9C E4800008 */   swc1      $f0, 8($a0)
