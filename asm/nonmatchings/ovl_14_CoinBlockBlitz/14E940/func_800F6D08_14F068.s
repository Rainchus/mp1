	.set noat
	.set noreorder

glabel func_800F6D08_14F068
/* 14F068 800F6D08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14F06C 800F6D0C AFBF0018 */  sw         $ra, 0x18($sp)
/* 14F070 800F6D10 AFB10014 */  sw         $s1, 0x14($sp)
/* 14F074 800F6D14 AFB00010 */  sw         $s0, 0x10($sp)
/* 14F078 800F6D18 3C108010 */  lui        $s0, %hi(D_800FAA80)
/* 14F07C 800F6D1C 2610AA80 */  addiu      $s0, $s0, %lo(D_800FAA80)
/* 14F080 800F6D20 3C118010 */  lui        $s1, %hi(D_800FA8F0)
/* 14F084 800F6D24 0C005D63 */  jal        func_8001758C
/* 14F088 800F6D28 2631A8F0 */   addiu     $s1, $s1, %lo(D_800FA8F0)
/* 14F08C 800F6D2C 304200FF */  andi       $v0, $v0, 0xff
/* 14F090 800F6D30 3C03AAAA */  lui        $v1, 0xaaaa
/* 14F094 800F6D34 3463AAAB */  ori        $v1, $v1, 0xaaab
/* 14F098 800F6D38 00430019 */  multu      $v0, $v1
/* 14F09C 800F6D3C 00002810 */  mfhi       $a1
/* 14F0A0 800F6D40 00052042 */  srl        $a0, $a1, 1
/* 14F0A4 800F6D44 00041840 */  sll        $v1, $a0, 1
/* 14F0A8 800F6D48 00641821 */  addu       $v1, $v1, $a0
/* 14F0AC 800F6D4C 00431023 */  subu       $v0, $v0, $v1
/* 14F0B0 800F6D50 304400FF */  andi       $a0, $v0, 0xff
/* 14F0B4 800F6D54 00001821 */  addu       $v1, $zero, $zero
.L800F6D58:
/* 14F0B8 800F6D58 A6000000 */  sh         $zero, ($s0)
/* 14F0BC 800F6D5C A6000002 */  sh         $zero, 2($s0)
/* 14F0C0 800F6D60 A6000006 */  sh         $zero, 6($s0)
/* 14F0C4 800F6D64 A6000008 */  sh         $zero, 8($s0)
/* 14F0C8 800F6D68 A600000C */  sh         $zero, 0xc($s0)
/* 14F0CC 800F6D6C A600000E */  sh         $zero, 0xe($s0)
/* 14F0D0 800F6D70 A6000010 */  sh         $zero, 0x10($s0)
/* 14F0D4 800F6D74 A6000012 */  sh         $zero, 0x12($s0)
/* 14F0D8 800F6D78 AE200000 */  sw         $zero, ($s1)
/* 14F0DC 800F6D7C A624000A */  sh         $a0, 0xa($s1)
/* 14F0E0 800F6D80 24630001 */  addiu      $v1, $v1, 1
/* 14F0E4 800F6D84 2610001C */  addiu      $s0, $s0, 0x1c
/* 14F0E8 800F6D88 28620004 */  slti       $v0, $v1, 4
/* 14F0EC 800F6D8C 1440FFF2 */  bnez       $v0, .L800F6D58
/* 14F0F0 800F6D90 26310014 */   addiu     $s1, $s1, 0x14
/* 14F0F4 800F6D94 3C018010 */  lui        $at, %hi(D_800FAA78)
/* 14F0F8 800F6D98 A420AA78 */  sh         $zero, %lo(D_800FAA78)($at)
/* 14F0FC 800F6D9C 3C01455B */  lui        $at, 0x455b
/* 14F100 800F6DA0 34216000 */  ori        $at, $at, 0x6000
/* 14F104 800F6DA4 44810000 */  mtc1       $at, $f0
/* 14F108 800F6DA8 3C01800F */  lui        $at, %hi(D_800EE98C)
/* 14F10C 800F6DAC E420E98C */  swc1       $f0, %lo(D_800EE98C)($at)
/* 14F110 800F6DB0 3C02800F */  lui        $v0, %hi(D_800F33EC)
/* 14F114 800F6DB4 244233EC */  addiu      $v0, $v0, %lo(D_800F33EC)
/* 14F118 800F6DB8 3C01C222 */  lui        $at, 0xc222
/* 14F11C 800F6DBC 44810000 */  mtc1       $at, $f0
/* 14F120 800F6DC0 00000000 */  nop
/* 14F124 800F6DC4 E4400000 */  swc1       $f0, ($v0)
/* 14F128 800F6DC8 3C0141CA */  lui        $at, 0x41ca
/* 14F12C 800F6DCC 44810000 */  mtc1       $at, $f0
/* 14F130 800F6DD0 00000000 */  nop
/* 14F134 800F6DD4 E4400004 */  swc1       $f0, 4($v0)
/* 14F138 800F6DD8 AC400008 */  sw         $zero, 8($v0)
/* 14F13C 800F6DDC 3C02800F */  lui        $v0, %hi(D_800F6524)
/* 14F140 800F6DE0 24426524 */  addiu      $v0, $v0, %lo(D_800F6524)
/* 14F144 800F6DE4 3C01C2C8 */  lui        $at, 0xc2c8
/* 14F148 800F6DE8 44810000 */  mtc1       $at, $f0
/* 14F14C 800F6DEC 00000000 */  nop
/* 14F150 800F6DF0 E4400000 */  swc1       $f0, ($v0)
/* 14F154 800F6DF4 E4400004 */  swc1       $f0, 4($v0)
/* 14F158 800F6DF8 3C01C339 */  lui        $at, 0xc339
/* 14F15C 800F6DFC 44810000 */  mtc1       $at, $f0
/* 14F160 800F6E00 00000000 */  nop
/* 14F164 800F6E04 E4400008 */  swc1       $f0, 8($v0)
/* 14F168 800F6E08 8FBF0018 */  lw         $ra, 0x18($sp)
/* 14F16C 800F6E0C 8FB10014 */  lw         $s1, 0x14($sp)
/* 14F170 800F6E10 8FB00010 */  lw         $s0, 0x10($sp)
/* 14F174 800F6E14 03E00008 */  jr         $ra
/* 14F178 800F6E18 27BD0020 */   addiu     $sp, $sp, 0x20
