	.set noat
	.set noreorder

glabel func_8005038C
/* 50F8C 8005038C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 50F90 80050390 AFBF0010 */  sw         $ra, 0x10($sp)
/* 50F94 80050394 3C04800C */  lui        $a0, %hi(D_800C526C)
/* 50F98 80050398 8C84526C */  lw         $a0, %lo(D_800C526C)($a0)
/* 50F9C 8005039C 0C013E0C */  jal        func_8004F830
/* 50FA0 800503A0 34058000 */   ori       $a1, $zero, 0x8000
/* 50FA4 800503A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 50FA8 800503A8 03E00008 */  jr         $ra
/* 50FAC 800503AC 27BD0018 */   addiu     $sp, $sp, 0x18
