	.set noat
	.set noreorder

glabel func_8003B6A4
/* 3C2A4 8003B6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3C2A8 8003B6A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3C2AC 8003B6AC 00802821 */  addu       $a1, $a0, $zero
/* 3C2B0 8003B6B0 3C04800D */  lui        $a0, %hi(D_800D6030)
/* 3C2B4 8003B6B4 0C016628 */  jal        func_800598A0
/* 3C2B8 8003B6B8 8C846030 */   lw        $a0, %lo(D_800D6030)($a0)
/* 3C2BC 8003B6BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3C2C0 8003B6C0 03E00008 */  jr         $ra
/* 3C2C4 8003B6C4 27BD0018 */   addiu     $sp, $sp, 0x18
