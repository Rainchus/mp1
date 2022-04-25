	.set noat
	.set noreorder

glabel func_8000F294
/* FE94 8000F294 27BDFFF8 */  addiu      $sp, $sp, -8
/* FE98 8000F298 00805021 */  addu       $t2, $a0, $zero
/* FE9C 8000F29C 3C02800D */  lui        $v0, %hi(D_800CEAF0)
/* FEA0 8000F2A0 8C42EAF0 */  lw         $v0, %lo(D_800CEAF0)($v0)
/* FEA4 8000F2A4 1040008C */  beqz       $v0, .L8000F4D8
/* FEA8 8000F2A8 00003021 */   addu      $a2, $zero, $zero
/* FEAC 8000F2AC 00041400 */  sll        $v0, $a0, 0x10
/* FEB0 8000F2B0 00022403 */  sra        $a0, $v0, 0x10
/* FEB4 8000F2B4 3C03800D */  lui        $v1, %hi(D_800CEA94)
/* FEB8 8000F2B8 8C63EA94 */  lw         $v1, %lo(D_800CEA94)($v1)
/* FEBC 8000F2BC 00041040 */  sll        $v0, $a0, 1
/* FEC0 8000F2C0 00441021 */  addu       $v0, $v0, $a0
/* FEC4 8000F2C4 00021080 */  sll        $v0, $v0, 2
/* FEC8 8000F2C8 00441023 */  subu       $v0, $v0, $a0
/* FECC 8000F2CC 00021080 */  sll        $v0, $v0, 2
/* FED0 8000F2D0 00431021 */  addu       $v0, $v0, $v1
/* FED4 8000F2D4 8C420008 */  lw         $v0, 8($v0)
/* FED8 8000F2D8 30420020 */  andi       $v0, $v0, 0x20
/* FEDC 8000F2DC 1440007E */  bnez       $v0, .L8000F4D8
/* FEE0 8000F2E0 00000000 */   nop
/* FEE4 8000F2E4 3C02800D */  lui        $v0, %hi(D_800CEAF4)
/* FEE8 8000F2E8 8042EAF4 */  lb         $v0, %lo(D_800CEAF4)($v0)
/* FEEC 8000F2EC 1840007A */  blez       $v0, .L8000F4D8
/* FEF0 8000F2F0 00000000 */   nop
/* FEF4 8000F2F4 3C02800D */  lui        $v0, %hi(D_800CEAF5)
/* FEF8 8000F2F8 8042EAF5 */  lb         $v0, %lo(D_800CEAF5)($v0)
/* FEFC 8000F2FC 28420002 */  slti       $v0, $v0, 2
/* FF00 8000F300 14400075 */  bnez       $v0, .L8000F4D8
/* FF04 8000F304 00000000 */   nop
/* FF08 8000F308 3C01800D */  lui        $at, %hi(D_800CEAE8)
/* FF0C 8000F30C C420EAE8 */  lwc1       $f0, %lo(D_800CEAE8)($at)
/* FF10 8000F310 44801000 */  mtc1       $zero, $f2
/* FF14 8000F314 00000000 */  nop
/* FF18 8000F318 46020032 */  c.eq.s     $f0, $f2
/* FF1C 8000F31C 00000000 */  nop
/* FF20 8000F320 4501006D */  bc1t       .L8000F4D8
/* FF24 8000F324 00000000 */   nop
/* FF28 8000F328 3C01800D */  lui        $at, %hi(D_800CEAEC)
/* FF2C 8000F32C C420EAEC */  lwc1       $f0, %lo(D_800CEAEC)($at)
/* FF30 8000F330 46020032 */  c.eq.s     $f0, $f2
/* FF34 8000F334 00000000 */  nop
/* FF38 8000F338 45010067 */  bc1t       .L8000F4D8
/* FF3C 8000F33C 00000000 */   nop
/* FF40 8000F340 14800006 */  bnez       $a0, .L8000F35C
/* FF44 8000F344 00000000 */   nop
/* FF48 8000F348 3C02800C */  lui        $v0, %hi(D_800C18DC)
/* FF4C 8000F34C 8C4218DC */  lw         $v0, %lo(D_800C18DC)($v0)
/* FF50 8000F350 28420002 */  slti       $v0, $v0, 2
/* FF54 8000F354 1040002F */  beqz       $v0, .L8000F414
/* FF58 8000F358 00051600 */   sll       $v0, $a1, 0x18
.L8000F35C:
/* FF5C 8000F35C 3C02800D */  lui        $v0, %hi(D_800CEAF0)
/* FF60 8000F360 8C42EAF0 */  lw         $v0, %lo(D_800CEAF0)($v0)
/* FF64 8000F364 18400015 */  blez       $v0, .L8000F3BC
/* FF68 8000F368 00001821 */   addu      $v1, $zero, $zero
/* FF6C 8000F36C 3C09800D */  lui        $t1, %hi(D_800CEAE4)
/* FF70 8000F370 8D29EAE4 */  lw         $t1, %lo(D_800CEAE4)($t1)
/* FF74 8000F374 000A1400 */  sll        $v0, $t2, 0x10
/* FF78 8000F378 00024403 */  sra        $t0, $v0, 0x10
/* FF7C 8000F37C 3C07800D */  lui        $a3, %hi(D_800CEAF0)
/* FF80 8000F380 8CE7EAF0 */  lw         $a3, %lo(D_800CEAF0)($a3)
/* FF84 8000F384 00031040 */  sll        $v0, $v1, 1
.L8000F388:
/* FF88 8000F388 00431021 */  addu       $v0, $v0, $v1
/* FF8C 8000F38C 00021080 */  sll        $v0, $v0, 2
/* FF90 8000F390 00492021 */  addu       $a0, $v0, $t1
/* FF94 8000F394 84820000 */  lh         $v0, ($a0)
/* FF98 8000F398 04420005 */  bltzl      $v0, .L8000F3B0
/* FF9C 8000F39C 24630001 */   addiu     $v1, $v1, 1
/* FFA0 8000F3A0 84820002 */  lh         $v0, 2($a0)
/* FFA4 8000F3A4 50480005 */  beql       $v0, $t0, .L8000F3BC
/* FFA8 8000F3A8 00603021 */   addu      $a2, $v1, $zero
/* FFAC 8000F3AC 24630001 */  addiu      $v1, $v1, 1
.L8000F3B0:
/* FFB0 8000F3B0 0067102A */  slt        $v0, $v1, $a3
/* FFB4 8000F3B4 1440FFF4 */  bnez       $v0, .L8000F388
/* FFB8 8000F3B8 00031040 */   sll       $v0, $v1, 1
.L8000F3BC:
/* FFBC 8000F3BC 00051600 */  sll        $v0, $a1, 0x18
/* FFC0 8000F3C0 1440000E */  bnez       $v0, .L8000F3FC
/* FFC4 8000F3C4 00000000 */   nop
/* FFC8 8000F3C8 3C02800D */  lui        $v0, %hi(D_800CEAF0)
/* FFCC 8000F3CC 8C42EAF0 */  lw         $v0, %lo(D_800CEAF0)($v0)
/* FFD0 8000F3D0 0062102A */  slt        $v0, $v1, $v0
/* FFD4 8000F3D4 10400040 */  beqz       $v0, .L8000F4D8
/* FFD8 8000F3D8 00061840 */   sll       $v1, $a2, 1
/* FFDC 8000F3DC 3C02800D */  lui        $v0, %hi(D_800CEAE4)
/* FFE0 8000F3E0 8C42EAE4 */  lw         $v0, %lo(D_800CEAE4)($v0)
/* FFE4 8000F3E4 00661821 */  addu       $v1, $v1, $a2
/* FFE8 8000F3E8 00031880 */  sll        $v1, $v1, 2
/* FFEC 8000F3EC 00621821 */  addu       $v1, $v1, $v0
/* FFF0 8000F3F0 2402FFFF */  addiu      $v0, $zero, -1
/* FFF4 8000F3F4 08003D36 */  j          .L8000F4D8
/* FFF8 8000F3F8 A4620000 */   sh        $v0, ($v1)
.L8000F3FC:
/* FFFC 8000F3FC 3C02800D */  lui        $v0, %hi(D_800CEAF0)
/* 10000 8000F400 8C42EAF0 */  lw         $v0, %lo(D_800CEAF0)($v0)
/* 10004 8000F404 10620005 */  beq        $v1, $v0, .L8000F41C
/* 10008 8000F408 00000000 */   nop
/* 1000C 8000F40C 08003D0E */  j          .L8000F438
/* 10010 8000F410 00000000 */   nop
.L8000F414:
/* 10014 8000F414 10400030 */  beqz       $v0, .L8000F4D8
/* 10018 8000F418 00000000 */   nop
.L8000F41C:
/* 1001C 8000F41C 3C02800D */  lui        $v0, %hi(D_800CEAF6)
/* 10020 8000F420 9042EAF6 */  lbu        $v0, %lo(D_800CEAF6)($v0)
/* 10024 8000F424 24430001 */  addiu      $v1, $v0, 1
/* 10028 8000F428 3C01800D */  lui        $at, %hi(D_800CEAF6)
/* 1002C 8000F42C A023EAF6 */  sb         $v1, %lo(D_800CEAF6)($at)
/* 10030 8000F430 00021600 */  sll        $v0, $v0, 0x18
/* 10034 8000F434 00023603 */  sra        $a2, $v0, 0x18
.L8000F438:
/* 10038 8000F438 3C02800D */  lui        $v0, %hi(D_800CEAF6)
/* 1003C 8000F43C 8042EAF6 */  lb         $v0, %lo(D_800CEAF6)($v0)
/* 10040 8000F440 3C03800D */  lui        $v1, %hi(D_800CEAF0)
/* 10044 8000F444 8C63EAF0 */  lw         $v1, %lo(D_800CEAF0)($v1)
/* 10048 8000F448 0043102A */  slt        $v0, $v0, $v1
/* 1004C 8000F44C 14400003 */  bnez       $v0, .L8000F45C
/* 10050 8000F450 000A1400 */   sll       $v0, $t2, 0x10
/* 10054 8000F454 3C01800D */  lui        $at, %hi(D_800CEAF6)
/* 10058 8000F458 A020EAF6 */  sb         $zero, %lo(D_800CEAF6)($at)
.L8000F45C:
/* 1005C 8000F45C 00021403 */  sra        $v0, $v0, 0x10
/* 10060 8000F460 00021840 */  sll        $v1, $v0, 1
/* 10064 8000F464 00621821 */  addu       $v1, $v1, $v0
/* 10068 8000F468 00031880 */  sll        $v1, $v1, 2
/* 1006C 8000F46C 00621823 */  subu       $v1, $v1, $v0
/* 10070 8000F470 00031880 */  sll        $v1, $v1, 2
/* 10074 8000F474 3C02800D */  lui        $v0, %hi(D_800CEA94)
/* 10078 8000F478 8C42EA94 */  lw         $v0, %lo(D_800CEA94)($v0)
/* 1007C 8000F47C 00621821 */  addu       $v1, $v1, $v0
/* 10080 8000F480 00061040 */  sll        $v0, $a2, 1
/* 10084 8000F484 00461021 */  addu       $v0, $v0, $a2
/* 10088 8000F488 00021080 */  sll        $v0, $v0, 2
/* 1008C 8000F48C 3C04800D */  lui        $a0, %hi(D_800CEAE4)
/* 10090 8000F490 8C84EAE4 */  lw         $a0, %lo(D_800CEAE4)($a0)
/* 10094 8000F494 00442021 */  addu       $a0, $v0, $a0
/* 10098 8000F498 94620014 */  lhu        $v0, 0x14($v1)
/* 1009C 8000F49C A4820000 */  sh         $v0, ($a0)
/* 100A0 8000F4A0 A48A0002 */  sh         $t2, 2($a0)
/* 100A4 8000F4A4 90620022 */  lbu        $v0, 0x22($v1)
/* 100A8 8000F4A8 A0820004 */  sb         $v0, 4($a0)
/* 100AC 8000F4AC 90620023 */  lbu        $v0, 0x23($v1)
/* 100B0 8000F4B0 A0820005 */  sb         $v0, 5($a0)
/* 100B4 8000F4B4 90620025 */  lbu        $v0, 0x25($v1)
/* 100B8 8000F4B8 A0820006 */  sb         $v0, 6($a0)
/* 100BC 8000F4BC A0850007 */  sb         $a1, 7($a0)
/* 100C0 8000F4C0 3C02800D */  lui        $v0, %hi(D_800CEAF4)
/* 100C4 8000F4C4 9042EAF4 */  lbu        $v0, %lo(D_800CEAF4)($v0)
/* 100C8 8000F4C8 A0820008 */  sb         $v0, 8($a0)
/* 100CC 8000F4CC 3C02800D */  lui        $v0, %hi(D_800CEAF5)
/* 100D0 8000F4D0 9042EAF5 */  lbu        $v0, %lo(D_800CEAF5)($v0)
/* 100D4 8000F4D4 A0820009 */  sb         $v0, 9($a0)
.L8000F4D8:
/* 100D8 8000F4D8 03E00008 */  jr         $ra
/* 100DC 8000F4DC 27BD0008 */   addiu     $sp, $sp, 8
