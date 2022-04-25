	.set noat
	.set noreorder

glabel func_8005A22C
/* 5AE2C 8005A22C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5AE30 8005A230 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5AE34 8005A234 0C00516C */  jal        func_800145B0
/* 5AE38 8005A238 00000000 */   nop
/* 5AE3C 8005A23C 00402021 */  addu       $a0, $v0, $zero
/* 5AE40 8005A240 0C00A1E1 */  jal        func_80028784
/* 5AE44 8005A244 2405001D */   addiu     $a1, $zero, 0x1d
/* 5AE48 8005A248 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5AE4C 8005A24C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 5AE50 8005A250 03E00008 */  jr         $ra
/* 5AE54 8005A254 27BD0018 */   addiu     $sp, $sp, 0x18
