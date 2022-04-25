	.set noat
	.set noreorder

glabel func_8005B75C
/* 5C35C 8005B75C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5C360 8005B760 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5C364 8005B764 AFB20018 */  sw         $s2, 0x18($sp)
/* 5C368 8005B768 AFB10014 */  sw         $s1, 0x14($sp)
/* 5C36C 8005B76C AFB00010 */  sw         $s0, 0x10($sp)
/* 5C370 8005B770 00808021 */  addu       $s0, $a0, $zero
/* 5C374 8005B774 00A08821 */  addu       $s1, $a1, $zero
/* 5C378 8005B778 0C00EDA9 */  jal        func_8003B6A4
/* 5C37C 8005B77C 24040010 */   addiu     $a0, $zero, 0x10
/* 5C380 8005B780 00409021 */  addu       $s2, $v0, $zero
/* 5C384 8005B784 3C02800E */  lui        $v0, %hi(D_800D8918)
/* 5C388 8005B788 8C428918 */  lw         $v0, %lo(D_800D8918)($v0)
/* 5C38C 8005B78C 00108080 */  sll        $s0, $s0, 2
/* 5C390 8005B790 02028021 */  addu       $s0, $s0, $v0
/* 5C394 8005B794 3C04800E */  lui        $a0, %hi(D_800D8910)
/* 5C398 8005B798 8C848910 */  lw         $a0, %lo(D_800D8910)($a0)
/* 5C39C 8005B79C 8E020000 */  lw         $v0, ($s0)
/* 5C3A0 8005B7A0 00822021 */  addu       $a0, $a0, $v0
/* 5C3A4 8005B7A4 AE240000 */  sw         $a0, ($s1)
/* 5C3A8 8005B7A8 02402821 */  addu       $a1, $s2, $zero
/* 5C3AC 8005B7AC 0C0187FA */  jal        func_80061FE8
/* 5C3B0 8005B7B0 24060010 */   addiu     $a2, $zero, 0x10
/* 5C3B4 8005B7B4 8E220000 */  lw         $v0, ($s1)
/* 5C3B8 8005B7B8 24420002 */  addiu      $v0, $v0, 2
/* 5C3BC 8005B7BC AE220000 */  sw         $v0, ($s1)
/* 5C3C0 8005B7C0 96420000 */  lhu        $v0, ($s2)
/* 5C3C4 8005B7C4 A6220004 */  sh         $v0, 4($s1)
/* 5C3C8 8005B7C8 0C00EDB2 */  jal        func_8003B6C8
/* 5C3CC 8005B7CC 02402021 */   addu      $a0, $s2, $zero
/* 5C3D0 8005B7D0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5C3D4 8005B7D4 8FB20018 */  lw         $s2, 0x18($sp)
/* 5C3D8 8005B7D8 8FB10014 */  lw         $s1, 0x14($sp)
/* 5C3DC 8005B7DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C3E0 8005B7E0 03E00008 */  jr         $ra
/* 5C3E4 8005B7E4 27BD0020 */   addiu     $sp, $sp, 0x20
