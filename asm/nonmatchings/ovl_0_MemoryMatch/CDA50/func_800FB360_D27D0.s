	.set noat
	.set noreorder

glabel func_800FB360_D27D0
/* D27D0 800FB360 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D27D4 800FB364 AFBF0024 */  sw         $ra, 0x24($sp)
/* D27D8 800FB368 AFB20020 */  sw         $s2, 0x20($sp)
/* D27DC 800FB36C AFB1001C */  sw         $s1, 0x1c($sp)
/* D27E0 800FB370 AFB00018 */  sw         $s0, 0x18($sp)
/* D27E4 800FB374 3C028010 */  lui        $v0, %hi(func_800FB558_D29C8)
/* D27E8 800FB378 2442B558 */  addiu      $v0, $v0, %lo(func_800FB558_D29C8)
/* D27EC 800FB37C AFA20010 */  sw         $v0, 0x10($sp)
/* D27F0 800FB380 2404000A */  addiu      $a0, $zero, 0xa
/* D27F4 800FB384 00002821 */  addu       $a1, $zero, $zero
/* D27F8 800FB388 00003021 */  addu       $a2, $zero, $zero
/* D27FC 800FB38C 0C0174E1 */  jal        func_8005D384
/* D2800 800FB390 2407FFFF */   addiu     $a3, $zero, -1
/* D2804 800FB394 3C018010 */  lui        $at, %hi(D_800FE1A0)
/* D2808 800FB398 AC22E1A0 */  sw         $v0, %lo(D_800FE1A0)($at)
/* D280C 800FB39C 3C018010 */  lui        $at, %hi(D_800FE1E0)
/* D2810 800FB3A0 A420E1E0 */  sh         $zero, %lo(D_800FE1E0)($at)
/* D2814 800FB3A4 3C018010 */  lui        $at, %hi(D_800FE1DC)
/* D2818 800FB3A8 A420E1DC */  sh         $zero, %lo(D_800FE1DC)($at)
/* D281C 800FB3AC 3C018010 */  lui        $at, %hi(D_800FE1D8)
/* D2820 800FB3B0 A420E1D8 */  sh         $zero, %lo(D_800FE1D8)($at)
/* D2824 800FB3B4 3C01800F */  lui        $at, %hi(D_800EE984)
/* D2828 800FB3B8 A420E984 */  sh         $zero, %lo(D_800EE984)($at)
/* D282C 800FB3BC 3C018010 */  lui        $at, %hi(D_800FE1DE)
/* D2830 800FB3C0 A420E1DE */  sh         $zero, %lo(D_800FE1DE)($at)
/* D2834 800FB3C4 3C018010 */  lui        $at, %hi(D_800FE1DA)
/* D2838 800FB3C8 A420E1DA */  sh         $zero, %lo(D_800FE1DA)($at)
/* D283C 800FB3CC 00008021 */  addu       $s0, $zero, $zero
/* D2840 800FB3D0 3C128010 */  lui        $s2, %hi(func_800FB888_D2CF8)
/* D2844 800FB3D4 2652B888 */  addiu      $s2, $s2, %lo(func_800FB888_D2CF8)
/* D2848 800FB3D8 3C118010 */  lui        $s1, %hi(D_800FE1A8)
/* D284C 800FB3DC 2631E1A8 */  addiu      $s1, $s1, %lo(D_800FE1A8)
/* D2850 800FB3E0 AFB20010 */  sw         $s2, 0x10($sp)
.L800FB3E4:
/* D2854 800FB3E4 2404000B */  addiu      $a0, $zero, 0xb
/* D2858 800FB3E8 24050001 */  addiu      $a1, $zero, 1
/* D285C 800FB3EC 00003021 */  addu       $a2, $zero, $zero
/* D2860 800FB3F0 0C0174E1 */  jal        func_8005D384
/* D2864 800FB3F4 2407FFFF */   addiu     $a3, $zero, -1
/* D2868 800FB3F8 3C038010 */  lui        $v1, %hi(D_800FE1D8)
/* D286C 800FB3FC 8463E1D8 */  lh         $v1, %lo(D_800FE1D8)($v1)
/* D2870 800FB400 00031880 */  sll        $v1, $v1, 2
/* D2874 800FB404 00711821 */  addu       $v1, $v1, $s1
/* D2878 800FB408 AC620000 */  sw         $v0, ($v1)
/* D287C 800FB40C 00402021 */  addu       $a0, $v0, $zero
/* D2880 800FB410 0C01762E */  jal        func_8005D8B8
/* D2884 800FB414 240500A0 */   addiu     $a1, $zero, 0xa0
/* D2888 800FB418 3C028010 */  lui        $v0, %hi(D_800FE1D8)
/* D288C 800FB41C 9442E1D8 */  lhu        $v0, %lo(D_800FE1D8)($v0)
/* D2890 800FB420 24420001 */  addiu      $v0, $v0, 1
/* D2894 800FB424 3C018010 */  lui        $at, %hi(D_800FE1D8)
/* D2898 800FB428 A422E1D8 */  sh         $v0, %lo(D_800FE1D8)($at)
/* D289C 800FB42C 26020001 */  addiu      $v0, $s0, 1
/* D28A0 800FB430 00408021 */  addu       $s0, $v0, $zero
/* D28A4 800FB434 00021400 */  sll        $v0, $v0, 0x10
/* D28A8 800FB438 00021403 */  sra        $v0, $v0, 0x10
/* D28AC 800FB43C 28420006 */  slti       $v0, $v0, 6
/* D28B0 800FB440 5440FFE8 */  bnel       $v0, $zero, .L800FB3E4
/* D28B4 800FB444 AFB20010 */   sw        $s2, 0x10($sp)
/* D28B8 800FB448 00008021 */  addu       $s0, $zero, $zero
/* D28BC 800FB44C 3C128010 */  lui        $s2, %hi(func_800FBC34_D30A4)
/* D28C0 800FB450 2652BC34 */  addiu      $s2, $s2, %lo(func_800FBC34_D30A4)
/* D28C4 800FB454 3C118010 */  lui        $s1, %hi(D_800FE1C0)
/* D28C8 800FB458 2631E1C0 */  addiu      $s1, $s1, %lo(D_800FE1C0)
/* D28CC 800FB45C AFB20010 */  sw         $s2, 0x10($sp)
.L800FB460:
/* D28D0 800FB460 2404000C */  addiu      $a0, $zero, 0xc
/* D28D4 800FB464 24050002 */  addiu      $a1, $zero, 2
/* D28D8 800FB468 00003021 */  addu       $a2, $zero, $zero
/* D28DC 800FB46C 0C0174E1 */  jal        func_8005D384
/* D28E0 800FB470 2407FFFF */   addiu     $a3, $zero, -1
/* D28E4 800FB474 3C038010 */  lui        $v1, %hi(D_800FE1DC)
/* D28E8 800FB478 9463E1DC */  lhu        $v1, %lo(D_800FE1DC)($v1)
/* D28EC 800FB47C 24640001 */  addiu      $a0, $v1, 1
/* D28F0 800FB480 3C018010 */  lui        $at, %hi(D_800FE1DC)
/* D28F4 800FB484 A424E1DC */  sh         $a0, %lo(D_800FE1DC)($at)
/* D28F8 800FB488 00031C00 */  sll        $v1, $v1, 0x10
/* D28FC 800FB48C 00031B83 */  sra        $v1, $v1, 0xe
/* D2900 800FB490 00711821 */  addu       $v1, $v1, $s1
/* D2904 800FB494 AC620000 */  sw         $v0, ($v1)
/* D2908 800FB498 26020001 */  addiu      $v0, $s0, 1
/* D290C 800FB49C 00408021 */  addu       $s0, $v0, $zero
/* D2910 800FB4A0 00021400 */  sll        $v0, $v0, 0x10
/* D2914 800FB4A4 00021403 */  sra        $v0, $v0, 0x10
/* D2918 800FB4A8 28420002 */  slti       $v0, $v0, 2
/* D291C 800FB4AC 5440FFEC */  bnel       $v0, $zero, .L800FB460
/* D2920 800FB4B0 AFB20010 */   sw        $s2, 0x10($sp)
/* D2924 800FB4B4 00008021 */  addu       $s0, $zero, $zero
/* D2928 800FB4B8 3C128010 */  lui        $s2, %hi(func_800FC5A4_D3A14)
/* D292C 800FB4BC 2652C5A4 */  addiu      $s2, $s2, %lo(func_800FC5A4_D3A14)
/* D2930 800FB4C0 3C11800F */  lui        $s1, %hi(D_800EDE70)
/* D2934 800FB4C4 2631DE70 */  addiu      $s1, $s1, %lo(D_800EDE70)
/* D2938 800FB4C8 AFB20010 */  sw         $s2, 0x10($sp)
.L800FB4CC:
/* D293C 800FB4CC 2404000D */  addiu      $a0, $zero, 0xd
/* D2940 800FB4D0 24050007 */  addiu      $a1, $zero, 7
/* D2944 800FB4D4 00003021 */  addu       $a2, $zero, $zero
/* D2948 800FB4D8 0C0174E1 */  jal        func_8005D384
/* D294C 800FB4DC 2407FFFF */   addiu     $a3, $zero, -1
/* D2950 800FB4E0 3C03800F */  lui        $v1, %hi(D_800EE984)
/* D2954 800FB4E4 9463E984 */  lhu        $v1, %lo(D_800EE984)($v1)
/* D2958 800FB4E8 00031880 */  sll        $v1, $v1, 2
/* D295C 800FB4EC 00711821 */  addu       $v1, $v1, $s1
/* D2960 800FB4F0 AC620000 */  sw         $v0, ($v1)
/* D2964 800FB4F4 00402021 */  addu       $a0, $v0, $zero
/* D2968 800FB4F8 0C01762E */  jal        func_8005D8B8
/* D296C 800FB4FC 240500A0 */   addiu     $a1, $zero, 0xa0
/* D2970 800FB500 3C02800F */  lui        $v0, %hi(D_800EE984)
/* D2974 800FB504 9442E984 */  lhu        $v0, %lo(D_800EE984)($v0)
/* D2978 800FB508 24420001 */  addiu      $v0, $v0, 1
/* D297C 800FB50C 3C01800F */  lui        $at, %hi(D_800EE984)
/* D2980 800FB510 A422E984 */  sh         $v0, %lo(D_800EE984)($at)
/* D2984 800FB514 26020001 */  addiu      $v0, $s0, 1
/* D2988 800FB518 00408021 */  addu       $s0, $v0, $zero
/* D298C 800FB51C 00021400 */  sll        $v0, $v0, 0x10
/* D2990 800FB520 00021403 */  sra        $v0, $v0, 0x10
/* D2994 800FB524 28420004 */  slti       $v0, $v0, 4
/* D2998 800FB528 5440FFE8 */  bnel       $v0, $zero, .L800FB4CC
/* D299C 800FB52C AFB20010 */   sw        $s2, 0x10($sp)
/* D29A0 800FB530 0C006244 */  jal        func_80018910
/* D29A4 800FB534 2404002A */   addiu     $a0, $zero, 0x2a
/* D29A8 800FB538 3C018010 */  lui        $at, %hi(D_800FE1E4)
/* D29AC 800FB53C A422E1E4 */  sh         $v0, %lo(D_800FE1E4)($at)
/* D29B0 800FB540 8FBF0024 */  lw         $ra, 0x24($sp)
/* D29B4 800FB544 8FB20020 */  lw         $s2, 0x20($sp)
/* D29B8 800FB548 8FB1001C */  lw         $s1, 0x1c($sp)
/* D29BC 800FB54C 8FB00018 */  lw         $s0, 0x18($sp)
/* D29C0 800FB550 03E00008 */  jr         $ra
/* D29C4 800FB554 27BD0028 */   addiu     $sp, $sp, 0x28
