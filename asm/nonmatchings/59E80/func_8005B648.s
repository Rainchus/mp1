	.set noat
	.set noreorder

glabel func_8005B648
/* 5C248 8005B648 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C24C 8005B64C AFBF0018 */  sw         $ra, 0x18($sp)
/* 5C250 8005B650 AFB10014 */  sw         $s1, 0x14($sp)
/* 5C254 8005B654 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C258 8005B658 00A08821 */  addu       $s1, $a1, $zero
/* 5C25C 8005B65C 3C01800F */  lui        $at, %hi(D_800ED0CE)
/* 5C260 8005B660 A431D0CE */  sh         $s1, %lo(D_800ED0CE)($at)
/* 5C264 8005B664 0C003128 */  jal        func_8000C4A0
/* 5C268 8005B668 00808021 */   addu      $s0, $a0, $zero
/* 5C26C 8005B66C 00021600 */  sll        $v0, $v0, 0x18
/* 5C270 8005B670 00021603 */  sra        $v0, $v0, 0x18
/* 5C274 8005B674 44821000 */  mtc1       $v0, $f2
/* 5C278 8005B678 00000000 */  nop
/* 5C27C 8005B67C 468010A0 */  cvt.s.w    $f2, $f2
/* 5C280 8005B680 3C01800E */  lui        $at, %hi(D_800D8908)
/* 5C284 8005B684 E4228908 */  swc1       $f2, %lo(D_800D8908)($at)
/* 5C288 8005B688 00108600 */  sll        $s0, $s0, 0x18
/* 5C28C 8005B68C 00108603 */  sra        $s0, $s0, 0x18
/* 5C290 8005B690 44900000 */  mtc1       $s0, $f0
/* 5C294 8005B694 00000000 */  nop
/* 5C298 8005B698 46800020 */  cvt.s.w    $f0, $f0
/* 5C29C 8005B69C 46020001 */  sub.s      $f0, $f0, $f2
/* 5C2A0 8005B6A0 3231FFFF */  andi       $s1, $s1, 0xffff
/* 5C2A4 8005B6A4 44911000 */  mtc1       $s1, $f2
/* 5C2A8 8005B6A8 00000000 */  nop
/* 5C2AC 8005B6AC 468010A0 */  cvt.s.w    $f2, $f2
/* 5C2B0 8005B6B0 46020003 */  div.s      $f0, $f0, $f2
/* 5C2B4 8005B6B4 3C01800E */  lui        $at, %hi(D_800D890C)
/* 5C2B8 8005B6B8 E420890C */  swc1       $f0, %lo(D_800D890C)($at)
/* 5C2BC 8005B6BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5C2C0 8005B6C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C2C4 8005B6C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C2C8 8005B6C8 03E00008 */  jr         $ra
/* 5C2CC 8005B6CC 27BD0020 */   addiu     $sp, $sp, 0x20
