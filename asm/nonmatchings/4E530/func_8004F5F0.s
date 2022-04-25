	.set noat
	.set noreorder

glabel func_8004F5F0
/* 501F0 8004F5F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 501F4 8004F5F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 501F8 8004F5F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 501FC 8004F5FC 00008021 */  addu       $s0, $zero, $zero
.L8004F600:
/* 50200 8004F600 0C013D61 */  jal        func_8004F584
/* 50204 8004F604 02002021 */   addu      $a0, $s0, $zero
/* 50208 8004F608 26100001 */  addiu      $s0, $s0, 1
/* 5020C 8004F60C 2A020010 */  slti       $v0, $s0, 0x10
/* 50210 8004F610 1440FFFB */  bnez       $v0, .L8004F600
/* 50214 8004F614 00000000 */   nop
/* 50218 8004F618 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5021C 8004F61C 8FB00010 */  lw         $s0, 0x10($sp)
/* 50220 8004F620 03E00008 */  jr         $ra
/* 50224 8004F624 27BD0018 */   addiu     $sp, $sp, 0x18
