	.set noat
	.set noreorder

glabel func_80055B80
/* 56780 80055B80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56784 80055B84 AFBF0010 */  sw         $ra, 0x10($sp)
/* 56788 80055B88 0C01521A */  jal        func_80054868
/* 5678C 80055B8C 24040017 */   addiu     $a0, $zero, 0x17
/* 56790 80055B90 8FBF0010 */  lw         $ra, 0x10($sp)
/* 56794 80055B94 03E00008 */  jr         $ra
/* 56798 80055B98 27BD0018 */   addiu     $sp, $sp, 0x18
