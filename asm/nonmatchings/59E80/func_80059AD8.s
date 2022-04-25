	.set noat
	.set noreorder

glabel func_80059AD8
/* 5A6D8 80059AD8 00801821 */  addu       $v1, $a0, $zero
/* 5A6DC 80059ADC 00002821 */  addu       $a1, $zero, $zero
.L80059AE0:
/* 5A6E0 80059AE0 90620005 */  lbu        $v0, 5($v1)
/* 5A6E4 80059AE4 38420001 */  xori       $v0, $v0, 1
/* 5A6E8 80059AE8 2C420001 */  sltiu      $v0, $v0, 1
/* 5A6EC 80059AEC 8C63000C */  lw         $v1, 0xc($v1)
/* 5A6F0 80059AF0 1464FFFB */  bne        $v1, $a0, .L80059AE0
/* 5A6F4 80059AF4 00A22821 */   addu      $a1, $a1, $v0
/* 5A6F8 80059AF8 03E00008 */  jr         $ra
/* 5A6FC 80059AFC 00A01021 */   addu      $v0, $a1, $zero
