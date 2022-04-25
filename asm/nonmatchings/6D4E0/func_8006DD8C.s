	.set noat
	.set noreorder

glabel func_8006DD8C
/* 6E98C 8006DD8C 00042400 */  sll        $a0, $a0, 0x10
/* 6E990 8006DD90 00042403 */  sra        $a0, $a0, 0x10
/* 6E994 8006DD94 00041080 */  sll        $v0, $a0, 2
/* 6E998 8006DD98 00441021 */  addu       $v0, $v0, $a0
/* 6E99C 8006DD9C 00021140 */  sll        $v0, $v0, 5
/* 6E9A0 8006DDA0 00441023 */  subu       $v0, $v0, $a0
/* 6E9A4 8006DDA4 00021080 */  sll        $v0, $v0, 2
/* 6E9A8 8006DDA8 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6E9AC 8006DDAC 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6E9B0 8006DDB0 00431021 */  addu       $v0, $v0, $v1
/* 6E9B4 8006DDB4 00052C00 */  sll        $a1, $a1, 0x10
/* 6E9B8 8006DDB8 00052BC3 */  sra        $a1, $a1, 0xf
/* 6E9BC 8006DDBC 00A22821 */  addu       $a1, $a1, $v0
/* 6E9C0 8006DDC0 03E00008 */  jr         $ra
/* 6E9C4 8006DDC4 84A20046 */   lh        $v0, 0x46($a1)
