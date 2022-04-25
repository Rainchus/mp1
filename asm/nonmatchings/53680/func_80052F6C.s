	.set noat
	.set noreorder

glabel func_80052F6C
/* 53B6C 80052F6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 53B70 80052F70 AFBF0010 */  sw         $ra, 0x10($sp)
/* 53B74 80052F74 00042400 */  sll        $a0, $a0, 0x10
/* 53B78 80052F78 0C014AA3 */  jal        func_80052A8C
/* 53B7C 80052F7C 00042403 */   sra       $a0, $a0, 0x10
/* 53B80 80052F80 90420004 */  lbu        $v0, 4($v0)
/* 53B84 80052F84 3C01800C */  lui        $at, %hi(D_800C54B0)
/* 53B88 80052F88 00220821 */  addu       $at, $at, $v0
/* 53B8C 80052F8C 902254B0 */  lbu        $v0, %lo(D_800C54B0)($at)
/* 53B90 80052F90 8FBF0010 */  lw         $ra, 0x10($sp)
/* 53B94 80052F94 03E00008 */  jr         $ra
/* 53B98 80052F98 27BD0018 */   addiu     $sp, $sp, 0x18
