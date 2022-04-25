	.set noat
	.set noreorder

glabel func_8003813C
/* 38D3C 8003813C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 38D40 80038140 AFBF002C */  sw         $ra, 0x2c($sp)
/* 38D44 80038144 AFB00028 */  sw         $s0, 0x28($sp)
/* 38D48 80038148 00808021 */  addu       $s0, $a0, $zero
/* 38D4C 8003814C 00053400 */  sll        $a2, $a1, 0x10
/* 38D50 80038150 27A50010 */  addiu      $a1, $sp, 0x10
/* 38D54 80038154 0C0072F6 */  jal        func_8001CBD8
/* 38D58 80038158 00063403 */   sra       $a2, $a2, 0x10
/* 38D5C 8003815C 02002021 */  addu       $a0, $s0, $zero
/* 38D60 80038160 0C00E065 */  jal        func_80038194
/* 38D64 80038164 27A50010 */   addiu     $a1, $sp, 0x10
/* 38D68 80038168 8FBF002C */  lw         $ra, 0x2c($sp)
/* 38D6C 8003816C 8FB00028 */  lw         $s0, 0x28($sp)
/* 38D70 80038170 03E00008 */  jr         $ra
/* 38D74 80038174 27BD0030 */   addiu     $sp, $sp, 0x30
