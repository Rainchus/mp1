	.set noat
	.set noreorder

glabel func_8004F928
/* 50528 8004F928 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5052C 8004F92C AFBF0010 */  sw         $ra, 0x10($sp)
/* 50530 8004F930 9082004C */  lbu        $v0, 0x4c($a0)
/* 50534 8004F934 000210C0 */  sll        $v0, $v0, 3
/* 50538 8004F938 3C04800E */  lui        $a0, %hi(D_800D8264)
/* 5053C 8004F93C 00822021 */  addu       $a0, $a0, $v0
/* 50540 8004F940 0C00853F */  jal        func_800214FC
/* 50544 8004F944 8C848264 */   lw        $a0, %lo(D_800D8264)($a0)
/* 50548 8004F948 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5054C 8004F94C 03E00008 */  jr         $ra
/* 50550 8004F950 27BD0018 */   addiu     $sp, $sp, 0x18
