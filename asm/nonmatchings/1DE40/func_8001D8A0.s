	.set noat
	.set noreorder

glabel func_8001D8A0
/* 1E4A0 8001D8A0 00042400 */  sll        $a0, $a0, 0x10
/* 1E4A4 8001D8A4 00042403 */  sra        $a0, $a0, 0x10
/* 1E4A8 8001D8A8 00041080 */  sll        $v0, $a0, 2
/* 1E4AC 8001D8AC 00441021 */  addu       $v0, $v0, $a0
/* 1E4B0 8001D8B0 00021140 */  sll        $v0, $v0, 5
/* 1E4B4 8001D8B4 00441023 */  subu       $v0, $v0, $a0
/* 1E4B8 8001D8B8 000210C0 */  sll        $v0, $v0, 3
/* 1E4BC 8001D8BC 3C03800C */  lui        $v1, %hi(D_800C3110)
/* 1E4C0 8001D8C0 8C633110 */  lw         $v1, %lo(D_800C3110)($v1)
/* 1E4C4 8001D8C4 00431021 */  addu       $v0, $v0, $v1
/* 1E4C8 8001D8C8 AC4500E8 */  sw         $a1, 0xe8($v0)
/* 1E4CC 8001D8CC 03E00008 */  jr         $ra
/* 1E4D0 8001D8D0 AC4600EC */   sw        $a2, 0xec($v0)
