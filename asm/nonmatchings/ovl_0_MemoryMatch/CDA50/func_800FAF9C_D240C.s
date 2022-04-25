	.set noat
	.set noreorder

glabel func_800FAF9C_D240C
/* D240C 800FAF9C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D2410 800FAFA0 AFBF0018 */  sw         $ra, 0x18($sp)
/* D2414 800FAFA4 AFB10014 */  sw         $s1, 0x14($sp)
/* D2418 800FAFA8 AFB00010 */  sw         $s0, 0x10($sp)
/* D241C 800FAFAC 00808021 */  addu       $s0, $a0, $zero
/* D2420 800FAFB0 8E040050 */  lw         $a0, 0x50($s0)
/* D2424 800FAFB4 9203004C */  lbu        $v1, 0x4c($s0)
/* D2428 800FAFB8 000310C0 */  sll        $v0, $v1, 3
/* D242C 800FAFBC 00431023 */  subu       $v0, $v0, $v1
/* D2430 800FAFC0 00021080 */  sll        $v0, $v0, 2
/* D2434 800FAFC4 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D2438 800FAFC8 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D243C 800FAFCC 00438821 */  addu       $s1, $v0, $v1
/* D2440 800FAFD0 8C83005C */  lw         $v1, 0x5c($a0)
/* D2444 800FAFD4 24020200 */  addiu      $v0, $zero, 0x200
/* D2448 800FAFD8 1462002E */  bne        $v1, $v0, .L800FB094
/* D244C 800FAFDC 00000000 */   nop
/* D2450 800FAFE0 8E020040 */  lw         $v0, 0x40($s0)
/* D2454 800FAFE4 0C00979C */  jal        func_80025E70
/* D2458 800FAFE8 84440000 */   lh        $a0, ($v0)
/* D245C 800FAFEC 46000086 */  mov.s      $f2, $f0
/* D2460 800FAFF0 3C01BF80 */  lui        $at, 0xbf80
/* D2464 800FAFF4 44810000 */  mtc1       $at, $f0
/* D2468 800FAFF8 00000000 */  nop
/* D246C 800FAFFC 46001032 */  c.eq.s     $f2, $f0
/* D2470 800FB000 00000000 */  nop
/* D2474 800FB004 45000005 */  bc1f       .L800FB01C
/* D2478 800FB008 00000000 */   nop
/* D247C 800FB00C 8E020040 */  lw         $v0, 0x40($s0)
/* D2480 800FB010 0C009746 */  jal        func_80025D18
/* D2484 800FB014 84440000 */   lh        $a0, ($v0)
/* D2488 800FB018 46000086 */  mov.s      $f2, $f0
.L800FB01C:
/* D248C 800FB01C 3C0141D8 */  lui        $at, 0x41d8
/* D2490 800FB020 44810000 */  mtc1       $at, $f0
/* D2494 800FB024 00000000 */  nop
/* D2498 800FB028 4602003E */  c.le.s     $f0, $f2
/* D249C 800FB02C 00000000 */  nop
/* D24A0 800FB030 45000018 */  bc1f       .L800FB094
/* D24A4 800FB034 00000000 */   nop
/* D24A8 800FB038 C602001C */  lwc1       $f2, 0x1c($s0)
/* D24AC 800FB03C C6200008 */  lwc1       $f0, 8($s1)
/* D24B0 800FB040 46001032 */  c.eq.s     $f2, $f0
/* D24B4 800FB044 00000000 */  nop
/* D24B8 800FB048 45000012 */  bc1f       .L800FB094
/* D24BC 800FB04C 00000000 */   nop
/* D24C0 800FB050 0C03E12A */  jal        func_800F84A8_CF918
/* D24C4 800FB054 86240004 */   lh        $a0, 4($s1)
/* D24C8 800FB058 00021400 */  sll        $v0, $v0, 0x10
/* D24CC 800FB05C 00021403 */  sra        $v0, $v0, 0x10
/* D24D0 800FB060 24030005 */  addiu      $v1, $zero, 5
/* D24D4 800FB064 14430006 */  bne        $v0, $v1, .L800FB080
/* D24D8 800FB068 2402000A */   addiu     $v0, $zero, 0xa
/* D24DC 800FB06C 2402002D */  addiu      $v0, $zero, 0x2d
/* D24E0 800FB070 3C018010 */  lui        $at, %hi(D_800FD880)
/* D24E4 800FB074 A422D880 */  sh         $v0, %lo(D_800FD880)($at)
/* D24E8 800FB078 0803EC23 */  j          .L800FB08C
/* D24EC 800FB07C 24020007 */   addiu     $v0, $zero, 7
.L800FB080:
/* D24F0 800FB080 3C018010 */  lui        $at, %hi(D_800FD882)
/* D24F4 800FB084 A422D882 */  sh         $v0, %lo(D_800FD882)($at)
/* D24F8 800FB088 24020007 */  addiu      $v0, $zero, 7
.L800FB08C:
/* D24FC 800FB08C 3C018010 */  lui        $at, %hi(D_800FD884)
/* D2500 800FB090 A422D884 */  sh         $v0, %lo(D_800FD884)($at)
.L800FB094:
/* D2504 800FB094 8FBF0018 */  lw         $ra, 0x18($sp)
/* D2508 800FB098 8FB10014 */  lw         $s1, 0x14($sp)
/* D250C 800FB09C 8FB00010 */  lw         $s0, 0x10($sp)
/* D2510 800FB0A0 03E00008 */  jr         $ra
/* D2514 800FB0A4 27BD0020 */   addiu     $sp, $sp, 0x20
