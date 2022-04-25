	.set noat
	.set noreorder

glabel func_8003EE3C
/* 3FA3C 8003EE3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FA40 8003EE40 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3FA44 8003EE44 0C017764 */  jal        func_8005DD90
/* 3FA48 8003EE48 8C840000 */   lw        $a0, ($a0)
/* 3FA4C 8003EE4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3FA50 8003EE50 03E00008 */  jr         $ra
/* 3FA54 8003EE54 27BD0018 */   addiu     $sp, $sp, 0x18
