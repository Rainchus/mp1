	.set noat
	.set noreorder

glabel func_8000940C
/* A00C 8000940C AC850024 */  sw         $a1, 0x24($a0)
/* A010 80009410 AC860028 */  sw         $a2, 0x28($a0)
/* A014 80009414 03E00008 */  jr         $ra
/* A018 80009418 AC87002C */   sw        $a3, 0x2c($a0)
