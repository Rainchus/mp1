	.set noat
	.set noreorder

glabel func_80008DE0
/* 99E0 80008DE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 99E4 80008DE4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 99E8 80008DE8 AFB40020 */  sw         $s4, 0x20($sp)
/* 99EC 80008DEC AFB3001C */  sw         $s3, 0x1c($sp)
/* 99F0 80008DF0 AFB20018 */  sw         $s2, 0x18($sp)
/* 99F4 80008DF4 AFB10014 */  sw         $s1, 0x14($sp)
/* 99F8 80008DF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 99FC 80008DFC 0080A021 */  addu       $s4, $a0, $zero
/* 9A00 80008E00 00A09021 */  addu       $s2, $a1, $zero
/* 9A04 80008E04 00068880 */  sll        $s1, $a2, 2
/* 9A08 80008E08 2405FFEE */  addiu      $a1, $zero, -0x12
/* 9A0C 80008E0C 3C04800C */  lui        $a0, %hi(D_800B8A20)
/* 9A10 80008E10 00912021 */  addu       $a0, $a0, $s1
/* 9A14 80008E14 8C848A20 */  lw         $a0, %lo(D_800B8A20)($a0)
/* 9A18 80008E18 0C005D4A */  jal        func_80017528
/* 9A1C 80008E1C 00E52824 */   and       $a1, $a3, $a1
/* 9A20 80008E20 00408021 */  addu       $s0, $v0, $zero
/* 9A24 80008E24 3252FFFF */  andi       $s2, $s2, 0xffff
/* 9A28 80008E28 8E830040 */  lw         $v1, 0x40($s4)
/* 9A2C 80008E2C 00121040 */  sll        $v0, $s2, 1
/* 9A30 80008E30 00431021 */  addu       $v0, $v0, $v1
/* 9A34 80008E34 A4500000 */  sh         $s0, ($v0)
/* 9A38 80008E38 3C04800C */  lui        $a0, %hi(D_800B8A38)
/* 9A3C 80008E3C 00912021 */  addu       $a0, $a0, $s1
/* 9A40 80008E40 0C00516C */  jal        func_800145B0
/* 9A44 80008E44 8C848A38 */   lw        $a0, %lo(D_800B8A38)($a0)
/* 9A48 80008E48 00409821 */  addu       $s3, $v0, $zero
/* 9A4C 80008E4C 3203FFFF */  andi       $v1, $s0, 0xffff
/* 9A50 80008E50 3C04800F */  lui        $a0, %hi(D_800F2B7C)
/* 9A54 80008E54 8C842B7C */  lw         $a0, %lo(D_800F2B7C)($a0)
/* 9A58 80008E58 00031040 */  sll        $v0, $v1, 1
/* 9A5C 80008E5C 00431021 */  addu       $v0, $v0, $v1
/* 9A60 80008E60 00021180 */  sll        $v0, $v0, 6
/* 9A64 80008E64 00441021 */  addu       $v0, $v0, $a0
/* 9A68 80008E68 8C44006C */  lw         $a0, 0x6c($v0)
/* 9A6C 80008E6C 02602821 */  addu       $a1, $s3, $zero
/* 9A70 80008E70 3C07800C */  lui        $a3, %hi(D_800B8A50)
/* 9A74 80008E74 00F13821 */  addu       $a3, $a3, $s1
/* 9A78 80008E78 8CE78A50 */  lw         $a3, %lo(D_800B8A50)($a3)
/* 9A7C 80008E7C 0C00E2A7 */  jal        func_80038A9C
/* 9A80 80008E80 00003021 */   addu      $a2, $zero, $zero
/* 9A84 80008E84 0C0051CC */  jal        func_80014730
/* 9A88 80008E88 02602021 */   addu      $a0, $s3, $zero
/* 9A8C 80008E8C 00108400 */  sll        $s0, $s0, 0x10
/* 9A90 80008E90 00108403 */  sra        $s0, $s0, 0x10
/* 9A94 80008E94 02002021 */  addu       $a0, $s0, $zero
/* 9A98 80008E98 24050001 */  addiu      $a1, $zero, 1
/* 9A9C 80008E9C 0C00963B */  jal        func_800258EC
/* 9AA0 80008EA0 24060001 */   addiu     $a2, $zero, 1
/* 9AA4 80008EA4 0C0096B5 */  jal        func_80025AD4
/* 9AA8 80008EA8 02002021 */   addu      $a0, $s0, $zero
/* 9AAC 80008EAC 0C0096CD */  jal        func_80025B34
/* 9AB0 80008EB0 02002021 */   addu      $a0, $s0, $zero
/* 9AB4 80008EB4 12400006 */  beqz       $s2, .L80008ED0
/* 9AB8 80008EB8 00000000 */   nop
/* 9ABC 80008EBC 8E820040 */  lw         $v0, 0x40($s4)
/* 9AC0 80008EC0 84440000 */  lh         $a0, ($v0)
/* 9AC4 80008EC4 8FA60038 */  lw         $a2, 0x38($sp)
/* 9AC8 80008EC8 0C00A274 */  jal        func_800289D0
/* 9ACC 80008ECC 02002821 */   addu      $a1, $s0, $zero
.L80008ED0:
/* 9AD0 80008ED0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9AD4 80008ED4 8FB40020 */  lw         $s4, 0x20($sp)
/* 9AD8 80008ED8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 9ADC 80008EDC 8FB20018 */  lw         $s2, 0x18($sp)
/* 9AE0 80008EE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 9AE4 80008EE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 9AE8 80008EE8 03E00008 */  jr         $ra
/* 9AEC 80008EEC 27BD0028 */   addiu     $sp, $sp, 0x28
