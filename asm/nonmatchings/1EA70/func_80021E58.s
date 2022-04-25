	.set noat
	.set noreorder

glabel func_80021E58
/* 22A58 80021E58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 22A5C 80021E5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 22A60 80021E60 3C028002 */  lui        $v0, %hi(func_80021EA0)
/* 22A64 80021E64 24421EA0 */  addiu      $v0, $v0, %lo(func_80021EA0)
/* 22A68 80021E68 AFA20010 */  sw         $v0, 0x10($sp)
/* 22A6C 80021E6C 24047F76 */  addiu      $a0, $zero, 0x7f76
/* 22A70 80021E70 00002821 */  addu       $a1, $zero, $zero
/* 22A74 80021E74 00003021 */  addu       $a2, $zero, $zero
/* 22A78 80021E78 0C0174E1 */  jal        func_8005D384
/* 22A7C 80021E7C 2407FFFF */   addiu     $a3, $zero, -1
/* 22A80 80021E80 24040029 */  addiu      $a0, $zero, 0x29
/* 22A84 80021E84 0C0084C2 */  jal        func_80021308
/* 22A88 80021E88 2405000A */   addiu     $a1, $zero, 0xa
/* 22A8C 80021E8C 3C01800F */  lui        $at, %hi(D_800ED4A8)
/* 22A90 80021E90 AC22D4A8 */  sw         $v0, %lo(D_800ED4A8)($at)
/* 22A94 80021E94 8FBF0018 */  lw         $ra, 0x18($sp)
/* 22A98 80021E98 03E00008 */  jr         $ra
/* 22A9C 80021E9C 27BD0020 */   addiu     $sp, $sp, 0x20
