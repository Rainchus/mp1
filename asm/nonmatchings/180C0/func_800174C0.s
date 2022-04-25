	.set noat
	.set noreorder

glabel func_800174C0
/* 180C0 800174C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 180C4 800174C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 180C8 800174C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 180CC 800174CC 0C00516C */  jal        func_800145B0
/* 180D0 800174D0 00A08021 */   addu      $s0, $a1, $zero
/* 180D4 800174D4 00402021 */  addu       $a0, $v0, $zero
/* 180D8 800174D8 0C008F05 */  jal        func_80023C14
/* 180DC 800174DC 02002821 */   addu      $a1, $s0, $zero
/* 180E0 800174E0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 180E4 800174E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 180E8 800174E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 180EC 800174EC 03E00008 */  jr         $ra
/* 180F0 800174F0 27BD0018 */   addiu     $sp, $sp, 0x18
