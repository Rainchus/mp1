	.set noat
	.set noreorder

glabel func_8004AFFC
/* 4BBFC 8004AFFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4BC00 8004B000 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4BC04 8004B004 AFB20018 */  sw         $s2, 0x18($sp)
/* 4BC08 8004B008 AFB10014 */  sw         $s1, 0x14($sp)
/* 4BC0C 8004B00C AFB00010 */  sw         $s0, 0x10($sp)
/* 4BC10 8004B010 3C04800C */  lui        $a0, %hi(D_800C4F78)
/* 4BC14 8004B014 8C844F78 */  lw         $a0, %lo(D_800C4F78)($a0)
/* 4BC18 8004B018 8C820004 */  lw         $v0, 4($a0)
/* 4BC1C 8004B01C 8C83000C */  lw         $v1, 0xc($a0)
/* 4BC20 8004B020 00430018 */  mult       $v0, $v1
/* 4BC24 8004B024 00001012 */  mflo       $v0
/* 4BC28 8004B028 44821000 */  mtc1       $v0, $f2
/* 4BC2C 8004B02C 00000000 */  nop
/* 4BC30 8004B030 468010A0 */  cvt.s.w    $f2, $f2
/* 4BC34 8004B034 3C014370 */  lui        $at, 0x4370
/* 4BC38 8004B038 44810000 */  mtc1       $at, $f0
/* 4BC3C 8004B03C 00000000 */  nop
/* 4BC40 8004B040 46001083 */  div.s      $f2, $f2, $f0
/* 4BC44 8004B044 3C01800E */  lui        $at, %hi(D_800D80B8)
/* 4BC48 8004B048 E42280B8 */  swc1       $f2, %lo(D_800D80B8)($at)
/* 4BC4C 8004B04C 3C12800E */  lui        $s2, %hi(D_800D80CC)
/* 4BC50 8004B050 265280CC */  addiu      $s2, $s2, %lo(D_800D80CC)
/* 4BC54 8004B054 C4800018 */  lwc1       $f0, 0x18($a0)
/* 4BC58 8004B058 E6400000 */  swc1       $f0, ($s2)
/* 4BC5C 8004B05C C480001C */  lwc1       $f0, 0x1c($a0)
/* 4BC60 8004B060 E6400004 */  swc1       $f0, 4($s2)
/* 4BC64 8004B064 C4800020 */  lwc1       $f0, 0x20($a0)
/* 4BC68 8004B068 E6400008 */  swc1       $f0, 8($s2)
/* 4BC6C 8004B06C 3C11800E */  lui        $s1, %hi(D_800D80D8)
/* 4BC70 8004B070 263180D8 */  addiu      $s1, $s1, %lo(D_800D80D8)
/* 4BC74 8004B074 C4800024 */  lwc1       $f0, 0x24($a0)
/* 4BC78 8004B078 E6200000 */  swc1       $f0, ($s1)
/* 4BC7C 8004B07C C4800028 */  lwc1       $f0, 0x28($a0)
/* 4BC80 8004B080 E6200004 */  swc1       $f0, 4($s1)
/* 4BC84 8004B084 C480002C */  lwc1       $f0, 0x2c($a0)
/* 4BC88 8004B088 E6200008 */  swc1       $f0, 8($s1)
/* 4BC8C 8004B08C 3C10800E */  lui        $s0, %hi(D_800D80E4)
/* 4BC90 8004B090 261080E4 */  addiu      $s0, $s0, %lo(D_800D80E4)
/* 4BC94 8004B094 C4800030 */  lwc1       $f0, 0x30($a0)
/* 4BC98 8004B098 E6000000 */  swc1       $f0, ($s0)
/* 4BC9C 8004B09C C4800034 */  lwc1       $f0, 0x34($a0)
/* 4BCA0 8004B0A0 E6000004 */  swc1       $f0, 4($s0)
/* 4BCA4 8004B0A4 C4800038 */  lwc1       $f0, 0x38($a0)
/* 4BCA8 8004B0A8 E6000008 */  swc1       $f0, 8($s0)
/* 4BCAC 8004B0AC 3C02800E */  lui        $v0, %hi(D_800D80F0)
/* 4BCB0 8004B0B0 244280F0 */  addiu      $v0, $v0, %lo(D_800D80F0)
/* 4BCB4 8004B0B4 3C014420 */  lui        $at, 0x4420
/* 4BCB8 8004B0B8 44813000 */  mtc1       $at, $f6
/* 4BCBC 8004B0BC 00000000 */  nop
/* 4BCC0 8004B0C0 46061002 */  mul.s      $f0, $f2, $f6
/* 4BCC4 8004B0C4 E4400000 */  swc1       $f0, ($v0)
/* 4BCC8 8004B0C8 3C0143F0 */  lui        $at, 0x43f0
/* 4BCCC 8004B0CC 44812000 */  mtc1       $at, $f4
/* 4BCD0 8004B0D0 00000000 */  nop
/* 4BCD4 8004B0D4 46041082 */  mul.s      $f2, $f2, $f4
/* 4BCD8 8004B0D8 E4420004 */  swc1       $f2, 4($v0)
/* 4BCDC 8004B0DC 3C0143FF */  lui        $at, 0x43ff
/* 4BCE0 8004B0E0 34218000 */  ori        $at, $at, 0x8000
/* 4BCE4 8004B0E4 44810000 */  mtc1       $at, $f0
/* 4BCE8 8004B0E8 00000000 */  nop
/* 4BCEC 8004B0EC E4400008 */  swc1       $f0, 8($v0)
/* 4BCF0 8004B0F0 3C02800E */  lui        $v0, %hi(D_800D80C4)
/* 4BCF4 8004B0F4 244280C4 */  addiu      $v0, $v0, %lo(D_800D80C4)
/* 4BCF8 8004B0F8 E4460000 */  swc1       $f6, ($v0)
/* 4BCFC 8004B0FC E4440004 */  swc1       $f4, 4($v0)
/* 4BD00 8004B100 3C02800E */  lui        $v0, %hi(D_800D80BC)
/* 4BD04 8004B104 244280BC */  addiu      $v0, $v0, %lo(D_800D80BC)
/* 4BD08 8004B108 3C01431F */  lui        $at, 0x431f
/* 4BD0C 8004B10C 34218000 */  ori        $at, $at, 0x8000
/* 4BD10 8004B110 44810000 */  mtc1       $at, $f0
/* 4BD14 8004B114 00000000 */  nop
/* 4BD18 8004B118 E4400000 */  swc1       $f0, ($v0)
/* 4BD1C 8004B11C 3C0142EF */  lui        $at, 0x42ef
/* 4BD20 8004B120 44810000 */  mtc1       $at, $f0
/* 4BD24 8004B124 00000000 */  nop
/* 4BD28 8004B128 E4400004 */  swc1       $f0, 4($v0)
/* 4BD2C 8004B12C 3C013F80 */  lui        $at, 0x3f80
/* 4BD30 8004B130 44810000 */  mtc1       $at, $f0
/* 4BD34 8004B134 3C01800E */  lui        $at, %hi(D_800D80B4)
/* 4BD38 8004B138 E42080B4 */  swc1       $f0, %lo(D_800D80B4)($at)
/* 4BD3C 8004B13C 3C048005 */  lui        $a0, %hi(func_8004B208)
/* 4BD40 8004B140 2484B208 */  addiu      $a0, $a0, %lo(func_8004B208)
/* 4BD44 8004B144 24051001 */  addiu      $a1, $zero, 0x1001
/* 4BD48 8004B148 00003021 */  addu       $a2, $zero, $zero
/* 4BD4C 8004B14C 0C01770A */  jal        func_8005DC28
/* 4BD50 8004B150 00003821 */   addu      $a3, $zero, $zero
/* 4BD54 8004B154 3C01800E */  lui        $at, %hi(D_800D80B0)
/* 4BD58 8004B158 AC2280B0 */  sw         $v0, %lo(D_800D80B0)($at)
/* 4BD5C 8004B15C 00402021 */  addu       $a0, $v0, $zero
/* 4BD60 8004B160 0C017640 */  jal        func_8005D900
/* 4BD64 8004B164 24050080 */   addiu     $a1, $zero, 0x80
/* 4BD68 8004B168 3C02800C */  lui        $v0, %hi(D_800C4F78)
/* 4BD6C 8004B16C 8C424F78 */  lw         $v0, %lo(D_800C4F78)($v0)
/* 4BD70 8004B170 8C450010 */  lw         $a1, 0x10($v0)
/* 4BD74 8004B174 3C0642A0 */  lui        $a2, 0x42a0
/* 4BD78 8004B178 3C0745FA */  lui        $a3, 0x45fa
/* 4BD7C 8004B17C 0C007525 */  jal        func_8001D494
/* 4BD80 8004B180 00002021 */   addu      $a0, $zero, $zero
/* 4BD84 8004B184 00002021 */  addu       $a0, $zero, $zero
/* 4BD88 8004B188 02402821 */  addu       $a1, $s2, $zero
/* 4BD8C 8004B18C 02203021 */  addu       $a2, $s1, $zero
/* 4BD90 8004B190 0C007508 */  jal        func_8001D420
/* 4BD94 8004B194 02003821 */   addu      $a3, $s0, $zero
/* 4BD98 8004B198 0C00755F */  jal        func_8001D57C
/* 4BD9C 8004B19C 00002021 */   addu      $a0, $zero, $zero
/* 4BDA0 8004B1A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4BDA4 8004B1A4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4BDA8 8004B1A8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4BDAC 8004B1AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4BDB0 8004B1B0 03E00008 */  jr         $ra
/* 4BDB4 8004B1B4 27BD0020 */   addiu     $sp, $sp, 0x20
