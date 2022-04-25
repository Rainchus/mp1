	.set noat
	.set noreorder

glabel func_800594E4
/* 5A0E4 800594E4 00042400 */  sll        $a0, $a0, 0x10
/* 5A0E8 800594E8 000423C3 */  sra        $a0, $a0, 0xf
/* 5A0EC 800594EC 3C01800F */  lui        $at, %hi(D_800ED102)
/* 5A0F0 800594F0 00240821 */  addu       $at, $at, $a0
/* 5A0F4 800594F4 03E00008 */  jr         $ra
/* 5A0F8 800594F8 A425D102 */   sh        $a1, %lo(D_800ED102)($at)
