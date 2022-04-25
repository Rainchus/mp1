	.set noat
	.set noreorder

glabel func_8003E1BC
/* 3EDBC 8003E1BC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3EDC0 8003E1C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 3EDC4 8003E1C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 3EDC8 8003E1C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 3EDCC 8003E1CC 00808821 */  addu       $s1, $a0, $zero
/* 3EDD0 8003E1D0 A2250008 */  sb         $a1, 8($s1)
/* 3EDD4 8003E1D4 8E22003C */  lw         $v0, 0x3c($s1)
/* 3EDD8 8003E1D8 8C420040 */  lw         $v0, 0x40($v0)
/* 3EDDC 8003E1DC 84440000 */  lh         $a0, ($v0)
/* 3EDE0 8003E1E0 0C00A223 */  jal        func_8002888C
/* 3EDE4 8003E1E4 2405FFFF */   addiu     $a1, $zero, -1
/* 3EDE8 8003E1E8 8E22003C */  lw         $v0, 0x3c($s1)
/* 3EDEC 8003E1EC 8C420040 */  lw         $v0, 0x40($v0)
/* 3EDF0 8003E1F0 0C00915B */  jal        func_8002456C
/* 3EDF4 8003E1F4 84440000 */   lh        $a0, ($v0)
/* 3EDF8 8003E1F8 86240044 */  lh         $a0, 0x44($s1)
/* 3EDFC 8003E1FC 2402FFFF */  addiu      $v0, $zero, -1
/* 3EE00 8003E200 10820003 */  beq        $a0, $v0, .L8003E210
/* 3EE04 8003E204 00000000 */   nop
/* 3EE08 8003E208 0C00F681 */  jal        func_8003DA04
/* 3EE0C 8003E20C 00000000 */   nop
.L8003E210:
/* 3EE10 8003E210 92220008 */  lbu        $v0, 8($s1)
/* 3EE14 8003E214 00021100 */  sll        $v0, $v0, 4
/* 3EE18 8003E218 3C04800C */  lui        $a0, %hi(D_800C4350)
/* 3EE1C 8003E21C 00822021 */  addu       $a0, $a0, $v0
/* 3EE20 8003E220 8C844350 */  lw         $a0, %lo(D_800C4350)($a0)
/* 3EE24 8003E224 0C005D4A */  jal        func_80017528
/* 3EE28 8003E228 240506A9 */   addiu     $a1, $zero, 0x6a9
/* 3EE2C 8003E22C 00402021 */  addu       $a0, $v0, $zero
/* 3EE30 8003E230 8E22003C */  lw         $v0, 0x3c($s1)
/* 3EE34 8003E234 8C420040 */  lw         $v0, 0x40($v0)
/* 3EE38 8003E238 A4440000 */  sh         $a0, ($v0)
/* 3EE3C 8003E23C 00048400 */  sll        $s0, $a0, 0x10
/* 3EE40 8003E240 00108403 */  sra        $s0, $s0, 0x10
/* 3EE44 8003E244 02002021 */  addu       $a0, $s0, $zero
/* 3EE48 8003E248 24050002 */  addiu      $a1, $zero, 2
/* 3EE4C 8003E24C 0C0097AD */  jal        func_80025EB4
/* 3EE50 8003E250 24060002 */   addiu     $a2, $zero, 2
/* 3EE54 8003E254 02002021 */  addu       $a0, $s0, $zero
/* 3EE58 8003E258 0C0097C4 */  jal        func_80025F10
/* 3EE5C 8003E25C 24050001 */   addiu     $a1, $zero, 1
/* 3EE60 8003E260 8E22003C */  lw         $v0, 0x3c($s1)
/* 3EE64 8003E264 8C430050 */  lw         $v1, 0x50($v0)
/* 3EE68 8003E268 92220008 */  lbu        $v0, 8($s1)
/* 3EE6C 8003E26C 00021100 */  sll        $v0, $v0, 4
/* 3EE70 8003E270 3C01800C */  lui        $at, %hi(D_800C4358)
/* 3EE74 8003E274 00220821 */  addu       $at, $at, $v0
/* 3EE78 8003E278 C4204358 */  lwc1       $f0, %lo(D_800C4358)($at)
/* 3EE7C 8003E27C E4600004 */  swc1       $f0, 4($v1)
/* 3EE80 8003E280 0C009792 */  jal        func_80025E48
/* 3EE84 8003E284 02002021 */   addu      $a0, $s0, $zero
/* 3EE88 8003E288 00021400 */  sll        $v0, $v0, 0x10
/* 3EE8C 8003E28C 0C00F664 */  jal        func_8003D990
/* 3EE90 8003E290 00022403 */   sra       $a0, $v0, 0x10
/* 3EE94 8003E294 A6220044 */  sh         $v0, 0x44($s1)
/* 3EE98 8003E298 8E220040 */  lw         $v0, 0x40($s1)
/* 3EE9C 8003E29C 1040001B */  beqz       $v0, .L8003E30C
/* 3EEA0 8003E2A0 00000000 */   nop
/* 3EEA4 8003E2A4 8C420040 */  lw         $v0, 0x40($v0)
/* 3EEA8 8003E2A8 0C00915B */  jal        func_8002456C
/* 3EEAC 8003E2AC 84440000 */   lh        $a0, ($v0)
/* 3EEB0 8003E2B0 92220008 */  lbu        $v0, 8($s1)
/* 3EEB4 8003E2B4 00021100 */  sll        $v0, $v0, 4
/* 3EEB8 8003E2B8 3C04800C */  lui        $a0, %hi(D_800C4354)
/* 3EEBC 8003E2BC 00822021 */  addu       $a0, $a0, $v0
/* 3EEC0 8003E2C0 8C844354 */  lw         $a0, %lo(D_800C4354)($a0)
/* 3EEC4 8003E2C4 0C005D4A */  jal        func_80017528
/* 3EEC8 8003E2C8 24050229 */   addiu     $a1, $zero, 0x229
/* 3EECC 8003E2CC 00402021 */  addu       $a0, $v0, $zero
/* 3EED0 8003E2D0 8E220040 */  lw         $v0, 0x40($s1)
/* 3EED4 8003E2D4 8C420040 */  lw         $v0, 0x40($v0)
/* 3EED8 8003E2D8 A4440000 */  sh         $a0, ($v0)
/* 3EEDC 8003E2DC 00042400 */  sll        $a0, $a0, 0x10
/* 3EEE0 8003E2E0 00042403 */  sra        $a0, $a0, 0x10
/* 3EEE4 8003E2E4 0C0097C4 */  jal        func_80025F10
/* 3EEE8 8003E2E8 24050001 */   addiu     $a1, $zero, 1
/* 3EEEC 8003E2EC 8E220040 */  lw         $v0, 0x40($s1)
/* 3EEF0 8003E2F0 8C430050 */  lw         $v1, 0x50($v0)
/* 3EEF4 8003E2F4 92220008 */  lbu        $v0, 8($s1)
/* 3EEF8 8003E2F8 00021100 */  sll        $v0, $v0, 4
/* 3EEFC 8003E2FC 3C01800C */  lui        $at, %hi(D_800C435C)
/* 3EF00 8003E300 00220821 */  addu       $at, $at, $v0
/* 3EF04 8003E304 C420435C */  lwc1       $f0, %lo(D_800C435C)($at)
/* 3EF08 8003E308 E4600004 */  swc1       $f0, 4($v1)
.L8003E30C:
/* 3EF0C 8003E30C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 3EF10 8003E310 8FB10014 */  lw         $s1, 0x14($sp)
/* 3EF14 8003E314 8FB00010 */  lw         $s0, 0x10($sp)
/* 3EF18 8003E318 03E00008 */  jr         $ra
/* 3EF1C 8003E31C 27BD0020 */   addiu     $sp, $sp, 0x20
