	.set noat
	.set noreorder

glabel func_8004B1EC
/* 4BDEC 8004B1EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BDF0 8004B1F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4BDF4 8004B1F4 0C012C6E */  jal        func_8004B1B8
/* 4BDF8 8004B1F8 00000000 */   nop
/* 4BDFC 8004B1FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4BE00 8004B200 03E00008 */  jr         $ra
/* 4BE04 8004B204 27BD0018 */   addiu     $sp, $sp, 0x18
