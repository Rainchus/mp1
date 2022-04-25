	.set noat
	.set noreorder

glabel func_800812DC
/* 81EDC 800812DC 3C02800E */  lui        $v0, %hi(D_800E7AB4)
/* 81EE0 800812E0 24427AB4 */  addiu      $v0, $v0, %lo(D_800E7AB4)
/* 81EE4 800812E4 8C4E0000 */  lw         $t6, ($v0)
/* 81EE8 800812E8 2401FFFE */  addiu      $at, $zero, -2
/* 81EEC 800812EC 01C17824 */  and        $t7, $t6, $at
/* 81EF0 800812F0 03E00008 */  jr         $ra
/* 81EF4 800812F4 AC4F0000 */   sw        $t7, ($v0)
