	.set noat
	.set noreorder

glabel func_8006B464
/* 6C064 8006B464 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 6C068 8006B468 AFBF005C */  sw         $ra, 0x5c($sp)
/* 6C06C 8006B46C AFB00058 */  sw         $s0, 0x58($sp)
/* 6C070 8006B470 00808021 */  addu       $s0, $a0, $zero
/* 6C074 8006B474 00C04021 */  addu       $t0, $a2, $zero
/* 6C078 8006B478 97AA0072 */  lhu        $t2, 0x72($sp)
/* 6C07C 8006B47C 97A90076 */  lhu        $t1, 0x76($sp)
/* 6C080 8006B480 97B8007A */  lhu        $t8, 0x7a($sp)
/* 6C084 8006B484 97AE007E */  lhu        $t6, 0x7e($sp)
/* 6C088 8006B488 97A60082 */  lhu        $a2, 0x82($sp)
/* 6C08C 8006B48C 97AD0086 */  lhu        $t5, 0x86($sp)
/* 6C090 8006B490 97AC008A */  lhu        $t4, 0x8a($sp)
/* 6C094 8006B494 8CA4004C */  lw         $a0, 0x4c($a1)
/* 6C098 8006B498 84A30052 */  lh         $v1, 0x52($a1)
/* 6C09C 8006B49C 00031040 */  sll        $v0, $v1, 1
/* 6C0A0 8006B4A0 00431021 */  addu       $v0, $v0, $v1
/* 6C0A4 8006B4A4 00021080 */  sll        $v0, $v0, 2
/* 6C0A8 8006B4A8 8C830000 */  lw         $v1, ($a0)
/* 6C0AC 8006B4AC 00435821 */  addu       $t3, $v0, $v1
/* 6C0B0 8006B4B0 8E020000 */  lw         $v0, ($s0)
/* 6C0B4 8006B4B4 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C0B8 8006B4B8 3C03800F */  lui        $v1, %hi(D_800F2A74)
/* 6C0BC 8006B4BC 8C632A74 */  lw         $v1, %lo(D_800F2A74)($v1)
/* 6C0C0 8006B4C0 24020001 */  addiu      $v0, $zero, 1
/* 6C0C4 8006B4C4 10620079 */  beq        $v1, $v0, .L8006B6AC
/* 6C0C8 8006B4C8 00E07821 */   addu      $t7, $a3, $zero
/* 6C0CC 8006B4CC 28620002 */  slti       $v0, $v1, 2
/* 6C0D0 8006B4D0 50400005 */  beql       $v0, $zero, .L8006B4E8
/* 6C0D4 8006B4D4 24020002 */   addiu     $v0, $zero, 2
/* 6C0D8 8006B4D8 10600009 */  beqz       $v1, .L8006B500
/* 6C0DC 8006B4DC 3C03FD08 */   lui       $v1, 0xfd08
/* 6C0E0 8006B4E0 0801AE15 */  j          .L8006B854
/* 6C0E4 8006B4E4 00000000 */   nop
.L8006B4E8:
/* 6C0E8 8006B4E8 10620092 */  beq        $v1, $v0, .L8006B734
/* 6C0EC 8006B4EC 24020003 */   addiu     $v0, $zero, 3
/* 6C0F0 8006B4F0 106200B5 */  beq        $v1, $v0, .L8006B7C8
/* 6C0F4 8006B4F4 00000000 */   nop
/* 6C0F8 8006B4F8 0801AE15 */  j          .L8006B854
/* 6C0FC 8006B4FC 00000000 */   nop
.L8006B500:
/* 6C100 8006B500 8FA50050 */  lw         $a1, 0x50($sp)
/* 6C104 8006B504 24A20008 */  addiu      $v0, $a1, 8
/* 6C108 8006B508 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C10C 8006B50C 3C08800F */  lui        $t0, %hi(D_800F3B84)
/* 6C110 8006B510 8D083B84 */  lw         $t0, %lo(D_800F3B84)($t0)
/* 6C114 8006B514 31080007 */  andi       $t0, $t0, 7
/* 6C118 8006B518 00084540 */  sll        $t0, $t0, 0x15
/* 6C11C 8006B51C 95620004 */  lhu        $v0, 4($t3)
/* 6C120 8006B520 00021042 */  srl        $v0, $v0, 1
/* 6C124 8006B524 2442FFFF */  addiu      $v0, $v0, -1
/* 6C128 8006B528 30420FFF */  andi       $v0, $v0, 0xfff
/* 6C12C 8006B52C 00431025 */  or         $v0, $v0, $v1
/* 6C130 8006B530 01021025 */  or         $v0, $t0, $v0
/* 6C134 8006B534 ACA20000 */  sw         $v0, ($a1)
/* 6C138 8006B538 8D620000 */  lw         $v0, ($t3)
/* 6C13C 8006B53C ACA20004 */  sw         $v0, 4($a1)
/* 6C140 8006B540 24A20010 */  addiu      $v0, $a1, 0x10
/* 6C144 8006B544 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C148 8006B548 3129FFFF */  andi       $t1, $t1, 0xffff
/* 6C14C 8006B54C 31E7FFFF */  andi       $a3, $t7, 0xffff
/* 6C150 8006B550 01272023 */  subu       $a0, $t1, $a3
/* 6C154 8006B554 24840001 */  addiu      $a0, $a0, 1
/* 6C158 8006B558 00042043 */  sra        $a0, $a0, 1
/* 6C15C 8006B55C 24840007 */  addiu      $a0, $a0, 7
/* 6C160 8006B560 000420C3 */  sra        $a0, $a0, 3
/* 6C164 8006B564 308401FF */  andi       $a0, $a0, 0x1ff
/* 6C168 8006B568 00042240 */  sll        $a0, $a0, 9
/* 6C16C 8006B56C 3C02F508 */  lui        $v0, 0xf508
/* 6C170 8006B570 00821025 */  or         $v0, $a0, $v0
/* 6C174 8006B574 01021025 */  or         $v0, $t0, $v0
/* 6C178 8006B578 3C0F800C */  lui        $t7, %hi(D_800C5B50)
/* 6C17C 8006B57C 8DEF5B50 */  lw         $t7, %lo(D_800C5B50)($t7)
/* 6C180 8006B580 31EF01FF */  andi       $t7, $t7, 0x1ff
/* 6C184 8006B584 004F1025 */  or         $v0, $v0, $t7
/* 6C188 8006B588 ACA20008 */  sw         $v0, 8($a1)
/* 6C18C 8006B58C 30C60003 */  andi       $a2, $a2, 3
/* 6C190 8006B590 00063480 */  sll        $a2, $a2, 0x12
/* 6C194 8006B594 318C000F */  andi       $t4, $t4, 0xf
/* 6C198 8006B598 000C6380 */  sll        $t4, $t4, 0xe
/* 6C19C 8006B59C 3C0B0700 */  lui        $t3, 0x700
/* 6C1A0 8006B5A0 018B1025 */  or         $v0, $t4, $t3
/* 6C1A4 8006B5A4 00C21025 */  or         $v0, $a2, $v0
/* 6C1A8 8006B5A8 31CE0003 */  andi       $t6, $t6, 3
/* 6C1AC 8006B5AC 000E7200 */  sll        $t6, $t6, 8
/* 6C1B0 8006B5B0 004E1025 */  or         $v0, $v0, $t6
/* 6C1B4 8006B5B4 31AD000F */  andi       $t5, $t5, 0xf
/* 6C1B8 8006B5B8 000D6900 */  sll        $t5, $t5, 4
/* 6C1BC 8006B5BC 004D1025 */  or         $v0, $v0, $t5
/* 6C1C0 8006B5C0 ACA2000C */  sw         $v0, 0xc($a1)
/* 6C1C4 8006B5C4 24A20018 */  addiu      $v0, $a1, 0x18
/* 6C1C8 8006B5C8 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C1CC 8006B5CC 3C02E600 */  lui        $v0, 0xe600
/* 6C1D0 8006B5D0 ACA20010 */  sw         $v0, 0x10($a1)
/* 6C1D4 8006B5D4 ACA00014 */  sw         $zero, 0x14($a1)
/* 6C1D8 8006B5D8 24A20020 */  addiu      $v0, $a1, 0x20
/* 6C1DC 8006B5DC AFA20050 */  sw         $v0, 0x50($sp)
/* 6C1E0 8006B5E0 00071840 */  sll        $v1, $a3, 1
/* 6C1E4 8006B5E4 30630FFF */  andi       $v1, $v1, 0xfff
/* 6C1E8 8006B5E8 00031B00 */  sll        $v1, $v1, 0xc
/* 6C1EC 8006B5EC 000A5080 */  sll        $t2, $t2, 2
/* 6C1F0 8006B5F0 314A0FFF */  andi       $t2, $t2, 0xfff
/* 6C1F4 8006B5F4 3C02F400 */  lui        $v0, 0xf400
/* 6C1F8 8006B5F8 01421025 */  or         $v0, $t2, $v0
/* 6C1FC 8006B5FC 00621825 */  or         $v1, $v1, $v0
/* 6C200 8006B600 ACA30018 */  sw         $v1, 0x18($a1)
/* 6C204 8006B604 00091040 */  sll        $v0, $t1, 1
/* 6C208 8006B608 30420FFF */  andi       $v0, $v0, 0xfff
/* 6C20C 8006B60C 00021300 */  sll        $v0, $v0, 0xc
/* 6C210 8006B610 00181880 */  sll        $v1, $t8, 2
/* 6C214 8006B614 30630FFF */  andi       $v1, $v1, 0xfff
/* 6C218 8006B618 006B5825 */  or         $t3, $v1, $t3
/* 6C21C 8006B61C 004B1025 */  or         $v0, $v0, $t3
/* 6C220 8006B620 ACA2001C */  sw         $v0, 0x1c($a1)
/* 6C224 8006B624 24A20028 */  addiu      $v0, $a1, 0x28
/* 6C228 8006B628 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C22C 8006B62C 3C02E700 */  lui        $v0, 0xe700
/* 6C230 8006B630 ACA20020 */  sw         $v0, 0x20($a1)
/* 6C234 8006B634 ACA00024 */  sw         $zero, 0x24($a1)
/* 6C238 8006B638 24A20030 */  addiu      $v0, $a1, 0x30
/* 6C23C 8006B63C AFA20050 */  sw         $v0, 0x50($sp)
/* 6C240 8006B640 3C02F500 */  lui        $v0, 0xf500
/* 6C244 8006B644 00822025 */  or         $a0, $a0, $v0
/* 6C248 8006B648 01044025 */  or         $t0, $t0, $a0
/* 6C24C 8006B64C 010F4025 */  or         $t0, $t0, $t7
/* 6C250 8006B650 ACA80028 */  sw         $t0, 0x28($a1)
/* 6C254 8006B654 3C040100 */  lui        $a0, 0x100
/* 6C258 8006B658 01846025 */  or         $t4, $t4, $a0
/* 6C25C 8006B65C 00CC3025 */  or         $a2, $a2, $t4
/* 6C260 8006B660 00CE3025 */  or         $a2, $a2, $t6
/* 6C264 8006B664 00CD3025 */  or         $a2, $a2, $t5
/* 6C268 8006B668 ACA6002C */  sw         $a2, 0x2c($a1)
/* 6C26C 8006B66C 24A20038 */  addiu      $v0, $a1, 0x38
/* 6C270 8006B670 AFA20050 */  sw         $v0, 0x50($sp)
/* 6C274 8006B674 00073880 */  sll        $a3, $a3, 2
/* 6C278 8006B678 30E70FFF */  andi       $a3, $a3, 0xfff
/* 6C27C 8006B67C 00073B00 */  sll        $a3, $a3, 0xc
/* 6C280 8006B680 3C02F200 */  lui        $v0, 0xf200
/* 6C284 8006B684 01425025 */  or         $t2, $t2, $v0
/* 6C288 8006B688 00EA3825 */  or         $a3, $a3, $t2
/* 6C28C 8006B68C ACA70030 */  sw         $a3, 0x30($a1)
/* 6C290 8006B690 00094880 */  sll        $t1, $t1, 2
/* 6C294 8006B694 31290FFF */  andi       $t1, $t1, 0xfff
/* 6C298 8006B698 00094B00 */  sll        $t1, $t1, 0xc
/* 6C29C 8006B69C 00641825 */  or         $v1, $v1, $a0
/* 6C2A0 8006B6A0 01234825 */  or         $t1, $t1, $v1
/* 6C2A4 8006B6A4 0801AE15 */  j          .L8006B854
/* 6C2A8 8006B6A8 ACA90034 */   sw        $t1, 0x34($a1)
.L8006B6AC:
/* 6C2AC 8006B6AC 95670004 */  lhu        $a3, 4($t3)
/* 6C2B0 8006B6B0 3102FFFF */  andi       $v0, $t0, 0xffff
/* 6C2B4 8006B6B4 AFA20010 */  sw         $v0, 0x10($sp)
/* 6C2B8 8006B6B8 31E2FFFF */  andi       $v0, $t7, 0xffff
/* 6C2BC 8006B6BC AFA20014 */  sw         $v0, 0x14($sp)
/* 6C2C0 8006B6C0 3142FFFF */  andi       $v0, $t2, 0xffff
/* 6C2C4 8006B6C4 AFA20018 */  sw         $v0, 0x18($sp)
/* 6C2C8 8006B6C8 3122FFFF */  andi       $v0, $t1, 0xffff
/* 6C2CC 8006B6CC AFA2001C */  sw         $v0, 0x1c($sp)
/* 6C2D0 8006B6D0 3302FFFF */  andi       $v0, $t8, 0xffff
/* 6C2D4 8006B6D4 AFA20020 */  sw         $v0, 0x20($sp)
/* 6C2D8 8006B6D8 AFA00024 */  sw         $zero, 0x24($sp)
/* 6C2DC 8006B6DC 31C2FFFF */  andi       $v0, $t6, 0xffff
/* 6C2E0 8006B6E0 AFA20028 */  sw         $v0, 0x28($sp)
/* 6C2E4 8006B6E4 30C2FFFF */  andi       $v0, $a2, 0xffff
/* 6C2E8 8006B6E8 AFA2002C */  sw         $v0, 0x2c($sp)
/* 6C2EC 8006B6EC 31A2FFFF */  andi       $v0, $t5, 0xffff
/* 6C2F0 8006B6F0 AFA20030 */  sw         $v0, 0x30($sp)
/* 6C2F4 8006B6F4 3182FFFF */  andi       $v0, $t4, 0xffff
/* 6C2F8 8006B6F8 AFA20034 */  sw         $v0, 0x34($sp)
/* 6C2FC 8006B6FC AFA00038 */  sw         $zero, 0x38($sp)
/* 6C300 8006B700 AFA0003C */  sw         $zero, 0x3c($sp)
/* 6C304 8006B704 24020001 */  addiu      $v0, $zero, 1
/* 6C308 8006B708 AFA20040 */  sw         $v0, 0x40($sp)
/* 6C30C 8006B70C 3C02800C */  lui        $v0, %hi(D_800C5B50)
/* 6C310 8006B710 8C425B50 */  lw         $v0, %lo(D_800C5B50)($v0)
/* 6C314 8006B714 AFA20044 */  sw         $v0, 0x44($sp)
/* 6C318 8006B718 8D650000 */  lw         $a1, ($t3)
/* 6C31C 8006B71C 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6C320 8006B720 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6C324 8006B724 0C00EB80 */  jal        func_8003AE00
/* 6C328 8006B728 27A40050 */   addiu     $a0, $sp, 0x50
/* 6C32C 8006B72C 0801AE15 */  j          .L8006B854
/* 6C330 8006B730 00000000 */   nop
.L8006B734:
/* 6C334 8006B734 95620004 */  lhu        $v0, 4($t3)
/* 6C338 8006B738 AFA20010 */  sw         $v0, 0x10($sp)
/* 6C33C 8006B73C 95620006 */  lhu        $v0, 6($t3)
/* 6C340 8006B740 AFA20014 */  sw         $v0, 0x14($sp)
/* 6C344 8006B744 31E2FFFF */  andi       $v0, $t7, 0xffff
/* 6C348 8006B748 AFA20018 */  sw         $v0, 0x18($sp)
/* 6C34C 8006B74C 3142FFFF */  andi       $v0, $t2, 0xffff
/* 6C350 8006B750 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6C354 8006B754 3122FFFF */  andi       $v0, $t1, 0xffff
/* 6C358 8006B758 AFA20020 */  sw         $v0, 0x20($sp)
/* 6C35C 8006B75C 3302FFFF */  andi       $v0, $t8, 0xffff
/* 6C360 8006B760 AFA20024 */  sw         $v0, 0x24($sp)
/* 6C364 8006B764 AFA00028 */  sw         $zero, 0x28($sp)
/* 6C368 8006B768 31C2FFFF */  andi       $v0, $t6, 0xffff
/* 6C36C 8006B76C AFA2002C */  sw         $v0, 0x2c($sp)
/* 6C370 8006B770 30C2FFFF */  andi       $v0, $a2, 0xffff
/* 6C374 8006B774 AFA20030 */  sw         $v0, 0x30($sp)
/* 6C378 8006B778 31A2FFFF */  andi       $v0, $t5, 0xffff
/* 6C37C 8006B77C AFA20034 */  sw         $v0, 0x34($sp)
/* 6C380 8006B780 3182FFFF */  andi       $v0, $t4, 0xffff
/* 6C384 8006B784 AFA20038 */  sw         $v0, 0x38($sp)
/* 6C388 8006B788 AFA0003C */  sw         $zero, 0x3c($sp)
/* 6C38C 8006B78C AFA00040 */  sw         $zero, 0x40($sp)
/* 6C390 8006B790 24020001 */  addiu      $v0, $zero, 1
/* 6C394 8006B794 AFA20044 */  sw         $v0, 0x44($sp)
/* 6C398 8006B798 3C02800C */  lui        $v0, %hi(D_800C5B50)
/* 6C39C 8006B79C 8C425B50 */  lw         $v0, %lo(D_800C5B50)($v0)
/* 6C3A0 8006B7A0 AFA20048 */  sw         $v0, 0x48($sp)
/* 6C3A4 8006B7A4 8D650000 */  lw         $a1, ($t3)
/* 6C3A8 8006B7A8 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6C3AC 8006B7AC 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6C3B0 8006B7B0 3C07800F */  lui        $a3, %hi(D_800F5444)
/* 6C3B4 8006B7B4 8CE75444 */  lw         $a3, %lo(D_800F5444)($a3)
/* 6C3B8 8006B7B8 0C00E8A3 */  jal        func_8003A28C
/* 6C3BC 8006B7BC 27A40050 */   addiu     $a0, $sp, 0x50
/* 6C3C0 8006B7C0 0801AE15 */  j          .L8006B854
/* 6C3C4 8006B7C4 00000000 */   nop
.L8006B7C8:
/* 6C3C8 8006B7C8 95620004 */  lhu        $v0, 4($t3)
/* 6C3CC 8006B7CC AFA20010 */  sw         $v0, 0x10($sp)
/* 6C3D0 8006B7D0 3102FFFF */  andi       $v0, $t0, 0xffff
/* 6C3D4 8006B7D4 AFA20014 */  sw         $v0, 0x14($sp)
/* 6C3D8 8006B7D8 31E2FFFF */  andi       $v0, $t7, 0xffff
/* 6C3DC 8006B7DC AFA20018 */  sw         $v0, 0x18($sp)
/* 6C3E0 8006B7E0 3142FFFF */  andi       $v0, $t2, 0xffff
/* 6C3E4 8006B7E4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6C3E8 8006B7E8 3122FFFF */  andi       $v0, $t1, 0xffff
/* 6C3EC 8006B7EC AFA20020 */  sw         $v0, 0x20($sp)
/* 6C3F0 8006B7F0 3302FFFF */  andi       $v0, $t8, 0xffff
/* 6C3F4 8006B7F4 AFA20024 */  sw         $v0, 0x24($sp)
/* 6C3F8 8006B7F8 AFA00028 */  sw         $zero, 0x28($sp)
/* 6C3FC 8006B7FC 31C2FFFF */  andi       $v0, $t6, 0xffff
/* 6C400 8006B800 AFA2002C */  sw         $v0, 0x2c($sp)
/* 6C404 8006B804 30C2FFFF */  andi       $v0, $a2, 0xffff
/* 6C408 8006B808 AFA20030 */  sw         $v0, 0x30($sp)
/* 6C40C 8006B80C 31A2FFFF */  andi       $v0, $t5, 0xffff
/* 6C410 8006B810 AFA20034 */  sw         $v0, 0x34($sp)
/* 6C414 8006B814 3182FFFF */  andi       $v0, $t4, 0xffff
/* 6C418 8006B818 AFA20038 */  sw         $v0, 0x38($sp)
/* 6C41C 8006B81C AFA0003C */  sw         $zero, 0x3c($sp)
/* 6C420 8006B820 AFA00040 */  sw         $zero, 0x40($sp)
/* 6C424 8006B824 24020001 */  addiu      $v0, $zero, 1
/* 6C428 8006B828 AFA20044 */  sw         $v0, 0x44($sp)
/* 6C42C 8006B82C 3C02800C */  lui        $v0, %hi(D_800C5B50)
/* 6C430 8006B830 8C425B50 */  lw         $v0, %lo(D_800C5B50)($v0)
/* 6C434 8006B834 AFA20048 */  sw         $v0, 0x48($sp)
/* 6C438 8006B838 8D650000 */  lw         $a1, ($t3)
/* 6C43C 8006B83C 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6C440 8006B840 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6C444 8006B844 3C07800F */  lui        $a3, %hi(D_800F5444)
/* 6C448 8006B848 8CE75444 */  lw         $a3, %lo(D_800F5444)($a3)
/* 6C44C 8006B84C 0C00EAA6 */  jal        func_8003AA98
/* 6C450 8006B850 27A40050 */   addiu     $a0, $sp, 0x50
.L8006B854:
/* 6C454 8006B854 8FA20050 */  lw         $v0, 0x50($sp)
/* 6C458 8006B858 AE020000 */  sw         $v0, ($s0)
/* 6C45C 8006B85C 8FBF005C */  lw         $ra, 0x5c($sp)
/* 6C460 8006B860 8FB00058 */  lw         $s0, 0x58($sp)
/* 6C464 8006B864 03E00008 */  jr         $ra
/* 6C468 8006B868 27BD0060 */   addiu     $sp, $sp, 0x60
/* 6C46C 8006B86C 00000000 */  nop
