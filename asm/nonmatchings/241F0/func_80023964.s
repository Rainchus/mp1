	.set noat
	.set noreorder

glabel func_80023964
/* 24564 80023964 24020001 */  addiu      $v0, $zero, 1
/* 24568 80023968 3C01800C */  lui        $at, %hi(D_800C32A0)
/* 2456C 8002396C 03E00008 */  jr         $ra
/* 24570 80023970 A42232A0 */   sh        $v0, %lo(D_800C32A0)($at)
