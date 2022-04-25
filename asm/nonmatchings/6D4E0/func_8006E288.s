	.set noat
	.set noreorder

glabel func_8006E288
/* 6EE88 8006E288 00042400 */  sll        $a0, $a0, 0x10
/* 6EE8C 8006E28C 00042403 */  sra        $a0, $a0, 0x10
/* 6EE90 8006E290 00041080 */  sll        $v0, $a0, 2
/* 6EE94 8006E294 00441021 */  addu       $v0, $v0, $a0
/* 6EE98 8006E298 00021140 */  sll        $v0, $v0, 5
/* 6EE9C 8006E29C 00441023 */  subu       $v0, $v0, $a0
/* 6EEA0 8006E2A0 00021080 */  sll        $v0, $v0, 2
/* 6EEA4 8006E2A4 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EEA8 8006E2A8 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EEAC 8006E2AC 00431021 */  addu       $v0, $v0, $v1
/* 6EEB0 8006E2B0 03E00008 */  jr         $ra
/* 6EEB4 8006E2B4 A0450002 */   sb        $a1, 2($v0)
