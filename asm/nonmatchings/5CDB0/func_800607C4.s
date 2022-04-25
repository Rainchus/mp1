	.set noat
	.set noreorder

glabel func_800607C4
/* 613C4 800607C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 613C8 800607C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 613CC 800607CC 00042400 */  sll        $a0, $a0, 0x10
/* 613D0 800607D0 00042403 */  sra        $a0, $a0, 0x10
/* 613D4 800607D4 0C004927 */  jal        func_8001249C
/* 613D8 800607D8 30A500FF */   andi      $a1, $a1, 0xff
/* 613DC 800607DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 613E0 800607E0 03E00008 */  jr         $ra
/* 613E4 800607E4 27BD0018 */   addiu     $sp, $sp, 0x18
