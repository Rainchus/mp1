	.set noat
	.set noreorder

glabel func_8004F234
/* 4FE34 8004F234 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4FE38 8004F238 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4FE3C 8004F23C 3C04000A */  lui        $a0, 0xa
/* 4FE40 8004F240 34840089 */  ori        $a0, $a0, 0x89
/* 4FE44 8004F244 0C005D4A */  jal        func_80017528
/* 4FE48 8004F248 240502B9 */   addiu     $a1, $zero, 0x2b9
/* 4FE4C 8004F24C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4FE50 8004F250 3042FFFF */  andi       $v0, $v0, 0xffff
/* 4FE54 8004F254 03E00008 */  jr         $ra
/* 4FE58 8004F258 27BD0018 */   addiu     $sp, $sp, 0x18
