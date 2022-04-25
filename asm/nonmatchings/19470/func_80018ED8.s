	.set noat
	.set noreorder

glabel func_80018ED8
/* 19AD8 80018ED8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19ADC 80018EDC AFBF0010 */  sw         $ra, 0x10($sp)
/* 19AE0 80018EE0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19AE4 80018EE4 000410C0 */  sll        $v0, $a0, 3
/* 19AE8 80018EE8 00441021 */  addu       $v0, $v0, $a0
/* 19AEC 80018EEC 00021080 */  sll        $v0, $v0, 2
/* 19AF0 80018EF0 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19AF4 80018EF4 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19AF8 80018EF8 00431021 */  addu       $v0, $v0, $v1
/* 19AFC 80018EFC 84440004 */  lh         $a0, 4($v0)
/* 19B00 80018F00 0C019CCA */  jal        func_80067328
/* 19B04 80018F04 00002821 */   addu      $a1, $zero, $zero
/* 19B08 80018F08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 19B0C 80018F0C 304200FF */  andi       $v0, $v0, 0xff
/* 19B10 80018F10 03E00008 */  jr         $ra
/* 19B14 80018F14 27BD0018 */   addiu     $sp, $sp, 0x18
