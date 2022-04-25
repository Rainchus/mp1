	.set noat
	.set noreorder

glabel func_80018DC4
/* 199C4 80018DC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 199C8 80018DC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 199CC 80018DCC 44850000 */  mtc1       $a1, $f0
/* 199D0 80018DD0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 199D4 80018DD4 000410C0 */  sll        $v0, $a0, 3
/* 199D8 80018DD8 00441021 */  addu       $v0, $v0, $a0
/* 199DC 80018DDC 00021080 */  sll        $v0, $v0, 2
/* 199E0 80018DE0 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 199E4 80018DE4 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 199E8 80018DE8 00431021 */  addu       $v0, $v0, $v1
/* 199EC 80018DEC 84440004 */  lh         $a0, 4($v0)
/* 199F0 80018DF0 44060000 */  mfc1       $a2, $f0
/* 199F4 80018DF4 00000000 */  nop
/* 199F8 80018DF8 0C019CA1 */  jal        func_80067284
/* 199FC 80018DFC 00002821 */   addu      $a1, $zero, $zero
/* 19A00 80018E00 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19A04 80018E04 03E00008 */  jr         $ra
/* 19A08 80018E08 27BD0018 */   addiu     $sp, $sp, 0x18
