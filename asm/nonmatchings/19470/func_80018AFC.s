	.set noat
	.set noreorder

glabel func_80018AFC
/* 196FC 80018AFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19700 80018B00 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19704 80018B04 0C01A0E6 */  jal        func_80068398
/* 19708 80018B08 00000000 */   nop
/* 1970C 80018B0C 3C04800F */  lui        $a0, %hi(D_800ED60C)
/* 19710 80018B10 0C008DCA */  jal        func_80023728
/* 19714 80018B14 8C84D60C */   lw        $a0, %lo(D_800ED60C)($a0)
/* 19718 80018B18 3C01800F */  lui        $at, %hi(D_800ED60C)
/* 1971C 80018B1C AC20D60C */  sw         $zero, %lo(D_800ED60C)($at)
/* 19720 80018B20 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19724 80018B24 03E00008 */  jr         $ra
/* 19728 80018B28 27BD0018 */   addiu     $sp, $sp, 0x18
