	.set noat
	.set noreorder

glabel func_8005B388
/* 5BF88 8005B388 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BF8C 8005B38C AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BF90 8005B390 3C04800F */  lui        $a0, %hi(D_800F37B8)
/* 5BF94 8005B394 0C016CD6 */  jal        func_8005B358
/* 5BF98 8005B398 248437B8 */   addiu     $a0, $a0, %lo(D_800F37B8)
/* 5BF9C 8005B39C 0C017381 */  jal        func_8005CE04
/* 5BFA0 8005B3A0 00000000 */   nop
/* 5BFA4 8005B3A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BFA8 8005B3A8 03E00008 */  jr         $ra
/* 5BFAC 8005B3AC 27BD0018 */   addiu     $sp, $sp, 0x18
