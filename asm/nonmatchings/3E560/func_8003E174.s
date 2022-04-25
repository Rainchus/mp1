	.set noat
	.set noreorder

glabel func_8003E174
/* 3ED74 8003E174 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3ED78 8003E178 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ED7C 8003E17C AFB00010 */  sw         $s0, 0x10($sp)
/* 3ED80 8003E180 00808021 */  addu       $s0, $a0, $zero
/* 3ED84 8003E184 8E02003C */  lw         $v0, 0x3c($s0)
/* 3ED88 8003E188 8C420040 */  lw         $v0, 0x40($v0)
/* 3ED8C 8003E18C 0C0096CD */  jal        func_80025B34
/* 3ED90 8003E190 84440000 */   lh        $a0, ($v0)
/* 3ED94 8003E194 8E020040 */  lw         $v0, 0x40($s0)
/* 3ED98 8003E198 10400004 */  beqz       $v0, .L8003E1AC
/* 3ED9C 8003E19C 00000000 */   nop
/* 3EDA0 8003E1A0 8C420040 */  lw         $v0, 0x40($v0)
/* 3EDA4 8003E1A4 0C0096CD */  jal        func_80025B34
/* 3EDA8 8003E1A8 84440000 */   lh        $a0, ($v0)
.L8003E1AC:
/* 3EDAC 8003E1AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EDB0 8003E1B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 3EDB4 8003E1B4 03E00008 */  jr         $ra
/* 3EDB8 8003E1B8 27BD0018 */   addiu     $sp, $sp, 0x18
