	.set noat
	.set noreorder

glabel func_8004B1B8
/* 4BDB8 8004B1B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4BDBC 8004B1BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 4BDC0 8004B1C0 3C04800E */  lui        $a0, %hi(D_800D80B0)
/* 4BDC4 8004B1C4 8C8480B0 */  lw         $a0, %lo(D_800D80B0)($a0)
/* 4BDC8 8004B1C8 10800005 */  beqz       $a0, .L8004B1E0
/* 4BDCC 8004B1CC 00000000 */   nop
/* 4BDD0 8004B1D0 0C017764 */  jal        func_8005DD90
/* 4BDD4 8004B1D4 00000000 */   nop
/* 4BDD8 8004B1D8 3C01800E */  lui        $at, %hi(D_800D80B0)
/* 4BDDC 8004B1DC AC2080B0 */  sw         $zero, %lo(D_800D80B0)($at)
.L8004B1E0:
/* 4BDE0 8004B1E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4BDE4 8004B1E4 03E00008 */  jr         $ra
/* 4BDE8 8004B1E8 27BD0018 */   addiu     $sp, $sp, 0x18
