	.set noat
	.set noreorder

glabel func_80018CD0
/* 198D0 80018CD0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 198D4 80018CD4 000410C0 */  sll        $v0, $a0, 3
/* 198D8 80018CD8 00441021 */  addu       $v0, $v0, $a0
/* 198DC 80018CDC 00021080 */  sll        $v0, $v0, 2
/* 198E0 80018CE0 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 198E4 80018CE4 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 198E8 80018CE8 00431021 */  addu       $v0, $v0, $v1
/* 198EC 80018CEC A445000A */  sh         $a1, 0xa($v0)
/* 198F0 80018CF0 03E00008 */  jr         $ra
/* 198F4 80018CF4 A446000C */   sh        $a2, 0xc($v0)
