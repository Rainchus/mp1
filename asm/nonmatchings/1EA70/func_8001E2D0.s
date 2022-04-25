	.set noat
	.set noreorder

glabel func_8001E2D0
/* 1EED0 8001E2D0 00042400 */  sll        $a0, $a0, 0x10
/* 1EED4 8001E2D4 00042403 */  sra        $a0, $a0, 0x10
/* 1EED8 8001E2D8 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1EEDC 8001E2DC 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1EEE0 8001E2E0 000410C0 */  sll        $v0, $a0, 3
/* 1EEE4 8001E2E4 00441021 */  addu       $v0, $v0, $a0
/* 1EEE8 8001E2E8 00021080 */  sll        $v0, $v0, 2
/* 1EEEC 8001E2EC 00431021 */  addu       $v0, $v0, $v1
/* 1EEF0 8001E2F0 03E00008 */  jr         $ra
/* 1EEF4 8001E2F4 94420004 */   lhu       $v0, 4($v0)
