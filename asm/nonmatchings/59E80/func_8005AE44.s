	.set noat
	.set noreorder

glabel func_8005AE44
/* 5BA44 8005AE44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BA48 8005AE48 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BA4C 8005AE4C 3C03800C */  lui        $v1, %hi(D_800C572F)
/* 5BA50 8005AE50 9063572F */  lbu        $v1, %lo(D_800C572F)($v1)
/* 5BA54 8005AE54 24020001 */  addiu      $v0, $zero, 1
/* 5BA58 8005AE58 14620008 */  bne        $v1, $v0, .L8005AE7C
/* 5BA5C 8005AE5C 00002821 */   addu      $a1, $zero, $zero
/* 5BA60 8005AE60 3C04800E */  lui        $a0, %hi(D_800D8904)
/* 5BA64 8005AE64 84848904 */  lh         $a0, %lo(D_800D8904)($a0)
/* 5BA68 8005AE68 0C019D2F */  jal        func_800674BC
/* 5BA6C 8005AE6C 34068000 */   ori       $a2, $zero, 0x8000
/* 5BA70 8005AE70 3C04800E */  lui        $a0, %hi(D_800D8902)
/* 5BA74 8005AE74 0C01C566 */  jal        func_80071598
/* 5BA78 8005AE78 84848902 */   lh        $a0, %lo(D_800D8902)($a0)
.L8005AE7C:
/* 5BA7C 8005AE7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BA80 8005AE80 03E00008 */  jr         $ra
/* 5BA84 8005AE84 27BD0018 */   addiu     $sp, $sp, 0x18
