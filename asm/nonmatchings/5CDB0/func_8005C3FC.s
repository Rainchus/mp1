	.set noat
	.set noreorder

glabel func_8005C3FC
/* 5CFFC 8005C3FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5D000 8005C400 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5D004 8005C404 AFB10014 */  sw         $s1, 0x14($sp)
/* 5D008 8005C408 AFB00010 */  sw         $s0, 0x10($sp)
/* 5D00C 8005C40C 00808021 */  addu       $s0, $a0, $zero
/* 5D010 8005C410 3C0400FE */  lui        $a0, 0xfe
/* 5D014 8005C414 24842310 */  addiu      $a0, $a0, 0x2310
/* 5D018 8005C418 0C01279C */  jal        func_80049E70
/* 5D01C 8005C41C 00A08821 */   addu      $s1, $a1, $zero
/* 5D020 8005C420 06000003 */  bltz       $s0, .L8005C430
/* 5D024 8005C424 00000000 */   nop
/* 5D028 8005C428 0C0127D3 */  jal        func_80049F4C
/* 5D02C 8005C42C 02002021 */   addu      $a0, $s0, $zero
.L8005C430:
/* 5D030 8005C430 0C012E65 */  jal        func_8004B994
/* 5D034 8005C434 00000000 */   nop
/* 5D038 8005C438 00111400 */  sll        $v0, $s1, 0x10
/* 5D03C 8005C43C 00022C03 */  sra        $a1, $v0, 0x10
/* 5D040 8005C440 04A00005 */  bltz       $a1, .L8005C458
/* 5D044 8005C444 00000000 */   nop
/* 5D048 8005C448 0C012F7F */  jal        func_8004BDFC
/* 5D04C 8005C44C 2404000A */   addiu     $a0, $zero, 0xa
/* 5D050 8005C450 0C012E75 */  jal        func_8004B9D4
/* 5D054 8005C454 24040002 */   addiu     $a0, $zero, 2
.L8005C458:
/* 5D058 8005C458 3C02800F */  lui        $v0, %hi(D_800F37B8)
/* 5D05C 8005C45C 904237B8 */  lbu        $v0, %lo(D_800F37B8)($v0)
/* 5D060 8005C460 3C01800F */  lui        $at, %hi(D_800F32B4)
/* 5D064 8005C464 0C00F6AA */  jal        func_8003DAA8
/* 5D068 8005C468 A02232B4 */   sb        $v0, %lo(D_800F32B4)($at)
/* 5D06C 8005C46C 0C014C08 */  jal        func_80053020
/* 5D070 8005C470 00000000 */   nop
/* 5D074 8005C474 0C014C19 */  jal        func_80053064
/* 5D078 8005C478 00000000 */   nop
/* 5D07C 8005C47C 0C014CB8 */  jal        func_800532E0
/* 5D080 8005C480 00000000 */   nop
/* 5D084 8005C484 0C01B3A8 */  jal        func_8006CEA0
/* 5D088 8005C488 00000000 */   nop
/* 5D08C 8005C48C 0C01596D */  jal        func_800565B4
/* 5D090 8005C490 00000000 */   nop
/* 5D094 8005C494 2402FFFF */  addiu      $v0, $zero, -1
/* 5D098 8005C498 3C01800E */  lui        $at, %hi(D_800D8984)
/* 5D09C 8005C49C A4228984 */  sh         $v0, %lo(D_800D8984)($at)
/* 5D0A0 8005C4A0 3C01800E */  lui        $at, %hi(D_800D8986)
/* 5D0A4 8005C4A4 A4208986 */  sh         $zero, %lo(D_800D8986)($at)
/* 5D0A8 8005C4A8 3C01800E */  lui        $at, %hi(D_800D8988)
/* 5D0AC 8005C4AC 0C016E40 */  jal        func_8005B900
/* 5D0B0 8005C4B0 A4208988 */   sh        $zero, %lo(D_800D8988)($at)
/* 5D0B4 8005C4B4 0C014C20 */  jal        func_80053080
/* 5D0B8 8005C4B8 00000000 */   nop
/* 5D0BC 8005C4BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5D0C0 8005C4C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 5D0C4 8005C4C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D0C8 8005C4C8 03E00008 */  jr         $ra
/* 5D0CC 8005C4CC 27BD0020 */   addiu     $sp, $sp, 0x20
