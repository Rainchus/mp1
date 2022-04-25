	.set noat
	.set noreorder

glabel func_8002B498
/* 2C098 8002B498 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C09C 8002B49C AFBF0010 */  sw         $ra, 0x10($sp)
/* 2C0A0 8002B4A0 0C008DCA */  jal        func_80023728
/* 2C0A4 8002B4A4 8C840000 */   lw        $a0, ($a0)
/* 2C0A8 8002B4A8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C0AC 8002B4AC 03E00008 */  jr         $ra
/* 2C0B0 8002B4B0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2C0B4 8002B4B4 00000000 */  nop
/* 2C0B8 8002B4B8 00000000 */  nop
/* 2C0BC 8002B4BC 00000000 */  nop
