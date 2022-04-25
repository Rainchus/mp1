	.set noat
	.set noreorder

glabel func_8004C3B8
/* 4CFB8 8004C3B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4CFBC 8004C3BC AFBF001C */  sw         $ra, 0x1c($sp)
/* 4CFC0 8004C3C0 AFB20018 */  sw         $s2, 0x18($sp)
/* 4CFC4 8004C3C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4CFC8 8004C3C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4CFCC 8004C3CC 0C005D63 */  jal        func_8001758C
/* 4CFD0 8004C3D0 00808021 */   addu      $s0, $a0, $zero
/* 4CFD4 8004C3D4 304200FF */  andi       $v0, $v0, 0xff
/* 4CFD8 8004C3D8 3C03800E */  lui        $v1, %hi(D_800D8100)
/* 4CFDC 8004C3DC 94638100 */  lhu        $v1, %lo(D_800D8100)($v1)
/* 4CFE0 8004C3E0 0043001A */  div        $zero, $v0, $v1
/* 4CFE4 8004C3E4 14600002 */  bnez       $v1, .L8004C3F0
/* 4CFE8 8004C3E8 00000000 */   nop
/* 4CFEC 8004C3EC 0007000D */  break      7
.L8004C3F0:
/* 4CFF0 8004C3F0 2401FFFF */   addiu     $at, $zero, -1
/* 4CFF4 8004C3F4 14610004 */  bne        $v1, $at, .L8004C408
/* 4CFF8 8004C3F8 3C018000 */   lui       $at, 0x8000
/* 4CFFC 8004C3FC 14410002 */  bne        $v0, $at, .L8004C408
/* 4D000 8004C400 00000000 */   nop
/* 4D004 8004C404 0006000D */  break      6
.L8004C408:
/* 4D008 8004C408 00001810 */   mfhi      $v1
/* 4D00C 8004C40C 00609021 */  addu       $s2, $v1, $zero
/* 4D010 8004C410 00008821 */  addu       $s1, $zero, $zero
/* 4D014 8004C414 3210FFFF */  andi       $s0, $s0, 0xffff
.L8004C418:
/* 4D018 8004C418 00112400 */  sll        $a0, $s1, 0x10
/* 4D01C 8004C41C 0C01307B */  jal        func_8004C1EC
/* 4D020 8004C420 00042403 */   sra       $a0, $a0, 0x10
/* 4D024 8004C424 90420001 */  lbu        $v0, 1($v0)
/* 4D028 8004C428 3042000F */  andi       $v0, $v0, 0xf
/* 4D02C 8004C42C 3C01800C */  lui        $at, %hi(D_800C51B0)
/* 4D030 8004C430 00220821 */  addu       $at, $at, $v0
/* 4D034 8004C434 902251B0 */  lbu        $v0, %lo(D_800C51B0)($at)
/* 4D038 8004C438 00501024 */  and        $v0, $v0, $s0
/* 4D03C 8004C43C 10400005 */  beqz       $v0, .L8004C454
/* 4D040 8004C440 2642FFFF */   addiu     $v0, $s2, -1
/* 4D044 8004C444 00409021 */  addu       $s2, $v0, $zero
/* 4D048 8004C448 304200FF */  andi       $v0, $v0, 0xff
/* 4D04C 8004C44C 10400008 */  beqz       $v0, .L8004C470
/* 4D050 8004C450 00111400 */   sll       $v0, $s1, 0x10
.L8004C454:
/* 4D054 8004C454 26310001 */  addiu      $s1, $s1, 1
/* 4D058 8004C458 3C02800E */  lui        $v0, %hi(D_800D8100)
/* 4D05C 8004C45C 94428100 */  lhu        $v0, %lo(D_800D8100)($v0)
/* 4D060 8004C460 0222102A */  slt        $v0, $s1, $v0
/* 4D064 8004C464 00021023 */  negu       $v0, $v0
/* 4D068 8004C468 08013106 */  j          .L8004C418
/* 4D06C 8004C46C 00518824 */   and       $s1, $v0, $s1
.L8004C470:
/* 4D070 8004C470 00021403 */  sra        $v0, $v0, 0x10
/* 4D074 8004C474 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4D078 8004C478 8FB20018 */  lw         $s2, 0x18($sp)
/* 4D07C 8004C47C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4D080 8004C480 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D084 8004C484 03E00008 */  jr         $ra
/* 4D088 8004C488 27BD0020 */   addiu     $sp, $sp, 0x20
