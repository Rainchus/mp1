	.set noat
	.set noreorder

glabel func_80059280
/* 59E80 80059280 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 59E84 80059284 AFBF0018 */  sw         $ra, 0x18($sp)
/* 59E88 80059288 AFB10014 */  sw         $s1, 0x14($sp)
/* 59E8C 8005928C AFB00010 */  sw         $s0, 0x10($sp)
/* 59E90 80059290 3C10800F */  lui        $s0, %hi(D_800ED100)
/* 59E94 80059294 2610D100 */  addiu      $s0, $s0, %lo(D_800ED100)
/* 59E98 80059298 02002021 */  addu       $a0, $s0, $zero
/* 59E9C 8005929C 0C0230D8 */  jal        func_8008C360
/* 59EA0 800592A0 24050094 */   addiu     $a1, $zero, 0x94
/* 59EA4 800592A4 24020012 */  addiu      $v0, $zero, 0x12
/* 59EA8 800592A8 A2020000 */  sb         $v0, ($s0)
/* 59EAC 800592AC 3C01800F */  lui        $at, %hi(D_800ED140)
/* 59EB0 800592B0 AC20D140 */  sw         $zero, %lo(D_800ED140)($at)
/* 59EB4 800592B4 3C01800F */  lui        $at, %hi(D_800ED144)
/* 59EB8 800592B8 A420D144 */  sh         $zero, %lo(D_800ED144)($at)
/* 59EBC 800592BC 2402FFFF */  addiu      $v0, $zero, -1
/* 59EC0 800592C0 3C01800F */  lui        $at, %hi(D_800ED146)
/* 59EC4 800592C4 A022D146 */  sb         $v0, %lo(D_800ED146)($at)
/* 59EC8 800592C8 3C01800F */  lui        $at, %hi(D_800ED147)
/* 59ECC 800592CC A020D147 */  sb         $zero, %lo(D_800ED147)($at)
/* 59ED0 800592D0 0C0165F7 */  jal        func_800597DC
/* 59ED4 800592D4 24040010 */   addiu     $a0, $zero, 0x10
/* 59ED8 800592D8 00008021 */  addu       $s0, $zero, $zero
/* 59EDC 800592DC 00101400 */  sll        $v0, $s0, 0x10
.L800592E0:
/* 59EE0 800592E0 00028C03 */  sra        $s1, $v0, 0x10
/* 59EE4 800592E4 02202021 */  addu       $a0, $s1, $zero
/* 59EE8 800592E8 0C0165DA */  jal        func_80059768
/* 59EEC 800592EC 00002821 */   addu      $a1, $zero, $zero
/* 59EF0 800592F0 2A020006 */  slti       $v0, $s0, 6
/* 59EF4 800592F4 10400003 */  beqz       $v0, .L80059304
/* 59EF8 800592F8 02202021 */   addu      $a0, $s1, $zero
/* 59EFC 800592FC 0C01658F */  jal        func_8005963C
/* 59F00 80059300 34058000 */   ori       $a1, $zero, 0x8000
.L80059304:
/* 59F04 80059304 26100001 */  addiu      $s0, $s0, 1
/* 59F08 80059308 2A020008 */  slti       $v0, $s0, 8
/* 59F0C 8005930C 1440FFF4 */  bnez       $v0, .L800592E0
/* 59F10 80059310 00101400 */   sll       $v0, $s0, 0x10
/* 59F14 80059314 3C02800F */  lui        $v0, %hi(D_800ED5C2)
/* 59F18 80059318 2442D5C2 */  addiu      $v0, $v0, %lo(D_800ED5C2)
/* 59F1C 8005931C A4400000 */  sh         $zero, ($v0)
/* 59F20 80059320 A440001C */  sh         $zero, 0x1c($v0)
/* 59F24 80059324 3C04800F */  lui        $a0, %hi(D_800F37B8)
/* 59F28 80059328 248437B8 */  addiu      $a0, $a0, %lo(D_800F37B8)
/* 59F2C 8005932C 0C0230D8 */  jal        func_8008C360
/* 59F30 80059330 2405000F */   addiu     $a1, $zero, 0xf
/* 59F34 80059334 8FBF0018 */  lw         $ra, 0x18($sp)
/* 59F38 80059338 8FB10014 */  lw         $s1, 0x14($sp)
/* 59F3C 8005933C 8FB00010 */  lw         $s0, 0x10($sp)
/* 59F40 80059340 03E00008 */  jr         $ra
/* 59F44 80059344 27BD0020 */   addiu     $sp, $sp, 0x20
