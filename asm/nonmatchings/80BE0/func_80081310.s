	.set noat
	.set noreorder

glabel func_80081310
/* 81F10 80081310 240E0001 */  addiu      $t6, $zero, 1
/* 81F14 80081314 3C01800E */  lui        $at, %hi(D_800E7AB4)
/* 81F18 80081318 03E00008 */  jr         $ra
/* 81F1C 8008131C AC2E7AB4 */   sw        $t6, %lo(D_800E7AB4)($at)
