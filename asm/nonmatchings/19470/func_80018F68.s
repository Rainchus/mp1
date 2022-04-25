	.set noat
	.set noreorder

glabel func_80018F68
/* 19B68 80018F68 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 19B6C 80018F6C AFBF0018 */  sw         $ra, 0x18($sp)
/* 19B70 80018F70 3084FFFF */  andi       $a0, $a0, 0xffff
/* 19B74 80018F74 000410C0 */  sll        $v0, $a0, 3
/* 19B78 80018F78 00441021 */  addu       $v0, $v0, $a0
/* 19B7C 80018F7C 00021080 */  sll        $v0, $v0, 2
/* 19B80 80018F80 3C03800F */  lui        $v1, %hi(D_800ED60C)
/* 19B84 80018F84 8C63D60C */  lw         $v1, %lo(D_800ED60C)($v1)
/* 19B88 80018F88 00431021 */  addu       $v0, $v0, $v1
/* 19B8C 80018F8C 84440004 */  lh         $a0, 4($v0)
/* 19B90 80018F90 30A200FF */  andi       $v0, $a1, 0xff
/* 19B94 80018F94 30C300FF */  andi       $v1, $a2, 0xff
/* 19B98 80018F98 30E700FF */  andi       $a3, $a3, 0xff
/* 19B9C 80018F9C AFA70010 */  sw         $a3, 0x10($sp)
/* 19BA0 80018FA0 00002821 */  addu       $a1, $zero, $zero
/* 19BA4 80018FA4 00403021 */  addu       $a2, $v0, $zero
/* 19BA8 80018FA8 0C019D3D */  jal        func_800674F4
/* 19BAC 80018FAC 00603821 */   addu      $a3, $v1, $zero
/* 19BB0 80018FB0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 19BB4 80018FB4 03E00008 */  jr         $ra
/* 19BB8 80018FB8 27BD0020 */   addiu     $sp, $sp, 0x20
