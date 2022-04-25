	.set noat
	.set noreorder

glabel func_8005DC18
/* 5E818 8005DC18 8C820010 */  lw         $v0, 0x10($a0)
/* 5E81C 8005DC1C 00A22825 */  or         $a1, $a1, $v0
/* 5E820 8005DC20 03E00008 */  jr         $ra
/* 5E824 8005DC24 AC850010 */   sw        $a1, 0x10($a0)
