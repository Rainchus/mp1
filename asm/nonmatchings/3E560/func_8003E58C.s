	.set noat
	.set noreorder

glabel func_8003E58C
/* 3F18C 8003E58C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3F190 8003E590 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F194 8003E594 AFB00010 */  sw         $s0, 0x10($sp)
/* 3F198 8003E598 00808021 */  addu       $s0, $a0, $zero
/* 3F19C 8003E59C 8E02003C */  lw         $v0, 0x3c($s0)
/* 3F1A0 8003E5A0 8C420040 */  lw         $v0, 0x40($v0)
/* 3F1A4 8003E5A4 84440000 */  lh         $a0, ($v0)
/* 3F1A8 8003E5A8 24050004 */  addiu      $a1, $zero, 4
/* 3F1AC 8003E5AC 0C00963B */  jal        func_800258EC
/* 3F1B0 8003E5B0 00003021 */   addu      $a2, $zero, $zero
/* 3F1B4 8003E5B4 8E020040 */  lw         $v0, 0x40($s0)
/* 3F1B8 8003E5B8 10400005 */  beqz       $v0, .L8003E5D0
/* 3F1BC 8003E5BC 24050004 */   addiu     $a1, $zero, 4
/* 3F1C0 8003E5C0 8C420040 */  lw         $v0, 0x40($v0)
/* 3F1C4 8003E5C4 84440000 */  lh         $a0, ($v0)
/* 3F1C8 8003E5C8 0C00963B */  jal        func_800258EC
/* 3F1CC 8003E5CC 00003021 */   addu      $a2, $zero, $zero
.L8003E5D0:
/* 3F1D0 8003E5D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F1D4 8003E5D4 8FB00010 */  lw         $s0, 0x10($sp)
/* 3F1D8 8003E5D8 03E00008 */  jr         $ra
/* 3F1DC 8003E5DC 27BD0018 */   addiu     $sp, $sp, 0x18
