	.set noat
	.set noreorder

glabel func_8005D96C
/* 5E56C 8005D96C AC850024 */  sw         $a1, 0x24($a0)
/* 5E570 8005D970 AC860028 */  sw         $a2, 0x28($a0)
/* 5E574 8005D974 03E00008 */  jr         $ra
/* 5E578 8005D978 AC87002C */   sw        $a3, 0x2c($a0)
