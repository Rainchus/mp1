	.set noat
	.set noreorder

glabel func_80059550
/* 5A150 80059550 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5A154 80059554 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5A158 80059558 00042400 */  sll        $a0, $a0, 0x10
/* 5A15C 8005955C 0C016548 */  jal        func_80059520
/* 5A160 80059560 00042403 */   sra       $a0, $a0, 0x10
/* 5A164 80059564 94420000 */  lhu        $v0, ($v0)
/* 5A168 80059568 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5A16C 8005956C 304203FF */  andi       $v0, $v0, 0x3ff
/* 5A170 80059570 03E00008 */  jr         $ra
/* 5A174 80059574 27BD0018 */   addiu     $sp, $sp, 0x18
