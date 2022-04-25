	.set noat
	.set noreorder

glabel func_8001E40C
/* 1F00C 8001E40C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1F010 8001E410 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1F014 8001E414 AFBE0030 */  sw         $fp, 0x30($sp)
/* 1F018 8001E418 AFB7002C */  sw         $s7, 0x2c($sp)
/* 1F01C 8001E41C AFB60028 */  sw         $s6, 0x28($sp)
/* 1F020 8001E420 AFB50024 */  sw         $s5, 0x24($sp)
/* 1F024 8001E424 AFB40020 */  sw         $s4, 0x20($sp)
/* 1F028 8001E428 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1F02C 8001E42C AFB20018 */  sw         $s2, 0x18($sp)
/* 1F030 8001E430 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F034 8001E434 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F038 8001E438 00A08821 */  addu       $s1, $a1, $zero
/* 1F03C 8001E43C 00C09021 */  addu       $s2, $a2, $zero
/* 1F040 8001E440 93B4004B */  lbu        $s4, 0x4b($sp)
/* 1F044 8001E444 93B5004F */  lbu        $s5, 0x4f($sp)
/* 1F048 8001E448 93B60053 */  lbu        $s6, 0x53($sp)
/* 1F04C 8001E44C 93B70057 */  lbu        $s7, 0x57($sp)
/* 1F050 8001E450 93BE005B */  lbu        $fp, 0x5b($sp)
/* 1F054 8001E454 00042400 */  sll        $a0, $a0, 0x10
/* 1F058 8001E458 00048403 */  sra        $s0, $a0, 0x10
/* 1F05C 8001E45C 2402FFFF */  addiu      $v0, $zero, -1
/* 1F060 8001E460 12020028 */  beq        $s0, $v0, .L8001E504
/* 1F064 8001E464 00E09821 */   addu      $s3, $a3, $zero
/* 1F068 8001E468 02002021 */  addu       $a0, $s0, $zero
/* 1F06C 8001E46C 24050040 */  addiu      $a1, $zero, 0x40
/* 1F070 8001E470 0C00789A */  jal        func_8001E268
/* 1F074 8001E474 24060040 */   addiu     $a2, $zero, 0x40
/* 1F078 8001E478 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F07C 8001E47C 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F080 8001E480 001018C0 */  sll        $v1, $s0, 3
/* 1F084 8001E484 00701821 */  addu       $v1, $v1, $s0
/* 1F088 8001E488 00031880 */  sll        $v1, $v1, 2
/* 1F08C 8001E48C 00621021 */  addu       $v0, $v1, $v0
/* 1F090 8001E490 A0510016 */  sb         $s1, 0x16($v0)
/* 1F094 8001E494 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F098 8001E498 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F09C 8001E49C 00621021 */  addu       $v0, $v1, $v0
/* 1F0A0 8001E4A0 A0520017 */  sb         $s2, 0x17($v0)
/* 1F0A4 8001E4A4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0A8 8001E4A8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0AC 8001E4AC 00621021 */  addu       $v0, $v1, $v0
/* 1F0B0 8001E4B0 A0530018 */  sb         $s3, 0x18($v0)
/* 1F0B4 8001E4B4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0B8 8001E4B8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0BC 8001E4BC 00621021 */  addu       $v0, $v1, $v0
/* 1F0C0 8001E4C0 A0540019 */  sb         $s4, 0x19($v0)
/* 1F0C4 8001E4C4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0C8 8001E4C8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0CC 8001E4CC 00621021 */  addu       $v0, $v1, $v0
/* 1F0D0 8001E4D0 A055001A */  sb         $s5, 0x1a($v0)
/* 1F0D4 8001E4D4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0D8 8001E4D8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0DC 8001E4DC 00621021 */  addu       $v0, $v1, $v0
/* 1F0E0 8001E4E0 A056001B */  sb         $s6, 0x1b($v0)
/* 1F0E4 8001E4E4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0E8 8001E4E8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0EC 8001E4EC 00621021 */  addu       $v0, $v1, $v0
/* 1F0F0 8001E4F0 A057001C */  sb         $s7, 0x1c($v0)
/* 1F0F4 8001E4F4 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1F0F8 8001E4F8 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1F0FC 8001E4FC 00621821 */  addu       $v1, $v1, $v0
/* 1F100 8001E500 A07E001D */  sb         $fp, 0x1d($v1)
.L8001E504:
/* 1F104 8001E504 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1F108 8001E508 8FBE0030 */  lw         $fp, 0x30($sp)
/* 1F10C 8001E50C 8FB7002C */  lw         $s7, 0x2c($sp)
/* 1F110 8001E510 8FB60028 */  lw         $s6, 0x28($sp)
/* 1F114 8001E514 8FB50024 */  lw         $s5, 0x24($sp)
/* 1F118 8001E518 8FB40020 */  lw         $s4, 0x20($sp)
/* 1F11C 8001E51C 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1F120 8001E520 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F124 8001E524 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F128 8001E528 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F12C 8001E52C 03E00008 */  jr         $ra
/* 1F130 8001E530 27BD0038 */   addiu     $sp, $sp, 0x38
