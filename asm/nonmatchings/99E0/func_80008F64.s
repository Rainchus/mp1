	.set noat
	.set noreorder

glabel func_80008F64
/* 9B64 80008F64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9B68 80008F68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9B6C 80008F6C AFB00010 */  sw         $s0, 0x10($sp)
/* 9B70 80008F70 8C900050 */  lw         $s0, 0x50($a0)
/* 9B74 80008F74 44856000 */  mtc1       $a1, $f12
/* 9B78 80008F78 0C00A546 */  jal        func_80029518
/* 9B7C 80008F7C 00000000 */   nop
/* 9B80 80008F80 E600003C */  swc1       $f0, 0x3c($s0)
/* 9B84 80008F84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9B88 80008F88 8FB00010 */  lw         $s0, 0x10($sp)
/* 9B8C 80008F8C 03E00008 */  jr         $ra
/* 9B90 80008F90 27BD0018 */   addiu     $sp, $sp, 0x18
