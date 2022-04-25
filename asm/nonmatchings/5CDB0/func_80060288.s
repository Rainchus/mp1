	.set noat
	.set noreorder

glabel func_80060288
/* 60E88 80060288 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60E8C 8006028C AFBF0010 */  sw         $ra, 0x10($sp)
/* 60E90 80060290 0C003151 */  jal        func_8000C544
/* 60E94 80060294 00000000 */   nop
/* 60E98 80060298 00021400 */  sll        $v0, $v0, 0x10
/* 60E9C 8006029C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60EA0 800602A0 00021403 */  sra        $v0, $v0, 0x10
/* 60EA4 800602A4 03E00008 */  jr         $ra
/* 60EA8 800602A8 27BD0018 */   addiu     $sp, $sp, 0x18
