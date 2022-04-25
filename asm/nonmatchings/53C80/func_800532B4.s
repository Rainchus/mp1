	.set noat
	.set noreorder

glabel func_800532B4
/* 53EB4 800532B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53EB8 800532B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 53EBC 800532BC 3C048005 */  lui        $a0, %hi(func_80053214)
/* 53EC0 800532C0 24843214 */  addiu      $a0, $a0, %lo(func_80053214)
/* 53EC4 800532C4 24051002 */  addiu      $a1, $zero, 0x1002
/* 53EC8 800532C8 00003021 */  addu       $a2, $zero, $zero
/* 53ECC 800532CC 0C01770A */  jal        func_8005DC28
/* 53ED0 800532D0 00003821 */   addu      $a3, $zero, $zero
/* 53ED4 800532D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 53ED8 800532D8 03E00008 */  jr         $ra
/* 53EDC 800532DC 27BD0018 */   addiu     $sp, $sp, 0x18
