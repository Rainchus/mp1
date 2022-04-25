	.set noat
	.set noreorder

glabel func_8003DADC
/* 3E6DC 8003DADC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E6E0 8003DAE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 3E6E4 8003DAE4 3C02800D */  lui        $v0, %hi(D_800D61C0)
/* 3E6E8 8003DAE8 8C4261C0 */  lw         $v0, %lo(D_800D61C0)($v0)
/* 3E6EC 8003DAEC 10400008 */  beqz       $v0, .L8003DB10
/* 3E6F0 8003DAF0 00000000 */   nop
.L8003DAF4:
/* 3E6F4 8003DAF4 3C04800D */  lui        $a0, %hi(D_800D61C0)
/* 3E6F8 8003DAF8 0C00F9A5 */  jal        func_8003E694
/* 3E6FC 8003DAFC 8C8461C0 */   lw        $a0, %lo(D_800D61C0)($a0)
/* 3E700 8003DB00 3C02800D */  lui        $v0, %hi(D_800D61C0)
/* 3E704 8003DB04 8C4261C0 */  lw         $v0, %lo(D_800D61C0)($v0)
/* 3E708 8003DB08 1440FFFA */  bnez       $v0, .L8003DAF4
/* 3E70C 8003DB0C 00000000 */   nop
.L8003DB10:
/* 3E710 8003DB10 8FBF0010 */  lw         $ra, 0x10($sp)
/* 3E714 8003DB14 03E00008 */  jr         $ra
/* 3E718 8003DB18 27BD0018 */   addiu     $sp, $sp, 0x18
