	.set noat
	.set noreorder

glabel func_8004B5DC
/* 4C1DC 8004B5DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4C1E0 8004B5E0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4C1E4 8004B5E4 00802821 */  addu       $a1, $a0, $zero
/* 4C1E8 8004B5E8 3C06800E */  lui        $a2, %hi(D_800D80BC)
/* 4C1EC 8004B5EC 24C680BC */  addiu      $a2, $a2, %lo(D_800D80BC)
/* 4C1F0 8004B5F0 0C00764D */  jal        func_8001D934
/* 4C1F4 8004B5F4 00002021 */   addu      $a0, $zero, $zero
/* 4C1F8 8004B5F8 3C04800E */  lui        $a0, %hi(D_800D80BC)
/* 4C1FC 8004B5FC 248480BC */  addiu      $a0, $a0, %lo(D_800D80BC)
/* 4C200 8004B600 3C05800E */  lui        $a1, %hi(D_800D80B8)
/* 4C204 8004B604 0C01286C */  jal        func_8004A1B0
/* 4C208 8004B608 8CA580B8 */   lw        $a1, %lo(D_800D80B8)($a1)
/* 4C20C 8004B60C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4C210 8004B610 3042FFFF */  andi       $v0, $v0, 0xffff
/* 4C214 8004B614 03E00008 */  jr         $ra
/* 4C218 8004B618 27BD0018 */   addiu     $sp, $sp, 0x18
