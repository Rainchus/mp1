	.set noat
	.set noreorder

glabel func_8003E7E4
/* 3F3E4 8003E7E4 3C02800D */  lui        $v0, %hi(D_800D61C0)
/* 3F3E8 8003E7E8 8C4261C0 */  lw         $v0, %lo(D_800D61C0)($v0)
/* 3F3EC 8003E7EC 50400009 */  beql       $v0, $zero, .L8003E814
/* 3F3F0 8003E7F0 00001021 */   addu      $v0, $zero, $zero
.L8003E7F4:
/* 3F3F4 8003E7F4 14440003 */  bne        $v0, $a0, .L8003E804
/* 3F3F8 8003E7F8 00000000 */   nop
/* 3F3FC 8003E7FC 0800FA05 */  j          .L8003E814
/* 3F400 8003E800 24020001 */   addiu     $v0, $zero, 1
.L8003E804:
/* 3F404 8003E804 8C420000 */  lw         $v0, ($v0)
/* 3F408 8003E808 1440FFFA */  bnez       $v0, .L8003E7F4
/* 3F40C 8003E80C 00000000 */   nop
/* 3F410 8003E810 00001021 */  addu       $v0, $zero, $zero
.L8003E814:
/* 3F414 8003E814 03E00008 */  jr         $ra
/* 3F418 8003E818 00000000 */   nop
