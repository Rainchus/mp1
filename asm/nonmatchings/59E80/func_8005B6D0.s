	.set noat
	.set noreorder

glabel func_8005B6D0
/* 5C2D0 8005B6D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C2D4 8005B6D4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5C2D8 8005B6D8 AFB10014 */  sw         $s1, 0x14($sp)
/* 5C2DC 8005B6DC AFB00010 */  sw         $s0, 0x10($sp)
/* 5C2E0 8005B6E0 00808821 */  addu       $s1, $a0, $zero
/* 5C2E4 8005B6E4 3C01800E */  lui        $at, %hi(D_800D8910)
/* 5C2E8 8005B6E8 AC318910 */  sw         $s1, %lo(D_800D8910)($at)
/* 5C2EC 8005B6EC 0C00EDA9 */  jal        func_8003B6A4
/* 5C2F0 8005B6F0 24040010 */   addiu     $a0, $zero, 0x10
/* 5C2F4 8005B6F4 00408021 */  addu       $s0, $v0, $zero
/* 5C2F8 8005B6F8 02202021 */  addu       $a0, $s1, $zero
/* 5C2FC 8005B6FC 02002821 */  addu       $a1, $s0, $zero
/* 5C300 8005B700 0C0187FA */  jal        func_80061FE8
/* 5C304 8005B704 24060010 */   addiu     $a2, $zero, 0x10
/* 5C308 8005B708 8E020000 */  lw         $v0, ($s0)
/* 5C30C 8005B70C 3C01800E */  lui        $at, %hi(D_800D8914)
/* 5C310 8005B710 AC228914 */  sw         $v0, %lo(D_800D8914)($at)
/* 5C314 8005B714 0C00EDB2 */  jal        func_8003B6C8
/* 5C318 8005B718 02002021 */   addu      $a0, $s0, $zero
/* 5C31C 8005B71C 3C10800E */  lui        $s0, %hi(D_800D8914)
/* 5C320 8005B720 8E108914 */  lw         $s0, %lo(D_800D8914)($s0)
/* 5C324 8005B724 00108080 */  sll        $s0, $s0, 2
/* 5C328 8005B728 0C00EDA9 */  jal        func_8003B6A4
/* 5C32C 8005B72C 02002021 */   addu      $a0, $s0, $zero
/* 5C330 8005B730 3C01800E */  lui        $at, %hi(D_800D8918)
/* 5C334 8005B734 AC228918 */  sw         $v0, %lo(D_800D8918)($at)
/* 5C338 8005B738 26240004 */  addiu      $a0, $s1, 4
/* 5C33C 8005B73C 00402821 */  addu       $a1, $v0, $zero
/* 5C340 8005B740 0C0187FA */  jal        func_80061FE8
/* 5C344 8005B744 02003021 */   addu      $a2, $s0, $zero
/* 5C348 8005B748 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5C34C 8005B74C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C350 8005B750 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C354 8005B754 03E00008 */  jr         $ra
/* 5C358 8005B758 27BD0020 */   addiu     $sp, $sp, 0x20
