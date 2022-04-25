	.set noat
	.set noreorder

glabel func_8001DFC0
/* 1EBC0 8001DFC0 3C02800C */  lui        $v0, %hi(D_800C31E0)
/* 1EBC4 8001DFC4 904231E0 */  lbu        $v0, %lo(D_800C31E0)($v0)
/* 1EBC8 8001DFC8 1040000E */  beqz       $v0, .L8001E004
/* 1EBCC 8001DFCC 00000000 */   nop
/* 1EBD0 8001DFD0 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* 1EBD4 8001DFD4 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* 1EBD8 8001DFD8 00021080 */  sll        $v0, $v0, 2
/* 1EBDC 8001DFDC 3C03800F */  lui        $v1, %hi(D_800ED0A0)
/* 1EBE0 8001DFE0 00621821 */  addu       $v1, $v1, $v0
/* 1EBE4 8001DFE4 8C63D0A0 */  lw         $v1, %lo(D_800ED0A0)($v1)
/* 1EBE8 8001DFE8 3C01800F */  lui        $at, %hi(D_800EE318)
/* 1EBEC 8001DFEC AC23E318 */  sw         $v1, %lo(D_800EE318)($at)
/* 1EBF0 8001DFF0 3C01800F */  lui        $at, %hi(D_800F33A8)
/* 1EBF4 8001DFF4 00220821 */  addu       $at, $at, $v0
/* 1EBF8 8001DFF8 8C2233A8 */  lw         $v0, %lo(D_800F33A8)($at)
/* 1EBFC 8001DFFC 3C01800F */  lui        $at, %hi(D_800F3714)
/* 1EC00 8001E000 AC223714 */  sw         $v0, %lo(D_800F3714)($at)
.L8001E004:
/* 1EC04 8001E004 03E00008 */  jr         $ra
/* 1EC08 8001E008 00000000 */   nop
