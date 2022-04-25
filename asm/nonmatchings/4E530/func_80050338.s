	.set noat
	.set noreorder

glabel func_80050338
/* 50F38 80050338 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50F3C 8005033C AFBF0010 */  sw         $ra, 0x10($sp)
/* 50F40 80050340 3C04800C */  lui        $a0, %hi(D_800C526C)
/* 50F44 80050344 0C013D61 */  jal        func_8004F584
/* 50F48 80050348 8C84526C */   lw        $a0, %lo(D_800C526C)($a0)
/* 50F4C 8005034C 2402FFFF */  addiu      $v0, $zero, -1
/* 50F50 80050350 3C01800C */  lui        $at, %hi(D_800C526C)
/* 50F54 80050354 0C013D7C */  jal        func_8004F5F0
/* 50F58 80050358 AC22526C */   sw        $v0, %lo(D_800C526C)($at)
/* 50F5C 8005035C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50F60 80050360 03E00008 */  jr         $ra
/* 50F64 80050364 27BD0018 */   addiu     $sp, $sp, 0x18
