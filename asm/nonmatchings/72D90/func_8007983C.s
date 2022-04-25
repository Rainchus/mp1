	.set noat
	.set noreorder

glabel func_8007983C
/* 7A43C 8007983C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7A440 80079840 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7A444 80079844 3C05000B */  lui        $a1, 0xb
/* 7A448 80079848 34A5005A */  ori        $a1, $a1, 0x5a
/* 7A44C 8007984C 0C01DCFB */  jal        func_800773EC
/* 7A450 80079850 24060425 */   addiu     $a2, $zero, 0x425
/* 7A454 80079854 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7A458 80079858 03E00008 */  jr         $ra
/* 7A45C 8007985C 27BD0018 */   addiu     $sp, $sp, 0x18
