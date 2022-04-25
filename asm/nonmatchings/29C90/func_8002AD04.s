	.set noat
	.set noreorder

glabel func_8002AD04
/* 2B904 8002AD04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B908 8002AD08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2B90C 8002AD0C 0C008DEF */  jal        func_800237BC
/* 2B910 8002AD10 240455F0 */   addiu     $a0, $zero, 0x55f0
/* 2B914 8002AD14 3C01800D */  lui        $at, %hi(D_800D6000)
/* 2B918 8002AD18 A4206000 */  sh         $zero, %lo(D_800D6000)($at)
/* 2B91C 8002AD1C 3C01800D */  lui        $at, %hi(D_800D6002)
/* 2B920 8002AD20 A4206002 */  sh         $zero, %lo(D_800D6002)($at)
/* 2B924 8002AD24 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2B928 8002AD28 03E00008 */  jr         $ra
/* 2B92C 8002AD2C 27BD0018 */   addiu     $sp, $sp, 0x18
