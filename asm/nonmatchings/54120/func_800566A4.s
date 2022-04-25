	.set noat
	.set noreorder

glabel func_800566A4
/* 572A4 800566A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 572A8 800566A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 572AC 800566AC 3C04800E */  lui        $a0, %hi(D_800D8568)
/* 572B0 800566B0 0C01DC11 */  jal        func_80077044
/* 572B4 800566B4 24848568 */   addiu     $a0, $a0, %lo(D_800D8568)
/* 572B8 800566B8 3C04800E */  lui        $a0, %hi(D_800D855E)
/* 572BC 800566BC 0C019DC1 */  jal        func_80067704
/* 572C0 800566C0 8484855E */   lh        $a0, %lo(D_800D855E)($a0)
/* 572C4 800566C4 3C04800E */  lui        $a0, %hi(D_800D855C)
/* 572C8 800566C8 0C01934E */  jal        func_80064D38
/* 572CC 800566CC 8484855C */   lh        $a0, %lo(D_800D855C)($a0)
/* 572D0 800566D0 3C04800E */  lui        $a0, %hi(D_800D8562)
/* 572D4 800566D4 0C019DC1 */  jal        func_80067704
/* 572D8 800566D8 84848562 */   lh        $a0, %lo(D_800D8562)($a0)
/* 572DC 800566DC 3C04800E */  lui        $a0, %hi(D_800D8560)
/* 572E0 800566E0 0C01934E */  jal        func_80064D38
/* 572E4 800566E4 84848560 */   lh        $a0, %lo(D_800D8560)($a0)
/* 572E8 800566E8 3C04800E */  lui        $a0, %hi(D_800D85D0)
/* 572EC 800566EC 0C017764 */  jal        func_8005DD90
/* 572F0 800566F0 8C8485D0 */   lw        $a0, %lo(D_800D85D0)($a0)
/* 572F4 800566F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 572F8 800566F8 03E00008 */  jr         $ra
/* 572FC 800566FC 27BD0018 */   addiu     $sp, $sp, 0x18
