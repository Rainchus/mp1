	.set noat
	.set noreorder

glabel func_8005B838
/* 5C438 8005B838 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C43C 8005B83C 10800003 */  beqz       $a0, .L8005B84C
/* 5C440 8005B840 AFBF0010 */   sw        $ra, 0x10($sp)
/* 5C444 8005B844 0C00EDB2 */  jal        func_8003B6C8
/* 5C448 8005B848 00000000 */   nop
.L8005B84C:
/* 5C44C 8005B84C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5C450 8005B850 03E00008 */  jr         $ra
/* 5C454 8005B854 27BD0018 */   addiu     $sp, $sp, 0x18
/* 5C458 8005B858 00000000 */  nop
/* 5C45C 8005B85C 00000000 */  nop
