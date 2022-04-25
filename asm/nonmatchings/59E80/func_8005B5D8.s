	.set noat
	.set noreorder

glabel func_8005B5D8
/* 5C1D8 8005B5D8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C1DC 8005B5DC AFBF0018 */  sw         $ra, 0x18($sp)
/* 5C1E0 8005B5E0 3C028006 */  lui        $v0, %hi(func_8005B510)
/* 5C1E4 8005B5E4 2442B510 */  addiu      $v0, $v0, %lo(func_8005B510)
/* 5C1E8 8005B5E8 AFA20010 */  sw         $v0, 0x10($sp)
/* 5C1EC 8005B5EC 24040001 */  addiu      $a0, $zero, 1
/* 5C1F0 8005B5F0 00002821 */  addu       $a1, $zero, $zero
/* 5C1F4 8005B5F4 00003021 */  addu       $a2, $zero, $zero
/* 5C1F8 8005B5F8 0C0174E1 */  jal        func_8005D384
/* 5C1FC 8005B5FC 2407FFFF */   addiu     $a3, $zero, -1
/* 5C200 8005B600 00402021 */  addu       $a0, $v0, $zero
/* 5C204 8005B604 0C01762E */  jal        func_8005D8B8
/* 5C208 8005B608 240500A0 */   addiu     $a1, $zero, 0xa0
/* 5C20C 8005B60C 3C01800F */  lui        $at, %hi(D_800ED0CE)
/* 5C210 8005B610 0C003128 */  jal        func_8000C4A0
/* 5C214 8005B614 A420D0CE */   sh        $zero, %lo(D_800ED0CE)($at)
/* 5C218 8005B618 00021600 */  sll        $v0, $v0, 0x18
/* 5C21C 8005B61C 00021603 */  sra        $v0, $v0, 0x18
/* 5C220 8005B620 44820000 */  mtc1       $v0, $f0
/* 5C224 8005B624 00000000 */  nop
/* 5C228 8005B628 46800020 */  cvt.s.w    $f0, $f0
/* 5C22C 8005B62C 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C230 8005B630 E4208908 */  swc1       $f0, %lo(D_800D8908)($at)
/* 5C234 8005B634 3C01800E */  lui        $at, %hi(D_800D890C)
/* 5C238 8005B638 AC20890C */  sw         $zero, %lo(D_800D890C)($at)
/* 5C23C 8005B63C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5C240 8005B640 03E00008 */  jr         $ra
/* 5C244 8005B644 27BD0020 */   addiu     $sp, $sp, 0x20
