	.set noat
	.set noreorder

glabel func_800FB558_D29C8
/* D29C8 800FB558 3C028010 */  lui        $v0, %hi(func_800FB570_D29E0)
/* D29CC 800FB55C 2442B570 */  addiu      $v0, $v0, %lo(func_800FB570_D29E0)
/* D29D0 800FB560 AC820014 */  sw         $v0, 0x14($a0)
/* D29D4 800FB564 3C018010 */  lui        $at, %hi(D_800FE1E2)
/* D29D8 800FB568 03E00008 */  jr         $ra
/* D29DC 800FB56C A420E1E2 */   sh        $zero, %lo(D_800FE1E2)($at)
