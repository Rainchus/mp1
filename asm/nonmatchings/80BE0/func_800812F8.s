	.set noat
	.set noreorder

glabel func_800812F8
/* 81EF8 800812F8 3C02800E */  lui        $v0, %hi(D_800E7AB4)
/* 81EFC 800812FC 24427AB4 */  addiu      $v0, $v0, %lo(D_800E7AB4)
/* 81F00 80081300 8C4E0000 */  lw         $t6, ($v0)
/* 81F04 80081304 35CF0001 */  ori        $t7, $t6, 1
/* 81F08 80081308 03E00008 */  jr         $ra
/* 81F0C 8008130C AC4F0000 */   sw        $t7, ($v0)
