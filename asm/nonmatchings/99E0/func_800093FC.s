	.set noat
	.set noreorder

glabel func_800093FC
/* 9FFC 800093FC AC850018 */  sw         $a1, 0x18($a0)
/* A000 80009400 AC86001C */  sw         $a2, 0x1c($a0)
/* A004 80009404 03E00008 */  jr         $ra
/* A008 80009408 AC870020 */   sw        $a3, 0x20($a0)
