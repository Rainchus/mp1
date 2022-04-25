	.set noat
	.set noreorder

glabel func_8005E3FC
/* 5EFFC 8005E3FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5F000 8005E400 AFBF0024 */  sw         $ra, 0x24($sp)
/* 5F004 8005E404 AFB20020 */  sw         $s2, 0x20($sp)
/* 5F008 8005E408 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5F00C 8005E40C AFB00018 */  sw         $s0, 0x18($sp)
/* 5F010 8005E410 3C02800C */  lui        $v0, %hi(D_800C5972)
/* 5F014 8005E414 94425972 */  lhu        $v0, %lo(D_800C5972)($v0)
/* 5F018 8005E418 10400058 */  beqz       $v0, .L8005E57C
/* 5F01C 8005E41C 2402000E */   addiu     $v0, $zero, 0xe
/* 5F020 8005E420 3C01800F */  lui        $at, %hi(D_800ECB24)
/* 5F024 8005E424 0C00EDC4 */  jal        func_8003B710
/* 5F028 8005E428 AC22CB24 */   sw        $v0, %lo(D_800ECB24)($at)
/* 5F02C 8005E42C 0C00EDCC */  jal        func_8003B730
/* 5F030 8005E430 00408021 */   addu      $s0, $v0, $zero
/* 5F034 8005E434 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 5F038 8005E438 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 5F03C 8005E43C 3C05800D */  lui        $a1, %hi(D_800CB538)
/* 5F040 8005E440 24A5B538 */  addiu      $a1, $a1, %lo(D_800CB538)
/* 5F044 8005E444 02003021 */  addu       $a2, $s0, $zero
/* 5F048 8005E448 0C023124 */  jal        func_8008C490
/* 5F04C 8005E44C 00403821 */   addu      $a3, $v0, $zero
/* 5F050 8005E450 24040010 */  addiu      $a0, $zero, 0x10
/* 5F054 8005E454 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 5F058 8005E458 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 5F05C 8005E45C 0C0188AF */  jal        func_800622BC
/* 5F060 8005E460 24050018 */   addiu     $a1, $zero, 0x18
/* 5F064 8005E464 3C06800C */  lui        $a2, %hi(D_800C597E)
/* 5F068 8005E468 84C6597E */  lh         $a2, %lo(D_800C597E)($a2)
/* 5F06C 8005E46C 3C02800C */  lui        $v0, %hi(D_800C5968)
/* 5F070 8005E470 8C425968 */  lw         $v0, %lo(D_800C5968)($v0)
/* 5F074 8005E474 AFA20010 */  sw         $v0, 0x10($sp)
/* 5F078 8005E478 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 5F07C 8005E47C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 5F080 8005E480 3C05800D */  lui        $a1, %hi(D_800CB544)
/* 5F084 8005E484 24A5B544 */  addiu      $a1, $a1, %lo(D_800CB544)
/* 5F088 8005E488 3C07800F */  lui        $a3, %hi(D_800F09F4)
/* 5F08C 8005E48C 0C023124 */  jal        func_8008C490
/* 5F090 8005E490 8CE709F4 */   lw        $a3, %lo(D_800F09F4)($a3)
/* 5F094 8005E494 24040018 */  addiu      $a0, $zero, 0x18
/* 5F098 8005E498 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 5F09C 8005E49C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 5F0A0 8005E4A0 0C0188AF */  jal        func_800622BC
/* 5F0A4 8005E4A4 24050020 */   addiu     $a1, $zero, 0x20
/* 5F0A8 8005E4A8 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 5F0AC 8005E4AC 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 5F0B0 8005E4B0 3C05800D */  lui        $a1, %hi(D_800CB554)
/* 5F0B4 8005E4B4 24A5B554 */  addiu      $a1, $a1, %lo(D_800CB554)
/* 5F0B8 8005E4B8 3C06800F */  lui        $a2, %hi(D_800ED56C)
/* 5F0BC 8005E4BC 84C6D56C */  lh         $a2, %lo(D_800ED56C)($a2)
/* 5F0C0 8005E4C0 3C07800F */  lui        $a3, %hi(D_800ED550)
/* 5F0C4 8005E4C4 0C023124 */  jal        func_8008C490
/* 5F0C8 8005E4C8 84E7D550 */   lh        $a3, %lo(D_800ED550)($a3)
/* 5F0CC 8005E4CC 24040018 */  addiu      $a0, $zero, 0x18
/* 5F0D0 8005E4D0 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 5F0D4 8005E4D4 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 5F0D8 8005E4D8 0C0188AF */  jal        func_800622BC
/* 5F0DC 8005E4DC 24050028 */   addiu     $a1, $zero, 0x28
/* 5F0E0 8005E4E0 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 5F0E4 8005E4E4 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 5F0E8 8005E4E8 3C05800D */  lui        $a1, %hi(D_800CB560)
/* 5F0EC 8005E4EC 24A5B560 */  addiu      $a1, $a1, %lo(D_800CB560)
/* 5F0F0 8005E4F0 3C06800C */  lui        $a2, %hi(D_800C598A)
/* 5F0F4 8005E4F4 84C6598A */  lh         $a2, %lo(D_800C598A)($a2)
/* 5F0F8 8005E4F8 3C07800C */  lui        $a3, %hi(D_800C5988)
/* 5F0FC 8005E4FC 0C023124 */  jal        func_8008C490
/* 5F100 8005E500 84E75988 */   lh        $a3, %lo(D_800C5988)($a3)
/* 5F104 8005E504 24040018 */  addiu      $a0, $zero, 0x18
/* 5F108 8005E508 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 5F10C 8005E50C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 5F110 8005E510 0C0188AF */  jal        func_800622BC
/* 5F114 8005E514 24050030 */   addiu     $a1, $zero, 0x30
/* 5F118 8005E518 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 5F11C 8005E51C 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 5F120 8005E520 3C05800D */  lui        $a1, %hi(D_800CB56C)
/* 5F124 8005E524 24A5B56C */  addiu      $a1, $a1, %lo(D_800CB56C)
/* 5F128 8005E528 3C06800C */  lui        $a2, %hi(D_800C5998)
/* 5F12C 8005E52C 0C023124 */  jal        func_8008C490
/* 5F130 8005E530 94C65998 */   lhu       $a2, %lo(D_800C5998)($a2)
/* 5F134 8005E534 24040070 */  addiu      $a0, $zero, 0x70
/* 5F138 8005E538 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 5F13C 8005E53C 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 5F140 8005E540 0C0188AF */  jal        func_800622BC
/* 5F144 8005E544 24050030 */   addiu     $a1, $zero, 0x30
/* 5F148 8005E548 3C03800C */  lui        $v1, %hi(D_800C59A6)
/* 5F14C 8005E54C 846359A6 */  lh         $v1, %lo(D_800C59A6)($v1)
/* 5F150 8005E550 2402FFFF */  addiu      $v0, $zero, -1
/* 5F154 8005E554 14620009 */  bne        $v1, $v0, .L8005E57C
/* 5F158 8005E558 3402FF70 */   ori       $v0, $zero, 0xff70
/* 5F15C 8005E55C AFA20010 */  sw         $v0, 0x10($sp)
/* 5F160 8005E560 2404000E */  addiu      $a0, $zero, 0xe
/* 5F164 8005E564 24050016 */  addiu      $a1, $zero, 0x16
/* 5F168 8005E568 24060082 */  addiu      $a2, $zero, 0x82
/* 5F16C 8005E56C 0C0188D9 */  jal        func_80062364
/* 5F170 8005E570 2407003A */   addiu     $a3, $zero, 0x3a
/* 5F174 8005E574 3C01800C */  lui        $at, %hi(D_800C59A6)
/* 5F178 8005E578 A42259A6 */  sh         $v0, %lo(D_800C59A6)($at)
.L8005E57C:
/* 5F17C 8005E57C 0C018395 */  jal        func_80060E54
/* 5F180 8005E580 00000000 */   nop
/* 5F184 8005E584 0C01821B */  jal        func_8006086C
/* 5F188 8005E588 00000000 */   nop
/* 5F18C 8005E58C 3C02800C */  lui        $v0, %hi(D_800C5982)
/* 5F190 8005E590 90425982 */  lbu        $v0, %lo(D_800C5982)($v0)
/* 5F194 8005E594 10400116 */  beqz       $v0, .L8005E9F0
/* 5F198 8005E598 00002021 */   addu      $a0, $zero, $zero
/* 5F19C 8005E59C 3C03800C */  lui        $v1, %hi(D_800C5998)
/* 5F1A0 8005E5A0 94635998 */  lhu        $v1, %lo(D_800C5998)($v1)
/* 5F1A4 8005E5A4 30620008 */  andi       $v0, $v1, 8
/* 5F1A8 8005E5A8 1040000C */  beqz       $v0, .L8005E5DC
/* 5F1AC 8005E5AC 24020001 */   addiu     $v0, $zero, 1
/* 5F1B0 8005E5B0 3C01800C */  lui        $at, %hi(D_800C59A4)
/* 5F1B4 8005E5B4 A02259A4 */  sb         $v0, %lo(D_800C59A4)($at)
/* 5F1B8 8005E5B8 30620001 */  andi       $v0, $v1, 1
/* 5F1BC 8005E5BC 14400007 */  bnez       $v0, .L8005E5DC
/* 5F1C0 8005E5C0 00000000 */   nop
/* 5F1C4 8005E5C4 3C02800C */  lui        $v0, %hi(D_800C5978)
/* 5F1C8 8005E5C8 90425978 */  lbu        $v0, %lo(D_800C5978)($v0)
/* 5F1CC 8005E5CC 1040014D */  beqz       $v0, .L8005EB04
/* 5F1D0 8005E5D0 00000000 */   nop
/* 5F1D4 8005E5D4 08017A76 */  j          .L8005E9D8
/* 5F1D8 8005E5D8 00000000 */   nop
.L8005E5DC:
/* 5F1DC 8005E5DC 3C02800C */  lui        $v0, %hi(D_800C5978)
/* 5F1E0 8005E5E0 90425978 */  lbu        $v0, %lo(D_800C5978)($v0)
/* 5F1E4 8005E5E4 144000FC */  bnez       $v0, .L8005E9D8
/* 5F1E8 8005E5E8 24020001 */   addiu     $v0, $zero, 1
/* 5F1EC 8005E5EC 3C03800C */  lui        $v1, %hi(D_800C5994)
/* 5F1F0 8005E5F0 84635994 */  lh         $v1, %lo(D_800C5994)($v1)
/* 5F1F4 8005E5F4 14620032 */  bne        $v1, $v0, .L8005E6C0
/* 5F1F8 8005E5F8 24020004 */   addiu     $v0, $zero, 4
/* 5F1FC 8005E5FC 3C03800F */  lui        $v1, %hi(D_800F3184)
/* 5F200 8005E600 94633184 */  lhu        $v1, %lo(D_800F3184)($v1)
/* 5F204 8005E604 14620003 */  bne        $v1, $v0, .L8005E614
/* 5F208 8005E608 00000000 */   nop
/* 5F20C 8005E60C 0C009577 */  jal        func_800255DC
/* 5F210 8005E610 00000000 */   nop
.L8005E614:
/* 5F214 8005E614 3C02800F */  lui        $v0, %hi(D_800F3184)
/* 5F218 8005E618 94423184 */  lhu        $v0, %lo(D_800F3184)($v0)
/* 5F21C 8005E61C 10400007 */  beqz       $v0, .L8005E63C
/* 5F220 8005E620 00000000 */   nop
/* 5F224 8005E624 3C02800F */  lui        $v0, %hi(D_800F3184)
/* 5F228 8005E628 94423184 */  lhu        $v0, %lo(D_800F3184)($v0)
/* 5F22C 8005E62C 2442FFFF */  addiu      $v0, $v0, -1
/* 5F230 8005E630 3C01800F */  lui        $at, %hi(D_800F3184)
/* 5F234 8005E634 08017AC1 */  j          .L8005EB04
/* 5F238 8005E638 A4223184 */   sh        $v0, %lo(D_800F3184)($at)
.L8005E63C:
/* 5F23C 8005E63C 3C02800F */  lui        $v0, %hi(D_800F3705)
/* 5F240 8005E640 90423705 */  lbu        $v0, %lo(D_800F3705)($v0)
/* 5F244 8005E644 3C01800F */  lui        $at, %hi(D_800ED552)
/* 5F248 8005E648 A022D552 */  sb         $v0, %lo(D_800ED552)($at)
/* 5F24C 8005E64C 3C04800C */  lui        $a0, %hi(D_800C4250)
/* 5F250 8005E650 24844250 */  addiu      $a0, $a0, %lo(D_800C4250)
/* 5F254 8005E654 3C05800F */  lui        $a1, %hi(D_800F3705)
/* 5F258 8005E658 90A53705 */  lbu        $a1, %lo(D_800F3705)($a1)
/* 5F25C 8005E65C 0C006AE1 */  jal        func_8001AB84
/* 5F260 8005E660 24060002 */   addiu     $a2, $zero, 2
/* 5F264 8005E664 3C06800F */  lui        $a2, %hi(D_800F3F30)
/* 5F268 8005E668 94C63F30 */  lhu        $a2, %lo(D_800F3F30)($a2)
/* 5F26C 8005E66C 3C07800F */  lui        $a3, %hi(D_800ED726)
/* 5F270 8005E670 94E7D726 */  lhu        $a3, %lo(D_800ED726)($a3)
/* 5F274 8005E674 3C02800F */  lui        $v0, %hi(D_800F64EC)
/* 5F278 8005E678 944264EC */  lhu        $v0, %lo(D_800F64EC)($v0)
/* 5F27C 8005E67C AFA20010 */  sw         $v0, 0x10($sp)
/* 5F280 8005E680 3C02800F */  lui        $v0, %hi(D_800F3705)
/* 5F284 8005E684 90423705 */  lbu        $v0, %lo(D_800F3705)($v0)
/* 5F288 8005E688 3C048004 */  lui        $a0, %hi(func_8003B6A4)
/* 5F28C 8005E68C 2484B6A4 */  addiu      $a0, $a0, %lo(func_8003B6A4)
/* 5F290 8005E690 3C058004 */  lui        $a1, %hi(func_8003B6C8)
/* 5F294 8005E694 24A5B6C8 */  addiu      $a1, $a1, %lo(func_8003B6C8)
/* 5F298 8005E698 0C008ED0 */  jal        func_80023B40
/* 5F29C 8005E69C AFA20014 */   sw        $v0, 0x14($sp)
/* 5F2A0 8005E6A0 0C00ADB2 */  jal        func_8002B6C8
/* 5F2A4 8005E6A4 00000000 */   nop
/* 5F2A8 8005E6A8 3C040200 */  lui        $a0, 0x200
/* 5F2AC 8005E6AC 3C05003D */  lui        $a1, 0x3d
/* 5F2B0 8005E6B0 0C009596 */  jal        func_80025658
/* 5F2B4 8005E6B4 34A50800 */   ori       $a1, $a1, 0x800
/* 5F2B8 8005E6B8 0C007490 */  jal        func_8001D240
/* 5F2BC 8005E6BC 24040001 */   addiu     $a0, $zero, 1
.L8005E6C0:
/* 5F2C0 8005E6C0 3C01800C */  lui        $at, %hi(D_800C5994)
/* 5F2C4 8005E6C4 A4205994 */  sh         $zero, %lo(D_800C5994)($at)
/* 5F2C8 8005E6C8 3C02800C */  lui        $v0, %hi(D_800C59A2)
/* 5F2CC 8005E6CC 904259A2 */  lbu        $v0, %lo(D_800C59A2)($v0)
/* 5F2D0 8005E6D0 14400030 */  bnez       $v0, .L8005E794
/* 5F2D4 8005E6D4 00000000 */   nop
/* 5F2D8 8005E6D8 3C02800C */  lui        $v0, %hi(D_800C5A20)
/* 5F2DC 8005E6DC 90425A20 */  lbu        $v0, %lo(D_800C5A20)($v0)
/* 5F2E0 8005E6E0 1040000C */  beqz       $v0, .L8005E714
/* 5F2E4 8005E6E4 00000000 */   nop
/* 5F2E8 8005E6E8 3C02800C */  lui        $v0, %hi(D_800C5A20)
/* 5F2EC 8005E6EC 90425A20 */  lbu        $v0, %lo(D_800C5A20)($v0)
/* 5F2F0 8005E6F0 2442FFFF */  addiu      $v0, $v0, -1
/* 5F2F4 8005E6F4 3C01800C */  lui        $at, %hi(D_800C5A20)
/* 5F2F8 8005E6F8 A0225A20 */  sb         $v0, %lo(D_800C5A20)($at)
/* 5F2FC 8005E6FC 304200FF */  andi       $v0, $v0, 0xff
/* 5F300 8005E700 14400100 */  bnez       $v0, .L8005EB04
/* 5F304 8005E704 24020001 */   addiu     $v0, $zero, 1
/* 5F308 8005E708 3C01800C */  lui        $at, %hi(D_800C5A21)
/* 5F30C 8005E70C 08017AC1 */  j          .L8005EB04
/* 5F310 8005E710 A0225A21 */   sb        $v0, %lo(D_800C5A21)($at)
.L8005E714:
/* 5F314 8005E714 3C01800E */  lui        $at, %hi(D_800D89B0)
/* 5F318 8005E718 0C0182AD */  jal        func_80060AB4
/* 5F31C 8005E71C A02089B0 */   sb        $zero, %lo(D_800D89B0)($at)
/* 5F320 8005E720 3042FFFF */  andi       $v0, $v0, 0xffff
/* 5F324 8005E724 24030001 */  addiu      $v1, $zero, 1
/* 5F328 8005E728 14430031 */  bne        $v0, $v1, .L8005E7F0
/* 5F32C 8005E72C 3C048012 */   lui       $a0, 0x8012
/* 5F330 8005E730 0C018066 */  jal        func_80060198
/* 5F334 8005E734 00000000 */   nop
/* 5F338 8005E738 0C0181CF */  jal        func_8006073C
/* 5F33C 8005E73C 00000000 */   nop
/* 5F340 8005E740 3C02800C */  lui        $v0, %hi(D_800C5A21)
/* 5F344 8005E744 90425A21 */  lbu        $v0, %lo(D_800C5A21)($v0)
/* 5F348 8005E748 14400005 */  bnez       $v0, .L8005E760
/* 5F34C 8005E74C 24020001 */   addiu     $v0, $zero, 1
/* 5F350 8005E750 24020005 */  addiu      $v0, $zero, 5
/* 5F354 8005E754 3C01800C */  lui        $at, %hi(D_800C5A20)
/* 5F358 8005E758 08017AC1 */  j          .L8005EB04
/* 5F35C 8005E75C A0225A20 */   sb        $v0, %lo(D_800C5A20)($at)
.L8005E760:
/* 5F360 8005E760 3C03800C */  lui        $v1, %hi(D_800C5A21)
/* 5F364 8005E764 90635A21 */  lbu        $v1, %lo(D_800C5A21)($v1)
/* 5F368 8005E768 146200E6 */  bne        $v1, $v0, .L8005EB04
/* 5F36C 8005E76C 00000000 */   nop
/* 5F370 8005E770 0C002C66 */  jal        func_8000B198
/* 5F374 8005E774 00000000 */   nop
/* 5F378 8005E778 144000E2 */  bnez       $v0, .L8005EB04
/* 5F37C 8005E77C 24020001 */   addiu     $v0, $zero, 1
/* 5F380 8005E780 3C01800E */  lui        $at, %hi(D_800D89B0)
/* 5F384 8005E784 A02289B0 */  sb         $v0, %lo(D_800D89B0)($at)
/* 5F388 8005E788 3C01800C */  lui        $at, %hi(D_800C59A2)
/* 5F38C 8005E78C 08017AC1 */  j          .L8005EB04
/* 5F390 8005E790 A02259A2 */   sb        $v0, %lo(D_800C59A2)($at)
.L8005E794:
/* 5F394 8005E794 3C02800E */  lui        $v0, %hi(D_800D89B0)
/* 5F398 8005E798 904289B0 */  lbu        $v0, %lo(D_800D89B0)($v0)
/* 5F39C 8005E79C 2442FFFF */  addiu      $v0, $v0, -1
/* 5F3A0 8005E7A0 3C01800E */  lui        $at, %hi(D_800D89B0)
/* 5F3A4 8005E7A4 A02289B0 */  sb         $v0, %lo(D_800D89B0)($at)
/* 5F3A8 8005E7A8 304200FF */  andi       $v0, $v0, 0xff
/* 5F3AC 8005E7AC 144000D5 */  bnez       $v0, .L8005EB04
/* 5F3B0 8005E7B0 00000000 */   nop
/* 5F3B4 8005E7B4 0C0182BC */  jal        func_80060AF0
/* 5F3B8 8005E7B8 00000000 */   nop
/* 5F3BC 8005E7BC 3C02800C */  lui        $v0, %hi(D_800C599A)
/* 5F3C0 8005E7C0 9442599A */  lhu        $v0, %lo(D_800C599A)($v0)
/* 5F3C4 8005E7C4 3C01800C */  lui        $at, %hi(D_800C599C)
/* 5F3C8 8005E7C8 A422599C */  sh         $v0, %lo(D_800C599C)($at)
/* 5F3CC 8005E7CC 3C02800C */  lui        $v0, %hi(D_800C599E)
/* 5F3D0 8005E7D0 9442599E */  lhu        $v0, %lo(D_800C599E)($v0)
/* 5F3D4 8005E7D4 3C01800C */  lui        $at, %hi(D_800C59A0)
/* 5F3D8 8005E7D8 A42259A0 */  sh         $v0, %lo(D_800C59A0)($at)
/* 5F3DC 8005E7DC 3C01800C */  lui        $at, %hi(D_800C59A2)
/* 5F3E0 8005E7E0 A02059A2 */  sb         $zero, %lo(D_800C59A2)($at)
/* 5F3E4 8005E7E4 3C01800C */  lui        $at, %hi(D_800C5A21)
/* 5F3E8 8005E7E8 A0205A21 */  sb         $zero, %lo(D_800C5A21)($at)
/* 5F3EC 8005E7EC 3C048012 */  lui        $a0, 0x8012
.L8005E7F0:
/* 5F3F0 8005E7F0 0C00EDD4 */  jal        func_8003B750
/* 5F3F4 8005E7F4 3C050002 */   lui       $a1, 2
/* 5F3F8 8005E7F8 00008021 */  addu       $s0, $zero, $zero
/* 5F3FC 8005E7FC 00102400 */  sll        $a0, $s0, 0x10
.L8005E800:
/* 5F400 8005E800 0C01B343 */  jal        func_8006CD0C
/* 5F404 8005E804 00042403 */   sra       $a0, $a0, 0x10
/* 5F408 8005E808 26100001 */  addiu      $s0, $s0, 1
/* 5F40C 8005E80C 2A020004 */  slti       $v0, $s0, 4
/* 5F410 8005E810 5440FFFB */  bnel       $v0, $zero, .L8005E800
/* 5F414 8005E814 00102400 */   sll       $a0, $s0, 0x10
/* 5F418 8005E818 3C03800F */  lui        $v1, %hi(D_800F09F4)
/* 5F41C 8005E81C 8C6309F4 */  lw         $v1, %lo(D_800F09F4)($v1)
/* 5F420 8005E820 24020083 */  addiu      $v0, $zero, 0x83
/* 5F424 8005E824 10620005 */  beq        $v1, $v0, .L8005E83C
/* 5F428 8005E828 00000000 */   nop
/* 5F42C 8005E82C 3C02800F */  lui        $v0, %hi(D_800F09F6)
/* 5F430 8005E830 944209F6 */  lhu        $v0, %lo(D_800F09F6)($v0)
/* 5F434 8005E834 3C01800C */  lui        $at, %hi(D_800C596C)
/* 5F438 8005E838 A422596C */  sh         $v0, %lo(D_800C596C)($at)
.L8005E83C:
/* 5F43C 8005E83C 3C01800F */  lui        $at, %hi(D_800F64F2)
/* 5F440 8005E840 0C00621C */  jal        func_80018870
/* 5F444 8005E844 A02064F2 */   sb        $zero, %lo(D_800F64F2)($at)
/* 5F448 8005E848 3C01800C */  lui        $at, %hi(D_800C5982)
/* 5F44C 8005E84C A0205982 */  sb         $zero, %lo(D_800C5982)($at)
/* 5F450 8005E850 3C04800F */  lui        $a0, %hi(D_800F09F4)
/* 5F454 8005E854 0C005D70 */  jal        func_800175C0
/* 5F458 8005E858 8C8409F4 */   lw        $a0, %lo(D_800F09F4)($a0)
/* 5F45C 8005E85C 0C008C10 */  jal        func_80023040
/* 5F460 8005E860 00000000 */   nop
/* 5F464 8005E864 3C013F80 */  lui        $at, 0x3f80
/* 5F468 8005E868 44810000 */  mtc1       $at, $f0
/* 5F46C 8005E86C 3C01800F */  lui        $at, %hi(D_800F524C)
/* 5F470 8005E870 E420524C */  swc1       $f0, %lo(D_800F524C)($at)
/* 5F474 8005E874 3C01800F */  lui        $at, %hi(D_800F5028)
/* 5F478 8005E878 E4205028 */  swc1       $f0, %lo(D_800F5028)($at)
/* 5F47C 8005E87C 0C008D12 */  jal        func_80023448
/* 5F480 8005E880 24040003 */   addiu     $a0, $zero, 3
/* 5F484 8005E884 00002021 */  addu       $a0, $zero, $zero
/* 5F488 8005E888 240500FF */  addiu      $a1, $zero, 0xff
/* 5F48C 8005E88C 240600FF */  addiu      $a2, $zero, 0xff
/* 5F490 8005E890 0C008D2E */  jal        func_800234B8
/* 5F494 8005E894 240700FF */   addiu     $a3, $zero, 0xff
/* 5F498 8005E898 24040001 */  addiu      $a0, $zero, 1
/* 5F49C 8005E89C 24050040 */  addiu      $a1, $zero, 0x40
/* 5F4A0 8005E8A0 24060040 */  addiu      $a2, $zero, 0x40
/* 5F4A4 8005E8A4 0C008D2E */  jal        func_800234B8
/* 5F4A8 8005E8A8 24070060 */   addiu     $a3, $zero, 0x60
/* 5F4AC 8005E8AC 24040001 */  addiu      $a0, $zero, 1
/* 5F4B0 8005E8B0 3C05C2C8 */  lui        $a1, 0xc2c8
/* 5F4B4 8005E8B4 3C0642C8 */  lui        $a2, 0x42c8
/* 5F4B8 8005E8B8 0C008D41 */  jal        func_80023504
/* 5F4BC 8005E8BC 00C03821 */   addu      $a3, $a2, $zero
/* 5F4C0 8005E8C0 24040002 */  addiu      $a0, $zero, 2
/* 5F4C4 8005E8C4 24050020 */  addiu      $a1, $zero, 0x20
/* 5F4C8 8005E8C8 24060020 */  addiu      $a2, $zero, 0x20
/* 5F4CC 8005E8CC 0C008D2E */  jal        func_800234B8
/* 5F4D0 8005E8D0 24070020 */   addiu     $a3, $zero, 0x20
/* 5F4D4 8005E8D4 24040002 */  addiu      $a0, $zero, 2
/* 5F4D8 8005E8D8 3C0542C8 */  lui        $a1, 0x42c8
/* 5F4DC 8005E8DC 00A03021 */  addu       $a2, $a1, $zero
/* 5F4E0 8005E8E0 0C008D41 */  jal        func_80023504
/* 5F4E4 8005E8E4 00A03821 */   addu      $a3, $a1, $zero
/* 5F4E8 8005E8E8 24040003 */  addiu      $a0, $zero, 3
/* 5F4EC 8005E8EC 00002821 */  addu       $a1, $zero, $zero
/* 5F4F0 8005E8F0 00003021 */  addu       $a2, $zero, $zero
/* 5F4F4 8005E8F4 0C008D2E */  jal        func_800234B8
/* 5F4F8 8005E8F8 00003821 */   addu      $a3, $zero, $zero
/* 5F4FC 8005E8FC 24040003 */  addiu      $a0, $zero, 3
/* 5F500 8005E900 3C0542C8 */  lui        $a1, 0x42c8
/* 5F504 8005E904 00A03021 */  addu       $a2, $a1, $zero
/* 5F508 8005E908 0C008D41 */  jal        func_80023504
/* 5F50C 8005E90C 00A03821 */   addu      $a3, $a1, $zero
/* 5F510 8005E910 00002021 */  addu       $a0, $zero, $zero
/* 5F514 8005E914 00002821 */  addu       $a1, $zero, $zero
/* 5F518 8005E918 0C00A243 */  jal        func_8002890C
/* 5F51C 8005E91C 00003021 */   addu      $a2, $zero, $zero
/* 5F520 8005E920 0C0095E3 */  jal        func_8002578C
/* 5F524 8005E924 24040001 */   addiu     $a0, $zero, 1
/* 5F528 8005E928 0C00A2F8 */  jal        func_80028BE0
/* 5F52C 8005E92C 24040001 */   addiu     $a0, $zero, 1
/* 5F530 8005E930 0C0181CF */  jal        func_8006073C
/* 5F534 8005E934 00000000 */   nop
/* 5F538 8005E938 3C03800C */  lui        $v1, %hi(D_800C59A4)
/* 5F53C 8005E93C 906359A4 */  lbu        $v1, %lo(D_800C59A4)($v1)
/* 5F540 8005E940 24020001 */  addiu      $v0, $zero, 1
/* 5F544 8005E944 14620005 */  bne        $v1, $v0, .L8005E95C
/* 5F548 8005E948 00000000 */   nop
/* 5F54C 8005E94C 0C01808D */  jal        func_80060234
/* 5F550 8005E950 2404007F */   addiu     $a0, $zero, 0x7f
/* 5F554 8005E954 0C0180FC */  jal        func_800603F0
/* 5F558 8005E958 2404007F */   addiu     $a0, $zero, 0x7f
.L8005E95C:
/* 5F55C 8005E95C 0C0181EA */  jal        func_800607A8
/* 5F560 8005E960 24040040 */   addiu     $a0, $zero, 0x40
/* 5F564 8005E964 3C04800C */  lui        $a0, %hi(D_800C59A3)
/* 5F568 8005E968 808459A3 */  lb         $a0, %lo(D_800C59A3)($a0)
/* 5F56C 8005E96C 0C004A86 */  jal        func_80012A18
/* 5F570 8005E970 00008021 */   addu      $s0, $zero, $zero
/* 5F574 8005E974 3C01800C */  lui        $at, %hi(D_800C59A4)
/* 5F578 8005E978 0C03D978 */  jal        func_800F65E0
/* 5F57C 8005E97C A02059A4 */   sb        $zero, %lo(D_800C59A4)($at)
/* 5F580 8005E980 3C11800F */  lui        $s1, %hi(D_800F5460)
/* 5F584 8005E984 26315460 */  addiu      $s1, $s1, %lo(D_800F5460)
/* 5F588 8005E988 00102400 */  sll        $a0, $s0, 0x10
.L8005E98C:
/* 5F58C 8005E98C 0C00507F */  jal        func_800141FC
/* 5F590 8005E990 00042403 */   sra       $a0, $a0, 0x10
/* 5F594 8005E994 10400003 */  beqz       $v0, .L8005E9A4
/* 5F598 8005E998 00101040 */   sll       $v0, $s0, 1
/* 5F59C 8005E99C 00511021 */  addu       $v0, $v0, $s1
/* 5F5A0 8005E9A0 A4400000 */  sh         $zero, ($v0)
.L8005E9A4:
/* 5F5A4 8005E9A4 26100001 */  addiu      $s0, $s0, 1
/* 5F5A8 8005E9A8 2A020004 */  slti       $v0, $s0, 4
/* 5F5AC 8005E9AC 5440FFF7 */  bnel       $v0, $zero, .L8005E98C
/* 5F5B0 8005E9B0 00102400 */   sll       $a0, $s0, 0x10
/* 5F5B4 8005E9B4 3C02800C */  lui        $v0, %hi(D_800C5982)
/* 5F5B8 8005E9B8 90425982 */  lbu        $v0, %lo(D_800C5982)($v0)
/* 5F5BC 8005E9BC 1040000C */  beqz       $v0, .L8005E9F0
/* 5F5C0 8005E9C0 00002021 */   addu      $a0, $zero, $zero
/* 5F5C4 8005E9C4 0C0178EA */  jal        func_8005E3A8
/* 5F5C8 8005E9C8 00000000 */   nop
/* 5F5CC 8005E9CC 3C01800C */  lui        $at, %hi(D_800C5978)
/* 5F5D0 8005E9D0 08017AC1 */  j          .L8005EB04
/* 5F5D4 8005E9D4 A0205978 */   sb        $zero, %lo(D_800C5978)($at)
.L8005E9D8:
/* 5F5D8 8005E9D8 3C02800C */  lui        $v0, %hi(D_800C5978)
/* 5F5DC 8005E9DC 90425978 */  lbu        $v0, %lo(D_800C5978)($v0)
/* 5F5E0 8005E9E0 2442FFFF */  addiu      $v0, $v0, -1
/* 5F5E4 8005E9E4 3C01800C */  lui        $at, %hi(D_800C5978)
/* 5F5E8 8005E9E8 08017AC1 */  j          .L8005EB04
/* 5F5EC 8005E9EC A0225978 */   sb        $v0, %lo(D_800C5978)($at)
.L8005E9F0:
/* 5F5F0 8005E9F0 00002821 */  addu       $a1, $zero, $zero
/* 5F5F4 8005E9F4 0C01848A */  jal        func_80061228
/* 5F5F8 8005E9F8 240600FF */   addiu     $a2, $zero, 0xff
/* 5F5FC 8005E9FC 00409021 */  addu       $s2, $v0, $zero
/* 5F600 8005EA00 3C02800F */  lui        $v0, %hi(D_800ED434)
/* 5F604 8005EA04 9442D434 */  lhu        $v0, %lo(D_800ED434)($v0)
/* 5F608 8005EA08 00021400 */  sll        $v0, $v0, 0x10
/* 5F60C 8005EA0C 00402021 */  addu       $a0, $v0, $zero
/* 5F610 8005EA10 00021403 */  sra        $v0, $v0, 0x10
/* 5F614 8005EA14 2403FFFF */  addiu      $v1, $zero, -1
/* 5F618 8005EA18 50430032 */  beql       $v0, $v1, .L8005EAE4
/* 5F61C 8005EA1C 00122400 */   sll       $a0, $s2, 0x10
/* 5F620 8005EA20 2411FFFF */  addiu      $s1, $zero, -1
/* 5F624 8005EA24 00041C03 */  sra        $v1, $a0, 0x10
.L8005EA28:
/* 5F628 8005EA28 00031080 */  sll        $v0, $v1, 2
/* 5F62C 8005EA2C 00431021 */  addu       $v0, $v0, $v1
/* 5F630 8005EA30 00021080 */  sll        $v0, $v0, 2
/* 5F634 8005EA34 00431021 */  addu       $v0, $v0, $v1
/* 5F638 8005EA38 00021080 */  sll        $v0, $v0, 2
/* 5F63C 8005EA3C 3C03800C */  lui        $v1, %hi(D_800C5984)
/* 5F640 8005EA40 8C635984 */  lw         $v1, %lo(D_800C5984)($v1)
/* 5F644 8005EA44 00438021 */  addu       $s0, $v0, $v1
/* 5F648 8005EA48 96030000 */  lhu        $v1, ($s0)
/* 5F64C 8005EA4C 30620003 */  andi       $v0, $v1, 3
/* 5F650 8005EA50 1440001E */  bnez       $v0, .L8005EACC
/* 5F654 8005EA54 00000000 */   nop
/* 5F658 8005EA58 8E050014 */  lw         $a1, 0x14($s0)
/* 5F65C 8005EA5C 10A00005 */  beqz       $a1, .L8005EA74
/* 5F660 8005EA60 30620058 */   andi      $v0, $v1, 0x58
/* 5F664 8005EA64 14400003 */  bnez       $v0, .L8005EA74
/* 5F668 8005EA68 00000000 */   nop
/* 5F66C 8005EA6C 00A0F809 */  jalr       $a1
/* 5F670 8005EA70 02002021 */   addu      $a0, $s0, $zero
.L8005EA74:
/* 5F674 8005EA74 8E040040 */  lw         $a0, 0x40($s0)
/* 5F678 8005EA78 10800014 */  beqz       $a0, .L8005EACC
/* 5F67C 8005EA7C 00000000 */   nop
/* 5F680 8005EA80 84840000 */  lh         $a0, ($a0)
/* 5F684 8005EA84 10910011 */  beq        $a0, $s1, .L8005EACC
/* 5F688 8005EA88 00000000 */   nop
/* 5F68C 8005EA8C 8E050018 */  lw         $a1, 0x18($s0)
/* 5F690 8005EA90 8E06001C */  lw         $a2, 0x1c($s0)
/* 5F694 8005EA94 0C0095E6 */  jal        func_80025798
/* 5F698 8005EA98 8E070020 */   lw        $a3, 0x20($s0)
/* 5F69C 8005EA9C 8E020040 */  lw         $v0, 0x40($s0)
/* 5F6A0 8005EAA0 84440000 */  lh         $a0, ($v0)
/* 5F6A4 8005EAA4 8E050024 */  lw         $a1, 0x24($s0)
/* 5F6A8 8005EAA8 8E060028 */  lw         $a2, 0x28($s0)
/* 5F6AC 8005EAAC 0C0095F9 */  jal        func_800257E4
/* 5F6B0 8005EAB0 8E07002C */   lw        $a3, 0x2c($s0)
/* 5F6B4 8005EAB4 8E020040 */  lw         $v0, 0x40($s0)
/* 5F6B8 8005EAB8 84440000 */  lh         $a0, ($v0)
/* 5F6BC 8005EABC 8E050030 */  lw         $a1, 0x30($s0)
/* 5F6C0 8005EAC0 8E060034 */  lw         $a2, 0x34($s0)
/* 5F6C4 8005EAC4 0C00960C */  jal        func_80025830
/* 5F6C8 8005EAC8 8E070038 */   lw        $a3, 0x38($s0)
.L8005EACC:
/* 5F6CC 8005EACC 96020006 */  lhu        $v0, 6($s0)
/* 5F6D0 8005EAD0 00022400 */  sll        $a0, $v0, 0x10
/* 5F6D4 8005EAD4 00041403 */  sra        $v0, $a0, 0x10
/* 5F6D8 8005EAD8 1451FFD3 */  bne        $v0, $s1, .L8005EA28
/* 5F6DC 8005EADC 00041C03 */   sra       $v1, $a0, 0x10
/* 5F6E0 8005EAE0 00122400 */  sll        $a0, $s2, 0x10
.L8005EAE4:
/* 5F6E4 8005EAE4 0C018499 */  jal        func_80061264
/* 5F6E8 8005EAE8 00042403 */   sra       $a0, $a0, 0x10
/* 5F6EC 8005EAEC 3C02800C */  lui        $v0, %hi(D_800C5982)
/* 5F6F0 8005EAF0 90425982 */  lbu        $v0, %lo(D_800C5982)($v0)
/* 5F6F4 8005EAF4 10400003 */  beqz       $v0, .L8005EB04
/* 5F6F8 8005EAF8 00000000 */   nop
/* 5F6FC 8005EAFC 0C0178EA */  jal        func_8005E3A8
/* 5F700 8005EB00 00000000 */   nop
.L8005EB04:
/* 5F704 8005EB04 8FBF0024 */  lw         $ra, 0x24($sp)
/* 5F708 8005EB08 8FB20020 */  lw         $s2, 0x20($sp)
/* 5F70C 8005EB0C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5F710 8005EB10 8FB00018 */  lw         $s0, 0x18($sp)
/* 5F714 8005EB14 03E00008 */  jr         $ra
/* 5F718 8005EB18 27BD0028 */   addiu     $sp, $sp, 0x28
