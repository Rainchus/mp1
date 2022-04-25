	.set noat
	.set noreorder

glabel func_80018C90
/* 19890 80018C90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19894 80018C94 AFBF0010 */  sw         $ra, 0x10($sp)
/* 19898 80018C98 3084FFFF */  andi       $a0, $a0, 0xffff
/* 1989C 80018C9C 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 198A0 80018CA0 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 198A4 80018CA4 000410C0 */  sll        $v0, $a0, 3
/* 198A8 80018CA8 00441021 */  addu       $v0, $v0, $a0
/* 198AC 80018CAC 00021080 */  sll        $v0, $v0, 2
/* 198B0 80018CB0 00431021 */  addu       $v0, $v0, $v1
/* 198B4 80018CB4 84440004 */  lh         $a0, 4($v0)
/* 198B8 80018CB8 00002821 */  addu       $a1, $zero, $zero
/* 198BC 80018CBC 0C019D2F */  jal        func_800674BC
/* 198C0 80018CC0 34068000 */   ori       $a2, $zero, 0x8000
/* 198C4 80018CC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 198C8 80018CC8 03E00008 */  jr         $ra
/* 198CC 80018CCC 27BD0018 */   addiu     $sp, $sp, 0x18
