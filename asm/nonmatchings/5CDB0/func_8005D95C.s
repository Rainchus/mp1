	.set noat
	.set noreorder

glabel func_8005D95C
/* 5E55C 8005D95C AC850018 */  sw         $a1, 0x18($a0)
/* 5E560 8005D960 AC86001C */  sw         $a2, 0x1c($a0)
/* 5E564 8005D964 03E00008 */  jr         $ra
/* 5E568 8005D968 AC870020 */   sw        $a3, 0x20($a0)
