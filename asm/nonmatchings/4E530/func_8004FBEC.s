	.set noat
	.set noreorder

glabel func_8004FBEC
/* 507EC 8004FBEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 507F0 8004FBF0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 507F4 8004FBF4 AFB3001C */  sw         $s3, 0x1c($sp)
/* 507F8 8004FBF8 AFB20018 */  sw         $s2, 0x18($sp)
/* 507FC 8004FBFC AFB10014 */  sw         $s1, 0x14($sp)
/* 50800 8004FC00 AFB00010 */  sw         $s0, 0x10($sp)
/* 50804 8004FC04 00A09021 */  addu       $s2, $a1, $zero
/* 50808 8004FC08 00C09821 */  addu       $s3, $a2, $zero
/* 5080C 8004FC0C 00008021 */  addu       $s0, $zero, $zero
/* 50810 8004FC10 3C03800E */  lui        $v1, %hi(D_800D82E0)
/* 50814 8004FC14 246382E0 */  addiu      $v1, $v1, %lo(D_800D82E0)
/* 50818 8004FC18 001010C0 */  sll        $v0, $s0, 3
.L8004FC1C:
/* 5081C 8004FC1C 00438821 */  addu       $s1, $v0, $v1
/* 50820 8004FC20 8E220000 */  lw         $v0, ($s1)
/* 50824 8004FC24 10400006 */  beqz       $v0, .L8004FC40
/* 50828 8004FC28 24020010 */   addiu     $v0, $zero, 0x10
/* 5082C 8004FC2C 26100001 */  addiu      $s0, $s0, 1
/* 50830 8004FC30 2A020010 */  slti       $v0, $s0, 0x10
/* 50834 8004FC34 1440FFF9 */  bnez       $v0, .L8004FC1C
/* 50838 8004FC38 001010C0 */   sll       $v0, $s0, 3
/* 5083C 8004FC3C 24020010 */  addiu      $v0, $zero, 0x10
.L8004FC40:
/* 50840 8004FC40 52020014 */  beql       $s0, $v0, .L8004FC94
/* 50844 8004FC44 2402FFFF */   addiu     $v0, $zero, -1
/* 50848 8004FC48 0C00516C */  jal        func_800145B0
/* 5084C 8004FC4C 00000000 */   nop
/* 50850 8004FC50 AE220000 */  sw         $v0, ($s1)
/* 50854 8004FC54 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* 50858 8004FC58 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* 5085C 8004FC5C 00121840 */  sll        $v1, $s2, 1
/* 50860 8004FC60 00721821 */  addu       $v1, $v1, $s2
/* 50864 8004FC64 00031980 */  sll        $v1, $v1, 6
/* 50868 8004FC68 00641821 */  addu       $v1, $v1, $a0
/* 5086C 8004FC6C 8C64006C */  lw         $a0, 0x6c($v1)
/* 50870 8004FC70 00402821 */  addu       $a1, $v0, $zero
/* 50874 8004FC74 00003021 */  addu       $a2, $zero, $zero
/* 50878 8004FC78 0C00E2A7 */  jal        func_80038A9C
/* 5087C 8004FC7C 02603821 */   addu      $a3, $s3, $zero
/* 50880 8004FC80 A6220004 */  sh         $v0, 4($s1)
/* 50884 8004FC84 00122400 */  sll        $a0, $s2, 0x10
/* 50888 8004FC88 0C0096B5 */  jal        func_80025AD4
/* 5088C 8004FC8C 00042403 */   sra       $a0, $a0, 0x10
/* 50890 8004FC90 02001021 */  addu       $v0, $s0, $zero
.L8004FC94:
/* 50894 8004FC94 8FBF0020 */  lw         $ra, 0x20($sp)
/* 50898 8004FC98 8FB3001C */  lw         $s3, 0x1c($sp)
/* 5089C 8004FC9C 8FB20018 */  lw         $s2, 0x18($sp)
/* 508A0 8004FCA0 8FB10014 */  lw         $s1, 0x14($sp)
/* 508A4 8004FCA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 508A8 8004FCA8 03E00008 */  jr         $ra
/* 508AC 8004FCAC 27BD0028 */   addiu     $sp, $sp, 0x28
