	.set noat
	.set noreorder

glabel func_8005C4D0
/* 5D0D0 8005C4D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D0D4 8005C4D4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5D0D8 8005C4D8 0C0159C0 */  jal        func_80056700
/* 5D0DC 8005C4DC 00000000 */   nop
/* 5D0E0 8005C4E0 0C01C3B5 */  jal        func_80070ED4
/* 5D0E4 8005C4E4 00000000 */   nop
/* 5D0E8 8005C4E8 0C014CBD */  jal        func_800532F4
/* 5D0EC 8005C4EC 00000000 */   nop
/* 5D0F0 8005C4F0 0C014C1D */  jal        func_80053074
/* 5D0F4 8005C4F4 00000000 */   nop
/* 5D0F8 8005C4F8 0C00F6B7 */  jal        func_8003DADC
/* 5D0FC 8005C4FC 00000000 */   nop
/* 5D100 8005C500 0C013040 */  jal        func_8004C100
/* 5D104 8005C504 00000000 */   nop
/* 5D108 8005C508 0C012E6E */  jal        func_8004B9B8
/* 5D10C 8005C50C 00000000 */   nop
/* 5D110 8005C510 0C012850 */  jal        func_8004A140
/* 5D114 8005C514 00000000 */   nop
/* 5D118 8005C518 0C0127C3 */  jal        func_80049F0C
/* 5D11C 8005C51C 00000000 */   nop
/* 5D120 8005C520 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5D124 8005C524 03E00008 */  jr         $ra
/* 5D128 8005C528 27BD0018 */   addiu     $sp, $sp, 0x18
