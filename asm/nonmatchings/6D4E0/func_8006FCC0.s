	.set noat
	.set noreorder

glabel func_8006FCC0
/* 708C0 8006FCC0 00042400 */  sll        $a0, $a0, 0x10
/* 708C4 8006FCC4 00042403 */  sra        $a0, $a0, 0x10
/* 708C8 8006FCC8 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 708CC 8006FCCC 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 708D0 8006FCD0 00041080 */  sll        $v0, $a0, 2
/* 708D4 8006FCD4 00441021 */  addu       $v0, $v0, $a0
/* 708D8 8006FCD8 00021140 */  sll        $v0, $v0, 5
/* 708DC 8006FCDC 00441023 */  subu       $v0, $v0, $a0
/* 708E0 8006FCE0 00021080 */  sll        $v0, $v0, 2
/* 708E4 8006FCE4 00431021 */  addu       $v0, $v0, $v1
/* 708E8 8006FCE8 03E00008 */  jr         $ra
/* 708EC 8006FCEC 90420000 */   lbu       $v0, ($v0)
