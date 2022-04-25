	.set noat
	.set noreorder

glabel func_8000D65C
/* E25C 8000D65C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E260 8000D660 AFBF0034 */  sw         $ra, 0x34($sp)
/* E264 8000D664 AFB20030 */  sw         $s2, 0x30($sp)
/* E268 8000D668 AFB1002C */  sw         $s1, 0x2c($sp)
/* E26C 8000D66C AFB00028 */  sw         $s0, 0x28($sp)
/* E270 8000D670 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* E274 8000D674 AC20EAA4 */  sw         $zero, %lo(D_800CEAA4)($at)
/* E278 8000D678 3C01800D */  lui        $at, %hi(D_800CEABC)
/* E27C 8000D67C AC20EABC */  sw         $zero, %lo(D_800CEABC)($at)
/* E280 8000D680 3C01800D */  lui        $at, %hi(D_800CEA98)
/* E284 8000D684 AC20EA98 */  sw         $zero, %lo(D_800CEA98)($at)
/* E288 8000D688 3C04800C */  lui        $a0, %hi(D_800C18DC)
/* E28C 8000D68C 248418DC */  addiu      $a0, $a0, %lo(D_800C18DC)
/* E290 8000D690 8C820000 */  lw         $v0, ($a0)
/* E294 8000D694 8C830004 */  lw         $v1, 4($a0)
/* E298 8000D698 00431021 */  addu       $v0, $v0, $v1
/* E29C 8000D69C 3C01800D */  lui        $at, %hi(D_800CEA9C)
/* E2A0 8000D6A0 AC22EA9C */  sw         $v0, %lo(D_800CEA9C)($at)
/* E2A4 8000D6A4 AFA20010 */  sw         $v0, 0x10($sp)
/* E2A8 8000D6A8 8C820008 */  lw         $v0, 8($a0)
/* E2AC 8000D6AC AFA20014 */  sw         $v0, 0x14($sp)
/* E2B0 8000D6B0 3C02800D */  lui        $v0, %hi(D_800CDAA8)
/* E2B4 8000D6B4 2442DAA8 */  addiu      $v0, $v0, %lo(D_800CDAA8)
/* E2B8 8000D6B8 AFA20018 */  sw         $v0, 0x18($sp)
/* E2BC 8000D6BC 0C002BE8 */  jal        func_8000AFA0
/* E2C0 8000D6C0 24040054 */   addiu     $a0, $zero, 0x54
/* E2C4 8000D6C4 3C01800D */  lui        $at, %hi(D_800CEA8C)
/* E2C8 8000D6C8 AC22EA8C */  sw         $v0, %lo(D_800CEA8C)($at)
/* E2CC 8000D6CC 104000C7 */  beqz       $v0, .L8000D9EC
/* E2D0 8000D6D0 24020001 */   addiu     $v0, $zero, 1
/* E2D4 8000D6D4 3C04800D */  lui        $a0, %hi(D_800CEA8C)
/* E2D8 8000D6D8 8C84EA8C */  lw         $a0, %lo(D_800CEA8C)($a0)
/* E2DC 8000D6DC 0C0190F4 */  jal        func_800643D0
/* E2E0 8000D6E0 27A50010 */   addiu     $a1, $sp, 0x10
/* E2E4 8000D6E4 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E2E8 8000D6E8 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E2EC 8000D6EC 00022040 */  sll        $a0, $v0, 1
/* E2F0 8000D6F0 00822021 */  addu       $a0, $a0, $v0
/* E2F4 8000D6F4 00042080 */  sll        $a0, $a0, 2
/* E2F8 8000D6F8 00822023 */  subu       $a0, $a0, $v0
/* E2FC 8000D6FC 0C002BE8 */  jal        func_8000AFA0
/* E300 8000D700 00042080 */   sll       $a0, $a0, 2
/* E304 8000D704 3C01800D */  lui        $at, %hi(D_800CEA94)
/* E308 8000D708 AC22EA94 */  sw         $v0, %lo(D_800CEA94)($at)
/* E30C 8000D70C 104000A2 */  beqz       $v0, .L8000D998
/* E310 8000D710 2402007F */   addiu     $v0, $zero, 0x7f
/* E314 8000D714 3C01800D */  lui        $at, %hi(D_800CEAB4)
/* E318 8000D718 A420EAB4 */  sh         $zero, %lo(D_800CEAB4)($at)
/* E31C 8000D71C 3C01800D */  lui        $at, %hi(D_800CEAB8)
/* E320 8000D720 A022EAB8 */  sb         $v0, %lo(D_800CEAB8)($at)
/* E324 8000D724 24020040 */  addiu      $v0, $zero, 0x40
/* E328 8000D728 3C01800D */  lui        $at, %hi(D_800CEAB9)
/* E32C 8000D72C A022EAB9 */  sb         $v0, %lo(D_800CEAB9)($at)
/* E330 8000D730 3C01800D */  lui        $at, %hi(D_800CEABA)
/* E334 8000D734 A020EABA */  sb         $zero, %lo(D_800CEABA)($at)
/* E338 8000D738 24027FFF */  addiu      $v0, $zero, 0x7fff
/* E33C 8000D73C 3C01800D */  lui        $at, %hi(D_800CEAB0)
/* E340 8000D740 A422EAB0 */  sh         $v0, %lo(D_800CEAB0)($at)
/* E344 8000D744 3C01800D */  lui        $at, %hi(D_800CEAB2)
/* E348 8000D748 A422EAB2 */  sh         $v0, %lo(D_800CEAB2)($at)
/* E34C 8000D74C 3C01800D */  lui        $at, %hi(D_800CEAA0)
/* E350 8000D750 AC20EAA0 */  sw         $zero, %lo(D_800CEAA0)($at)
/* E354 8000D754 3C01800D */  lui        $at, %hi(D_800CEAA8)
/* E358 8000D758 AC20EAA8 */  sw         $zero, %lo(D_800CEAA8)($at)
/* E35C 8000D75C 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E360 8000D760 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E364 8000D764 18400027 */  blez       $v0, .L8000D804
/* E368 8000D768 00002021 */   addu      $a0, $zero, $zero
/* E36C 8000D76C 2405FFFF */  addiu      $a1, $zero, -1
/* E370 8000D770 3C013F80 */  lui        $at, 0x3f80
/* E374 8000D774 44810000 */  mtc1       $at, $f0
/* E378 8000D778 00041040 */  sll        $v0, $a0, 1
.L8000D77C:
/* E37C 8000D77C 00441021 */  addu       $v0, $v0, $a0
/* E380 8000D780 00021080 */  sll        $v0, $v0, 2
/* E384 8000D784 00441023 */  subu       $v0, $v0, $a0
/* E388 8000D788 00021080 */  sll        $v0, $v0, 2
/* E38C 8000D78C 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* E390 8000D790 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* E394 8000D794 00431021 */  addu       $v0, $v0, $v1
/* E398 8000D798 AC40000C */  sw         $zero, 0xc($v0)
/* E39C 8000D79C AC400010 */  sw         $zero, 0x10($v0)
/* E3A0 8000D7A0 AC400008 */  sw         $zero, 8($v0)
/* E3A4 8000D7A4 A4450016 */  sh         $a1, 0x16($v0)
/* E3A8 8000D7A8 A0400026 */  sb         $zero, 0x26($v0)
/* E3AC 8000D7AC 3C03800D */  lui        $v1, %hi(D_800CEAB8)
/* E3B0 8000D7B0 9063EAB8 */  lbu        $v1, %lo(D_800CEAB8)($v1)
/* E3B4 8000D7B4 A0430022 */  sb         $v1, 0x22($v0)
/* E3B8 8000D7B8 3C03800D */  lui        $v1, %hi(D_800CEAB9)
/* E3BC 8000D7BC 9063EAB9 */  lbu        $v1, %lo(D_800CEAB9)($v1)
/* E3C0 8000D7C0 A0430024 */  sb         $v1, 0x24($v0)
/* E3C4 8000D7C4 A0430025 */  sb         $v1, 0x25($v0)
/* E3C8 8000D7C8 3C03800D */  lui        $v1, %hi(D_800CEABA)
/* E3CC 8000D7CC 9063EABA */  lbu        $v1, %lo(D_800CEABA)($v1)
/* E3D0 8000D7D0 A0430028 */  sb         $v1, 0x28($v0)
/* E3D4 8000D7D4 3C03800D */  lui        $v1, %hi(D_800CEAB4)
/* E3D8 8000D7D8 9463EAB4 */  lhu        $v1, %lo(D_800CEAB4)($v1)
/* E3DC 8000D7DC A4430018 */  sh         $v1, 0x18($v0)
/* E3E0 8000D7E0 A443001A */  sh         $v1, 0x1a($v0)
/* E3E4 8000D7E4 E440001C */  swc1       $f0, 0x1c($v0)
/* E3E8 8000D7E8 A0400029 */  sb         $zero, 0x29($v0)
/* E3EC 8000D7EC 24840001 */  addiu      $a0, $a0, 1
/* E3F0 8000D7F0 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* E3F4 8000D7F4 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* E3F8 8000D7F8 0082102A */  slt        $v0, $a0, $v0
/* E3FC 8000D7FC 1440FFDF */  bnez       $v0, .L8000D77C
/* E400 8000D800 00041040 */   sll       $v0, $a0, 1
.L8000D804:
/* E404 8000D804 0C003C1E */  jal        func_8000F078
/* E408 8000D808 00000000 */   nop
/* E40C 8000D80C 14400077 */  bnez       $v0, .L8000D9EC
/* E410 8000D810 24020001 */   addiu     $v0, $zero, 1
/* E414 8000D814 0C003681 */  jal        func_8000DA04
/* E418 8000D818 24040004 */   addiu     $a0, $zero, 4
/* E41C 8000D81C 14400073 */  bnez       $v0, .L8000D9EC
/* E420 8000D820 24020001 */   addiu     $v0, $zero, 1
/* E424 8000D824 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* E428 8000D828 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* E42C 8000D82C 84430000 */  lh         $v1, ($v0)
/* E430 8000D830 24025431 */  addiu      $v0, $zero, 0x5431
/* E434 8000D834 10620007 */  beq        $v1, $v0, .L8000D854
/* E438 8000D838 28625431 */   slti      $v0, $v1, 0x5431
/* E43C 8000D83C 14400058 */  bnez       $v0, .L8000D9A0
/* E440 8000D840 28625434 */   slti      $v0, $v1, 0x5434
/* E444 8000D844 10400056 */  beqz       $v0, .L8000D9A0
/* E448 8000D848 00000000 */   nop
/* E44C 8000D84C 08003628 */  j          .L8000D8A0
/* E450 8000D850 00000000 */   nop
.L8000D854:
/* E454 8000D854 3C02800C */  lui        $v0, %hi(D_800C188C)
/* E458 8000D858 8C42188C */  lw         $v0, %lo(D_800C188C)($v0)
/* E45C 8000D85C 10400063 */  beqz       $v0, .L8000D9EC
/* E460 8000D860 00001021 */   addu      $v0, $zero, $zero
/* E464 8000D864 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* E468 8000D868 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* E46C 8000D86C 84500002 */  lh         $s0, 2($v0)
/* E470 8000D870 001020C0 */  sll        $a0, $s0, 3
/* E474 8000D874 0C003681 */  jal        func_8000DA04
/* E478 8000D878 24840004 */   addiu     $a0, $a0, 4
/* E47C 8000D87C 1440005B */  bnez       $v0, .L8000D9EC
/* E480 8000D880 24020001 */   addiu     $v0, $zero, 1
/* E484 8000D884 0C00369F */  jal        func_8000DA7C
/* E488 8000D888 00000000 */   nop
/* E48C 8000D88C 00402021 */  addu       $a0, $v0, $zero
/* E490 8000D890 10800053 */  beqz       $a0, .L8000D9E0
/* E494 8000D894 34028000 */   ori       $v0, $zero, 0x8000
/* E498 8000D898 0800367B */  j          .L8000D9EC
/* E49C 8000D89C 2482FFFF */   addiu     $v0, $a0, -1
.L8000D8A0:
/* E4A0 8000D8A0 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* E4A4 8000D8A4 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* E4A8 8000D8A8 84500002 */  lh         $s0, 2($v0)
/* E4AC 8000D8AC 001010C0 */  sll        $v0, $s0, 3
/* E4B0 8000D8B0 24500004 */  addiu      $s0, $v0, 4
/* E4B4 8000D8B4 0C003681 */  jal        func_8000DA04
/* E4B8 8000D8B8 02002021 */   addu      $a0, $s0, $zero
/* E4BC 8000D8BC 5440004B */  bnel       $v0, $zero, .L8000D9EC
/* E4C0 8000D8C0 24020001 */   addiu     $v0, $zero, 1
/* E4C4 8000D8C4 3C02800C */  lui        $v0, %hi(D_800C1888)
/* E4C8 8000D8C8 8C421888 */  lw         $v0, %lo(D_800C1888)($v0)
/* E4CC 8000D8CC 02029021 */  addu       $s2, $s0, $v0
/* E4D0 8000D8D0 06010002 */  bgez       $s0, .L8000D8DC
/* E4D4 8000D8D4 02001021 */   addu      $v0, $s0, $zero
/* E4D8 8000D8D8 26020007 */  addiu      $v0, $s0, 7
.L8000D8DC:
/* E4DC 8000D8DC 000210C3 */  sra        $v0, $v0, 3
/* E4E0 8000D8E0 000210C0 */  sll        $v0, $v0, 3
/* E4E4 8000D8E4 02021023 */  subu       $v0, $s0, $v0
/* E4E8 8000D8E8 02429021 */  addu       $s2, $s2, $v0
/* E4EC 8000D8EC 24100024 */  addiu      $s0, $zero, 0x24
/* E4F0 8000D8F0 0C002BE8 */  jal        func_8000AFA0
/* E4F4 8000D8F4 24040024 */   addiu     $a0, $zero, 0x24
/* E4F8 8000D8F8 00408821 */  addu       $s1, $v0, $zero
/* E4FC 8000D8FC 12200026 */  beqz       $s1, .L8000D998
/* E500 8000D900 02402021 */   addu      $a0, $s2, $zero
/* E504 8000D904 02202821 */  addu       $a1, $s1, $zero
/* E508 8000D908 0C002B60 */  jal        func_8000AD80
/* E50C 8000D90C 02003021 */   addu      $a2, $s0, $zero
/* E510 8000D910 3C04800C */  lui        $a0, %hi(D_800C1888)
/* E514 8000D914 24841888 */  addiu      $a0, $a0, %lo(D_800C1888)
/* E518 8000D918 8C820000 */  lw         $v0, ($a0)
/* E51C 8000D91C 8E230004 */  lw         $v1, 4($s1)
/* E520 8000D920 00431021 */  addu       $v0, $v0, $v1
/* E524 8000D924 AE220004 */  sw         $v0, 4($s1)
/* E528 8000D928 8C820000 */  lw         $v0, ($a0)
/* E52C 8000D92C 8E23000C */  lw         $v1, 0xc($s1)
/* E530 8000D930 00431021 */  addu       $v0, $v0, $v1
/* E534 8000D934 AE22000C */  sw         $v0, 0xc($s1)
/* E538 8000D938 0C0036C9 */  jal        func_8000DB24
/* E53C 8000D93C 02202021 */   addu      $a0, $s1, $zero
/* E540 8000D940 00402021 */  addu       $a0, $v0, $zero
/* E544 8000D944 14800029 */  bnez       $a0, .L8000D9EC
/* E548 8000D948 2482FFFF */   addiu     $v0, $a0, -1
/* E54C 8000D94C 0C003733 */  jal        func_8000DCCC
/* E550 8000D950 02202021 */   addu      $a0, $s1, $zero
/* E554 8000D954 14400025 */  bnez       $v0, .L8000D9EC
/* E558 8000D958 24020001 */   addiu     $v0, $zero, 1
/* E55C 8000D95C 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* E560 8000D960 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* E564 8000D964 84430000 */  lh         $v1, ($v0)
/* E568 8000D968 24025432 */  addiu      $v0, $zero, 0x5432
/* E56C 8000D96C 1062001C */  beq        $v1, $v0, .L8000D9E0
/* E570 8000D970 34028000 */   ori       $v0, $zero, 0x8000
/* E574 8000D974 0C003711 */  jal        func_8000DC44
/* E578 8000D978 02202021 */   addu      $a0, $s1, $zero
/* E57C 8000D97C 00402021 */  addu       $a0, $v0, $zero
/* E580 8000D980 1480001A */  bnez       $a0, .L8000D9EC
/* E584 8000D984 2482FFFF */   addiu     $v0, $a0, -1
/* E588 8000D988 0C003C46 */  jal        func_8000F118
/* E58C 8000D98C 00000000 */   nop
/* E590 8000D990 10400013 */  beqz       $v0, .L8000D9E0
/* E594 8000D994 34028000 */   ori       $v0, $zero, 0x8000
.L8000D998:
/* E598 8000D998 0800367B */  j          .L8000D9EC
/* E59C 8000D99C 24020001 */   addiu     $v0, $zero, 1
.L8000D9A0:
/* E5A0 8000D9A0 3C02800C */  lui        $v0, %hi(D_800C188C)
/* E5A4 8000D9A4 8C42188C */  lw         $v0, %lo(D_800C188C)($v0)
/* E5A8 8000D9A8 10400010 */  beqz       $v0, .L8000D9EC
/* E5AC 8000D9AC 00001021 */   addu      $v0, $zero, $zero
/* E5B0 8000D9B0 0C00369F */  jal        func_8000DA7C
/* E5B4 8000D9B4 00000000 */   nop
/* E5B8 8000D9B8 00402021 */  addu       $a0, $v0, $zero
/* E5BC 8000D9BC 1480000B */  bnez       $a0, .L8000D9EC
/* E5C0 8000D9C0 2482FFFF */   addiu     $v0, $a0, -1
/* E5C4 8000D9C4 3C04800D */  lui        $a0, %hi(D_800CEA88)
/* E5C8 8000D9C8 0C003887 */  jal        func_8000E21C
/* E5CC 8000D9CC 8C84EA88 */   lw        $a0, %lo(D_800CEA88)($a0)
/* E5D0 8000D9D0 3C03800D */  lui        $v1, %hi(D_800CEA90)
/* E5D4 8000D9D4 8C63EA90 */  lw         $v1, %lo(D_800CEA90)($v1)
/* E5D8 8000D9D8 A4620002 */  sh         $v0, 2($v1)
/* E5DC 8000D9DC 34028000 */  ori        $v0, $zero, 0x8000
.L8000D9E0:
/* E5E0 8000D9E0 3C01800D */  lui        $at, %hi(D_800CEAA4)
/* E5E4 8000D9E4 AC22EAA4 */  sw         $v0, %lo(D_800CEAA4)($at)
/* E5E8 8000D9E8 00001021 */  addu       $v0, $zero, $zero
.L8000D9EC:
/* E5EC 8000D9EC 8FBF0034 */  lw         $ra, 0x34($sp)
/* E5F0 8000D9F0 8FB20030 */  lw         $s2, 0x30($sp)
/* E5F4 8000D9F4 8FB1002C */  lw         $s1, 0x2c($sp)
/* E5F8 8000D9F8 8FB00028 */  lw         $s0, 0x28($sp)
/* E5FC 8000D9FC 03E00008 */  jr         $ra
/* E600 8000DA00 27BD0038 */   addiu     $sp, $sp, 0x38
