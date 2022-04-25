	.set noat
	.set noreorder

glabel func_8004A844
/* 4B444 8004A844 3084FFFF */  andi       $a0, $a0, 0xffff
/* 4B448 8004A848 3C02800C */  lui        $v0, %hi(D_800C4F74)
/* 4B44C 8004A84C 8C424F74 */  lw         $v0, %lo(D_800C4F74)($v0)
/* 4B450 8004A850 00042080 */  sll        $a0, $a0, 2
/* 4B454 8004A854 00822021 */  addu       $a0, $a0, $v0
/* 4B458 8004A858 8C830004 */  lw         $v1, 4($a0)
/* 4B45C 8004A85C 8C820000 */  lw         $v0, ($a0)
/* 4B460 8004A860 03E00008 */  jr         $ra
/* 4B464 8004A864 00621023 */   subu      $v0, $v1, $v0
