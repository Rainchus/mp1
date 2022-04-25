	.set noat
	.set noreorder

glabel func_800174F4
/* 180F4 800174F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 180F8 800174F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 180FC 800174FC AFB00010 */  sw         $s0, 0x10($sp)
/* 18100 80017500 0C00516C */  jal        func_800145B0
/* 18104 80017504 00A08021 */   addu      $s0, $a1, $zero
/* 18108 80017508 00402021 */  addu       $a0, $v0, $zero
/* 1810C 8001750C 0C008F05 */  jal        func_80023C14
/* 18110 80017510 02002821 */   addu      $a1, $s0, $zero
/* 18114 80017514 3042FFFF */  andi       $v0, $v0, 0xffff
/* 18118 80017518 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1811C 8001751C 8FB00010 */  lw         $s0, 0x10($sp)
/* 18120 80017520 03E00008 */  jr         $ra
/* 18124 80017524 27BD0018 */   addiu     $sp, $sp, 0x18
