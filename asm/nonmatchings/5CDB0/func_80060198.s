	.set noat
	.set noreorder

glabel func_80060198
/* 60D98 80060198 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 60D9C 8006019C AFBF0010 */  sw         $ra, 0x10($sp)
/* 60DA0 800601A0 2402FFFF */  addiu      $v0, $zero, -1
/* 60DA4 800601A4 3C01800C */  lui        $at, %hi(D_800C5996)
/* 60DA8 800601A8 0C00306E */  jal        func_8000C1B8
/* 60DAC 800601AC A4225996 */   sh        $v0, %lo(D_800C5996)($at)
/* 60DB0 800601B0 3C02800C */  lui        $v0, %hi(D_800C5998)
/* 60DB4 800601B4 94425998 */  lhu        $v0, %lo(D_800C5998)($v0)
/* 60DB8 800601B8 3042FFF5 */  andi       $v0, $v0, 0xfff5
/* 60DBC 800601BC 34420001 */  ori        $v0, $v0, 1
/* 60DC0 800601C0 3C01800C */  lui        $at, %hi(D_800C5998)
/* 60DC4 800601C4 A4225998 */  sh         $v0, %lo(D_800C5998)($at)
/* 60DC8 800601C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 60DCC 800601CC 03E00008 */  jr         $ra
/* 60DD0 800601D0 27BD0018 */   addiu     $sp, $sp, 0x18
