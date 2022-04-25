	.set noat
	.set noreorder

glabel func_80018D84
/* 19984 80018D84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19988 80018D88 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1998C 80018D8C 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19990 80018D90 000410C0 */  sll        $v0, $a0, 3
/* 19994 80018D94 00441021 */  addu       $v0, $v0, $a0
/* 19998 80018D98 00021080 */  sll        $v0, $v0, 2
/* 1999C 80018D9C 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 199A0 80018DA0 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 199A4 80018DA4 00431021 */  addu       $v0, $v0, $v1
/* 199A8 80018DA8 30A6FFFF */  andi       $a2, $a1, 0xffff
/* 199AC 80018DAC 84440004 */  lh         $a0, 4($v0)
/* 199B0 80018DB0 0C019CE1 */  jal        func_80067384
/* 199B4 80018DB4 00002821 */   addu      $a1, $zero, $zero
/* 199B8 80018DB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 199BC 80018DBC 03E00008 */  jr         $ra
/* 199C0 80018DC0 27BD0018 */   addiu     $sp, $sp, 0x18
