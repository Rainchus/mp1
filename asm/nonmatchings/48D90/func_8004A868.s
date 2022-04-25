	.set noat
	.set noreorder

glabel func_8004A868
/* 4B468 8004A868 3084FFFF */  andi       $a0, $a0, 0xffff
/* 4B46C 8004A86C 3C02800C */  lui        $v0, %hi(D_800C4F74)
/* 4B470 8004A870 8C424F74 */  lw         $v0, %lo(D_800C4F74)($v0)
/* 4B474 8004A874 00042080 */  sll        $a0, $a0, 2
/* 4B478 8004A878 00822021 */  addu       $a0, $a0, $v0
/* 4B47C 8004A87C 3C03800D */  lui        $v1, %hi(D_800D6728)
/* 4B480 8004A880 8C636728 */  lw         $v1, %lo(D_800D6728)($v1)
/* 4B484 8004A884 8C820000 */  lw         $v0, ($a0)
/* 4B488 8004A888 03E00008 */  jr         $ra
/* 4B48C 8004A88C 00621021 */   addu      $v0, $v1, $v0
