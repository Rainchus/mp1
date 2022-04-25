	.set noat
	.set noreorder

glabel func_8004A890
/* 4B490 8004A890 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B494 8004A894 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4B498 8004A898 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B49C 8004A89C AFB00010 */  sw         $s0, 0x10($sp)
/* 4B4A0 8004A8A0 00008821 */  addu       $s1, $zero, $zero
/* 4B4A4 8004A8A4 3C03800D */  lui        $v1, %hi(D_800D6740)
/* 4B4A8 8004A8A8 24636740 */  addiu      $v1, $v1, %lo(D_800D6740)
/* 4B4AC 8004A8AC 00002821 */  addu       $a1, $zero, $zero
/* 4B4B0 8004A8B0 2408FFFF */  addiu      $t0, $zero, -1
/* 4B4B4 8004A8B4 3086FFFF */  andi       $a2, $a0, 0xffff
/* 4B4B8 8004A8B8 24070001 */  addiu      $a3, $zero, 1
.L8004A8BC:
/* 4B4BC 8004A8BC 84620002 */  lh         $v0, 2($v1)
/* 4B4C0 8004A8C0 50480006 */  beql       $v0, $t0, .L8004A8DC
/* 4B4C4 8004A8C4 00608821 */   addu      $s1, $v1, $zero
/* 4B4C8 8004A8C8 14460005 */  bne        $v0, $a2, .L8004A8E0
/* 4B4CC 8004A8CC 24A50001 */   addiu     $a1, $a1, 1
/* 4B4D0 8004A8D0 A4670000 */  sh         $a3, ($v1)
/* 4B4D4 8004A8D4 08012A4F */  j          .L8004A93C
/* 4B4D8 8004A8D8 00601021 */   addu      $v0, $v1, $zero
.L8004A8DC:
/* 4B4DC 8004A8DC 24A50001 */  addiu      $a1, $a1, 1
.L8004A8E0:
/* 4B4E0 8004A8E0 28A20028 */  slti       $v0, $a1, 0x28
/* 4B4E4 8004A8E4 1440FFF5 */  bnez       $v0, .L8004A8BC
/* 4B4E8 8004A8E8 24630014 */   addiu     $v1, $v1, 0x14
/* 4B4EC 8004A8EC 12200012 */  beqz       $s1, .L8004A938
/* 4B4F0 8004A8F0 24020001 */   addiu     $v0, $zero, 1
/* 4B4F4 8004A8F4 A6220000 */  sh         $v0, ($s1)
/* 4B4F8 8004A8F8 A6240002 */  sh         $a0, 2($s1)
/* 4B4FC 8004A8FC 3090FFFF */  andi       $s0, $a0, 0xffff
/* 4B500 8004A900 0C012A1A */  jal        func_8004A868
/* 4B504 8004A904 02002021 */   addu      $a0, $s0, $zero
/* 4B508 8004A908 AE220010 */  sw         $v0, 0x10($s1)
/* 4B50C 8004A90C 0C012A11 */  jal        func_8004A844
/* 4B510 8004A910 02002021 */   addu      $a0, $s0, $zero
/* 4B514 8004A914 AE22000C */  sw         $v0, 0xc($s1)
/* 4B518 8004A918 0C00EDDD */  jal        func_8003B774
/* 4B51C 8004A91C 00402021 */   addu      $a0, $v0, $zero
/* 4B520 8004A920 AE220008 */  sw         $v0, 8($s1)
/* 4B524 8004A924 3C04800D */  lui        $a0, %hi(D_800D6AF0)
/* 4B528 8004A928 24846AF0 */  addiu      $a0, $a0, %lo(D_800D6AF0)
/* 4B52C 8004A92C 02202821 */  addu       $a1, $s1, $zero
/* 4B530 8004A930 0C0222C4 */  jal        func_80088B10
/* 4B534 8004A934 00003021 */   addu      $a2, $zero, $zero
.L8004A938:
/* 4B538 8004A938 02201021 */  addu       $v0, $s1, $zero
.L8004A93C:
/* 4B53C 8004A93C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4B540 8004A940 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B544 8004A944 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B548 8004A948 03E00008 */  jr         $ra
/* 4B54C 8004A94C 27BD0020 */   addiu     $sp, $sp, 0x20
