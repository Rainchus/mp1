	.set noat
	.set noreorder

glabel func_80023668
/* 24268 80023668 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2426C 8002366C AFBF0010 */  sw         $ra, 0x10($sp)
/* 24270 80023670 0C008DA9 */  jal        func_800236A4
/* 24274 80023674 00002821 */   addu      $a1, $zero, $zero
/* 24278 80023678 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2427C 8002367C 03E00008 */  jr         $ra
/* 24280 80023680 27BD0018 */   addiu     $sp, $sp, 0x18
