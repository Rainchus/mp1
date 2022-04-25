	.set noat
	.set noreorder

glabel func_8001D8D4
/* 1E4D4 8001D8D4 00042400 */  sll        $a0, $a0, 0x10
/* 1E4D8 8001D8D8 00042403 */  sra        $a0, $a0, 0x10
/* 1E4DC 8001D8DC 3C03800C */  lui        $v1, %hi(D_800C3110)
/* 1E4E0 8001D8E0 8C633110 */  lw         $v1, %lo(D_800C3110)($v1)
/* 1E4E4 8001D8E4 00041080 */  sll        $v0, $a0, 2
/* 1E4E8 8001D8E8 00441021 */  addu       $v0, $v0, $a0
/* 1E4EC 8001D8EC 00021140 */  sll        $v0, $v0, 5
/* 1E4F0 8001D8F0 00441023 */  subu       $v0, $v0, $a0
/* 1E4F4 8001D8F4 000210C0 */  sll        $v0, $v0, 3
/* 1E4F8 8001D8F8 00431021 */  addu       $v0, $v0, $v1
/* 1E4FC 8001D8FC 03E00008 */  jr         $ra
/* 1E500 8001D900 AC4500F0 */   sw        $a1, 0xf0($v0)
