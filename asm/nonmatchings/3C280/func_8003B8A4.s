	.set noat
	.set noreorder

glabel func_8003B8A4
/* 3C4A4 8003B8A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C4A8 8003B8A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3C4AC 8003B8AC AFB00010 */  sw         $s0, 0x10($sp)
/* 3C4B0 8003B8B0 00808021 */  addu       $s0, $a0, $zero
/* 3C4B4 8003B8B4 0C00F9A5 */  jal        func_8003E694
/* 3C4B8 8003B8B8 8E040004 */   lw        $a0, 4($s0)
/* 3C4BC 8003B8BC 0C00EDE6 */  jal        func_8003B798
/* 3C4C0 8003B8C0 02002021 */   addu      $a0, $s0, $zero
/* 3C4C4 8003B8C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3C4C8 8003B8C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 3C4CC 8003B8CC 03E00008 */  jr         $ra
/* 3C4D0 8003B8D0 27BD0018 */   addiu     $sp, $sp, 0x18
