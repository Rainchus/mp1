	.set noat
	.set noreorder

glabel func_80028510
/* 29110 80028510 93A30013 */  lbu        $v1, 0x13($sp)
/* 29114 80028514 24020001 */  addiu      $v0, $zero, 1
/* 29118 80028518 3C01800F */  lui        $at, %hi(D_800EE988)
/* 2911C 8002851C A022E988 */  sb         $v0, %lo(D_800EE988)($at)
/* 29120 80028520 3C01800F */  lui        $at, %hi(D_800F65DA)
/* 29124 80028524 A42465DA */  sh         $a0, %lo(D_800F65DA)($at)
/* 29128 80028528 3C01800F */  lui        $at, %hi(D_800ED0D0)
/* 2912C 8002852C A425D0D0 */  sh         $a1, %lo(D_800ED0D0)($at)
/* 29130 80028530 3C01800F */  lui        $at, %hi(D_800F2CF9)
/* 29134 80028534 A0262CF9 */  sb         $a2, %lo(D_800F2CF9)($at)
/* 29138 80028538 3C01800F */  lui        $at, %hi(D_800F3FF4)
/* 2913C 8002853C A0273FF4 */  sb         $a3, %lo(D_800F3FF4)($at)
/* 29140 80028540 3C01800F */  lui        $at, %hi(D_800EDEBC)
/* 29144 80028544 03E00008 */  jr         $ra
/* 29148 80028548 A023DEBC */   sb        $v1, %lo(D_800EDEBC)($at)
