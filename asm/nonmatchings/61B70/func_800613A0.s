	.set noat
	.set noreorder

glabel func_800613A0
/* 61FA0 800613A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 61FA4 800613A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 61FA8 800613A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 61FAC 800613AC 0C022124 */  jal        func_80088490
/* 61FB0 800613B0 24040001 */   addiu     $a0, $zero, 1
/* 61FB4 800613B4 00408021 */  addu       $s0, $v0, $zero
/* 61FB8 800613B8 3C04800E */  lui        $a0, %hi(D_800D8AA8)
/* 61FBC 800613BC 24848AA8 */  addiu      $a0, $a0, %lo(D_800D8AA8)
/* 61FC0 800613C0 3C05800E */  lui        $a1, %hi(D_800D89D0)
/* 61FC4 800613C4 24A589D0 */  addiu      $a1, $a1, %lo(D_800D89D0)
/* 61FC8 800613C8 0C023010 */  jal        func_8008C040
/* 61FCC 800613CC 240600D8 */   addiu     $a2, $zero, 0xd8
/* 61FD0 800613D0 0C022124 */  jal        func_80088490
/* 61FD4 800613D4 02002021 */   addu      $a0, $s0, $zero
/* 61FD8 800613D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 61FDC 800613DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 61FE0 800613E0 03E00008 */  jr         $ra
/* 61FE4 800613E4 27BD0018 */   addiu     $sp, $sp, 0x18
