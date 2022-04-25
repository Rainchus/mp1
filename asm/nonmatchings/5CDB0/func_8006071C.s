	.set noat
	.set noreorder

glabel func_8006071C
/* 6131C 8006071C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61320 80060720 AFBF0010 */  sw         $ra, 0x10($sp)
/* 61324 80060724 00042400 */  sll        $a0, $a0, 0x10
/* 61328 80060728 0C0045EB */  jal        func_800117AC
/* 6132C 8006072C 00042403 */   sra       $a0, $a0, 0x10
/* 61330 80060730 8FBF0010 */  lw         $ra, 0x10($sp)
/* 61334 80060734 03E00008 */  jr         $ra
/* 61338 80060738 27BD0018 */   addiu     $sp, $sp, 0x18
