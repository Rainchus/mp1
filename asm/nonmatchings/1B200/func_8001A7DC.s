	.set noat
	.set noreorder

glabel func_8001A7DC
/* 1B3DC 8001A7DC 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 1B3E0 8001A7E0 AFBF0078 */  sw         $ra, 0x78($sp)
/* 1B3E4 8001A7E4 AFB50074 */  sw         $s5, 0x74($sp)
/* 1B3E8 8001A7E8 AFB40070 */  sw         $s4, 0x70($sp)
/* 1B3EC 8001A7EC AFB3006C */  sw         $s3, 0x6c($sp)
/* 1B3F0 8001A7F0 AFB20068 */  sw         $s2, 0x68($sp)
/* 1B3F4 8001A7F4 AFB10064 */  sw         $s1, 0x64($sp)
/* 1B3F8 8001A7F8 AFB00060 */  sw         $s0, 0x60($sp)
/* 1B3FC 8001A7FC AFA00058 */  sw         $zero, 0x58($sp)
/* 1B400 8001A800 3C13800D */  lui        $s3, %hi(D_800D5ED0)
/* 1B404 8001A804 26735ED0 */  addiu      $s3, $s3, %lo(D_800D5ED0)
/* 1B408 8001A808 02609021 */  addu       $s2, $s3, $zero
/* 1B40C 8001A80C 0000A021 */  addu       $s4, $zero, $zero
/* 1B410 8001A810 27B00020 */  addiu      $s0, $sp, 0x20
/* 1B414 8001A814 02002021 */  addu       $a0, $s0, $zero
/* 1B418 8001A818 27A50038 */  addiu      $a1, $sp, 0x38
/* 1B41C 8001A81C 0C022188 */  jal        func_80088620
/* 1B420 8001A820 24060008 */   addiu     $a2, $zero, 8
/* 1B424 8001A824 27A40010 */  addiu      $a0, $sp, 0x10
/* 1B428 8001A828 02002821 */  addu       $a1, $s0, $zero
/* 1B42C 8001A82C 0C018E7E */  jal        func_800639F8
/* 1B430 8001A830 24060001 */   addiu     $a2, $zero, 1
/* 1B434 8001A834 27A40020 */  addiu      $a0, $sp, 0x20
.L8001A838:
/* 1B438 8001A838 00002821 */  addu       $a1, $zero, $zero
/* 1B43C 8001A83C 0C022278 */  jal        func_800889E0
/* 1B440 8001A840 24060001 */   addiu     $a2, $zero, 1
/* 1B444 8001A844 3C04800F */  lui        $a0, %hi(D_800F383C)
/* 1B448 8001A848 8C84383C */  lw         $a0, %lo(D_800F383C)($a0)
/* 1B44C 8001A84C 00941023 */  subu       $v0, $a0, $s4
/* 1B450 8001A850 3C03800D */  lui        $v1, %hi(D_800D5FF0)
/* 1B454 8001A854 8C635FF0 */  lw         $v1, %lo(D_800D5FF0)($v1)
/* 1B458 8001A858 0043102B */  sltu       $v0, $v0, $v1
/* 1B45C 8001A85C 5440FFF6 */  bnel       $v0, $zero, .L8001A838
/* 1B460 8001A860 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B464 8001A864 0C0184FA */  jal        func_800613E8
/* 1B468 8001A868 0080A021 */   addu      $s4, $a0, $zero
/* 1B46C 8001A86C 0C0069D4 */  jal        func_8001A750
/* 1B470 8001A870 00000000 */   nop
/* 1B474 8001A874 00408821 */  addu       $s1, $v0, $zero
/* 1B478 8001A878 5220FFEF */  beql       $s1, $zero, .L8001A838
/* 1B47C 8001A87C 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B480 8001A880 3C02800F */  lui        $v0, %hi(D_800F3838)
/* 1B484 8001A884 8C423838 */  lw         $v0, %lo(D_800F3838)($v0)
/* 1B488 8001A888 3C01800F */  lui        $at, %hi(D_800ECB1C)
/* 1B48C 8001A88C AC22CB1C */  sw         $v0, %lo(D_800ECB1C)($at)
/* 1B490 8001A890 3C01800F */  lui        $at, %hi(D_800F3838)
/* 1B494 8001A894 AC313838 */  sw         $s1, %lo(D_800F3838)($at)
/* 1B498 8001A898 3C15800F */  lui        $s5, %hi(D_800ED398)
/* 1B49C 8001A89C 26B5D398 */  addiu      $s5, $s5, %lo(D_800ED398)
/* 1B4A0 8001A8A0 3C10800F */  lui        $s0, %hi(D_800ED3A0)
/* 1B4A4 8001A8A4 2610D3A0 */  addiu      $s0, $s0, %lo(D_800ED3A0)
.L8001A8A8:
/* 1B4A8 8001A8A8 3C04800D */  lui        $a0, %hi(D_800D5F18)
/* 1B4AC 8001A8AC 24845F18 */  addiu      $a0, $a0, %lo(D_800D5F18)
/* 1B4B0 8001A8B0 27A50058 */  addiu      $a1, $sp, 0x58
/* 1B4B4 8001A8B4 0C022278 */  jal        func_800889E0
/* 1B4B8 8001A8B8 24060001 */   addiu     $a2, $zero, 1
/* 1B4BC 8001A8BC 3C02800D */  lui        $v0, %hi(D_800D5FEE)
/* 1B4C0 8001A8C0 94425FEE */  lhu        $v0, %lo(D_800D5FEE)($v0)
/* 1B4C4 8001A8C4 00021080 */  sll        $v0, $v0, 2
/* 1B4C8 8001A8C8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 1B4CC 8001A8CC 3C03DB06 */  lui        $v1, 0xdb06
/* 1B4D0 8001A8D0 00431025 */  or         $v0, $v0, $v1
/* 1B4D4 8001A8D4 AEA20000 */  sw         $v0, ($s5)
/* 1B4D8 8001A8D8 3C01800F */  lui        $at, %hi(D_800ED39C)
/* 1B4DC 8001A8DC AC31D39C */  sw         $s1, %lo(D_800ED39C)($at)
/* 1B4E0 8001A8E0 3C02DE01 */  lui        $v0, 0xde01
/* 1B4E4 8001A8E4 AE020000 */  sw         $v0, ($s0)
/* 1B4E8 8001A8E8 8FA40058 */  lw         $a0, 0x58($sp)
/* 1B4EC 8001A8EC 8C820000 */  lw         $v0, ($a0)
/* 1B4F0 8001A8F0 3C01800F */  lui        $at, %hi(D_800ED3A4)
/* 1B4F4 8001A8F4 AC22D3A4 */  sw         $v0, %lo(D_800ED3A4)($at)
/* 1B4F8 8001A8F8 8C820008 */  lw         $v0, 8($a0)
/* 1B4FC 8001A8FC AE620044 */  sw         $v0, 0x44($s3)
/* 1B500 8001A900 3C02800F */  lui        $v0, %hi(D_800F2A70)
/* 1B504 8001A904 8C422A70 */  lw         $v0, %lo(D_800F2A70)($v0)
/* 1B508 8001A908 AE420020 */  sw         $v0, 0x20($s2)
/* 1B50C 8001A90C 3C02800F */  lui        $v0, %hi(D_800F2CBC)
/* 1B510 8001A910 8C422CBC */  lw         $v0, %lo(D_800F2CBC)($v0)
/* 1B514 8001A914 AE420028 */  sw         $v0, 0x28($s2)
/* 1B518 8001A918 3C02800F */  lui        $v0, %hi(D_800ECB34)
/* 1B51C 8001A91C 8C42CB34 */  lw         $v0, %lo(D_800ECB34)($v0)
/* 1B520 8001A920 AE42002C */  sw         $v0, 0x2c($s2)
/* 1B524 8001A924 3C02800F */  lui        $v0, %hi(D_800F09F0)
/* 1B528 8001A928 8C4209F0 */  lw         $v0, %lo(D_800F09F0)($v0)
/* 1B52C 8001A92C AE420038 */  sw         $v0, 0x38($s2)
/* 1B530 8001A930 94820004 */  lhu        $v0, 4($a0)
/* 1B534 8001A934 3C03800F */  lui        $v1, %hi(D_800F317C)
/* 1B538 8001A938 8C63317C */  lw         $v1, %lo(D_800F317C)($v1)
/* 1B53C 8001A93C 000210C0 */  sll        $v0, $v0, 3
/* 1B540 8001A940 00431021 */  addu       $v0, $v0, $v1
/* 1B544 8001A944 8C420000 */  lw         $v0, ($v0)
/* 1B548 8001A948 AE420010 */  sw         $v0, 0x10($s2)
/* 1B54C 8001A94C 94820004 */  lhu        $v0, 4($a0)
/* 1B550 8001A950 000210C0 */  sll        $v0, $v0, 3
/* 1B554 8001A954 34420004 */  ori        $v0, $v0, 4
/* 1B558 8001A958 00431021 */  addu       $v0, $v0, $v1
/* 1B55C 8001A95C 8C420000 */  lw         $v0, ($v0)
/* 1B560 8001A960 AE420018 */  sw         $v0, 0x18($s2)
/* 1B564 8001A964 3C04800F */  lui        $a0, %hi(D_800ED3C8)
/* 1B568 8001A968 2484D3C8 */  addiu      $a0, $a0, %lo(D_800ED3C8)
/* 1B56C 8001A96C 02602821 */  addu       $a1, $s3, $zero
/* 1B570 8001A970 0C0222C4 */  jal        func_80088B10
/* 1B574 8001A974 24060001 */   addiu     $a2, $zero, 1
/* 1B578 8001A978 3C04800D */  lui        $a0, %hi(D_800D5FB0)
/* 1B57C 8001A97C 24845FB0 */  addiu      $a0, $a0, %lo(D_800D5FB0)
/* 1B580 8001A980 00002821 */  addu       $a1, $zero, $zero
/* 1B584 8001A984 0C022278 */  jal        func_800889E0
/* 1B588 8001A988 24060001 */   addiu     $a2, $zero, 1
/* 1B58C 8001A98C 0C022124 */  jal        func_80088490
/* 1B590 8001A990 24040001 */   addiu     $a0, $zero, 1
/* 1B594 8001A994 3C03800F */  lui        $v1, %hi(D_800ED3C2)
/* 1B598 8001A998 9463D3C2 */  lhu        $v1, %lo(D_800ED3C2)($v1)
/* 1B59C 8001A99C 2463FFFF */  addiu      $v1, $v1, -1
/* 1B5A0 8001A9A0 3C01800F */  lui        $at, %hi(D_800ED3C2)
/* 1B5A4 8001A9A4 A423D3C2 */  sh         $v1, %lo(D_800ED3C2)($at)
/* 1B5A8 8001A9A8 0C022124 */  jal        func_80088490
/* 1B5AC 8001A9AC 00402021 */   addu      $a0, $v0, $zero
/* 1B5B0 8001A9B0 8FA20058 */  lw         $v0, 0x58($sp)
/* 1B5B4 8001A9B4 8C44000C */  lw         $a0, 0xc($v0)
/* 1B5B8 8001A9B8 10800005 */  beqz       $a0, .L8001A9D0
/* 1B5BC 8001A9BC 00000000 */   nop
/* 1B5C0 8001A9C0 8C450010 */  lw         $a1, 0x10($v0)
/* 1B5C4 8001A9C4 0C0222C4 */  jal        func_80088B10
/* 1B5C8 8001A9C8 24060001 */   addiu     $a2, $zero, 1
/* 1B5CC 8001A9CC 8FA20058 */  lw         $v0, 0x58($sp)
.L8001A9D0:
/* 1B5D0 8001A9D0 8C420008 */  lw         $v0, 8($v0)
/* 1B5D4 8001A9D4 30420001 */  andi       $v0, $v0, 1
/* 1B5D8 8001A9D8 1040FFB3 */  beqz       $v0, .L8001A8A8
/* 1B5DC 8001A9DC 00000000 */   nop
/* 1B5E0 8001A9E0 08006A7E */  j          .L8001A9F8
/* 1B5E4 8001A9E4 24100001 */   addiu     $s0, $zero, 1
.L8001A9E8:
/* 1B5E8 8001A9E8 00002821 */  addu       $a1, $zero, $zero
/* 1B5EC 8001A9EC 0C022278 */  jal        func_800889E0
/* 1B5F0 8001A9F0 24060001 */   addiu     $a2, $zero, 1
/* 1B5F4 8001A9F4 26100001 */  addiu      $s0, $s0, 1
.L8001A9F8:
/* 1B5F8 8001A9F8 3C02800D */  lui        $v0, %hi(D_800D5FF0)
/* 1B5FC 8001A9FC 8C425FF0 */  lw         $v0, %lo(D_800D5FF0)($v0)
/* 1B600 8001AA00 0202102B */  sltu       $v0, $s0, $v0
/* 1B604 8001AA04 1440FFF8 */  bnez       $v0, .L8001A9E8
/* 1B608 8001AA08 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B60C 8001AA0C 0C022D94 */  jal        func_8008B650
/* 1B610 8001AA10 02202021 */   addu      $a0, $s1, $zero
/* 1B614 8001AA14 3C02800F */  lui        $v0, %hi(D_800ED0C4)
/* 1B618 8001AA18 8C42D0C4 */  lw         $v0, %lo(D_800ED0C4)($v0)
/* 1B61C 8001AA1C 14400006 */  bnez       $v0, .L8001AA38
/* 1B620 8001AA20 24420001 */   addiu     $v0, $v0, 1
/* 1B624 8001AA24 0C022DA8 */  jal        func_8008B6A0
/* 1B628 8001AA28 00002021 */   addu      $a0, $zero, $zero
/* 1B62C 8001AA2C 3C02800F */  lui        $v0, %hi(D_800ED0C4)
/* 1B630 8001AA30 8C42D0C4 */  lw         $v0, %lo(D_800ED0C4)($v0)
/* 1B634 8001AA34 24420001 */  addiu      $v0, $v0, 1
.L8001AA38:
/* 1B638 8001AA38 3C01800F */  lui        $at, %hi(D_800ED0C4)
/* 1B63C 8001AA3C 0C018505 */  jal        func_80061414
/* 1B640 8001AA40 AC22D0C4 */   sw        $v0, %lo(D_800ED0C4)($at)
/* 1B644 8001AA44 08006A0E */  j          .L8001A838
/* 1B648 8001AA48 27A40020 */   addiu     $a0, $sp, 0x20
/* 1B64C 8001AA4C 8FBF0078 */  lw         $ra, 0x78($sp)
/* 1B650 8001AA50 8FB50074 */  lw         $s5, 0x74($sp)
/* 1B654 8001AA54 8FB40070 */  lw         $s4, 0x70($sp)
/* 1B658 8001AA58 8FB3006C */  lw         $s3, 0x6c($sp)
/* 1B65C 8001AA5C 8FB20068 */  lw         $s2, 0x68($sp)
/* 1B660 8001AA60 8FB10064 */  lw         $s1, 0x64($sp)
/* 1B664 8001AA64 8FB00060 */  lw         $s0, 0x60($sp)
/* 1B668 8001AA68 03E00008 */  jr         $ra
/* 1B66C 8001AA6C 27BD0080 */   addiu     $sp, $sp, 0x80
