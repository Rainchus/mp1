	.set noat
	.set noreorder

glabel func_80017528
/* 18128 80017528 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1812C 8001752C AFBF0014 */  sw         $ra, 0x14($sp)
/* 18130 80017530 AFB00010 */  sw         $s0, 0x10($sp)
/* 18134 80017534 0C00516C */  jal        func_800145B0
/* 18138 80017538 00A08021 */   addu      $s0, $a1, $zero
/* 1813C 8001753C 00402021 */  addu       $a0, $v0, $zero
/* 18140 80017540 0C008F05 */  jal        func_80023C14
/* 18144 80017544 02002821 */   addu      $a1, $s0, $zero
/* 18148 80017548 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1814C 8001754C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18150 80017550 8FB00010 */  lw         $s0, 0x10($sp)
/* 18154 80017554 03E00008 */  jr         $ra
/* 18158 80017558 27BD0018 */   addiu     $sp, $sp, 0x18
