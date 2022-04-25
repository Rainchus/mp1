	.set noat
	.set noreorder

glabel func_80072190
/* 72D90 80072190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72D94 80072194 AFBF0010 */  sw         $ra, 0x10($sp)
/* 72D98 80072198 3C01800F */  lui        $at, %hi(D_800ED564)
/* 72D9C 8007219C A020D564 */  sb         $zero, %lo(D_800ED564)($at)
/* 72DA0 800721A0 3C01800F */  lui        $at, %hi(D_800ED0D2)
/* 72DA4 800721A4 A020D0D2 */  sb         $zero, %lo(D_800ED0D2)($at)
/* 72DA8 800721A8 3C01800F */  lui        $at, %hi(D_800F396A)
/* 72DAC 800721AC A020396A */  sb         $zero, %lo(D_800F396A)($at)
/* 72DB0 800721B0 3C01800F */  lui        $at, %hi(D_800F2CF8)
/* 72DB4 800721B4 A0202CF8 */  sb         $zero, %lo(D_800F2CF8)($at)
/* 72DB8 800721B8 3C01800F */  lui        $at, %hi(D_800EDEB0)
/* 72DBC 800721BC A020DEB0 */  sb         $zero, %lo(D_800EDEB0)($at)
/* 72DC0 800721C0 3C01800F */  lui        $at, %hi(D_800F50B8)
/* 72DC4 800721C4 0C01D643 */  jal        func_8007590C
/* 72DC8 800721C8 A02050B8 */   sb        $zero, %lo(D_800F50B8)($at)
/* 72DCC 800721CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 72DD0 800721D0 03E00008 */  jr         $ra
/* 72DD4 800721D4 27BD0018 */   addiu     $sp, $sp, 0x18
