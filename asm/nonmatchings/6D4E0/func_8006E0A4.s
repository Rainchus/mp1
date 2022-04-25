	.set noat
	.set noreorder

glabel func_8006E0A4
/* 6ECA4 8006E0A4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6ECA8 8006E0A8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6ECAC 8006E0AC AFB20018 */  sw         $s2, 0x18($sp)
/* 6ECB0 8006E0B0 AFB10014 */  sw         $s1, 0x14($sp)
/* 6ECB4 8006E0B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 6ECB8 8006E0B8 00A09021 */  addu       $s2, $a1, $zero
/* 6ECBC 8006E0BC 00042400 */  sll        $a0, $a0, 0x10
/* 6ECC0 8006E0C0 00042403 */  sra        $a0, $a0, 0x10
/* 6ECC4 8006E0C4 00041080 */  sll        $v0, $a0, 2
/* 6ECC8 8006E0C8 00441021 */  addu       $v0, $v0, $a0
/* 6ECCC 8006E0CC 00021140 */  sll        $v0, $v0, 5
/* 6ECD0 8006E0D0 00441023 */  subu       $v0, $v0, $a0
/* 6ECD4 8006E0D4 00021080 */  sll        $v0, $v0, 2
/* 6ECD8 8006E0D8 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6ECDC 8006E0DC 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6ECE0 8006E0E0 00438821 */  addu       $s1, $v0, $v1
/* 6ECE4 8006E0E4 A6320038 */  sh         $s2, 0x38($s1)
/* 6ECE8 8006E0E8 00008021 */  addu       $s0, $zero, $zero
/* 6ECEC 8006E0EC 00102C00 */  sll        $a1, $s0, 0x10
.L8006E0F0:
/* 6ECF0 8006E0F0 86240044 */  lh         $a0, 0x44($s1)
/* 6ECF4 8006E0F4 00052C03 */  sra        $a1, $a1, 0x10
/* 6ECF8 8006E0F8 0C019CE1 */  jal        func_80067384
/* 6ECFC 8006E0FC 3246FFFF */   andi      $a2, $s2, 0xffff
/* 6ED00 8006E100 26020001 */  addiu      $v0, $s0, 1
/* 6ED04 8006E104 00408021 */  addu       $s0, $v0, $zero
/* 6ED08 8006E108 00021400 */  sll        $v0, $v0, 0x10
/* 6ED0C 8006E10C 00021403 */  sra        $v0, $v0, 0x10
/* 6ED10 8006E110 28420014 */  slti       $v0, $v0, 0x14
/* 6ED14 8006E114 1440FFF6 */  bnez       $v0, .L8006E0F0
/* 6ED18 8006E118 00102C00 */   sll       $a1, $s0, 0x10
/* 6ED1C 8006E11C 86230042 */  lh         $v1, 0x42($s1)
/* 6ED20 8006E120 2402FFFF */  addiu      $v0, $zero, -1
/* 6ED24 8006E124 10620005 */  beq        $v1, $v0, .L8006E13C
/* 6ED28 8006E128 2646FFFF */   addiu     $a2, $s2, -1
/* 6ED2C 8006E12C 86240044 */  lh         $a0, 0x44($s1)
/* 6ED30 8006E130 2405000B */  addiu      $a1, $zero, 0xb
/* 6ED34 8006E134 0C019CE1 */  jal        func_80067384
/* 6ED38 8006E138 30C6FFFF */   andi      $a2, $a2, 0xffff
.L8006E13C:
/* 6ED3C 8006E13C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6ED40 8006E140 8FB20018 */  lw         $s2, 0x18($sp)
/* 6ED44 8006E144 8FB10014 */  lw         $s1, 0x14($sp)
/* 6ED48 8006E148 8FB00010 */  lw         $s0, 0x10($sp)
/* 6ED4C 8006E14C 03E00008 */  jr         $ra
/* 6ED50 8006E150 27BD0020 */   addiu     $sp, $sp, 0x20
