	.set noat
	.set noreorder

glabel func_800594FC
/* 5A0FC 800594FC 00042400 */  sll        $a0, $a0, 0x10
/* 5A100 80059500 000423C3 */  sra        $a0, $a0, 0xf
/* 5A104 80059504 3C02800F */  lui        $v0, %hi(D_800ED102)
/* 5A108 80059508 00441021 */  addu       $v0, $v0, $a0
/* 5A10C 8005950C 03E00008 */  jr         $ra
/* 5A110 80059510 9442D102 */   lhu       $v0, %lo(D_800ED102)($v0)
