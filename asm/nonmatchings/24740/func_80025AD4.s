	.set noat
	.set noreorder

glabel func_80025AD4
/* 266D4 80025AD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 266D8 80025AD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 266DC 80025ADC AFB00010 */  sw         $s0, 0x10($sp)
/* 266E0 80025AE0 00048400 */  sll        $s0, $a0, 0x10
/* 266E4 80025AE4 00108403 */  sra        $s0, $s0, 0x10
/* 266E8 80025AE8 02002021 */  addu       $a0, $s0, $zero
/* 266EC 80025AEC 24050001 */  addiu      $a1, $zero, 1
/* 266F0 80025AF0 0C00963B */  jal        func_800258EC
/* 266F4 80025AF4 24060001 */   addiu     $a2, $zero, 1
/* 266F8 80025AF8 3C03800F */  lui        $v1, %hi(D_800F2B7C)
/* 266FC 80025AFC 8C632B7C */  lw         $v1, %lo(D_800F2B7C)($v1)
/* 26700 80025B00 00101040 */  sll        $v0, $s0, 1
/* 26704 80025B04 00501021 */  addu       $v0, $v0, $s0
/* 26708 80025B08 00021180 */  sll        $v0, $v0, 6
/* 2670C 80025B0C 00431021 */  addu       $v0, $v0, $v1
/* 26710 80025B10 8C430020 */  lw         $v1, 0x20($v0)
/* 26714 80025B14 3C01800F */  lui        $at, %hi(D_800ECB14)
/* 26718 80025B18 AC23CB14 */  sw         $v1, %lo(D_800ECB14)($at)
/* 2671C 80025B1C 0C00B00C */  jal        func_8002C030
/* 26720 80025B20 8C44006C */   lw        $a0, 0x6c($v0)
/* 26724 80025B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 26728 80025B28 8FB00010 */  lw         $s0, 0x10($sp)
/* 2672C 80025B2C 03E00008 */  jr         $ra
/* 26730 80025B30 27BD0018 */   addiu     $sp, $sp, 0x18
