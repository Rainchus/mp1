	.set noat
	.set noreorder

glabel func_8000941C
/* A01C 8000941C AC850030 */  sw         $a1, 0x30($a0)
/* A020 80009420 AC860034 */  sw         $a2, 0x34($a0)
/* A024 80009424 03E00008 */  jr         $ra
/* A028 80009428 AC870038 */   sw        $a3, 0x38($a0)
