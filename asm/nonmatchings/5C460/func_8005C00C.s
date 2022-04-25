	.set noat
	.set noreorder

glabel func_8005C00C
/* 5CC0C 8005C00C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5CC10 8005C010 AFBF002C */  sw         $ra, 0x2c($sp)
/* 5CC14 8005C014 AFB60028 */  sw         $s6, 0x28($sp)
/* 5CC18 8005C018 AFB50024 */  sw         $s5, 0x24($sp)
/* 5CC1C 8005C01C AFB40020 */  sw         $s4, 0x20($sp)
/* 5CC20 8005C020 AFB3001C */  sw         $s3, 0x1c($sp)
/* 5CC24 8005C024 AFB20018 */  sw         $s2, 0x18($sp)
/* 5CC28 8005C028 AFB10014 */  sw         $s1, 0x14($sp)
/* 5CC2C 8005C02C AFB00010 */  sw         $s0, 0x10($sp)
/* 5CC30 8005C030 00808021 */  addu       $s0, $a0, $zero
/* 5CC34 8005C034 0C014AA3 */  jal        func_80052A8C
/* 5CC38 8005C038 2404FFFF */   addiu     $a0, $zero, -1
/* 5CC3C 8005C03C 0040A021 */  addu       $s4, $v0, $zero
/* 5CC40 8005C040 00008821 */  addu       $s1, $zero, $zero
/* 5CC44 8005C044 3C16800E */  lui        $s6, %hi(D_800D8930)
/* 5CC48 8005C048 26D68930 */  addiu      $s6, $s6, %lo(D_800D8930)
/* 5CC4C 8005C04C 2415FFFF */  addiu      $s5, $zero, -1
/* 5CC50 8005C050 00108400 */  sll        $s0, $s0, 0x10
/* 5CC54 8005C054 00109C03 */  sra        $s3, $s0, 0x10
/* 5CC58 8005C058 00111880 */  sll        $v1, $s1, 2
.L8005C05C:
/* 5CC5C 8005C05C 00769021 */  addu       $s2, $v1, $s6
/* 5CC60 8005C060 AE400000 */  sw         $zero, ($s2)
/* 5CC64 8005C064 3C02800F */  lui        $v0, %hi(D_800F33D8)
/* 5CC68 8005C068 00431021 */  addu       $v0, $v0, $v1
/* 5CC6C 8005C06C 844233D8 */  lh         $v0, %lo(D_800F33D8)($v0)
/* 5CC70 8005C070 50550017 */  beql       $v0, $s5, .L8005C0D0
/* 5CC74 8005C074 26310001 */   addiu     $s1, $s1, 1
/* 5CC78 8005C078 3C04800F */  lui        $a0, %hi(D_800F33D8)
/* 5CC7C 8005C07C 00832021 */  addu       $a0, $a0, $v1
/* 5CC80 8005C080 948433D8 */  lhu        $a0, %lo(D_800F33D8)($a0)
/* 5CC84 8005C084 3C05800F */  lui        $a1, %hi(D_800F33DA)
/* 5CC88 8005C088 00A32821 */  addu       $a1, $a1, $v1
/* 5CC8C 8005C08C 0C013081 */  jal        func_8004C204
/* 5CC90 8005C090 94A533DA */   lhu       $a1, %lo(D_800F33DA)($a1)
/* 5CC94 8005C094 00021400 */  sll        $v0, $v0, 0x10
/* 5CC98 8005C098 00022403 */  sra        $a0, $v0, 0x10
/* 5CC9C 8005C09C 1093000C */  beq        $a0, $s3, .L8005C0D0
/* 5CCA0 8005C0A0 26310001 */   addiu     $s1, $s1, 1
/* 5CCA4 8005C0A4 0C01307B */  jal        func_8004C1EC
/* 5CCA8 8005C0A8 00000000 */   nop
/* 5CCAC 8005C0AC 0C00EE08 */  jal        func_8003B820
/* 5CCB0 8005C0B0 00408021 */   addu      $s0, $v0, $zero
/* 5CCB4 8005C0B4 AE420000 */  sw         $v0, ($s2)
/* 5CCB8 8005C0B8 8E850020 */  lw         $a1, 0x20($s4)
/* 5CCBC 8005C0BC 00402021 */  addu       $a0, $v0, $zero
/* 5CCC0 8005C0C0 24A5000C */  addiu      $a1, $a1, 0xc
/* 5CCC4 8005C0C4 3C07432A */  lui        $a3, 0x432a
/* 5CCC8 8005C0C8 0C00F066 */  jal        func_8003C198
/* 5CCCC 8005C0CC 26060004 */   addiu     $a2, $s0, 4
.L8005C0D0:
/* 5CCD0 8005C0D0 2A220004 */  slti       $v0, $s1, 4
/* 5CCD4 8005C0D4 1440FFE1 */  bnez       $v0, .L8005C05C
/* 5CCD8 8005C0D8 00111880 */   sll       $v1, $s1, 2
/* 5CCDC 8005C0DC 3C048006 */  lui        $a0, %hi(func_8005BF08)
/* 5CCE0 8005C0E0 2484BF08 */  addiu      $a0, $a0, %lo(func_8005BF08)
/* 5CCE4 8005C0E4 24054800 */  addiu      $a1, $zero, 0x4800
/* 5CCE8 8005C0E8 00003021 */  addu       $a2, $zero, $zero
/* 5CCEC 8005C0EC 0C01770A */  jal        func_8005DC28
/* 5CCF0 8005C0F0 00003821 */   addu      $a3, $zero, $zero
/* 5CCF4 8005C0F4 3C01800E */  lui        $at, %hi(D_800D8940)
/* 5CCF8 8005C0F8 AC228940 */  sw         $v0, %lo(D_800D8940)($at)
/* 5CCFC 8005C0FC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5CD00 8005C100 8FB60028 */  lw         $s6, 0x28($sp)
/* 5CD04 8005C104 8FB50024 */  lw         $s5, 0x24($sp)
/* 5CD08 8005C108 8FB40020 */  lw         $s4, 0x20($sp)
/* 5CD0C 8005C10C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 5CD10 8005C110 8FB20018 */  lw         $s2, 0x18($sp)
/* 5CD14 8005C114 8FB10014 */  lw         $s1, 0x14($sp)
/* 5CD18 8005C118 8FB00010 */  lw         $s0, 0x10($sp)
/* 5CD1C 8005C11C 03E00008 */  jr         $ra
/* 5CD20 8005C120 27BD0030 */   addiu     $sp, $sp, 0x30
