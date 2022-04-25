	.set noat
	.set noreorder

glabel func_80017A50
/* 18650 80017A50 8C820050 */  lw         $v0, 0x50($a0)
/* 18654 80017A54 944200CA */  lhu        $v0, 0xca($v0)
/* 18658 80017A58 03E00008 */  jr         $ra
/* 1865C 80017A5C 30423FFF */   andi      $v0, $v0, 0x3fff
