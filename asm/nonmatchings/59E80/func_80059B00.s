	.set noat
	.set noreorder

glabel func_80059B00
/* 5A700 80059B00 2484001F */  addiu      $a0, $a0, 0x1f
/* 5A704 80059B04 2402FFF0 */  addiu      $v0, $zero, -0x10
/* 5A708 80059B08 03E00008 */  jr         $ra
/* 5A70C 80059B0C 00821024 */   and       $v0, $a0, $v0
