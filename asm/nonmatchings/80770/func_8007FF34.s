	.set noat
	.set noreorder

glabel func_8007FF34
/* 80B34 8007FF34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 80B38 8007FF38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 80B3C 8007FF3C 0C020494 */  jal        func_80081250
/* 80B40 8007FF40 00000000 */   nop
/* 80B44 8007FF44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 80B48 8007FF48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 80B4C 8007FF4C 00001025 */  or         $v0, $zero, $zero
/* 80B50 8007FF50 03E00008 */  jr         $ra
/* 80B54 8007FF54 00000000 */   nop
