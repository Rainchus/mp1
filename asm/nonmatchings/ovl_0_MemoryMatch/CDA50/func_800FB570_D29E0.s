	.set noat
	.set noreorder

glabel func_800FB570_D29E0
/* D29E0 800FB570 3C028010 */  lui        $v0, %hi(D_800FE1E2)
/* D29E4 800FB574 9442E1E2 */  lhu        $v0, %lo(D_800FE1E2)($v0)
/* D29E8 800FB578 24420001 */  addiu      $v0, $v0, 1
/* D29EC 800FB57C 3C018010 */  lui        $at, %hi(D_800FE1E2)
/* D29F0 800FB580 03E00008 */  jr         $ra
/* D29F4 800FB584 A422E1E2 */   sh        $v0, %lo(D_800FE1E2)($at)
