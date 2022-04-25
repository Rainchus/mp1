	.set noat
	.set noreorder

glabel func_8004A7A4
/* 4B3A4 8004A7A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B3A8 8004A7A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4B3AC 8004A7AC 0C0129A1 */  jal        func_8004A684
/* 4B3B0 8004A7B0 00000000 */   nop
/* 4B3B4 8004A7B4 0C012907 */  jal        func_8004A41C
/* 4B3B8 8004A7B8 00000000 */   nop
/* 4B3BC 8004A7BC 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4B3C0 8004A7C0 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4B3C4 8004A7C4 34420004 */  ori        $v0, $v0, 4
/* 4B3C8 8004A7C8 3C01800D */  lui        $at, %hi(D_800D6730)
/* 4B3CC 8004A7CC A4226730 */  sh         $v0, %lo(D_800D6730)($at)
/* 4B3D0 8004A7D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4B3D4 8004A7D4 03E00008 */  jr         $ra
/* 4B3D8 8004A7D8 27BD0018 */   addiu     $sp, $sp, 0x18
