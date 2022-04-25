	.set noat
	.set noreorder

glabel func_8000B3E8
/* BFE8 8000B3E8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* BFEC 8000B3EC AFBF0054 */  sw         $ra, 0x54($sp)
/* BFF0 8000B3F0 AFB40050 */  sw         $s4, 0x50($sp)
/* BFF4 8000B3F4 AFB3004C */  sw         $s3, 0x4c($sp)
/* BFF8 8000B3F8 AFB20048 */  sw         $s2, 0x48($sp)
/* BFFC 8000B3FC AFB10044 */  sw         $s1, 0x44($sp)
/* C000 8000B400 AFB00040 */  sw         $s0, 0x40($sp)
/* C004 8000B404 0000A021 */  addu       $s4, $zero, $zero
/* C008 8000B408 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C00C 8000B40C AC20DAF0 */  sw         $zero, %lo(D_800CDAF0)($at)
/* C010 8000B410 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* C014 8000B414 AC20DAEC */  sw         $zero, %lo(D_800CDAEC)($at)
/* C018 8000B418 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* C01C 8000B41C AC20DAF4 */  sw         $zero, %lo(D_800CDAF4)($at)
/* C020 8000B420 24027FFF */  addiu      $v0, $zero, 0x7fff
/* C024 8000B424 3C01800D */  lui        $at, %hi(D_800CDB02)
/* C028 8000B428 A422DB02 */  sh         $v0, %lo(D_800CDB02)($at)
/* C02C 8000B42C 0C002BE8 */  jal        func_8000AFA0
/* C030 8000B430 2404007C */   addiu     $a0, $zero, 0x7c
/* C034 8000B434 3C01800D */  lui        $at, %hi(D_800CDAD4)
/* C038 8000B438 AC22DAD4 */  sw         $v0, %lo(D_800CDAD4)($at)
/* C03C 8000B43C 104000E3 */  beqz       $v0, .L8000B7CC
/* C040 8000B440 24020001 */   addiu     $v0, $zero, 1
/* C044 8000B444 3C10800C */  lui        $s0, %hi(D_800C18D4)
/* C048 8000B448 261018D4 */  addiu      $s0, $s0, %lo(D_800C18D4)
/* C04C 8000B44C 8E020000 */  lw         $v0, ($s0)
/* C050 8000B450 AFA20010 */  sw         $v0, 0x10($sp)
/* C054 8000B454 8E020004 */  lw         $v0, 4($s0)
/* C058 8000B458 AFA20014 */  sw         $v0, 0x14($sp)
/* C05C 8000B45C 24020010 */  addiu      $v0, $zero, 0x10
/* C060 8000B460 A3A20018 */  sb         $v0, 0x18($sp)
/* C064 8000B464 A3A00019 */  sb         $zero, 0x19($sp)
/* C068 8000B468 3C02800D */  lui        $v0, %hi(D_800CDAA8)
/* C06C 8000B46C 2442DAA8 */  addiu      $v0, $v0, %lo(D_800CDAA8)
/* C070 8000B470 AFA2001C */  sw         $v0, 0x1c($sp)
/* C074 8000B474 3C028001 */  lui        $v0, %hi(func_8000C808)
/* C078 8000B478 2442C808 */  addiu      $v0, $v0, %lo(func_8000C808)
/* C07C 8000B47C AFA20020 */  sw         $v0, 0x20($sp)
/* C080 8000B480 3C028001 */  lui        $v0, %hi(func_8000CCC0)
/* C084 8000B484 2442CCC0 */  addiu      $v0, $v0, %lo(func_8000CCC0)
/* C088 8000B488 AFA20024 */  sw         $v0, 0x24($sp)
/* C08C 8000B48C 3C028001 */  lui        $v0, %hi(func_8000D600)
/* C090 8000B490 2442D600 */  addiu      $v0, $v0, %lo(func_8000D600)
/* C094 8000B494 AFA20028 */  sw         $v0, 0x28($sp)
/* C098 8000B498 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* C09C 8000B49C 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* C0A0 8000B4A0 0C023154 */  jal        func_8008C550
/* C0A4 8000B4A4 27A50010 */   addiu     $a1, $sp, 0x10
/* C0A8 8000B4A8 8E02FFA0 */  lw         $v0, -0x60($s0)
/* C0AC 8000B4AC 104000C7 */  beqz       $v0, .L8000B7CC
/* C0B0 8000B4B0 00001021 */   addu      $v0, $zero, $zero
/* C0B4 8000B4B4 0C002DFB */  jal        func_8000B7EC
/* C0B8 8000B4B8 24040004 */   addiu     $a0, $zero, 4
/* C0BC 8000B4BC 144000C3 */  bnez       $v0, .L8000B7CC
/* C0C0 8000B4C0 24020001 */   addiu     $v0, $zero, 1
/* C0C4 8000B4C4 3C02800D */  lui        $v0, %hi(D_800CDAE0)
/* C0C8 8000B4C8 8C42DAE0 */  lw         $v0, %lo(D_800CDAE0)($v0)
/* C0CC 8000B4CC 94530002 */  lhu        $s3, 2($v0)
/* C0D0 8000B4D0 84430000 */  lh         $v1, ($v0)
/* C0D4 8000B4D4 24025331 */  addiu      $v0, $zero, 0x5331
/* C0D8 8000B4D8 10620005 */  beq        $v1, $v0, .L8000B4F0
/* C0DC 8000B4DC 24025332 */   addiu     $v0, $zero, 0x5332
/* C0E0 8000B4E0 10620028 */  beq        $v1, $v0, .L8000B584
/* C0E4 8000B4E4 00131400 */   sll       $v0, $s3, 0x10
/* C0E8 8000B4E8 08002DA9 */  j          .L8000B6A4
/* C0EC 8000B4EC 00000000 */   nop
.L8000B4F0:
/* C0F0 8000B4F0 00132400 */  sll        $a0, $s3, 0x10
/* C0F4 8000B4F4 00042343 */  sra        $a0, $a0, 0xd
/* C0F8 8000B4F8 0C002DFB */  jal        func_8000B7EC
/* C0FC 8000B4FC 24840004 */   addiu     $a0, $a0, 4
/* C100 8000B500 144000B2 */  bnez       $v0, .L8000B7CC
/* C104 8000B504 24020001 */   addiu     $v0, $zero, 1
/* C108 8000B508 3C04800D */  lui        $a0, %hi(D_800CDAE0)
/* C10C 8000B50C 8C84DAE0 */  lw         $a0, %lo(D_800CDAE0)($a0)
/* C110 8000B510 3C05800C */  lui        $a1, %hi(D_800C1874)
/* C114 8000B514 8CA51874 */  lw         $a1, %lo(D_800C1874)($a1)
/* C118 8000B518 0C0224A8 */  jal        func_800892A0
/* C11C 8000B51C 00008821 */   addu      $s1, $zero, $zero
/* C120 8000B520 00131400 */  sll        $v0, $s3, 0x10
/* C124 8000B524 1840000F */  blez       $v0, .L8000B564
/* C128 8000B528 00002821 */   addu      $a1, $zero, $zero
/* C12C 8000B52C 3C06800D */  lui        $a2, %hi(D_800CDAE0)
/* C130 8000B530 8CC6DAE0 */  lw         $a2, %lo(D_800CDAE0)($a2)
/* C134 8000B534 00131400 */  sll        $v0, $s3, 0x10
/* C138 8000B538 00022403 */  sra        $a0, $v0, 0x10
/* C13C 8000B53C 000510C0 */  sll        $v0, $a1, 3
.L8000B540:
/* C140 8000B540 00C21021 */  addu       $v0, $a2, $v0
/* C144 8000B544 8C430008 */  lw         $v1, 8($v0)
/* C148 8000B548 0223102A */  slt        $v0, $s1, $v1
/* C14C 8000B54C 54400001 */  bnel       $v0, $zero, .L8000B554
/* C150 8000B550 00608821 */   addu      $s1, $v1, $zero
.L8000B554:
/* C154 8000B554 24A50001 */  addiu      $a1, $a1, 1
/* C158 8000B558 00A4102A */  slt        $v0, $a1, $a0
/* C15C 8000B55C 1440FFF8 */  bnez       $v0, .L8000B540
/* C160 8000B560 000510C0 */   sll       $v0, $a1, 3
.L8000B564:
/* C164 8000B564 3C02800C */  lui        $v0, %hi(D_800C1880)
/* C168 8000B568 24421880 */  addiu      $v0, $v0, %lo(D_800C1880)
/* C16C 8000B56C 8C440000 */  lw         $a0, ($v0)
/* C170 8000B570 8C43FFFC */  lw         $v1, -4($v0)
/* C174 8000B574 00839023 */  subu       $s2, $a0, $v1
/* C178 8000B578 8C540004 */  lw         $s4, 4($v0)
/* C17C 8000B57C 08002DB7 */  j          .L8000B6DC
/* C180 8000B580 00609821 */   addu      $s3, $v1, $zero
.L8000B584:
/* C184 8000B584 00028403 */  sra        $s0, $v0, 0x10
/* C188 8000B588 00102040 */  sll        $a0, $s0, 1
/* C18C 8000B58C 00902021 */  addu       $a0, $a0, $s0
/* C190 8000B590 000420C0 */  sll        $a0, $a0, 3
/* C194 8000B594 0C002DFB */  jal        func_8000B7EC
/* C198 8000B598 24840004 */   addiu     $a0, $a0, 4
/* C19C 8000B59C 1440008B */  bnez       $v0, .L8000B7CC
/* C1A0 8000B5A0 24020001 */   addiu     $v0, $zero, 1
/* C1A4 8000B5A4 00131400 */  sll        $v0, $s3, 0x10
/* C1A8 8000B5A8 00021403 */  sra        $v0, $v0, 0x10
/* C1AC 8000B5AC 000218C0 */  sll        $v1, $v0, 3
/* C1B0 8000B5B0 24630004 */  addiu      $v1, $v1, 4
/* C1B4 8000B5B4 3C04800D */  lui        $a0, %hi(D_800CDAE0)
/* C1B8 8000B5B8 8C84DAE0 */  lw         $a0, %lo(D_800CDAE0)($a0)
/* C1BC 8000B5BC 00641821 */  addu       $v1, $v1, $a0
/* C1C0 8000B5C0 3C01800D */  lui        $at, %hi(D_800CDAE4)
/* C1C4 8000B5C4 AC23DAE4 */  sw         $v1, %lo(D_800CDAE4)($at)
/* C1C8 8000B5C8 00008821 */  addu       $s1, $zero, $zero
/* C1CC 8000B5CC 00009021 */  addu       $s2, $zero, $zero
/* C1D0 8000B5D0 1840002B */  blez       $v0, .L8000B680
/* C1D4 8000B5D4 00002821 */   addu      $a1, $zero, $zero
/* C1D8 8000B5D8 3C06800D */  lui        $a2, %hi(D_800CDAE0)
/* C1DC 8000B5DC 8CC6DAE0 */  lw         $a2, %lo(D_800CDAE0)($a2)
/* C1E0 8000B5E0 3C07800C */  lui        $a3, %hi(D_800C1874)
/* C1E4 8000B5E4 24E71874 */  addiu      $a3, $a3, %lo(D_800C1874)
/* C1E8 8000B5E8 3C09800D */  lui        $t1, %hi(D_800CDAE4)
/* C1EC 8000B5EC 8D29DAE4 */  lw         $t1, %lo(D_800CDAE4)($t1)
/* C1F0 8000B5F0 00131400 */  sll        $v0, $s3, 0x10
/* C1F4 8000B5F4 00024403 */  sra        $t0, $v0, 0x10
/* C1F8 8000B5F8 000510C0 */  sll        $v0, $a1, 3
.L8000B5FC:
/* C1FC 8000B5FC 00C22021 */  addu       $a0, $a2, $v0
/* C200 8000B600 8C820008 */  lw         $v0, 8($a0)
/* C204 8000B604 0442001B */  bltzl      $v0, .L8000B674
/* C208 8000B608 24A50001 */   addiu     $a1, $a1, 1
/* C20C 8000B60C 8C820004 */  lw         $v0, 4($a0)
/* C210 8000B610 8CE30000 */  lw         $v1, ($a3)
/* C214 8000B614 00431021 */  addu       $v0, $v0, $v1
/* C218 8000B618 AC820004 */  sw         $v0, 4($a0)
/* C21C 8000B61C 00052100 */  sll        $a0, $a1, 4
/* C220 8000B620 00892021 */  addu       $a0, $a0, $t1
/* C224 8000B624 8C820004 */  lw         $v0, 4($a0)
/* C228 8000B628 8CE30000 */  lw         $v1, ($a3)
/* C22C 8000B62C 00431021 */  addu       $v0, $v0, $v1
/* C230 8000B630 AC820004 */  sw         $v0, 4($a0)
/* C234 8000B634 8C82000C */  lw         $v0, 0xc($a0)
/* C238 8000B638 8CE30000 */  lw         $v1, ($a3)
/* C23C 8000B63C 00431021 */  addu       $v0, $v0, $v1
/* C240 8000B640 AC82000C */  sw         $v0, 0xc($a0)
/* C244 8000B644 8C830008 */  lw         $v1, 8($a0)
/* C248 8000B648 0243102A */  slt        $v0, $s2, $v1
/* C24C 8000B64C 10400002 */  beqz       $v0, .L8000B658
/* C250 8000B650 00A0A021 */   addu      $s4, $a1, $zero
/* C254 8000B654 00609021 */  addu       $s2, $v1, $zero
.L8000B658:
/* C258 8000B658 000510C0 */  sll        $v0, $a1, 3
/* C25C 8000B65C 00C21021 */  addu       $v0, $a2, $v0
/* C260 8000B660 8C430008 */  lw         $v1, 8($v0)
/* C264 8000B664 0223102A */  slt        $v0, $s1, $v1
/* C268 8000B668 54400001 */  bnel       $v0, $zero, .L8000B670
/* C26C 8000B66C 00608821 */   addu      $s1, $v1, $zero
.L8000B670:
/* C270 8000B670 24A50001 */  addiu      $a1, $a1, 1
.L8000B674:
/* C274 8000B674 00A8102A */  slt        $v0, $a1, $t0
/* C278 8000B678 1440FFE0 */  bnez       $v0, .L8000B5FC
/* C27C 8000B67C 000510C0 */   sll       $v0, $a1, 3
.L8000B680:
/* C280 8000B680 3C03800D */  lui        $v1, %hi(D_800CDAE4)
/* C284 8000B684 8C63DAE4 */  lw         $v1, %lo(D_800CDAE4)($v1)
/* C288 8000B688 00141100 */  sll        $v0, $s4, 4
/* C28C 8000B68C 00431021 */  addu       $v0, $v0, $v1
/* C290 8000B690 8C530004 */  lw         $s3, 4($v0)
/* C294 8000B694 8C54000C */  lw         $s4, 0xc($v0)
/* C298 8000B698 8C500008 */  lw         $s0, 8($v0)
/* C29C 8000B69C 08002DB9 */  j          .L8000B6E4
/* C2A0 8000B6A0 2E420001 */   sltiu     $v0, $s2, 1
.L8000B6A4:
/* C2A4 8000B6A4 3C03800C */  lui        $v1, %hi(D_800C1878)
/* C2A8 8000B6A8 24631878 */  addiu      $v1, $v1, %lo(D_800C1878)
/* C2AC 8000B6AC 8C640000 */  lw         $a0, ($v1)
/* C2B0 8000B6B0 8C62FFFC */  lw         $v0, -4($v1)
/* C2B4 8000B6B4 00828823 */  subu       $s1, $a0, $v0
/* C2B8 8000B6B8 8C640008 */  lw         $a0, 8($v1)
/* C2BC 8000B6BC 8C620004 */  lw         $v0, 4($v1)
/* C2C0 8000B6C0 00829023 */  subu       $s2, $a0, $v0
/* C2C4 8000B6C4 3C04800D */  lui        $a0, %hi(D_800CDAE0)
/* C2C8 8000B6C8 8C84DAE0 */  lw         $a0, %lo(D_800CDAE0)($a0)
/* C2CC 8000B6CC 24020001 */  addiu      $v0, $zero, 1
/* C2D0 8000B6D0 A4820002 */  sh         $v0, 2($a0)
/* C2D4 8000B6D4 8C730004 */  lw         $s3, 4($v1)
/* C2D8 8000B6D8 8C74000C */  lw         $s4, 0xc($v1)
.L8000B6DC:
/* C2DC 8000B6DC 02408021 */  addu       $s0, $s2, $zero
/* C2E0 8000B6E0 2E420001 */  sltiu      $v0, $s2, 1
.L8000B6E4:
/* C2E4 8000B6E4 2E230001 */  sltiu      $v1, $s1, 1
/* C2E8 8000B6E8 00431025 */  or         $v0, $v0, $v1
/* C2EC 8000B6EC 14400037 */  bnez       $v0, .L8000B7CC
/* C2F0 8000B6F0 00001021 */   addu      $v0, $zero, $zero
/* C2F4 8000B6F4 0C002BE8 */  jal        func_8000AFA0
/* C2F8 8000B6F8 240400F8 */   addiu     $a0, $zero, 0xf8
/* C2FC 8000B6FC 3C01800D */  lui        $at, %hi(D_800CDADC)
/* C300 8000B700 AC22DADC */  sw         $v0, %lo(D_800CDADC)($at)
/* C304 8000B704 1040000D */  beqz       $v0, .L8000B73C
/* C308 8000B708 32240001 */   andi      $a0, $s1, 1
/* C30C 8000B70C 0C002BE8 */  jal        func_8000AFA0
/* C310 8000B710 02242021 */   addu      $a0, $s1, $a0
/* C314 8000B714 3C01800D */  lui        $at, %hi(D_800CDAD8)
/* C318 8000B718 AC22DAD8 */  sw         $v0, %lo(D_800CDAD8)($at)
/* C31C 8000B71C 10400007 */  beqz       $v0, .L8000B73C
/* C320 8000B720 32440001 */   andi      $a0, $s2, 1
/* C324 8000B724 0C002BE8 */  jal        func_8000AFA0
/* C328 8000B728 02442021 */   addu      $a0, $s2, $a0
/* C32C 8000B72C 3C01800D */  lui        $at, %hi(D_800CDAD0)
/* C330 8000B730 AC22DAD0 */  sw         $v0, %lo(D_800CDAD0)($at)
/* C334 8000B734 14400003 */  bnez       $v0, .L8000B744
/* C338 8000B738 32060001 */   andi      $a2, $s0, 1
.L8000B73C:
/* C33C 8000B73C 08002DF3 */  j          .L8000B7CC
/* C340 8000B740 24020001 */   addiu     $v0, $zero, 1
.L8000B744:
/* C344 8000B744 02602021 */  addu       $a0, $s3, $zero
/* C348 8000B748 3C05800D */  lui        $a1, %hi(D_800CDAD0)
/* C34C 8000B74C 8CA5DAD0 */  lw         $a1, %lo(D_800CDAD0)($a1)
/* C350 8000B750 0C002B60 */  jal        func_8000AD80
/* C354 8000B754 02063021 */   addu      $a2, $s0, $a2
/* C358 8000B758 3C04800D */  lui        $a0, %hi(D_800CDAD0)
/* C35C 8000B75C 8C84DAD0 */  lw         $a0, %lo(D_800CDAD0)($a0)
/* C360 8000B760 0C0224B8 */  jal        func_800892E0
/* C364 8000B764 02802821 */   addu      $a1, $s4, $zero
/* C368 8000B768 3C01800D */  lui        $at, %hi(D_800CDAE8)
/* C36C 8000B76C AC33DAE8 */  sw         $s3, %lo(D_800CDAE8)($at)
/* C370 8000B770 3C02800D */  lui        $v0, %hi(D_800CDB10)
/* C374 8000B774 2442DB10 */  addiu      $v0, $v0, %lo(D_800CDB10)
/* C378 8000B778 3C01800D */  lui        $at, %hi(D_800CDB04)
/* C37C 8000B77C AC22DB04 */  sw         $v0, %lo(D_800CDB04)($at)
/* C380 8000B780 00401821 */  addu       $v1, $v0, $zero
/* C384 8000B784 00002821 */  addu       $a1, $zero, $zero
/* C388 8000B788 3C04800D */  lui        $a0, %hi(D_800CDB24)
/* C38C 8000B78C 2484DB24 */  addiu      $a0, $a0, %lo(D_800CDB24)
/* C390 8000B790 00051080 */  sll        $v0, $a1, 2
.L8000B794:
/* C394 8000B794 00451021 */  addu       $v0, $v0, $a1
/* C398 8000B798 00021080 */  sll        $v0, $v0, 2
/* C39C 8000B79C 00441021 */  addu       $v0, $v0, $a0
/* C3A0 8000B7A0 AC620000 */  sw         $v0, ($v1)
/* C3A4 8000B7A4 00401821 */  addu       $v1, $v0, $zero
/* C3A8 8000B7A8 24A50001 */  addiu      $a1, $a1, 1
/* C3AC 8000B7AC 28A200C5 */  slti       $v0, $a1, 0xc5
/* C3B0 8000B7B0 1440FFF8 */  bnez       $v0, .L8000B794
/* C3B4 8000B7B4 00051080 */   sll       $v0, $a1, 2
/* C3B8 8000B7B8 AC600000 */  sw         $zero, ($v1)
/* C3BC 8000B7BC 34028000 */  ori        $v0, $zero, 0x8000
/* C3C0 8000B7C0 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* C3C4 8000B7C4 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* C3C8 8000B7C8 00001021 */  addu       $v0, $zero, $zero
.L8000B7CC:
/* C3CC 8000B7CC 8FBF0054 */  lw         $ra, 0x54($sp)
/* C3D0 8000B7D0 8FB40050 */  lw         $s4, 0x50($sp)
/* C3D4 8000B7D4 8FB3004C */  lw         $s3, 0x4c($sp)
/* C3D8 8000B7D8 8FB20048 */  lw         $s2, 0x48($sp)
/* C3DC 8000B7DC 8FB10044 */  lw         $s1, 0x44($sp)
/* C3E0 8000B7E0 8FB00040 */  lw         $s0, 0x40($sp)
/* C3E4 8000B7E4 03E00008 */  jr         $ra
/* C3E8 8000B7E8 27BD0058 */   addiu     $sp, $sp, 0x58
