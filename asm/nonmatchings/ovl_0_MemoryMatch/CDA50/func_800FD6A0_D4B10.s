	.set noat
	.set noreorder

glabel func_800FD6A0_D4B10
/* D4B10 800FD6A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D4B14 800FD6A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D4B18 800FD6A8 AFB00010 */  sw         $s0, 0x10($sp)
/* D4B1C 800FD6AC F7B60020 */  sdc1       $f22, 0x20($sp)
/* D4B20 800FD6B0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* D4B24 800FD6B4 C4800018 */  lwc1       $f0, 0x18($a0)
/* D4B28 800FD6B8 3C018010 */  lui        $at, %hi(D_800FE250)
/* D4B2C 800FD6BC E420E250 */  swc1       $f0, %lo(D_800FE250)($at)
/* D4B30 800FD6C0 C4800020 */  lwc1       $f0, 0x20($a0)
/* D4B34 800FD6C4 3C018010 */  lui        $at, %hi(D_800FE254)
/* D4B38 800FD6C8 E420E254 */  swc1       $f0, %lo(D_800FE254)($at)
/* D4B3C 800FD6CC C4A00018 */  lwc1       $f0, 0x18($a1)
/* D4B40 800FD6D0 3C018010 */  lui        $at, %hi(D_800FE270)
/* D4B44 800FD6D4 E420E270 */  swc1       $f0, %lo(D_800FE270)($at)
/* D4B48 800FD6D8 C4A00020 */  lwc1       $f0, 0x20($a1)
/* D4B4C 800FD6DC 3C018010 */  lui        $at, %hi(D_800FE274)
/* D4B50 800FD6E0 E420E274 */  swc1       $f0, %lo(D_800FE274)($at)
/* D4B54 800FD6E4 C4A20018 */  lwc1       $f2, 0x18($a1)
/* D4B58 800FD6E8 C4800018 */  lwc1       $f0, 0x18($a0)
/* D4B5C 800FD6EC 46001581 */  sub.s      $f22, $f2, $f0
/* D4B60 800FD6F0 C4A20020 */  lwc1       $f2, 0x20($a1)
/* D4B64 800FD6F4 C4800020 */  lwc1       $f0, 0x20($a0)
/* D4B68 800FD6F8 46001501 */  sub.s      $f20, $f2, $f0
/* D4B6C 800FD6FC 4616B302 */  mul.s      $f12, $f22, $f22
/* D4B70 800FD700 00000000 */  nop
/* D4B74 800FD704 4614A002 */  mul.s      $f0, $f20, $f20
/* D4B78 800FD708 46006300 */  add.s      $f12, $f12, $f0
/* D4B7C 800FD70C 46006104 */  sqrt.s     $f4, $f12
/* D4B80 800FD710 46042032 */  c.eq.s     $f4, $f4
/* D4B84 800FD714 00000000 */  nop
/* D4B88 800FD718 00000000 */  nop
/* D4B8C 800FD71C 45010004 */  bc1t       .L800FD730
/* D4B90 800FD720 00008021 */   addu      $s0, $zero, $zero
/* D4B94 800FD724 0C02156C */  jal        func_800855B0
/* D4B98 800FD728 00000000 */   nop
/* D4B9C 800FD72C 46000106 */  mov.s      $f4, $f0
.L800FD730:
/* D4BA0 800FD730 460020A1 */  cvt.d.s    $f2, $f4
/* D4BA4 800FD734 44800000 */  mtc1       $zero, $f0
/* D4BA8 800FD738 44800800 */  mtc1       $zero, $f1
/* D4BAC 800FD73C 00000000 */  nop
/* D4BB0 800FD740 46201032 */  c.eq.d     $f2, $f0
/* D4BB4 800FD744 00000000 */  nop
/* D4BB8 800FD748 00000000 */  nop
/* D4BBC 800FD74C 45030004 */  bc1tl      .L800FD760
/* D4BC0 800FD750 4600B021 */   cvt.d.s   $f0, $f22
/* D4BC4 800FD754 4604B583 */  div.s      $f22, $f22, $f4
/* D4BC8 800FD758 4604A503 */  div.s      $f20, $f20, $f4
/* D4BCC 800FD75C 4600B021 */  cvt.d.s    $f0, $f22
.L800FD760:
/* D4BD0 800FD760 3C018010 */  lui        $at, %hi(D_800FDD68)
/* D4BD4 800FD764 D422DD68 */  ldc1       $f2, %lo(D_800FDD68)($at)
/* D4BD8 800FD768 46220002 */  mul.d      $f0, $f0, $f2
/* D4BDC 800FD76C 462005A0 */  cvt.s.d    $f22, $f0
/* D4BE0 800FD770 4600A021 */  cvt.d.s    $f0, $f20
/* D4BE4 800FD774 46220002 */  mul.d      $f0, $f0, $f2
/* D4BE8 800FD778 46200520 */  cvt.s.d    $f20, $f0
/* D4BEC 800FD77C 00101400 */  sll        $v0, $s0, 0x10
/* D4BF0 800FD780 00021403 */  sra        $v0, $v0, 0x10
/* D4BF4 800FD784 000218C0 */  sll        $v1, $v0, 3
/* D4BF8 800FD788 4600A007 */  neg.s      $f0, $f20
/* D4BFC 800FD78C 3C018010 */  lui        $at, %hi(D_800FE290)
/* D4C00 800FD790 00230821 */  addu       $at, $at, $v1
/* D4C04 800FD794 E420E290 */  swc1       $f0, %lo(D_800FE290)($at)
/* D4C08 800FD798 3C018010 */  lui        $at, %hi(D_800FE294)
/* D4C0C 800FD79C 00230821 */  addu       $at, $at, $v1
/* D4C10 800FD7A0 E436E294 */  swc1       $f22, %lo(D_800FE294)($at)
/* D4C14 800FD7A4 00021840 */  sll        $v1, $v0, 1
/* D4C18 800FD7A8 3C018010 */  lui        $at, %hi(D_800FE2B0)
/* D4C1C 800FD7AC 00230821 */  addu       $at, $at, $v1
/* D4C20 800FD7B0 A420E2B0 */  sh         $zero, %lo(D_800FE2B0)($at)
/* D4C24 800FD7B4 00021080 */  sll        $v0, $v0, 2
/* D4C28 800FD7B8 3C01800F */  lui        $at, %hi(D_800EDE70)
/* D4C2C 800FD7BC 00220821 */  addu       $at, $at, $v0
/* D4C30 800FD7C0 8C22DE70 */  lw         $v0, %lo(D_800EDE70)($at)
/* D4C34 800FD7C4 A040004C */  sb         $zero, 0x4c($v0)
/* D4C38 800FD7C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D4C3C 800FD7CC 8FB00010 */  lw         $s0, 0x10($sp)
/* D4C40 800FD7D0 D7B60020 */  ldc1       $f22, 0x20($sp)
/* D4C44 800FD7D4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* D4C48 800FD7D8 03E00008 */  jr         $ra
/* D4C4C 800FD7DC 27BD0028 */   addiu     $sp, $sp, 0x28
