	.set noat
	.set noreorder

glabel func_800F7C30_14FF90
/* 14FF90 800F7C30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14FF94 800F7C34 AFBF0038 */  sw         $ra, 0x38($sp)
/* 14FF98 800F7C38 AFB30034 */  sw         $s3, 0x34($sp)
/* 14FF9C 800F7C3C AFB20030 */  sw         $s2, 0x30($sp)
/* 14FFA0 800F7C40 AFB1002C */  sw         $s1, 0x2c($sp)
/* 14FFA4 800F7C44 AFB00028 */  sw         $s0, 0x28($sp)
/* 14FFA8 800F7C48 00809821 */  addu       $s3, $a0, $zero
/* 14FFAC 800F7C4C 00A08821 */  addu       $s1, $a1, $zero
/* 14FFB0 800F7C50 3C02800F */  lui        $v0, %hi(D_800EE984)
/* 14FFB4 800F7C54 9442E984 */  lhu        $v0, %lo(D_800EE984)($v0)
/* 14FFB8 800F7C58 00402021 */  addu       $a0, $v0, $zero
/* 14FFBC 800F7C5C 18400046 */  blez       $v0, .L800F7D78
/* 14FFC0 800F7C60 00001821 */   addu      $v1, $zero, $zero
/* 14FFC4 800F7C64 3C05800F */  lui        $a1, %hi(D_800EDE70)
/* 14FFC8 800F7C68 24A5DE70 */  addiu      $a1, $a1, %lo(D_800EDE70)
/* 14FFCC 800F7C6C 00031080 */  sll        $v0, $v1, 2
.L800F7C70:
/* 14FFD0 800F7C70 00451021 */  addu       $v0, $v0, $a1
/* 14FFD4 800F7C74 8C500000 */  lw         $s0, ($v0)
/* 14FFD8 800F7C78 8E120050 */  lw         $s2, 0x50($s0)
/* 14FFDC 800F7C7C 92420054 */  lbu        $v0, 0x54($s2)
/* 14FFE0 800F7C80 10400005 */  beqz       $v0, .L800F7C98
/* 14FFE4 800F7C84 00000000 */   nop
/* 14FFE8 800F7C88 24630001 */  addiu      $v1, $v1, 1
/* 14FFEC 800F7C8C 0064102A */  slt        $v0, $v1, $a0
/* 14FFF0 800F7C90 1440FFF7 */  bnez       $v0, .L800F7C70
/* 14FFF4 800F7C94 00031080 */   sll       $v0, $v1, 2
.L800F7C98:
/* 14FFF8 800F7C98 3C02800F */  lui        $v0, %hi(D_800EE984)
/* 14FFFC 800F7C9C 9442E984 */  lhu        $v0, %lo(D_800EE984)($v0)
/* 150000 800F7CA0 0062102A */  slt        $v0, $v1, $v0
/* 150004 800F7CA4 50400035 */  beql       $v0, $zero, .L800F7D7C
/* 150008 800F7CA8 00001021 */   addu      $v0, $zero, $zero
/* 15000C 800F7CAC C6600018 */  lwc1       $f0, 0x18($s3)
/* 150010 800F7CB0 E6000018 */  swc1       $f0, 0x18($s0)
/* 150014 800F7CB4 C660001C */  lwc1       $f0, 0x1c($s3)
/* 150018 800F7CB8 E600001C */  swc1       $f0, 0x1c($s0)
/* 15001C 800F7CBC C6600020 */  lwc1       $f0, 0x20($s3)
/* 150020 800F7CC0 E6000020 */  swc1       $f0, 0x20($s0)
/* 150024 800F7CC4 8E020040 */  lw         $v0, 0x40($s0)
/* 150028 800F7CC8 84440000 */  lh         $a0, ($v0)
/* 15002C 800F7CCC 8E250018 */  lw         $a1, 0x18($s1)
/* 150030 800F7CD0 8E26001C */  lw         $a2, 0x1c($s1)
/* 150034 800F7CD4 0C0095E6 */  jal        func_80025798
/* 150038 800F7CD8 8E270020 */   lw        $a3, 0x20($s1)
/* 15003C 800F7CDC 8E020040 */  lw         $v0, 0x40($s0)
/* 150040 800F7CE0 84440002 */  lh         $a0, 2($v0)
/* 150044 800F7CE4 8E250018 */  lw         $a1, 0x18($s1)
/* 150048 800F7CE8 8E270020 */  lw         $a3, 0x20($s1)
/* 15004C 800F7CEC 0C0095E6 */  jal        func_80025798
/* 150050 800F7CF0 00003021 */   addu      $a2, $zero, $zero
/* 150054 800F7CF4 C6220018 */  lwc1       $f2, 0x18($s1)
/* 150058 800F7CF8 E7A20010 */  swc1       $f2, 0x10($sp)
/* 15005C 800F7CFC C6240020 */  lwc1       $f4, 0x20($s1)
/* 150060 800F7D00 E7A40018 */  swc1       $f4, 0x18($sp)
/* 150064 800F7D04 C6600018 */  lwc1       $f0, 0x18($s3)
/* 150068 800F7D08 46001081 */  sub.s      $f2, $f2, $f0
/* 15006C 800F7D0C E7A20010 */  swc1       $f2, 0x10($sp)
/* 150070 800F7D10 C6600020 */  lwc1       $f0, 0x20($s3)
/* 150074 800F7D14 46002101 */  sub.s      $f4, $f4, $f0
/* 150078 800F7D18 E7A40018 */  swc1       $f4, 0x18($sp)
/* 15007C 800F7D1C AE40003C */  sw         $zero, 0x3c($s2)
/* 150080 800F7D20 3C01800C */  lui        $at, %hi(D_800B8990)
/* 150084 800F7D24 C4208990 */  lwc1       $f0, %lo(D_800B8990)($at)
/* 150088 800F7D28 E6400040 */  swc1       $f0, 0x40($s2)
/* 15008C 800F7D2C 3C01BF99 */  lui        $at, 0xbf99
/* 150090 800F7D30 3421999A */  ori        $at, $at, 0x999a
/* 150094 800F7D34 44810000 */  mtc1       $at, $f0
/* 150098 800F7D38 00000000 */  nop
/* 15009C 800F7D3C E6400038 */  swc1       $f0, 0x38($s2)
/* 1500A0 800F7D40 24020001 */  addiu      $v0, $zero, 1
/* 1500A4 800F7D44 A2420054 */  sb         $v0, 0x54($s2)
/* 1500A8 800F7D48 8E020040 */  lw         $v0, 0x40($s0)
/* 1500AC 800F7D4C 84440000 */  lh         $a0, ($v0)
/* 1500B0 800F7D50 24050004 */  addiu      $a1, $zero, 4
/* 1500B4 800F7D54 0C00963B */  jal        func_800258EC
/* 1500B8 800F7D58 00003021 */   addu      $a2, $zero, $zero
/* 1500BC 800F7D5C 8E020040 */  lw         $v0, 0x40($s0)
/* 1500C0 800F7D60 84440002 */  lh         $a0, 2($v0)
/* 1500C4 800F7D64 24050004 */  addiu      $a1, $zero, 4
/* 1500C8 800F7D68 0C00963B */  jal        func_800258EC
/* 1500CC 800F7D6C 00003021 */   addu      $a2, $zero, $zero
/* 1500D0 800F7D70 0803DF5F */  j          .L800F7D7C
/* 1500D4 800F7D74 24020001 */   addiu     $v0, $zero, 1
.L800F7D78:
/* 1500D8 800F7D78 00001021 */  addu       $v0, $zero, $zero
.L800F7D7C:
/* 1500DC 800F7D7C 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1500E0 800F7D80 8FB30034 */  lw         $s3, 0x34($sp)
/* 1500E4 800F7D84 8FB20030 */  lw         $s2, 0x30($sp)
/* 1500E8 800F7D88 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1500EC 800F7D8C 8FB00028 */  lw         $s0, 0x28($sp)
/* 1500F0 800F7D90 03E00008 */  jr         $ra
/* 1500F4 800F7D94 27BD0040 */   addiu     $sp, $sp, 0x40
