	.set noat
	.set noreorder

glabel func_800565B4
/* 571B4 800565B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 571B8 800565B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 571BC 800565BC 0C015823 */  jal        func_8005608C
/* 571C0 800565C0 00000000 */   nop
/* 571C4 800565C4 0C0158E0 */  jal        func_80056380
/* 571C8 800565C8 00000000 */   nop
/* 571CC 800565CC 0C0157BA */  jal        func_80055EE8
/* 571D0 800565D0 00000000 */   nop
/* 571D4 800565D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 571D8 800565D8 03E00008 */  jr         $ra
/* 571DC 800565DC 27BD0018 */   addiu     $sp, $sp, 0x18
