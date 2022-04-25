	.set noat
	.set noreorder

glabel func_8007B3E8
/* 7BFE8 8007B3E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7BFEC 8007B3EC AFBF0010 */  sw         $ra, 0x10($sp)
/* 7BFF0 8007B3F0 3C04800E */  lui        $a0, %hi(D_800E434C)
/* 7BFF4 8007B3F4 0C008E22 */  jal        func_80023888
/* 7BFF8 8007B3F8 8C84434C */   lw        $a0, %lo(D_800E434C)($a0)
/* 7BFFC 8007B3FC 3C04800E */  lui        $a0, %hi(D_800E4340)
/* 7C000 8007B400 0C008E22 */  jal        func_80023888
/* 7C004 8007B404 8C844340 */   lw        $a0, %lo(D_800E4340)($a0)
/* 7C008 8007B408 3C04800E */  lui        $a0, %hi(D_800E4352)
/* 7C00C 8007B40C 0C00915B */  jal        func_8002456C
/* 7C010 8007B410 84844352 */   lh        $a0, %lo(D_800E4352)($a0)
/* 7C014 8007B414 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7C018 8007B418 03E00008 */  jr         $ra
/* 7C01C 8007B41C 27BD0018 */   addiu     $sp, $sp, 0x18
