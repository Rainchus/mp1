	.set noat
	.set noreorder

glabel func_80055B64
/* 56764 80055B64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56768 80055B68 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5676C 80055B6C 0C01521A */  jal        func_80054868
/* 56770 80055B70 24040016 */   addiu     $a0, $zero, 0x16
/* 56774 80055B74 8FBF0010 */  lw         $ra, 0x10($sp)
/* 56778 80055B78 03E00008 */  jr         $ra
/* 5677C 80055B7C 27BD0018 */   addiu     $sp, $sp, 0x18
