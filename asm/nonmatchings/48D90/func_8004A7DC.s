	.set noat
	.set noreorder

glabel func_8004A7DC
/* 4B3DC 8004A7DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B3E0 8004A7E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4B3E4 8004A7E4 0C01296F */  jal        func_8004A5BC
/* 4B3E8 8004A7E8 00000000 */   nop
/* 4B3EC 8004A7EC 0C0129CF */  jal        func_8004A73C
/* 4B3F0 8004A7F0 00000000 */   nop
/* 4B3F4 8004A7F4 3C02800D */  lui        $v0, %hi(D_800D6730)
/* 4B3F8 8004A7F8 94426730 */  lhu        $v0, %lo(D_800D6730)($v0)
/* 4B3FC 8004A7FC 3042FFFB */  andi       $v0, $v0, 0xfffb
/* 4B400 8004A800 3C01800D */  lui        $at, %hi(D_800D6730)
/* 4B404 8004A804 A4226730 */  sh         $v0, %lo(D_800D6730)($at)
/* 4B408 8004A808 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4B40C 8004A80C 03E00008 */  jr         $ra
/* 4B410 8004A810 27BD0018 */   addiu     $sp, $sp, 0x18
