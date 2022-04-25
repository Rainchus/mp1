	.set noat
	.set noreorder

glabel func_8004C81C
/* 4D41C 8004C81C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D420 8004C820 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D424 8004C824 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D428 8004C828 00808021 */  addu       $s0, $a0, $zero
/* 4D42C 8004C82C 3C048005 */  lui        $a0, %hi(func_8004C760)
/* 4D430 8004C830 2484C760 */  addiu      $a0, $a0, %lo(func_8004C760)
/* 4D434 8004C834 3405EF00 */  ori        $a1, $zero, 0xef00
/* 4D438 8004C838 00003021 */  addu       $a2, $zero, $zero
/* 4D43C 8004C83C 0C01770A */  jal        func_8005DC28
/* 4D440 8004C840 00003821 */   addu      $a3, $zero, $zero
/* 4D444 8004C844 00108400 */  sll        $s0, $s0, 0x10
/* 4D448 8004C848 00108403 */  sra        $s0, $s0, 0x10
/* 4D44C 8004C84C AC50008C */  sw         $s0, 0x8c($v0)
/* 4D450 8004C850 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D454 8004C854 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D458 8004C858 03E00008 */  jr         $ra
/* 4D45C 8004C85C 27BD0018 */   addiu     $sp, $sp, 0x18
