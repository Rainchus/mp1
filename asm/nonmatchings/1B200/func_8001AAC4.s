	.set noat
	.set noreorder

glabel func_8001AAC4
/* 1B6C4 8001AAC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B6C8 8001AAC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B6CC 8001AACC AFB40020 */  sw         $s4, 0x20($sp)
/* 1B6D0 8001AAD0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1B6D4 8001AAD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B6D8 8001AAD8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1B6DC 8001AADC AFB00010 */  sw         $s0, 0x10($sp)
/* 1B6E0 8001AAE0 00808821 */  addu       $s1, $a0, $zero
/* 1B6E4 8001AAE4 00C09021 */  addu       $s2, $a2, $zero
/* 1B6E8 8001AAE8 00E09821 */  addu       $s3, $a3, $zero
/* 1B6EC 8001AAEC 8FB40038 */  lw         $s4, 0x38($sp)
/* 1B6F0 8001AAF0 3C02800F */  lui        $v0, %hi(D_800ED3C2)
/* 1B6F4 8001AAF4 8442D3C2 */  lh         $v0, %lo(D_800ED3C2)($v0)
/* 1B6F8 8001AAF8 28420020 */  slti       $v0, $v0, 0x20
/* 1B6FC 8001AAFC 10400018 */  beqz       $v0, .L8001AB60
/* 1B700 8001AB00 00A08021 */   addu      $s0, $a1, $zero
/* 1B704 8001AB04 0C022124 */  jal        func_80088490
/* 1B708 8001AB08 24040001 */   addiu     $a0, $zero, 1
/* 1B70C 8001AB0C 3C03800F */  lui        $v1, %hi(D_800ED3C2)
/* 1B710 8001AB10 9463D3C2 */  lhu        $v1, %lo(D_800ED3C2)($v1)
/* 1B714 8001AB14 24630001 */  addiu      $v1, $v1, 1
/* 1B718 8001AB18 3C01800F */  lui        $at, %hi(D_800ED3C2)
/* 1B71C 8001AB1C A423D3C2 */  sh         $v1, %lo(D_800ED3C2)($at)
/* 1B720 8001AB20 0C022124 */  jal        func_80088490
/* 1B724 8001AB24 00402021 */   addu      $a0, $v0, $zero
/* 1B728 8001AB28 0C006A9C */  jal        func_8001AA70
/* 1B72C 8001AB2C 00000000 */   nop
/* 1B730 8001AB30 AC510000 */  sw         $s1, ($v0)
/* 1B734 8001AB34 A4500004 */  sh         $s0, 4($v0)
/* 1B738 8001AB38 AC520008 */  sw         $s2, 8($v0)
/* 1B73C 8001AB3C AC53000C */  sw         $s3, 0xc($v0)
/* 1B740 8001AB40 AC540010 */  sw         $s4, 0x10($v0)
/* 1B744 8001AB44 3C04800D */  lui        $a0, %hi(D_800D5F18)
/* 1B748 8001AB48 24845F18 */  addiu      $a0, $a0, %lo(D_800D5F18)
/* 1B74C 8001AB4C 00402821 */  addu       $a1, $v0, $zero
/* 1B750 8001AB50 0C0222C4 */  jal        func_80088B10
/* 1B754 8001AB54 24060001 */   addiu     $a2, $zero, 1
/* 1B758 8001AB58 08006AD9 */  j          .L8001AB64
/* 1B75C 8001AB5C 24020001 */   addiu     $v0, $zero, 1
.L8001AB60:
/* 1B760 8001AB60 00001021 */  addu       $v0, $zero, $zero
.L8001AB64:
/* 1B764 8001AB64 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1B768 8001AB68 8FB40020 */  lw         $s4, 0x20($sp)
/* 1B76C 8001AB6C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1B770 8001AB70 8FB20018 */  lw         $s2, 0x18($sp)
/* 1B774 8001AB74 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B778 8001AB78 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B77C 8001AB7C 03E00008 */  jr         $ra
/* 1B780 8001AB80 27BD0028 */   addiu     $sp, $sp, 0x28
