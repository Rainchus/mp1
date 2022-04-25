	.set noat
	.set noreorder

glabel func_80025FC8
/* 26BC8 80025FC8 00042400 */  sll        $a0, $a0, 0x10
/* 26BCC 80025FCC 00042403 */  sra        $a0, $a0, 0x10
/* 26BD0 80025FD0 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 26BD4 80025FD4 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 26BD8 80025FD8 00041040 */  sll        $v0, $a0, 1
/* 26BDC 80025FDC 00441021 */  addu       $v0, $v0, $a0
/* 26BE0 80025FE0 00021180 */  sll        $v0, $v0, 6
/* 26BE4 80025FE4 00431021 */  addu       $v0, $v0, $v1
/* 26BE8 80025FE8 03E00008 */  jr         $ra
/* 26BEC 80025FEC AC450050 */   sw        $a1, 0x50($v0)
