	.set noat
	.set noreorder

glabel func_8006EB80
/* 6F780 8006EB80 24020001 */  addiu      $v0, $zero, 1
/* 6F784 8006EB84 3C01800F */  lui        $at, %hi(D_800ED722)
/* 6F788 8006EB88 03E00008 */  jr         $ra
/* 6F78C 8006EB8C A022D722 */   sb        $v0, %lo(D_800ED722)($at)
