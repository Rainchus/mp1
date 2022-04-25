	.set noat
	.set noreorder

glabel func_8004F044
/* 4FC44 8004F044 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FC48 8004F048 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4FC4C 8004F04C AFB00010 */  sw         $s0, 0x10($sp)
/* 4FC50 8004F050 00808021 */  addu       $s0, $a0, $zero
.L8004F054:
/* 4FC54 8004F054 0C013C06 */  jal        func_8004F018
/* 4FC58 8004F058 02002021 */   addu      $a0, $s0, $zero
/* 4FC5C 8004F05C 10400005 */  beqz       $v0, .L8004F074
/* 4FC60 8004F060 00000000 */   nop
/* 4FC64 8004F064 0C018D6D */  jal        func_800635B4
/* 4FC68 8004F068 00000000 */   nop
/* 4FC6C 8004F06C 08013C15 */  j          .L8004F054
/* 4FC70 8004F070 00000000 */   nop
.L8004F074:
/* 4FC74 8004F074 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4FC78 8004F078 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FC7C 8004F07C 03E00008 */  jr         $ra
/* 4FC80 8004F080 27BD0018 */   addiu     $sp, $sp, 0x18
