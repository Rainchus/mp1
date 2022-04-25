	.set noat
	.set noreorder

glabel func_80077068
/* 77C68 80077068 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77C6C 8007706C AFBF0010 */  sw         $ra, 0x10($sp)
/* 77C70 80077070 3C05000B */  lui        $a1, 0xb
/* 77C74 80077074 34A50058 */  ori        $a1, $a1, 0x58
/* 77C78 80077078 0C01DCFB */  jal        func_800773EC
/* 77C7C 8007707C 24060421 */   addiu     $a2, $zero, 0x421
/* 77C80 80077080 8FBF0010 */  lw         $ra, 0x10($sp)
/* 77C84 80077084 03E00008 */  jr         $ra
/* 77C88 80077088 27BD0018 */   addiu     $sp, $sp, 0x18
