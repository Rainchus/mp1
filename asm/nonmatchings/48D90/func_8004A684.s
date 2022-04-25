	.set noat
	.set noreorder

glabel func_8004A684
/* 4B284 8004A684 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B288 8004A688 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4B28C 8004A68C AFB20018 */  sw         $s2, 0x18($sp)
/* 4B290 8004A690 AFB10014 */  sw         $s1, 0x14($sp)
/* 4B294 8004A694 AFB00010 */  sw         $s0, 0x10($sp)
/* 4B298 8004A698 3C10800D */  lui        $s0, %hi(D_800D6740)
/* 4B29C 8004A69C 26106740 */  addiu      $s0, $s0, %lo(D_800D6740)
/* 4B2A0 8004A6A0 00008821 */  addu       $s1, $zero, $zero
/* 4B2A4 8004A6A4 2412FFFF */  addiu      $s2, $zero, -1
.L8004A6A8:
/* 4B2A8 8004A6A8 A6000000 */  sh         $zero, ($s0)
/* 4B2AC 8004A6AC A6120002 */  sh         $s2, 2($s0)
/* 4B2B0 8004A6B0 0C008D9A */  jal        func_80023668
/* 4B2B4 8004A6B4 24041800 */   addiu     $a0, $zero, 0x1800
/* 4B2B8 8004A6B8 AE020004 */  sw         $v0, 4($s0)
/* 4B2BC 8004A6BC AE000008 */  sw         $zero, 8($s0)
/* 4B2C0 8004A6C0 26310001 */  addiu      $s1, $s1, 1
/* 4B2C4 8004A6C4 2A220028 */  slti       $v0, $s1, 0x28
/* 4B2C8 8004A6C8 1440FFF7 */  bnez       $v0, .L8004A6A8
/* 4B2CC 8004A6CC 26100014 */   addiu     $s0, $s0, 0x14
/* 4B2D0 8004A6D0 3C04800D */  lui        $a0, %hi(D_800D6A60)
/* 4B2D4 8004A6D4 24846A60 */  addiu      $a0, $a0, %lo(D_800D6A60)
/* 4B2D8 8004A6D8 0C0230D8 */  jal        func_8008C360
/* 4B2DC 8004A6DC 24050090 */   addiu     $a1, $zero, 0x90
/* 4B2E0 8004A6E0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4B2E4 8004A6E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4B2E8 8004A6E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4B2EC 8004A6EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4B2F0 8004A6F0 03E00008 */  jr         $ra
/* 4B2F4 8004A6F4 27BD0020 */   addiu     $sp, $sp, 0x20
