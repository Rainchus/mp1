	.set noat
	.set noreorder

glabel func_800596B8
/* 5A2B8 800596B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5A2BC 800596BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 5A2C0 800596C0 00042400 */  sll        $a0, $a0, 0x10
/* 5A2C4 800596C4 0C016548 */  jal        func_80059520
/* 5A2C8 800596C8 00042403 */   sra       $a0, $a0, 0x10
/* 5A2CC 800596CC 94420002 */  lhu        $v0, 2($v0)
/* 5A2D0 800596D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5A2D4 800596D4 03E00008 */  jr         $ra
/* 5A2D8 800596D8 27BD0018 */   addiu     $sp, $sp, 0x18
