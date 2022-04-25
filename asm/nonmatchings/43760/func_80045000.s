	.set noat
	.set noreorder

glabel func_80045000
/* 45C00 80045000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45C04 80045004 AFBF0010 */  sw         $ra, 0x10($sp)
/* 45C08 80045008 0C011407 */  jal        func_8004501C
/* 45C0C 8004500C 00002021 */   addu      $a0, $zero, $zero
/* 45C10 80045010 8FBF0010 */  lw         $ra, 0x10($sp)
/* 45C14 80045014 03E00008 */  jr         $ra
/* 45C18 80045018 27BD0018 */   addiu     $sp, $sp, 0x18
