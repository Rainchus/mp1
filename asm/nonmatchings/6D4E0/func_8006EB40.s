	.set noat
	.set noreorder

glabel func_8006EB40
/* 6F740 8006EB40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F744 8006EB44 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6F748 8006EB48 00042400 */  sll        $a0, $a0, 0x10
/* 6F74C 8006EB4C 00042403 */  sra        $a0, $a0, 0x10
/* 6F750 8006EB50 00041080 */  sll        $v0, $a0, 2
/* 6F754 8006EB54 00441021 */  addu       $v0, $v0, $a0
/* 6F758 8006EB58 00021140 */  sll        $v0, $v0, 5
/* 6F75C 8006EB5C 00441023 */  subu       $v0, $v0, $a0
/* 6F760 8006EB60 00021080 */  sll        $v0, $v0, 2
/* 6F764 8006EB64 3C04800F */  lui        $a0, %hi(D_800ED4B0)
/* 6F768 8006EB68 8C84D4B0 */  lw         $a0, %lo(D_800ED4B0)($a0)
/* 6F76C 8006EB6C 0C01BA61 */  jal        func_8006E984
/* 6F770 8006EB70 00442021 */   addu      $a0, $v0, $a0
/* 6F774 8006EB74 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6F778 8006EB78 03E00008 */  jr         $ra
/* 6F77C 8006EB7C 27BD0018 */   addiu     $sp, $sp, 0x18
