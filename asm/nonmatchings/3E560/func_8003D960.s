	.set noat
	.set noreorder

glabel func_8003D960
/* 3E560 8003D960 00001821 */  addu       $v1, $zero, $zero
/* 3E564 8003D964 3C04800D */  lui        $a0, %hi(D_800D61C8)
/* 3E568 8003D968 248461C8 */  addiu      $a0, $a0, %lo(D_800D61C8)
/* 3E56C 8003D96C 00031040 */  sll        $v0, $v1, 1
.L8003D970:
/* 3E570 8003D970 00441021 */  addu       $v0, $v0, $a0
/* 3E574 8003D974 A4400000 */  sh         $zero, ($v0)
/* 3E578 8003D978 24630001 */  addiu      $v1, $v1, 1
/* 3E57C 8003D97C 28620080 */  slti       $v0, $v1, 0x80
/* 3E580 8003D980 5440FFFB */  bnel       $v0, $zero, .L8003D970
/* 3E584 8003D984 00031040 */   sll       $v0, $v1, 1
/* 3E588 8003D988 03E00008 */  jr         $ra
/* 3E58C 8003D98C 00000000 */   nop
