	.set noat
	.set noreorder

glabel func_8004CFC0
/* 4DBC0 8004CFC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4DBC4 8004CFC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4DBC8 8004CFC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4DBCC 8004CFCC 0C005D63 */  jal        func_8001758C
/* 4DBD0 8004CFD0 00808021 */   addu      $s0, $a0, $zero
/* 4DBD4 8004CFD4 00108600 */  sll        $s0, $s0, 0x18
/* 4DBD8 8004CFD8 00108603 */  sra        $s0, $s0, 0x18
/* 4DBDC 8004CFDC 304300FF */  andi       $v1, $v0, 0xff
/* 4DBE0 8004CFE0 00031040 */  sll        $v0, $v1, 1
/* 4DBE4 8004CFE4 00431021 */  addu       $v0, $v0, $v1
/* 4DBE8 8004CFE8 00021940 */  sll        $v1, $v0, 5
/* 4DBEC 8004CFEC 00431021 */  addu       $v0, $v0, $v1
/* 4DBF0 8004CFF0 00021203 */  sra        $v0, $v0, 8
/* 4DBF4 8004CFF4 0050102A */  slt        $v0, $v0, $s0
/* 4DBF8 8004CFF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4DBFC 8004CFFC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4DC00 8004D000 03E00008 */  jr         $ra
/* 4DC04 8004D004 27BD0018 */   addiu     $sp, $sp, 0x18
