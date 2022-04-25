	.set noat
	.set noreorder

glabel func_8006B870
/* 6C470 8006B870 00001821 */  addu       $v1, $zero, $zero
/* 6C474 8006B874 3C05800E */  lui        $a1, %hi(D_800E4130)
/* 6C478 8006B878 24A54130 */  addiu      $a1, $a1, %lo(D_800E4130)
/* 6C47C 8006B87C 2404FFFF */  addiu      $a0, $zero, -1
/* 6C480 8006B880 00031040 */  sll        $v0, $v1, 1
.L8006B884:
/* 6C484 8006B884 00451021 */  addu       $v0, $v0, $a1
/* 6C488 8006B888 A4440000 */  sh         $a0, ($v0)
/* 6C48C 8006B88C 24630001 */  addiu      $v1, $v1, 1
/* 6C490 8006B890 28620004 */  slti       $v0, $v1, 4
/* 6C494 8006B894 5440FFFB */  bnel       $v0, $zero, .L8006B884
/* 6C498 8006B898 00031040 */   sll       $v0, $v1, 1
/* 6C49C 8006B89C 03E00008 */  jr         $ra
/* 6C4A0 8006B8A0 00000000 */   nop
