	.set noat
	.set noreorder

glabel func_8002AD30
/* 2B930 8002AD30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2B934 8002AD34 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2B938 8002AD38 AFB20018 */  sw         $s2, 0x18($sp)
/* 2B93C 8002AD3C AFB10014 */  sw         $s1, 0x14($sp)
/* 2B940 8002AD40 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B944 8002AD44 3C02800D */  lui        $v0, %hi(D_800D6002)
/* 2B948 8002AD48 84426002 */  lh         $v0, %lo(D_800D6002)($v0)
/* 2B94C 8002AD4C 10400022 */  beqz       $v0, .L8002ADD8
/* 2B950 8002AD50 00809021 */   addu      $s2, $a0, $zero
/* 2B954 8002AD54 00048C00 */  sll        $s1, $a0, 0x10
/* 2B958 8002AD58 00118C03 */  sra        $s1, $s1, 0x10
/* 2B95C 8002AD5C 001180C0 */  sll        $s0, $s1, 3
/* 2B960 8002AD60 02118021 */  addu       $s0, $s0, $s1
/* 2B964 8002AD64 00108080 */  sll        $s0, $s0, 2
/* 2B968 8002AD68 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2B96C 8002AD6C 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2B970 8002AD70 02028021 */  addu       $s0, $s0, $v0
/* 2B974 8002AD74 8E040020 */  lw         $a0, 0x20($s0)
/* 2B978 8002AD78 0C008DCA */  jal        func_80023728
/* 2B97C 8002AD7C 00118840 */   sll       $s1, $s1, 1
/* 2B980 8002AD80 8E040014 */  lw         $a0, 0x14($s0)
/* 2B984 8002AD84 0C008DCA */  jal        func_80023728
/* 2B988 8002AD88 00000000 */   nop
/* 2B98C 8002AD8C 0C008DCA */  jal        func_80023728
/* 2B990 8002AD90 8E040018 */   lw        $a0, 0x18($s0)
/* 2B994 8002AD94 0C008DCA */  jal        func_80023728
/* 2B998 8002AD98 8E04001C */   lw        $a0, 0x1c($s0)
/* 2B99C 8002AD9C 0C008DCA */  jal        func_80023728
/* 2B9A0 8002ADA0 8E040010 */   lw        $a0, 0x10($s0)
/* 2B9A4 8002ADA4 3C02800D */  lui        $v0, %hi(D_800D6002)
/* 2B9A8 8002ADA8 94426002 */  lhu        $v0, %lo(D_800D6002)($v0)
/* 2B9AC 8002ADAC 2442FFFF */  addiu      $v0, $v0, -1
/* 2B9B0 8002ADB0 3C01800D */  lui        $at, %hi(D_800D6002)
/* 2B9B4 8002ADB4 A4226002 */  sh         $v0, %lo(D_800D6002)($at)
/* 2B9B8 8002ADB8 3C02800D */  lui        $v0, %hi(D_800D6008)
/* 2B9BC 8002ADBC 8C426008 */  lw         $v0, %lo(D_800D6008)($v0)
/* 2B9C0 8002ADC0 02228821 */  addu       $s1, $s1, $v0
/* 2B9C4 8002ADC4 3C02800D */  lui        $v0, %hi(D_800D6004)
/* 2B9C8 8002ADC8 94426004 */  lhu        $v0, %lo(D_800D6004)($v0)
/* 2B9CC 8002ADCC A6220000 */  sh         $v0, ($s1)
/* 2B9D0 8002ADD0 3C01800D */  lui        $at, %hi(D_800D6004)
/* 2B9D4 8002ADD4 A4326004 */  sh         $s2, %lo(D_800D6004)($at)
.L8002ADD8:
/* 2B9D8 8002ADD8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2B9DC 8002ADDC 8FB20018 */  lw         $s2, 0x18($sp)
/* 2B9E0 8002ADE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B9E4 8002ADE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B9E8 8002ADE8 03E00008 */  jr         $ra
/* 2B9EC 8002ADEC 27BD0020 */   addiu     $sp, $sp, 0x20
