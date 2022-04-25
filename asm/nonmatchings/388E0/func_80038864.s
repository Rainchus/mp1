	.set noat
	.set noreorder

glabel func_80038864
/* 39464 80038864 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 39468 80038868 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3946C 8003886C A480001C */  sh         $zero, 0x1c($a0)
/* 39470 80038870 AC800020 */  sw         $zero, 0x20($a0)
/* 39474 80038874 0C008E22 */  jal        func_80023888
/* 39478 80038878 8C840024 */   lw        $a0, 0x24($a0)
/* 3947C 8003887C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 39480 80038880 03E00008 */  jr         $ra
/* 39484 80038884 27BD0018 */   addiu     $sp, $sp, 0x18
