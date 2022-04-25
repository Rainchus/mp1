	.set noat
	.set noreorder

glabel func_800141C4
/* 14DC4 800141C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14DC8 800141C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14DCC 800141CC 3C02800D */  lui        $v0, %hi(D_800D12CC)
/* 14DD0 800141D0 844212CC */  lh         $v0, %lo(D_800D12CC)($v0)
/* 14DD4 800141D4 10400004 */  beqz       $v0, .L800141E8
/* 14DD8 800141D8 00000000 */   nop
/* 14DDC 800141DC 3C04800D */  lui        $a0, %hi(D_800D12C0)
/* 14DE0 800141E0 0C019056 */  jal        func_80064158
/* 14DE4 800141E4 248412C0 */   addiu     $a0, $a0, %lo(D_800D12C0)
.L800141E8:
/* 14DE8 800141E8 3C01800D */  lui        $at, %hi(D_800D12CC)
/* 14DEC 800141EC A42012CC */  sh         $zero, %lo(D_800D12CC)($at)
/* 14DF0 800141F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14DF4 800141F4 03E00008 */  jr         $ra
/* 14DF8 800141F8 27BD0018 */   addiu     $sp, $sp, 0x18
