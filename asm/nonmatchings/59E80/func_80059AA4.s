	.set noat
	.set noreorder

glabel func_80059AA4
/* 5A6A4 80059AA4 00801821 */  addu       $v1, $a0, $zero
/* 5A6A8 80059AA8 00002821 */  addu       $a1, $zero, $zero
/* 5A6AC 80059AAC 24060001 */  addiu      $a2, $zero, 1
.L80059AB0:
/* 5A6B0 80059AB0 90620005 */  lbu        $v0, 5($v1)
/* 5A6B4 80059AB4 14460003 */  bne        $v0, $a2, .L80059AC4
/* 5A6B8 80059AB8 00000000 */   nop
/* 5A6BC 80059ABC 8C620000 */  lw         $v0, ($v1)
/* 5A6C0 80059AC0 00A22821 */  addu       $a1, $a1, $v0
.L80059AC4:
/* 5A6C4 80059AC4 8C63000C */  lw         $v1, 0xc($v1)
/* 5A6C8 80059AC8 1464FFF9 */  bne        $v1, $a0, .L80059AB0
/* 5A6CC 80059ACC 00000000 */   nop
/* 5A6D0 80059AD0 03E00008 */  jr         $ra
/* 5A6D4 80059AD4 00A01021 */   addu      $v0, $a1, $zero
