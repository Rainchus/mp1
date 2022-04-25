	.set noat
	.set noreorder

glabel func_8002ADF0
/* 2B9F0 8002ADF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B9F4 8002ADF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B9F8 8002ADF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B9FC 8002ADFC 00808021 */  addu       $s0, $a0, $zero
/* 2BA00 8002AE00 30A4FFFF */  andi       $a0, $a1, 0xffff
/* 2BA04 8002AE04 00042080 */  sll        $a0, $a0, 2
/* 2BA08 8002AE08 0C008DA1 */  jal        func_80023684
/* 2BA0C 8002AE0C 240555F0 */   addiu     $a1, $zero, 0x55f0
/* 2BA10 8002AE10 AE020000 */  sw         $v0, ($s0)
/* 2BA14 8002AE14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2BA18 8002AE18 8FB00010 */  lw         $s0, 0x10($sp)
/* 2BA1C 8002AE1C 03E00008 */  jr         $ra
/* 2BA20 8002AE20 27BD0018 */   addiu     $sp, $sp, 0x18
