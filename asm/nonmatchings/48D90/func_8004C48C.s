	.set noat
	.set noreorder

glabel func_8004C48C
/* 4D08C 8004C48C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D090 8004C490 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D094 8004C494 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D098 8004C498 00A08021 */  addu       $s0, $a1, $zero
/* 4D09C 8004C49C 00042400 */  sll        $a0, $a0, 0x10
/* 4D0A0 8004C4A0 0C01307B */  jal        func_8004C1EC
/* 4D0A4 8004C4A4 00042403 */   sra       $a0, $a0, 0x10
/* 4D0A8 8004C4A8 A0500001 */  sb         $s0, 1($v0)
/* 4D0AC 8004C4AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D0B0 8004C4B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D0B4 8004C4B4 03E00008 */  jr         $ra
/* 4D0B8 8004C4B8 27BD0018 */   addiu     $sp, $sp, 0x18
