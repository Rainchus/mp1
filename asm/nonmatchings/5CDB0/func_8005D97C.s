	.set noat
	.set noreorder

glabel func_8005D97C
/* 5E57C 8005D97C AC850030 */  sw         $a1, 0x30($a0)
/* 5E580 8005D980 AC860034 */  sw         $a2, 0x34($a0)
/* 5E584 8005D984 03E00008 */  jr         $ra
/* 5E588 8005D988 AC870038 */   sw        $a3, 0x38($a0)
