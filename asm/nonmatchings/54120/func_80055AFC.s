	.set noat
	.set noreorder

glabel func_80055AFC
/* 566FC 80055AFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56700 80055B00 AFBF0010 */  sw         $ra, 0x10($sp)
/* 56704 80055B04 3C04800C */  lui        $a0, %hi(D_800C54D0)
/* 56708 80055B08 0C01515B */  jal        func_8005456C
/* 5670C 80055B0C 8C8454D0 */   lw        $a0, %lo(D_800C54D0)($a0)
/* 56710 80055B10 3C04800C */  lui        $a0, %hi(D_800C54D4)
/* 56714 80055B14 0C01515B */  jal        func_8005456C
/* 56718 80055B18 8C8454D4 */   lw        $a0, %lo(D_800C54D4)($a0)
/* 5671C 80055B1C 3C04800E */  lui        $a0, %hi(D_800D83A0)
/* 56720 80055B20 0C018D06 */  jal        func_80063418
/* 56724 80055B24 8C8483A0 */   lw        $a0, %lo(D_800D83A0)($a0)
/* 56728 80055B28 0C01548A */  jal        func_80055228
/* 5672C 80055B2C 00000000 */   nop
/* 56730 80055B30 2402FFFF */  addiu      $v0, $zero, -1
/* 56734 80055B34 3C01800C */  lui        $at, %hi(D_800C54D0)
/* 56738 80055B38 AC2254D0 */  sw         $v0, %lo(D_800C54D0)($at)
/* 5673C 80055B3C 3C01800C */  lui        $at, %hi(D_800C54D4)
/* 56740 80055B40 AC2254D4 */  sw         $v0, %lo(D_800C54D4)($at)
/* 56744 80055B44 8FBF0010 */  lw         $ra, 0x10($sp)
/* 56748 80055B48 03E00008 */  jr         $ra
/* 5674C 80055B4C 27BD0018 */   addiu     $sp, $sp, 0x18
