	.set noat
	.set noreorder

glabel func_800812C0
/* 81EC0 800812C0 3C02800E */  lui        $v0, %hi(D_800E7AB4)
/* 81EC4 800812C4 24427AB4 */  addiu      $v0, $v0, %lo(D_800E7AB4)
/* 81EC8 800812C8 8C4E0000 */  lw         $t6, ($v0)
/* 81ECC 800812CC 2401FFFD */  addiu      $at, $zero, -3
/* 81ED0 800812D0 01C17824 */  and        $t7, $t6, $at
/* 81ED4 800812D4 03E00008 */  jr         $ra
/* 81ED8 800812D8 AC4F0000 */   sw        $t7, ($v0)
