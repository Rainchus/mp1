	.set noat
	.set noreorder

glabel func_8006E01C
/* 6EC1C 8006E01C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6EC20 8006E020 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6EC24 8006E024 44850000 */  mtc1       $a1, $f0
/* 6EC28 8006E028 00042400 */  sll        $a0, $a0, 0x10
/* 6EC2C 8006E02C 00042403 */  sra        $a0, $a0, 0x10
/* 6EC30 8006E030 00041080 */  sll        $v0, $a0, 2
/* 6EC34 8006E034 00441021 */  addu       $v0, $v0, $a0
/* 6EC38 8006E038 00021140 */  sll        $v0, $v0, 5
/* 6EC3C 8006E03C 00441023 */  subu       $v0, $v0, $a0
/* 6EC40 8006E040 00021080 */  sll        $v0, $v0, 2
/* 6EC44 8006E044 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6EC48 8006E048 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6EC4C 8006E04C 00431021 */  addu       $v0, $v0, $v1
/* 6EC50 8006E050 84440044 */  lh         $a0, 0x44($v0)
/* 6EC54 8006E054 44060000 */  mfc1       $a2, $f0
/* 6EC58 8006E058 00000000 */  nop
/* 6EC5C 8006E05C 0C019CEC */  jal        func_800673B0
/* 6EC60 8006E060 00002821 */   addu      $a1, $zero, $zero
/* 6EC64 8006E064 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6EC68 8006E068 03E00008 */  jr         $ra
/* 6EC6C 8006E06C 27BD0018 */   addiu     $sp, $sp, 0x18
