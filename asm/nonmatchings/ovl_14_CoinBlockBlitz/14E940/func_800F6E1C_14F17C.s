	.set noat
	.set noreorder

glabel func_800F6E1C_14F17C
/* 14F17C 800F6E1C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 14F180 800F6E20 AFBF0020 */  sw         $ra, 0x20($sp)
/* 14F184 800F6E24 AFB3001C */  sw         $s3, 0x1c($sp)
/* 14F188 800F6E28 AFB20018 */  sw         $s2, 0x18($sp)
/* 14F18C 800F6E2C AFB10014 */  sw         $s1, 0x14($sp)
/* 14F190 800F6E30 AFB00010 */  sw         $s0, 0x10($sp)
/* 14F194 800F6E34 00008021 */  addu       $s0, $zero, $zero
/* 14F198 800F6E38 24130004 */  addiu      $s3, $zero, 4
/* 14F19C 800F6E3C 3C118010 */  lui        $s1, %hi(D_800FA8E0)
/* 14F1A0 800F6E40 2631A8E0 */  addiu      $s1, $s1, %lo(D_800FA8E0)
/* 14F1A4 800F6E44 3C128010 */  lui        $s2, %hi(D_800FA8E2)
/* 14F1A8 800F6E48 2652A8E2 */  addiu      $s2, $s2, %lo(D_800FA8E2)
.L800F6E4C:
/* 14F1AC 800F6E4C 0C005D63 */  jal        func_8001758C
/* 14F1B0 800F6E50 00000000 */   nop
/* 14F1B4 800F6E54 304200FF */  andi       $v0, $v0, 0xff
/* 14F1B8 800F6E58 02701823 */  subu       $v1, $s3, $s0
/* 14F1BC 800F6E5C 0043001A */  div        $zero, $v0, $v1
/* 14F1C0 800F6E60 14600002 */  bnez       $v1, .L800F6E6C
/* 14F1C4 800F6E64 00000000 */   nop
/* 14F1C8 800F6E68 0007000D */  break      7
.L800F6E6C:
/* 14F1CC 800F6E6C 2401FFFF */   addiu     $at, $zero, -1
/* 14F1D0 800F6E70 14610004 */  bne        $v1, $at, .L800F6E84
/* 14F1D4 800F6E74 3C018000 */   lui       $at, 0x8000
/* 14F1D8 800F6E78 14410002 */  bne        $v0, $at, .L800F6E84
/* 14F1DC 800F6E7C 00000000 */   nop
/* 14F1E0 800F6E80 0006000D */  break      6
.L800F6E84:
/* 14F1E4 800F6E84 00002810 */   mfhi      $a1
/* 14F1E8 800F6E88 00002021 */  addu       $a0, $zero, $zero
/* 14F1EC 800F6E8C 00000000 */  nop
.L800F6E90:
/* 14F1F0 800F6E90 1200000B */  beqz       $s0, .L800F6EC0
/* 14F1F4 800F6E94 02001821 */   addu      $v1, $s0, $zero
/* 14F1F8 800F6E98 00031040 */  sll        $v0, $v1, 1
.L800F6E9C:
/* 14F1FC 800F6E9C 00511021 */  addu       $v0, $v0, $s1
/* 14F200 800F6EA0 94420000 */  lhu        $v0, ($v0)
/* 14F204 800F6EA4 10440004 */  beq        $v0, $a0, .L800F6EB8
/* 14F208 800F6EA8 00000000 */   nop
/* 14F20C 800F6EAC 2463FFFF */  addiu      $v1, $v1, -1
/* 14F210 800F6EB0 1460FFFA */  bnez       $v1, .L800F6E9C
/* 14F214 800F6EB4 00031040 */   sll       $v0, $v1, 1
.L800F6EB8:
/* 14F218 800F6EB8 54600005 */  bnel       $v1, $zero, .L800F6ED0
/* 14F21C 800F6EBC 24840001 */   addiu     $a0, $a0, 1
.L800F6EC0:
/* 14F220 800F6EC0 10A00006 */  beqz       $a1, .L800F6EDC
/* 14F224 800F6EC4 28820004 */   slti      $v0, $a0, 4
/* 14F228 800F6EC8 24A5FFFF */  addiu      $a1, $a1, -1
/* 14F22C 800F6ECC 24840001 */  addiu      $a0, $a0, 1
.L800F6ED0:
/* 14F230 800F6ED0 28820004 */  slti       $v0, $a0, 4
/* 14F234 800F6ED4 1440FFEE */  bnez       $v0, .L800F6E90
/* 14F238 800F6ED8 00000000 */   nop
.L800F6EDC:
/* 14F23C 800F6EDC 50400001 */  beql       $v0, $zero, .L800F6EE4
/* 14F240 800F6EE0 02002021 */   addu      $a0, $s0, $zero
.L800F6EE4:
/* 14F244 800F6EE4 00101040 */  sll        $v0, $s0, 1
/* 14F248 800F6EE8 00521021 */  addu       $v0, $v0, $s2
/* 14F24C 800F6EEC A4440000 */  sh         $a0, ($v0)
/* 14F250 800F6EF0 26100001 */  addiu      $s0, $s0, 1
/* 14F254 800F6EF4 2A020004 */  slti       $v0, $s0, 4
/* 14F258 800F6EF8 1440FFD4 */  bnez       $v0, .L800F6E4C
/* 14F25C 800F6EFC 00000000 */   nop
/* 14F260 800F6F00 8FBF0020 */  lw         $ra, 0x20($sp)
/* 14F264 800F6F04 8FB3001C */  lw         $s3, 0x1c($sp)
/* 14F268 800F6F08 8FB20018 */  lw         $s2, 0x18($sp)
/* 14F26C 800F6F0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 14F270 800F6F10 8FB00010 */  lw         $s0, 0x10($sp)
/* 14F274 800F6F14 03E00008 */  jr         $ra
/* 14F278 800F6F18 27BD0028 */   addiu     $sp, $sp, 0x28
