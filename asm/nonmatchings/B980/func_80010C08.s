	.set noat
	.set noreorder

glabel func_80010C08
/* 11808 80010C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1180C 80010C0C AFBF0010 */  sw         $ra, 0x10($sp)
/* 11810 80010C10 0C004597 */  jal        func_8001165C
/* 11814 80010C14 00000000 */   nop
/* 11818 80010C18 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* 1181C 80010C1C 0C0229F4 */  jal        func_8008A7D0
/* 11820 80010C20 8C84EA8C */   lw        $a0, %lo(D_800CEA8C)($a0)
/* 11824 80010C24 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11828 80010C28 03E00008 */  jr         $ra
/* 1182C 80010C2C 27BD0018 */   addiu     $sp, $sp, 0x18
