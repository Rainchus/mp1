	.set noat
	.set noreorder

glabel func_80052F04
/* 53B04 80052F04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53B08 80052F08 AFBF0010 */  sw         $ra, 0x10($sp)
/* 53B0C 80052F0C 00042400 */  sll        $a0, $a0, 0x10
/* 53B10 80052F10 0C014AA3 */  jal        func_80052A8C
/* 53B14 80052F14 00042403 */   sra       $a0, $a0, 0x10
/* 53B18 80052F18 90420004 */  lbu        $v0, 4($v0)
/* 53B1C 80052F1C 3C01800C */  lui        $at, %hi(D_800C54A8)
/* 53B20 80052F20 00220821 */  addu       $at, $at, $v0
/* 53B24 80052F24 902254A8 */  lbu        $v0, %lo(D_800C54A8)($at)
/* 53B28 80052F28 8FBF0010 */  lw         $ra, 0x10($sp)
/* 53B2C 80052F2C 03E00008 */  jr         $ra
/* 53B30 80052F30 27BD0018 */   addiu     $sp, $sp, 0x18
