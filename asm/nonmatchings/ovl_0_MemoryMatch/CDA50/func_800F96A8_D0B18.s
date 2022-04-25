	.set noat
	.set noreorder

glabel func_800F96A8_D0B18
/* D0B18 800F96A8 27BDFFF8 */  addiu      $sp, $sp, -8
/* D0B1C 800F96AC F7B40000 */  sdc1       $f20, ($sp)
/* D0B20 800F96B0 46006506 */  mov.s      $f20, $f12
/* D0B24 800F96B4 00001821 */  addu       $v1, $zero, $zero
/* D0B28 800F96B8 3C048010 */  lui        $a0, %hi(D_800FE2E8)
/* D0B2C 800F96BC 2484E2E8 */  addiu      $a0, $a0, %lo(D_800FE2E8)
/* D0B30 800F96C0 3C018010 */  lui        $at, %hi(D_800FDAF8)
/* D0B34 800F96C4 D428DAF8 */  ldc1       $f8, %lo(D_800FDAF8)($at)
/* D0B38 800F96C8 3C018010 */  lui        $at, %hi(D_800FDB00)
/* D0B3C 800F96CC D42ADB00 */  ldc1       $f10, %lo(D_800FDB00)($at)
/* D0B40 800F96D0 3C018010 */  lui        $at, %hi(D_800FDB08)
/* D0B44 800F96D4 D430DB08 */  ldc1       $f16, %lo(D_800FDB08)($at)
/* D0B48 800F96D8 3C018010 */  lui        $at, %hi(D_800FDB10)
/* D0B4C 800F96DC D432DB10 */  ldc1       $f18, %lo(D_800FDB10)($at)
/* D0B50 800F96E0 3C018010 */  lui        $at, %hi(D_800FDB18)
/* D0B54 800F96E4 D42CDB18 */  ldc1       $f12, %lo(D_800FDB18)($at)
/* D0B58 800F96E8 3062FFFF */  andi       $v0, $v1, 0xffff
.L800F96EC:
/* D0B5C 800F96EC 00021080 */  sll        $v0, $v0, 2
/* D0B60 800F96F0 00441021 */  addu       $v0, $v0, $a0
/* D0B64 800F96F4 8C420000 */  lw         $v0, ($v0)
/* D0B68 800F96F8 C4400018 */  lwc1       $f0, 0x18($v0)
/* D0B6C 800F96FC C4420020 */  lwc1       $f2, 0x20($v0)
/* D0B70 800F9700 46140001 */  sub.s      $f0, $f0, $f20
/* D0B74 800F9704 46000185 */  abs.s      $f6, $f0
/* D0B78 800F9708 460E1081 */  sub.s      $f2, $f2, $f14
/* D0B7C 800F970C 46003021 */  cvt.d.s    $f0, $f6
/* D0B80 800F9710 4628003C */  c.lt.d     $f0, $f8
/* D0B84 800F9714 00000000 */  nop
/* D0B88 800F9718 00000000 */  nop
/* D0B8C 800F971C 4500000B */  bc1f       .L800F974C
/* D0B90 800F9720 46001085 */   abs.s     $f2, $f2
/* D0B94 800F9724 46001021 */  cvt.d.s    $f0, $f2
/* D0B98 800F9728 4628003C */  c.lt.d     $f0, $f8
/* D0B9C 800F972C 00000000 */  nop
/* D0BA0 800F9730 00000000 */  nop
/* D0BA4 800F9734 45020006 */  bc1fl      .L800F9750
/* D0BA8 800F9738 46003121 */   cvt.d.s   $f4, $f6
/* D0BAC 800F973C 3C0141F0 */  lui        $at, 0x41f0
/* D0BB0 800F9740 44810000 */  mtc1       $at, $f0
/* D0BB4 800F9744 0803E5F1 */  j          .L800F97C4
/* D0BB8 800F9748 00000000 */   nop
.L800F974C:
/* D0BBC 800F974C 46003121 */  cvt.d.s    $f4, $f6
.L800F9750:
/* D0BC0 800F9750 462A203C */  c.lt.d     $f4, $f10
/* D0BC4 800F9754 00000000 */  nop
/* D0BC8 800F9758 00000000 */  nop
/* D0BCC 800F975C 45020014 */  bc1fl      .L800F97B0
/* D0BD0 800F9760 24630001 */   addiu     $v1, $v1, 1
/* D0BD4 800F9764 46001021 */  cvt.d.s    $f0, $f2
/* D0BD8 800F9768 462A003C */  c.lt.d     $f0, $f10
/* D0BDC 800F976C 00000000 */  nop
/* D0BE0 800F9770 00000000 */  nop
/* D0BE4 800F9774 4502000E */  bc1fl      .L800F97B0
/* D0BE8 800F9778 24630001 */   addiu     $v1, $v1, 1
/* D0BEC 800F977C 4628203C */  c.lt.d     $f4, $f8
/* D0BF0 800F9780 00000000 */  nop
/* D0BF4 800F9784 00000000 */  nop
/* D0BF8 800F9788 45020001 */  bc1fl      .L800F9790
/* D0BFC 800F978C 46003021 */   cvt.d.s   $f0, $f6
.L800F9790:
/* D0C00 800F9790 46280001 */  sub.d      $f0, $f0, $f8
/* D0C04 800F9794 46300003 */  div.d      $f0, $f0, $f16
/* D0C08 800F9798 46200020 */  cvt.s.d    $f0, $f0
/* D0C0C 800F979C 46000021 */  cvt.d.s    $f0, $f0
/* D0C10 800F97A0 46209001 */  sub.d      $f0, $f18, $f0
/* D0C14 800F97A4 462C0002 */  mul.d      $f0, $f0, $f12
/* D0C18 800F97A8 0803E5F1 */  j          .L800F97C4
/* D0C1C 800F97AC 46200020 */   cvt.s.d   $f0, $f0
.L800F97B0:
/* D0C20 800F97B0 3062FFFF */  andi       $v0, $v1, 0xffff
/* D0C24 800F97B4 2C420009 */  sltiu      $v0, $v0, 9
/* D0C28 800F97B8 1440FFCC */  bnez       $v0, .L800F96EC
/* D0C2C 800F97BC 3062FFFF */   andi      $v0, $v1, 0xffff
/* D0C30 800F97C0 44800000 */  mtc1       $zero, $f0
.L800F97C4:
/* D0C34 800F97C4 D7B40000 */  ldc1       $f20, ($sp)
/* D0C38 800F97C8 03E00008 */  jr         $ra
/* D0C3C 800F97CC 27BD0008 */   addiu     $sp, $sp, 8
