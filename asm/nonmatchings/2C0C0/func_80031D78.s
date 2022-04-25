	.set noat
	.set noreorder

glabel func_80031D78
/* 32978 80031D78 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 3297C 80031D7C AFBF0078 */  sw         $ra, 0x78($sp)
/* 32980 80031D80 AFB10074 */  sw         $s1, 0x74($sp)
/* 32984 80031D84 AFB00070 */  sw         $s0, 0x70($sp)
/* 32988 80031D88 00808021 */  addu       $s0, $a0, $zero
/* 3298C 80031D8C 00052C00 */  sll        $a1, $a1, 0x10
/* 32990 80031D90 00052C03 */  sra        $a1, $a1, 0x10
/* 32994 80031D94 8E030080 */  lw         $v1, 0x80($s0)
/* 32998 80031D98 00051040 */  sll        $v0, $a1, 1
/* 3299C 80031D9C 00451021 */  addu       $v0, $v0, $a1
/* 329A0 80031DA0 000210C0 */  sll        $v0, $v0, 3
/* 329A4 80031DA4 00451023 */  subu       $v0, $v0, $a1
/* 329A8 80031DA8 00028880 */  sll        $s1, $v0, 2
/* 329AC 80031DAC 02231821 */  addu       $v1, $s1, $v1
/* 329B0 80031DB0 90630030 */  lbu        $v1, 0x30($v1)
/* 329B4 80031DB4 240200FF */  addiu      $v0, $zero, 0xff
/* 329B8 80031DB8 10620051 */  beq        $v1, $v0, .L80031F00
/* 329BC 80031DBC 27A40030 */   addiu     $a0, $sp, 0x30
/* 329C0 80031DC0 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 329C4 80031DC4 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 329C8 80031DC8 24620008 */  addiu      $v0, $v1, 8
/* 329CC 80031DCC 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 329D0 80031DD0 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 329D4 80031DD4 3C02E700 */  lui        $v0, 0xe700
/* 329D8 80031DD8 AC620000 */  sw         $v0, ($v1)
/* 329DC 80031DDC AC600004 */  sw         $zero, 4($v1)
/* 329E0 80031DE0 3C05800F */  lui        $a1, %hi(D_800F09FC)
/* 329E4 80031DE4 8CA509FC */  lw         $a1, %lo(D_800F09FC)($a1)
/* 329E8 80031DE8 3C014348 */  lui        $at, 0x4348
/* 329EC 80031DEC 44810000 */  mtc1       $at, $f0
/* 329F0 80031DF0 00000000 */  nop
/* 329F4 80031DF4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 329F8 80031DF8 AFA00014 */  sw         $zero, 0x14($sp)
/* 329FC 80031DFC AFA00018 */  sw         $zero, 0x18($sp)
/* 32A00 80031E00 AFA0001C */  sw         $zero, 0x1c($sp)
/* 32A04 80031E04 AFA00020 */  sw         $zero, 0x20($sp)
/* 32A08 80031E08 3C01BF80 */  lui        $at, 0xbf80
/* 32A0C 80031E0C 44810000 */  mtc1       $at, $f0
/* 32A10 80031E10 00000000 */  nop
/* 32A14 80031E14 E7A00024 */  swc1       $f0, 0x24($sp)
/* 32A18 80031E18 AFA00028 */  sw         $zero, 0x28($sp)
/* 32A1C 80031E1C 8FA60028 */  lw         $a2, 0x28($sp)
/* 32A20 80031E20 3C074220 */  lui        $a3, 0x4220
/* 32A24 80031E24 0C0218E6 */  jal        func_80086398
/* 32A28 80031E28 24A50040 */   addiu     $a1, $a1, 0x40
/* 32A2C 80031E2C 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 32A30 80031E30 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 32A34 80031E34 24620008 */  addiu      $v0, $v1, 8
/* 32A38 80031E38 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 32A3C 80031E3C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 32A40 80031E40 3C02DC08 */  lui        $v0, 0xdc08
/* 32A44 80031E44 3442000A */  ori        $v0, $v0, 0xa
/* 32A48 80031E48 AC620000 */  sw         $v0, ($v1)
/* 32A4C 80031E4C 3C04800F */  lui        $a0, %hi(D_800F09FC)
/* 32A50 80031E50 8C8409FC */  lw         $a0, %lo(D_800F09FC)($a0)
/* 32A54 80031E54 24820040 */  addiu      $v0, $a0, 0x40
/* 32A58 80031E58 AC620004 */  sw         $v0, 4($v1)
/* 32A5C 80031E5C 24620010 */  addiu      $v0, $v1, 0x10
/* 32A60 80031E60 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 32A64 80031E64 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 32A68 80031E68 3C02DC08 */  lui        $v0, 0xdc08
/* 32A6C 80031E6C 3442030A */  ori        $v0, $v0, 0x30a
/* 32A70 80031E70 AC620008 */  sw         $v0, 8($v1)
/* 32A74 80031E74 24840050 */  addiu      $a0, $a0, 0x50
/* 32A78 80031E78 AC64000C */  sw         $a0, 0xc($v1)
/* 32A7C 80031E7C 24620018 */  addiu      $v0, $v1, 0x18
/* 32A80 80031E80 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 32A84 80031E84 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 32A88 80031E88 3C02D700 */  lui        $v0, 0xd700
/* 32A8C 80031E8C 34420002 */  ori        $v0, $v0, 2
/* 32A90 80031E90 AC620010 */  sw         $v0, 0x10($v1)
/* 32A94 80031E94 3C0207C0 */  lui        $v0, 0x7c0
/* 32A98 80031E98 344207C0 */  ori        $v0, $v0, 0x7c0
/* 32A9C 80031E9C AC620014 */  sw         $v0, 0x14($v1)
/* 32AA0 80031EA0 8E0200BC */  lw         $v0, 0xbc($s0)
/* 32AA4 80031EA4 14400009 */  bnez       $v0, .L80031ECC
/* 32AA8 80031EA8 00002821 */   addu      $a1, $zero, $zero
/* 32AAC 80031EAC 8E020080 */  lw         $v0, 0x80($s0)
/* 32AB0 80031EB0 02221021 */  addu       $v0, $s1, $v0
/* 32AB4 80031EB4 90420030 */  lbu        $v0, 0x30($v0)
/* 32AB8 80031EB8 8E0300A4 */  lw         $v1, 0xa4($s0)
/* 32ABC 80031EBC 00021100 */  sll        $v0, $v0, 4
/* 32AC0 80031EC0 00431021 */  addu       $v0, $v0, $v1
/* 32AC4 80031EC4 0800C7B4 */  j          .L80031ED0
/* 32AC8 80031EC8 8C44000C */   lw        $a0, 0xc($v0)
.L80031ECC:
/* 32ACC 80031ECC 8E0400BC */  lw         $a0, 0xbc($s0)
.L80031ED0:
/* 32AD0 80031ED0 0C00C7C5 */  jal        func_80031F14
/* 32AD4 80031ED4 00003021 */   addu      $a2, $zero, $zero
/* 32AD8 80031ED8 3C03800F */  lui        $v1, %hi(D_800F37DC)
/* 32ADC 80031EDC 8C6337DC */  lw         $v1, %lo(D_800F37DC)($v1)
/* 32AE0 80031EE0 24620008 */  addiu      $v0, $v1, 8
/* 32AE4 80031EE4 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 32AE8 80031EE8 AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 32AEC 80031EEC 3C02D9FF */  lui        $v0, 0xd9ff
/* 32AF0 80031EF0 3442FFFF */  ori        $v0, $v0, 0xffff
/* 32AF4 80031EF4 AC620000 */  sw         $v0, ($v1)
/* 32AF8 80031EF8 3C020006 */  lui        $v0, 6
/* 32AFC 80031EFC AC620004 */  sw         $v0, 4($v1)
.L80031F00:
/* 32B00 80031F00 8FBF0078 */  lw         $ra, 0x78($sp)
/* 32B04 80031F04 8FB10074 */  lw         $s1, 0x74($sp)
/* 32B08 80031F08 8FB00070 */  lw         $s0, 0x70($sp)
/* 32B0C 80031F0C 03E00008 */  jr         $ra
/* 32B10 80031F10 27BD0080 */   addiu     $sp, $sp, 0x80
