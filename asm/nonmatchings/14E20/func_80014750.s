	.set noat
	.set noreorder

glabel func_80014750
/* 15350 80014750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 15354 80014754 10800003 */  beqz       $a0, .L80014764
/* 15358 80014758 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1535C 8001475C 0C00EDB2 */  jal        func_8003B6C8
/* 15360 80014760 00000000 */   nop
.L80014764:
/* 15364 80014764 8FBF0010 */  lw         $ra, 0x10($sp)
/* 15368 80014768 03E00008 */  jr         $ra
/* 1536C 8001476C 27BD0018 */   addiu     $sp, $sp, 0x18
