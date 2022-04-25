	.set noat
	.set noreorder

glabel func_8004A530
/* 4B130 8004A530 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4B134 8004A534 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4B138 8004A538 3C04800D */  lui        $a0, %hi(D_800D7560)
/* 4B13C 8004A53C 0C0221FC */  jal        func_800887F0
/* 4B140 8004A540 24847560 */   addiu     $a0, $a0, %lo(D_800D7560)
/* 4B144 8004A544 3C05800D */  lui        $a1, %hi(D_800D7710)
/* 4B148 8004A548 8CA57710 */  lw         $a1, %lo(D_800D7710)($a1)
/* 4B14C 8004A54C 10450004 */  beq        $v0, $a1, .L8004A560
/* 4B150 8004A550 00000000 */   nop
/* 4B154 8004A554 3C04800D */  lui        $a0, %hi(D_800D7560)
/* 4B158 8004A558 0C022310 */  jal        func_80088C40
/* 4B15C 8004A55C 24847560 */   addiu     $a0, $a0, %lo(D_800D7560)
.L8004A560:
/* 4B160 8004A560 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4B164 8004A564 03E00008 */  jr         $ra
/* 4B168 8004A568 27BD0018 */   addiu     $sp, $sp, 0x18
