	.set noat
	.set noreorder

glabel func_800F700C_14F36C
/* 14F36C 800F700C 00042140 */  sll        $a0, $a0, 5
/* 14F370 800F7010 3C028010 */  lui        $v0, %hi(D_800FA95A)
/* 14F374 800F7014 00441021 */  addu       $v0, $v0, $a0
/* 14F378 800F7018 9442A95A */  lhu        $v0, %lo(D_800FA95A)($v0)
/* 14F37C 800F701C 2442FFFD */  addiu      $v0, $v0, -3
/* 14F380 800F7020 2C420002 */  sltiu      $v0, $v0, 2
/* 14F384 800F7024 03E00008 */  jr         $ra
/* 14F388 800F7028 38420001 */   xori      $v0, $v0, 1
