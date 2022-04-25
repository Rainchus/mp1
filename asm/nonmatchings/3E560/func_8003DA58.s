	.set noat
	.set noreorder

glabel func_8003DA58
/* 3E658 8003DA58 00801821 */  addu       $v1, $a0, $zero
/* 3E65C 8003DA5C 00042400 */  sll        $a0, $a0, 0x10
/* 3E660 8003DA60 000423C3 */  sra        $a0, $a0, 0xf
/* 3E664 8003DA64 3C02800D */  lui        $v0, %hi(D_800D61C8)
/* 3E668 8003DA68 00441021 */  addu       $v0, $v0, $a0
/* 3E66C 8003DA6C 844261C8 */  lh         $v0, %lo(D_800D61C8)($v0)
/* 3E670 8003DA70 14400003 */  bnez       $v0, .L8003DA80
/* 3E674 8003DA74 00031400 */   sll       $v0, $v1, 0x10
/* 3E678 8003DA78 0800F6A8 */  j          .L8003DAA0
/* 3E67C 8003DA7C 2402FFFF */   addiu     $v0, $zero, -1
.L8003DA80:
/* 3E680 8003DA80 00021403 */  sra        $v0, $v0, 0x10
/* 3E684 8003DA84 3C03800D */  lui        $v1, %hi(D_800D61C8)
/* 3E688 8003DA88 246361C8 */  addiu      $v1, $v1, %lo(D_800D61C8)
/* 3E68C 8003DA8C 00022040 */  sll        $a0, $v0, 1
/* 3E690 8003DA90 00832021 */  addu       $a0, $a0, $v1
/* 3E694 8003DA94 94830000 */  lhu        $v1, ($a0)
/* 3E698 8003DA98 24630001 */  addiu      $v1, $v1, 1
/* 3E69C 8003DA9C A4830000 */  sh         $v1, ($a0)
.L8003DAA0:
/* 3E6A0 8003DAA0 03E00008 */  jr         $ra
/* 3E6A4 8003DAA4 00000000 */   nop
