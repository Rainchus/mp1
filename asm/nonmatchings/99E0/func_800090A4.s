	.set noat
	.set noreorder

glabel func_800090A4
/* 9CA4 800090A4 8C830050 */  lw         $v1, 0x50($a0)
/* 9CA8 800090A8 90620001 */  lbu        $v0, 1($v1)
/* 9CAC 800090AC 34420080 */  ori        $v0, $v0, 0x80
/* 9CB0 800090B0 03E00008 */  jr         $ra
/* 9CB4 800090B4 A0620001 */   sb        $v0, 1($v1)
