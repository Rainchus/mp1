	.set noat
	.set noreorder

glabel func_800FA400_D1870
/* D1870 800FA400 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* D1874 800FA404 AFBF0030 */  sw         $ra, 0x30($sp)
/* D1878 800FA408 AFB1002C */  sw         $s1, 0x2c($sp)
/* D187C 800FA40C AFB00028 */  sw         $s0, 0x28($sp)
/* D1880 800FA410 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* D1884 800FA414 F7B80048 */  sdc1       $f24, 0x48($sp)
/* D1888 800FA418 F7B60040 */  sdc1       $f22, 0x40($sp)
/* D188C 800FA41C F7B40038 */  sdc1       $f20, 0x38($sp)
/* D1890 800FA420 9083004C */  lbu        $v1, 0x4c($a0)
/* D1894 800FA424 000310C0 */  sll        $v0, $v1, 3
/* D1898 800FA428 00431023 */  subu       $v0, $v0, $v1
/* D189C 800FA42C 00021080 */  sll        $v0, $v0, 2
/* D18A0 800FA430 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D18A4 800FA434 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D18A8 800FA438 00438821 */  addu       $s1, $v0, $v1
/* D18AC 800FA43C 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D18B0 800FA440 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D18B4 800FA444 00031040 */  sll        $v0, $v1, 1
/* D18B8 800FA448 3C01800F */  lui        $at, %hi(D_800F5460)
/* D18BC 800FA44C 00220821 */  addu       $at, $at, $v0
/* D18C0 800FA450 A4205460 */  sh         $zero, %lo(D_800F5460)($at)
/* D18C4 800FA454 3C01800F */  lui        $at, %hi(D_800EDEB4)
/* D18C8 800FA458 00220821 */  addu       $at, $at, $v0
/* D18CC 800FA45C A420DEB4 */  sh         $zero, %lo(D_800EDEB4)($at)
/* D18D0 800FA460 3C01800F */  lui        $at, %hi(D_800ECE14)
/* D18D4 800FA464 00230821 */  addu       $at, $at, $v1
/* D18D8 800FA468 A020CE14 */  sb         $zero, %lo(D_800ECE14)($at)
/* D18DC 800FA46C 3C028010 */  lui        $v0, %hi(D_800FE310)
/* D18E0 800FA470 8442E310 */  lh         $v0, %lo(D_800FE310)($v0)
/* D18E4 800FA474 3C01800F */  lui        $at, %hi(D_800F3843)
/* D18E8 800FA478 00220821 */  addu       $at, $at, $v0
/* D18EC 800FA47C A0203843 */  sb         $zero, %lo(D_800F3843)($at)
/* D18F0 800FA480 3C038010 */  lui        $v1, %hi(D_800FD89A)
/* D18F4 800FA484 8463D89A */  lh         $v1, %lo(D_800FD89A)($v1)
/* D18F8 800FA488 24020009 */  addiu      $v0, $zero, 9
/* D18FC 800FA48C 146200A4 */  bne        $v1, $v0, .L800FA720
/* D1900 800FA490 24070005 */   addiu     $a3, $zero, 5
/* D1904 800FA494 00002021 */  addu       $a0, $zero, $zero
/* D1908 800FA498 3C088010 */  lui        $t0, %hi(D_800FE2E8)
/* D190C 800FA49C 2508E2E8 */  addiu      $t0, $t0, %lo(D_800FE2E8)
/* D1910 800FA4A0 3C068010 */  lui        $a2, %hi(D_800FD888)
/* D1914 800FA4A4 24C6D888 */  addiu      $a2, $a2, %lo(D_800FD888)
/* D1918 800FA4A8 2405FFFF */  addiu      $a1, $zero, -1
/* D191C 800FA4AC 00041400 */  sll        $v0, $a0, 0x10
.L800FA4B0:
/* D1920 800FA4B0 00021C03 */  sra        $v1, $v0, 0x10
/* D1924 800FA4B4 00031080 */  sll        $v0, $v1, 2
/* D1928 800FA4B8 00481021 */  addu       $v0, $v0, $t0
/* D192C 800FA4BC 8C420000 */  lw         $v0, ($v0)
/* D1930 800FA4C0 9042004E */  lbu        $v0, 0x4e($v0)
/* D1934 800FA4C4 14470005 */  bne        $v0, $a3, .L800FA4DC
/* D1938 800FA4C8 24820001 */   addiu     $v0, $a0, 1
/* D193C 800FA4CC 00031040 */  sll        $v0, $v1, 1
/* D1940 800FA4D0 00461021 */  addu       $v0, $v0, $a2
/* D1944 800FA4D4 A4450000 */  sh         $a1, ($v0)
/* D1948 800FA4D8 24820001 */  addiu      $v0, $a0, 1
.L800FA4DC:
/* D194C 800FA4DC 00402021 */  addu       $a0, $v0, $zero
/* D1950 800FA4E0 00021400 */  sll        $v0, $v0, 0x10
/* D1954 800FA4E4 00021403 */  sra        $v0, $v0, 0x10
/* D1958 800FA4E8 28420009 */  slti       $v0, $v0, 9
/* D195C 800FA4EC 1440FFF0 */  bnez       $v0, .L800FA4B0
/* D1960 800FA4F0 00041400 */   sll       $v0, $a0, 0x10
/* D1964 800FA4F4 00002021 */  addu       $a0, $zero, $zero
/* D1968 800FA4F8 3C078010 */  lui        $a3, %hi(D_800FD888)
/* D196C 800FA4FC 24E7D888 */  addiu      $a3, $a3, %lo(D_800FD888)
/* D1970 800FA500 3C058010 */  lui        $a1, %hi(D_800FD89C)
/* D1974 800FA504 84A5D89C */  lh         $a1, %lo(D_800FD89C)($a1)
/* D1978 800FA508 3C068010 */  lui        $a2, %hi(D_800FE2E8)
/* D197C 800FA50C 24C6E2E8 */  addiu      $a2, $a2, %lo(D_800FE2E8)
/* D1980 800FA510 00041400 */  sll        $v0, $a0, 0x10
.L800FA514:
/* D1984 800FA514 00021C03 */  sra        $v1, $v0, 0x10
/* D1988 800FA518 00031040 */  sll        $v0, $v1, 1
/* D198C 800FA51C 00471021 */  addu       $v0, $v0, $a3
/* D1990 800FA520 84420000 */  lh         $v0, ($v0)
/* D1994 800FA524 14A20007 */  bne        $a1, $v0, .L800FA544
/* D1998 800FA528 24820001 */   addiu     $v0, $a0, 1
/* D199C 800FA52C 00031080 */  sll        $v0, $v1, 2
/* D19A0 800FA530 00461021 */  addu       $v0, $v0, $a2
/* D19A4 800FA534 8C420000 */  lw         $v0, ($v0)
/* D19A8 800FA538 9042004E */  lbu        $v0, 0x4e($v0)
/* D19AC 800FA53C 10400007 */  beqz       $v0, .L800FA55C
/* D19B0 800FA540 24820001 */   addiu     $v0, $a0, 1
.L800FA544:
/* D19B4 800FA544 00402021 */  addu       $a0, $v0, $zero
/* D19B8 800FA548 00021400 */  sll        $v0, $v0, 0x10
/* D19BC 800FA54C 00021403 */  sra        $v0, $v0, 0x10
/* D19C0 800FA550 28420009 */  slti       $v0, $v0, 9
/* D19C4 800FA554 1440FFEF */  bnez       $v0, .L800FA514
/* D19C8 800FA558 00041400 */   sll       $v0, $a0, 0x10
.L800FA55C:
/* D19CC 800FA55C 00041400 */  sll        $v0, $a0, 0x10
/* D19D0 800FA560 00021403 */  sra        $v0, $v0, 0x10
/* D19D4 800FA564 24030009 */  addiu      $v1, $zero, 9
/* D19D8 800FA568 10430005 */  beq        $v0, $v1, .L800FA580
/* D19DC 800FA56C 00000000 */   nop
/* D19E0 800FA570 3C028010 */  lui        $v0, %hi(D_800FD89C)
/* D19E4 800FA574 8442D89C */  lh         $v0, %lo(D_800FD89C)($v0)
/* D19E8 800FA578 14400055 */  bnez       $v0, .L800FA6D0
/* D19EC 800FA57C 00000000 */   nop
.L800FA580:
/* D19F0 800FA580 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D19F4 800FA584 24040009 */   addiu     $a0, $zero, 9
/* D19F8 800FA588 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D19FC 800FA58C A422D89A */  sh         $v0, %lo(D_800FD89A)($at)
/* D1A00 800FA590 00002021 */  addu       $a0, $zero, $zero
/* D1A04 800FA594 3C068010 */  lui        $a2, %hi(D_800FE2E8)
/* D1A08 800FA598 24C6E2E8 */  addiu      $a2, $a2, %lo(D_800FE2E8)
/* D1A0C 800FA59C 3C058010 */  lui        $a1, %hi(D_800FD888)
/* D1A10 800FA5A0 24A5D888 */  addiu      $a1, $a1, %lo(D_800FD888)
.L800FA5A4:
/* D1A14 800FA5A4 3C038010 */  lui        $v1, %hi(D_800FD89A)
/* D1A18 800FA5A8 8463D89A */  lh         $v1, %lo(D_800FD89A)($v1)
/* D1A1C 800FA5AC 00031080 */  sll        $v0, $v1, 2
/* D1A20 800FA5B0 00461021 */  addu       $v0, $v0, $a2
/* D1A24 800FA5B4 8C420000 */  lw         $v0, ($v0)
/* D1A28 800FA5B8 9042004E */  lbu        $v0, 0x4e($v0)
/* D1A2C 800FA5BC 1440000A */  bnez       $v0, .L800FA5E8
/* D1A30 800FA5C0 00031040 */   sll       $v0, $v1, 1
/* D1A34 800FA5C4 00451021 */  addu       $v0, $v0, $a1
/* D1A38 800FA5C8 84420000 */  lh         $v0, ($v0)
/* D1A3C 800FA5CC 38430009 */  xori       $v1, $v0, 9
/* D1A40 800FA5D0 2C630001 */  sltiu      $v1, $v1, 1
/* D1A44 800FA5D4 38420005 */  xori       $v0, $v0, 5
/* D1A48 800FA5D8 0002102B */  sltu       $v0, $zero, $v0
/* D1A4C 800FA5DC 00621824 */  and        $v1, $v1, $v0
/* D1A50 800FA5E0 14600013 */  bnez       $v1, .L800FA630
/* D1A54 800FA5E4 00041400 */   sll       $v0, $a0, 0x10
.L800FA5E8:
/* D1A58 800FA5E8 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1A5C 800FA5EC 9442D89A */  lhu        $v0, %lo(D_800FD89A)($v0)
/* D1A60 800FA5F0 24420001 */  addiu      $v0, $v0, 1
/* D1A64 800FA5F4 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1A68 800FA5F8 A422D89A */  sh         $v0, %lo(D_800FD89A)($at)
/* D1A6C 800FA5FC 00021400 */  sll        $v0, $v0, 0x10
/* D1A70 800FA600 00021403 */  sra        $v0, $v0, 0x10
/* D1A74 800FA604 28420009 */  slti       $v0, $v0, 9
/* D1A78 800FA608 14400003 */  bnez       $v0, .L800FA618
/* D1A7C 800FA60C 24820001 */   addiu     $v0, $a0, 1
/* D1A80 800FA610 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1A84 800FA614 A420D89A */  sh         $zero, %lo(D_800FD89A)($at)
.L800FA618:
/* D1A88 800FA618 00402021 */  addu       $a0, $v0, $zero
/* D1A8C 800FA61C 00021400 */  sll        $v0, $v0, 0x10
/* D1A90 800FA620 00021403 */  sra        $v0, $v0, 0x10
/* D1A94 800FA624 28420009 */  slti       $v0, $v0, 9
/* D1A98 800FA628 1440FFDE */  bnez       $v0, .L800FA5A4
/* D1A9C 800FA62C 00041400 */   sll       $v0, $a0, 0x10
.L800FA630:
/* D1AA0 800FA630 00021403 */  sra        $v0, $v0, 0x10
/* D1AA4 800FA634 24030009 */  addiu      $v1, $zero, 9
/* D1AA8 800FA638 14430027 */  bne        $v0, $v1, .L800FA6D8
/* D1AAC 800FA63C 00002021 */   addu      $a0, $zero, $zero
/* D1AB0 800FA640 3C068010 */  lui        $a2, %hi(D_800FE2E8)
/* D1AB4 800FA644 24C6E2E8 */  addiu      $a2, $a2, %lo(D_800FE2E8)
/* D1AB8 800FA648 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1ABC 800FA64C 8442D89A */  lh         $v0, %lo(D_800FD89A)($v0)
/* D1AC0 800FA650 3C038010 */  lui        $v1, %hi(D_800FD888)
/* D1AC4 800FA654 2463D888 */  addiu      $v1, $v1, %lo(D_800FD888)
/* D1AC8 800FA658 00021040 */  sll        $v0, $v0, 1
/* D1ACC 800FA65C 00432821 */  addu       $a1, $v0, $v1
/* D1AD0 800FA660 00041400 */  sll        $v0, $a0, 0x10
.L800FA664:
/* D1AD4 800FA664 00021383 */  sra        $v0, $v0, 0xe
/* D1AD8 800FA668 00461021 */  addu       $v0, $v0, $a2
/* D1ADC 800FA66C 8C420000 */  lw         $v0, ($v0)
/* D1AE0 800FA670 9042004E */  lbu        $v0, 0x4e($v0)
/* D1AE4 800FA674 14400009 */  bnez       $v0, .L800FA69C
/* D1AE8 800FA678 24820001 */   addiu     $v0, $a0, 1
/* D1AEC 800FA67C 84A20000 */  lh         $v0, ($a1)
/* D1AF0 800FA680 00021827 */  nor        $v1, $zero, $v0
/* D1AF4 800FA684 0003182B */  sltu       $v1, $zero, $v1
/* D1AF8 800FA688 38420005 */  xori       $v0, $v0, 5
/* D1AFC 800FA68C 0002102B */  sltu       $v0, $zero, $v0
/* D1B00 800FA690 00621824 */  and        $v1, $v1, $v0
/* D1B04 800FA694 14600007 */  bnez       $v1, .L800FA6B4
/* D1B08 800FA698 24820001 */   addiu     $v0, $a0, 1
.L800FA69C:
/* D1B0C 800FA69C 00402021 */  addu       $a0, $v0, $zero
/* D1B10 800FA6A0 00021400 */  sll        $v0, $v0, 0x10
/* D1B14 800FA6A4 00021403 */  sra        $v0, $v0, 0x10
/* D1B18 800FA6A8 28420009 */  slti       $v0, $v0, 9
/* D1B1C 800FA6AC 1440FFED */  bnez       $v0, .L800FA664
/* D1B20 800FA6B0 00041400 */   sll       $v0, $a0, 0x10
.L800FA6B4:
/* D1B24 800FA6B4 00041400 */  sll        $v0, $a0, 0x10
/* D1B28 800FA6B8 00021403 */  sra        $v0, $v0, 0x10
/* D1B2C 800FA6BC 24030009 */  addiu      $v1, $zero, 9
/* D1B30 800FA6C0 144300F7 */  bne        $v0, $v1, .L800FAAA0
/* D1B34 800FA6C4 24020009 */   addiu     $v0, $zero, 9
/* D1B38 800FA6C8 0803E9D6 */  j          .L800FA758
/* D1B3C 800FA6CC 00000000 */   nop
.L800FA6D0:
/* D1B40 800FA6D0 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1B44 800FA6D4 A424D89A */  sh         $a0, %lo(D_800FD89A)($at)
.L800FA6D8:
/* D1B48 800FA6D8 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D1B4C 800FA6DC 2404003C */   addiu     $a0, $zero, 0x3c
/* D1B50 800FA6E0 3042FFFF */  andi       $v0, $v0, 0xffff
/* D1B54 800FA6E4 44820000 */  mtc1       $v0, $f0
/* D1B58 800FA6E8 00000000 */  nop
/* D1B5C 800FA6EC 46800021 */  cvt.d.w    $f0, $f0
/* D1B60 800FA6F0 3C018010 */  lui        $at, %hi(D_800FDBC8)
/* D1B64 800FA6F4 D422DBC8 */  ldc1       $f2, %lo(D_800FDBC8)($at)
/* D1B68 800FA6F8 46220000 */  add.d      $f0, $f0, $f2
/* D1B6C 800FA6FC 46200020 */  cvt.s.d    $f0, $f0
/* D1B70 800FA700 3C018010 */  lui        $at, %hi(D_800FD8A4)
/* D1B74 800FA704 E420D8A4 */  swc1       $f0, %lo(D_800FD8A4)($at)
/* D1B78 800FA708 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D1B7C 800FA70C 24040003 */   addiu     $a0, $zero, 3
/* D1B80 800FA710 24420003 */  addiu      $v0, $v0, 3
/* D1B84 800FA714 3C018010 */  lui        $at, %hi(D_800FD8A0)
/* D1B88 800FA718 0803EAA8 */  j          .L800FAAA0
/* D1B8C 800FA71C A422D8A0 */   sh        $v0, %lo(D_800FD8A0)($at)
.L800FA720:
/* D1B90 800FA720 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1B94 800FA724 8442D89A */  lh         $v0, %lo(D_800FD89A)($v0)
/* D1B98 800FA728 00021080 */  sll        $v0, $v0, 2
/* D1B9C 800FA72C 3C018010 */  lui        $at, %hi(D_800FE2E8)
/* D1BA0 800FA730 00220821 */  addu       $at, $at, $v0
/* D1BA4 800FA734 8C22E2E8 */  lw         $v0, %lo(D_800FE2E8)($at)
/* D1BA8 800FA738 9042004E */  lbu        $v0, 0x4e($v0)
/* D1BAC 800FA73C 38430001 */  xori       $v1, $v0, 1
/* D1BB0 800FA740 2C630001 */  sltiu      $v1, $v1, 1
/* D1BB4 800FA744 38420005 */  xori       $v0, $v0, 5
/* D1BB8 800FA748 2C420001 */  sltiu      $v0, $v0, 1
/* D1BBC 800FA74C 00621825 */  or         $v1, $v1, $v0
/* D1BC0 800FA750 10600004 */  beqz       $v1, .L800FA764
/* D1BC4 800FA754 24020009 */   addiu     $v0, $zero, 9
.L800FA758:
/* D1BC8 800FA758 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1BCC 800FA75C 0803EAA8 */  j          .L800FAAA0
/* D1BD0 800FA760 A422D89A */   sh        $v0, %lo(D_800FD89A)($at)
.L800FA764:
/* D1BD4 800FA764 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1BD8 800FA768 8442D89A */  lh         $v0, %lo(D_800FD89A)($v0)
/* D1BDC 800FA76C 00021080 */  sll        $v0, $v0, 2
/* D1BE0 800FA770 3C108010 */  lui        $s0, %hi(D_800FE2E8)
/* D1BE4 800FA774 02028021 */  addu       $s0, $s0, $v0
/* D1BE8 800FA778 8E10E2E8 */  lw         $s0, %lo(D_800FE2E8)($s0)
/* D1BEC 800FA77C C6020018 */  lwc1       $f2, 0x18($s0)
/* D1BF0 800FA780 C4800018 */  lwc1       $f0, 0x18($a0)
/* D1BF4 800FA784 46001581 */  sub.s      $f22, $f2, $f0
/* D1BF8 800FA788 C6020020 */  lwc1       $f2, 0x20($s0)
/* D1BFC 800FA78C C4800020 */  lwc1       $f0, 0x20($a0)
/* D1C00 800FA790 46001501 */  sub.s      $f20, $f2, $f0
/* D1C04 800FA794 4616B302 */  mul.s      $f12, $f22, $f22
/* D1C08 800FA798 00000000 */  nop
/* D1C0C 800FA79C 4614A002 */  mul.s      $f0, $f20, $f20
/* D1C10 800FA7A0 46006300 */  add.s      $f12, $f12, $f0
/* D1C14 800FA7A4 46006684 */  sqrt.s     $f26, $f12
/* D1C18 800FA7A8 461AD032 */  c.eq.s     $f26, $f26
/* D1C1C 800FA7AC 00000000 */  nop
/* D1C20 800FA7B0 00000000 */  nop
/* D1C24 800FA7B4 45030005 */  bc1tl      .L800FA7CC
/* D1C28 800FA7B8 4600B306 */   mov.s     $f12, $f22
/* D1C2C 800FA7BC 0C02156C */  jal        func_800855B0
/* D1C30 800FA7C0 00000000 */   nop
/* D1C34 800FA7C4 46000686 */  mov.s      $f26, $f0
/* D1C38 800FA7C8 4600B306 */  mov.s      $f12, $f22
.L800FA7CC:
/* D1C3C 800FA7CC 0C03DEE4 */  jal        func_800F7B90_CF000
/* D1C40 800FA7D0 4600A386 */   mov.s     $f14, $f20
/* D1C44 800FA7D4 46000586 */  mov.s      $f22, $f0
/* D1C48 800FA7D8 0C02BAB0 */  jal        func_800AEAC0
/* D1C4C 800FA7DC 4600B306 */   mov.s     $f12, $f22
/* D1C50 800FA7E0 3C014280 */  lui        $at, 0x4280
/* D1C54 800FA7E4 4481A000 */  mtc1       $at, $f20
/* D1C58 800FA7E8 00000000 */  nop
/* D1C5C 800FA7EC 46140602 */  mul.s      $f24, $f0, $f20
/* D1C60 800FA7F0 0C02BBF4 */  jal        func_800AEFD0
/* D1C64 800FA7F4 4600B306 */   mov.s     $f12, $f22
/* D1C68 800FA7F8 46140002 */  mul.s      $f0, $f0, $f20
/* D1C6C 800FA7FC 46000007 */  neg.s      $f0, $f0
/* D1C70 800FA800 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D1C74 800FA804 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D1C78 800FA808 4600C08D */  trunc.w.s  $f2, $f24
/* D1C7C 800FA80C 44021000 */  mfc1       $v0, $f2
/* D1C80 800FA810 3C01800F */  lui        $at, %hi(D_800ECE14)
/* D1C84 800FA814 00230821 */  addu       $at, $at, $v1
/* D1C88 800FA818 A022CE14 */  sb         $v0, %lo(D_800ECE14)($at)
/* D1C8C 800FA81C 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D1C90 800FA820 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D1C94 800FA824 4600008D */  trunc.w.s  $f2, $f0
/* D1C98 800FA828 44021000 */  mfc1       $v0, $f2
/* D1C9C 800FA82C 3C01800F */  lui        $at, %hi(D_800F3843)
/* D1CA0 800FA830 00230821 */  addu       $at, $at, $v1
/* D1CA4 800FA834 A0223843 */  sb         $v0, %lo(D_800F3843)($at)
/* D1CA8 800FA838 3C018010 */  lui        $at, %hi(D_800FD8A4)
/* D1CAC 800FA83C C420D8A4 */  lwc1       $f0, %lo(D_800FD8A4)($at)
/* D1CB0 800FA840 4600D03C */  c.lt.s     $f26, $f0
/* D1CB4 800FA844 00000000 */  nop
/* D1CB8 800FA848 45000095 */  bc1f       .L800FAAA0
/* D1CBC 800FA84C 00000000 */   nop
/* D1CC0 800FA850 3C028010 */  lui        $v0, %hi(D_800FD89E)
/* D1CC4 800FA854 8442D89E */  lh         $v0, %lo(D_800FD89E)($v0)
/* D1CC8 800FA858 14400023 */  bnez       $v0, .L800FA8E8
/* D1CCC 800FA85C 00402021 */   addu      $a0, $v0, $zero
/* D1CD0 800FA860 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D1CD4 800FA864 24040014 */   addiu     $a0, $zero, 0x14
/* D1CD8 800FA868 3042FFFF */  andi       $v0, $v0, 0xffff
/* D1CDC 800FA86C 24420001 */  addiu      $v0, $v0, 1
/* D1CE0 800FA870 86230018 */  lh         $v1, 0x18($s1)
/* D1CE4 800FA874 0043102A */  slt        $v0, $v0, $v1
/* D1CE8 800FA878 10400006 */  beqz       $v0, .L800FA894
/* D1CEC 800FA87C 24020009 */   addiu     $v0, $zero, 9
/* D1CF0 800FA880 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1CF4 800FA884 A422D89A */  sh         $v0, %lo(D_800FD89A)($at)
/* D1CF8 800FA888 3C018010 */  lui        $at, %hi(D_800FD89C)
/* D1CFC 800FA88C 0803EAA8 */  j          .L800FAAA0
/* D1D00 800FA890 A420D89C */   sh        $zero, %lo(D_800FD89C)($at)
.L800FA894:
/* D1D04 800FA894 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D1D08 800FA898 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D1D0C 800FA89C 3C04800F */  lui        $a0, %hi(D_800F5460)
/* D1D10 800FA8A0 24845460 */  addiu      $a0, $a0, %lo(D_800F5460)
/* D1D14 800FA8A4 00031840 */  sll        $v1, $v1, 1
/* D1D18 800FA8A8 00642021 */  addu       $a0, $v1, $a0
/* D1D1C 800FA8AC 94820000 */  lhu        $v0, ($a0)
/* D1D20 800FA8B0 34428000 */  ori        $v0, $v0, 0x8000
/* D1D24 800FA8B4 A4820000 */  sh         $v0, ($a0)
/* D1D28 800FA8B8 3C02800F */  lui        $v0, %hi(D_800EDEB4)
/* D1D2C 800FA8BC 2442DEB4 */  addiu      $v0, $v0, %lo(D_800EDEB4)
/* D1D30 800FA8C0 00621821 */  addu       $v1, $v1, $v0
/* D1D34 800FA8C4 94620000 */  lhu        $v0, ($v1)
/* D1D38 800FA8C8 34428000 */  ori        $v0, $v0, 0x8000
/* D1D3C 800FA8CC A4620000 */  sh         $v0, ($v1)
/* D1D40 800FA8D0 3C028010 */  lui        $v0, %hi(D_800FD89E)
/* D1D44 800FA8D4 9442D89E */  lhu        $v0, %lo(D_800FD89E)($v0)
/* D1D48 800FA8D8 24420001 */  addiu      $v0, $v0, 1
/* D1D4C 800FA8DC 3C018010 */  lui        $at, %hi(D_800FD89E)
/* D1D50 800FA8E0 0803EAA8 */  j          .L800FAAA0
/* D1D54 800FA8E4 A422D89E */   sh        $v0, %lo(D_800FD89E)($at)
.L800FA8E8:
/* D1D58 800FA8E8 3C038010 */  lui        $v1, %hi(D_800FD8A0)
/* D1D5C 800FA8EC 8463D8A0 */  lh         $v1, %lo(D_800FD8A0)($v1)
/* D1D60 800FA8F0 0043102A */  slt        $v0, $v0, $v1
/* D1D64 800FA8F4 1040000B */  beqz       $v0, .L800FA924
/* D1D68 800FA8F8 00000000 */   nop
/* D1D6C 800FA8FC 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D1D70 800FA900 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D1D74 800FA904 3C02800F */  lui        $v0, %hi(D_800EDEB4)
/* D1D78 800FA908 2442DEB4 */  addiu      $v0, $v0, %lo(D_800EDEB4)
/* D1D7C 800FA90C 00031840 */  sll        $v1, $v1, 1
/* D1D80 800FA910 00621821 */  addu       $v1, $v1, $v0
/* D1D84 800FA914 94620000 */  lhu        $v0, ($v1)
/* D1D88 800FA918 34428000 */  ori        $v0, $v0, 0x8000
/* D1D8C 800FA91C 0803EA69 */  j          .L800FA9A4
/* D1D90 800FA920 A4620000 */   sh        $v0, ($v1)
.L800FA924:
/* D1D94 800FA924 3C038010 */  lui        $v1, %hi(D_800FD89E)
/* D1D98 800FA928 8463D89E */  lh         $v1, %lo(D_800FD89E)($v1)
/* D1D9C 800FA92C 3C028010 */  lui        $v0, %hi(D_800FD8A0)
/* D1DA0 800FA930 8442D8A0 */  lh         $v0, %lo(D_800FD8A0)($v0)
/* D1DA4 800FA934 14620014 */  bne        $v1, $v0, .L800FA988
/* D1DA8 800FA938 00602821 */   addu      $a1, $v1, $zero
/* D1DAC 800FA93C 3C038010 */  lui        $v1, %hi(D_800FE310)
/* D1DB0 800FA940 8463E310 */  lh         $v1, %lo(D_800FE310)($v1)
/* D1DB4 800FA944 3C04800F */  lui        $a0, %hi(D_800F5460)
/* D1DB8 800FA948 24845460 */  addiu      $a0, $a0, %lo(D_800F5460)
/* D1DBC 800FA94C 00031840 */  sll        $v1, $v1, 1
/* D1DC0 800FA950 00642021 */  addu       $a0, $v1, $a0
/* D1DC4 800FA954 94820000 */  lhu        $v0, ($a0)
/* D1DC8 800FA958 34422000 */  ori        $v0, $v0, 0x2000
/* D1DCC 800FA95C A4820000 */  sh         $v0, ($a0)
/* D1DD0 800FA960 3C02800F */  lui        $v0, %hi(D_800EDEB4)
/* D1DD4 800FA964 2442DEB4 */  addiu      $v0, $v0, %lo(D_800EDEB4)
/* D1DD8 800FA968 00621821 */  addu       $v1, $v1, $v0
/* D1DDC 800FA96C 94620000 */  lhu        $v0, ($v1)
/* D1DE0 800FA970 34422000 */  ori        $v0, $v0, 0x2000
/* D1DE4 800FA974 A4620000 */  sh         $v0, ($v1)
/* D1DE8 800FA978 24A20001 */  addiu      $v0, $a1, 1
/* D1DEC 800FA97C 3C018010 */  lui        $at, %hi(D_800FD89E)
/* D1DF0 800FA980 0803EAA8 */  j          .L800FAAA0
/* D1DF4 800FA984 A422D89E */   sh        $v0, %lo(D_800FD89E)($at)
.L800FA988:
/* D1DF8 800FA988 00602021 */  addu       $a0, $v1, $zero
/* D1DFC 800FA98C 3C028010 */  lui        $v0, %hi(D_800FD8A0)
/* D1E00 800FA990 8442D8A0 */  lh         $v0, %lo(D_800FD8A0)($v0)
/* D1E04 800FA994 24420003 */  addiu      $v0, $v0, 3
/* D1E08 800FA998 0062182A */  slt        $v1, $v1, $v0
/* D1E0C 800FA99C 50600005 */  beql       $v1, $zero, .L800FA9B4
/* D1E10 800FA9A0 00002021 */   addu      $a0, $zero, $zero
.L800FA9A4:
/* D1E14 800FA9A4 24820001 */  addiu      $v0, $a0, 1
/* D1E18 800FA9A8 3C018010 */  lui        $at, %hi(D_800FD89E)
/* D1E1C 800FA9AC 0803EAA8 */  j          .L800FAAA0
/* D1E20 800FA9B0 A422D89E */   sh        $v0, %lo(D_800FD89E)($at)
.L800FA9B4:
/* D1E24 800FA9B4 3C058010 */  lui        $a1, %hi(D_800FE2E8)
/* D1E28 800FA9B8 24A5E2E8 */  addiu      $a1, $a1, %lo(D_800FE2E8)
/* D1E2C 800FA9BC 24030001 */  addiu      $v1, $zero, 1
/* D1E30 800FA9C0 00041400 */  sll        $v0, $a0, 0x10
.L800FA9C4:
/* D1E34 800FA9C4 00021383 */  sra        $v0, $v0, 0xe
/* D1E38 800FA9C8 00451021 */  addu       $v0, $v0, $a1
/* D1E3C 800FA9CC 8C420000 */  lw         $v0, ($v0)
/* D1E40 800FA9D0 9042004E */  lbu        $v0, 0x4e($v0)
/* D1E44 800FA9D4 10430007 */  beq        $v0, $v1, .L800FA9F4
/* D1E48 800FA9D8 24820001 */   addiu     $v0, $a0, 1
/* D1E4C 800FA9DC 00402021 */  addu       $a0, $v0, $zero
/* D1E50 800FA9E0 00021400 */  sll        $v0, $v0, 0x10
/* D1E54 800FA9E4 00021403 */  sra        $v0, $v0, 0x10
/* D1E58 800FA9E8 28420009 */  slti       $v0, $v0, 9
/* D1E5C 800FA9EC 1440FFF5 */  bnez       $v0, .L800FA9C4
/* D1E60 800FA9F0 00041400 */   sll       $v0, $a0, 0x10
.L800FA9F4:
/* D1E64 800FA9F4 00041400 */  sll        $v0, $a0, 0x10
/* D1E68 800FA9F8 00021403 */  sra        $v0, $v0, 0x10
/* D1E6C 800FA9FC 24030009 */  addiu      $v1, $zero, 9
/* D1E70 800FAA00 14430004 */  bne        $v0, $v1, .L800FAA14
/* D1E74 800FAA04 24020005 */   addiu     $v0, $zero, 5
/* D1E78 800FAA08 9203004D */  lbu        $v1, 0x4d($s0)
/* D1E7C 800FAA0C 1462000C */  bne        $v1, $v0, .L800FAA40
/* D1E80 800FAA10 00000000 */   nop
.L800FAA14:
/* D1E84 800FAA14 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1E88 800FAA18 8442D89A */  lh         $v0, %lo(D_800FD89A)($v0)
/* D1E8C 800FAA1C 00021040 */  sll        $v0, $v0, 1
/* D1E90 800FAA20 9203004D */  lbu        $v1, 0x4d($s0)
/* D1E94 800FAA24 3C018010 */  lui        $at, %hi(D_800FD888)
/* D1E98 800FAA28 00220821 */  addu       $at, $at, $v0
/* D1E9C 800FAA2C A423D888 */  sh         $v1, %lo(D_800FD888)($at)
/* D1EA0 800FAA30 3C018010 */  lui        $at, %hi(D_800FD89C)
/* D1EA4 800FAA34 A420D89C */  sh         $zero, %lo(D_800FD89C)($at)
/* D1EA8 800FAA38 0803EAA4 */  j          .L800FAA90
/* D1EAC 800FAA3C 24020009 */   addiu     $v0, $zero, 9
.L800FAA40:
/* D1EB0 800FAA40 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D1EB4 800FAA44 24040064 */   addiu     $a0, $zero, 0x64
/* D1EB8 800FAA48 3042FFFF */  andi       $v0, $v0, 0xffff
/* D1EBC 800FAA4C 86240018 */  lh         $a0, 0x18($s1)
/* D1EC0 800FAA50 00041880 */  sll        $v1, $a0, 2
/* D1EC4 800FAA54 00641821 */  addu       $v1, $v1, $a0
/* D1EC8 800FAA58 00031840 */  sll        $v1, $v1, 1
/* D1ECC 800FAA5C 0062182A */  slt        $v1, $v1, $v0
/* D1ED0 800FAA60 1060000B */  beqz       $v1, .L800FAA90
/* D1ED4 800FAA64 24020009 */   addiu     $v0, $zero, 9
/* D1ED8 800FAA68 3C028010 */  lui        $v0, %hi(D_800FD89A)
/* D1EDC 800FAA6C 8442D89A */  lh         $v0, %lo(D_800FD89A)($v0)
/* D1EE0 800FAA70 00021040 */  sll        $v0, $v0, 1
/* D1EE4 800FAA74 9203004D */  lbu        $v1, 0x4d($s0)
/* D1EE8 800FAA78 3C018010 */  lui        $at, %hi(D_800FD89C)
/* D1EEC 800FAA7C A423D89C */  sh         $v1, %lo(D_800FD89C)($at)
/* D1EF0 800FAA80 3C018010 */  lui        $at, %hi(D_800FD888)
/* D1EF4 800FAA84 00220821 */  addu       $at, $at, $v0
/* D1EF8 800FAA88 A423D888 */  sh         $v1, %lo(D_800FD888)($at)
/* D1EFC 800FAA8C 24020009 */  addiu      $v0, $zero, 9
.L800FAA90:
/* D1F00 800FAA90 3C018010 */  lui        $at, %hi(D_800FD89A)
/* D1F04 800FAA94 A422D89A */  sh         $v0, %lo(D_800FD89A)($at)
/* D1F08 800FAA98 3C018010 */  lui        $at, %hi(D_800FD89E)
/* D1F0C 800FAA9C A420D89E */  sh         $zero, %lo(D_800FD89E)($at)
.L800FAAA0:
/* D1F10 800FAAA0 8FBF0030 */  lw         $ra, 0x30($sp)
/* D1F14 800FAAA4 8FB1002C */  lw         $s1, 0x2c($sp)
/* D1F18 800FAAA8 8FB00028 */  lw         $s0, 0x28($sp)
/* D1F1C 800FAAAC D7BA0050 */  ldc1       $f26, 0x50($sp)
/* D1F20 800FAAB0 D7B80048 */  ldc1       $f24, 0x48($sp)
/* D1F24 800FAAB4 D7B60040 */  ldc1       $f22, 0x40($sp)
/* D1F28 800FAAB8 D7B40038 */  ldc1       $f20, 0x38($sp)
/* D1F2C 800FAABC 03E00008 */  jr         $ra
/* D1F30 800FAAC0 27BD0058 */   addiu     $sp, $sp, 0x58
