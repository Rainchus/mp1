	.set noat
	.set noreorder

glabel func_8004F2EC
/* 4FEEC 8004F2EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4FEF0 8004F2F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4FEF4 8004F2F4 AFB20018 */  sw         $s2, 0x18($sp)
/* 4FEF8 8004F2F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 4FEFC 8004F2FC AFB00010 */  sw         $s0, 0x10($sp)
/* 4FF00 8004F300 00008021 */  addu       $s0, $zero, $zero
/* 4FF04 8004F304 3C12800E */  lui        $s2, %hi(D_800D8160)
/* 4FF08 8004F308 26528160 */  addiu      $s2, $s2, %lo(D_800D8160)
/* 4FF0C 8004F30C 00101040 */  sll        $v0, $s0, 1
.L8004F310:
/* 4FF10 8004F310 00501021 */  addu       $v0, $v0, $s0
/* 4FF14 8004F314 00021080 */  sll        $v0, $v0, 2
/* 4FF18 8004F318 00528821 */  addu       $s1, $v0, $s2
/* 4FF1C 8004F31C 8E240008 */  lw         $a0, 8($s1)
/* 4FF20 8004F320 10800004 */  beqz       $a0, .L8004F334
/* 4FF24 8004F324 26100001 */   addiu     $s0, $s0, 1
/* 4FF28 8004F328 0C0175C6 */  jal        func_8005D718
/* 4FF2C 8004F32C 00000000 */   nop
/* 4FF30 8004F330 AE200008 */  sw         $zero, 8($s1)
.L8004F334:
/* 4FF34 8004F334 2A020010 */  slti       $v0, $s0, 0x10
/* 4FF38 8004F338 1440FFF5 */  bnez       $v0, .L8004F310
/* 4FF3C 8004F33C 00101040 */   sll       $v0, $s0, 1
/* 4FF40 8004F340 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4FF44 8004F344 8FB20018 */  lw         $s2, 0x18($sp)
/* 4FF48 8004F348 8FB10014 */  lw         $s1, 0x14($sp)
/* 4FF4C 8004F34C 8FB00010 */  lw         $s0, 0x10($sp)
/* 4FF50 8004F350 03E00008 */  jr         $ra
/* 4FF54 8004F354 27BD0020 */   addiu     $sp, $sp, 0x20
