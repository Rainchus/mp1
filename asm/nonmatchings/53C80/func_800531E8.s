	.set noat
	.set noreorder

glabel func_800531E8
/* 53DE8 800531E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53DEC 800531EC AFBF0010 */  sw         $ra, 0x10($sp)
/* 53DF0 800531F0 3C048005 */  lui        $a0, %hi(func_8005313C)
/* 53DF4 800531F4 2484313C */  addiu      $a0, $a0, %lo(func_8005313C)
/* 53DF8 800531F8 24051002 */  addiu      $a1, $zero, 0x1002
/* 53DFC 800531FC 00003021 */  addu       $a2, $zero, $zero
/* 53E00 80053200 0C01770A */  jal        func_8005DC28
/* 53E04 80053204 00003821 */   addu      $a3, $zero, $zero
/* 53E08 80053208 8FBF0010 */  lw         $ra, 0x10($sp)
/* 53E0C 8005320C 03E00008 */  jr         $ra
/* 53E10 80053210 27BD0018 */   addiu     $sp, $sp, 0x18
