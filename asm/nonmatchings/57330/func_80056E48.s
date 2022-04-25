	.set noat
	.set noreorder

glabel func_80056E48
/* 57A48 80056E48 3C06800E */  lui        $a2, %hi(D_800D86FC)
/* 57A4C 80056E4C 24C686FC */  addiu      $a2, $a2, %lo(D_800D86FC)
/* 57A50 80056E50 8C820000 */  lw         $v0, ($a0)
/* 57A54 80056E54 8C830004 */  lw         $v1, 4($a0)
/* 57A58 80056E58 8C850008 */  lw         $a1, 8($a0)
/* 57A5C 80056E5C ACC20000 */  sw         $v0, ($a2)
/* 57A60 80056E60 ACC30004 */  sw         $v1, 4($a2)
/* 57A64 80056E64 03E00008 */  jr         $ra
/* 57A68 80056E68 ACC50008 */   sw        $a1, 8($a2)
