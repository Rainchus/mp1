	.set noat
	.set noreorder

glabel func_80060268
/* 60E68 80060268 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60E6C 8006026C AFBF0010 */  sw         $ra, 0x10($sp)
/* 60E70 80060270 00042400 */  sll        $a0, $a0, 0x10
/* 60E74 80060274 0C00312F */  jal        func_8000C4BC
/* 60E78 80060278 00042403 */   sra       $a0, $a0, 0x10
/* 60E7C 8006027C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60E80 80060280 03E00008 */  jr         $ra
/* 60E84 80060284 27BD0018 */   addiu     $sp, $sp, 0x18
