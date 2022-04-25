	.set noat
	.set noreorder

glabel func_8001E2A8
/* 1EEA8 8001E2A8 00042400 */  sll        $a0, $a0, 0x10
/* 1EEAC 8001E2AC 00042403 */  sra        $a0, $a0, 0x10
/* 1EEB0 8001E2B0 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1EEB4 8001E2B4 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1EEB8 8001E2B8 000410C0 */  sll        $v0, $a0, 3
/* 1EEBC 8001E2BC 00441021 */  addu       $v0, $v0, $a0
/* 1EEC0 8001E2C0 00021080 */  sll        $v0, $v0, 2
/* 1EEC4 8001E2C4 00431021 */  addu       $v0, $v0, $v1
/* 1EEC8 8001E2C8 03E00008 */  jr         $ra
/* 1EECC 8001E2CC A4450004 */   sh        $a1, 4($v0)
