	.set noat
	.set noreorder

glabel func_8006379C
/* 6439C 8006379C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 643A0 800637A0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 643A4 800637A4 0C01664B */  jal        func_8005992C
/* 643A8 800637A8 00000000 */   nop
/* 643AC 800637AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 643B0 800637B0 03E00008 */  jr         $ra
/* 643B4 800637B4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 643B8 800637B8 00000000 */  nop
/* 643BC 800637BC 00000000 */  nop
