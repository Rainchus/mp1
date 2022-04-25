	.set noat
	.set noreorder

glabel func_800F65E0_CDA50
/* CDA50 800F65E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* CDA54 800F65E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* CDA58 800F65E8 AFB00020 */  sw         $s0, 0x20($sp)
/* CDA5C 800F65EC F7B60030 */  sdc1       $f22, 0x30($sp)
/* CDA60 800F65F0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* CDA64 800F65F4 0C00A424 */  jal        func_80029090
/* CDA68 800F65F8 24040032 */   addiu     $a0, $zero, 0x32
/* CDA6C 800F65FC 24040032 */  addiu      $a0, $zero, 0x32
/* CDA70 800F6600 0C0173CC */  jal        func_8005CF30
/* CDA74 800F6604 00002821 */   addu      $a1, $zero, $zero
/* CDA78 800F6608 0C018022 */  jal        func_80060088
/* CDA7C 800F660C 00000000 */   nop
/* CDA80 800F6610 0C00779C */  jal        func_8001DE70
/* CDA84 800F6614 24040040 */   addiu     $a0, $zero, 0x40
/* CDA88 800F6618 3C028006 */  lui        $v0, %hi(func_8005EB1C)
/* CDA8C 800F661C 2442EB1C */  addiu      $v0, $v0, %lo(func_8005EB1C)
/* CDA90 800F6620 AFA20010 */  sw         $v0, 0x10($sp)
/* CDA94 800F6624 24047FDA */  addiu      $a0, $zero, 0x7fda
/* CDA98 800F6628 00002821 */  addu       $a1, $zero, $zero
/* CDA9C 800F662C 00003021 */  addu       $a2, $zero, $zero
/* CDAA0 800F6630 0C0174E1 */  jal        func_8005D384
/* CDAA4 800F6634 2407FFFF */   addiu     $a3, $zero, -1
/* CDAA8 800F6638 00402021 */  addu       $a0, $v0, $zero
/* CDAAC 800F663C 0C01762E */  jal        func_8005D8B8
/* CDAB0 800F6640 240500A0 */   addiu     $a1, $zero, 0xa0
/* CDAB4 800F6644 0C008D12 */  jal        func_80023448
/* CDAB8 800F6648 24040002 */   addiu     $a0, $zero, 2
/* CDABC 800F664C 00002021 */  addu       $a0, $zero, $zero
/* CDAC0 800F6650 240500A0 */  addiu      $a1, $zero, 0xa0
/* CDAC4 800F6654 240600A0 */  addiu      $a2, $zero, 0xa0
/* CDAC8 800F6658 0C008D2E */  jal        func_800234B8
/* CDACC 800F665C 240700A0 */   addiu     $a3, $zero, 0xa0
/* CDAD0 800F6660 24040001 */  addiu      $a0, $zero, 1
/* CDAD4 800F6664 240500FF */  addiu      $a1, $zero, 0xff
/* CDAD8 800F6668 240600FF */  addiu      $a2, $zero, 0xff
/* CDADC 800F666C 0C008D2E */  jal        func_800234B8
/* CDAE0 800F6670 240700FF */   addiu     $a3, $zero, 0xff
/* CDAE4 800F6674 3C05C2C0 */  lui        $a1, 0xc2c0
/* CDAE8 800F6678 3C0642C8 */  lui        $a2, 0x42c8
/* CDAEC 800F667C 3C0741D0 */  lui        $a3, 0x41d0
/* CDAF0 800F6680 0C008D41 */  jal        func_80023504
/* CDAF4 800F6684 24040001 */   addiu     $a0, $zero, 1
/* CDAF8 800F6688 0C005E28 */  jal        func_800178A0
/* CDAFC 800F668C 24040001 */   addiu     $a0, $zero, 1
/* CDB00 800F6690 0C005E3A */  jal        func_800178E8
/* CDB04 800F6694 00000000 */   nop
/* CDB08 800F6698 305000FF */  andi       $s0, $v0, 0xff
/* CDB0C 800F669C 3C014370 */  lui        $at, 0x4370
/* CDB10 800F66A0 44810000 */  mtc1       $at, $f0
/* CDB14 800F66A4 00000000 */  nop
/* CDB18 800F66A8 E7A00010 */  swc1       $f0, 0x10($sp)
/* CDB1C 800F66AC 02002021 */  addu       $a0, $s0, $zero
/* CDB20 800F66B0 00002821 */  addu       $a1, $zero, $zero
/* CDB24 800F66B4 3C0743A0 */  lui        $a3, 0x43a0
/* CDB28 800F66B8 0C005D98 */  jal        func_80017660
/* CDB2C 800F66BC 00A03021 */   addu      $a2, $a1, $zero
/* CDB30 800F66C0 3C014420 */  lui        $at, 0x4420
/* CDB34 800F66C4 44812000 */  mtc1       $at, $f4
/* CDB38 800F66C8 00000000 */  nop
/* CDB3C 800F66CC E7A40010 */  swc1       $f4, 0x10($sp)
/* CDB40 800F66D0 3C0143F0 */  lui        $at, 0x43f0
/* CDB44 800F66D4 44811000 */  mtc1       $at, $f2
/* CDB48 800F66D8 00000000 */  nop
/* CDB4C 800F66DC E7A20014 */  swc1       $f2, 0x14($sp)
/* CDB50 800F66E0 3C0143FF */  lui        $at, 0x43ff
/* CDB54 800F66E4 34218000 */  ori        $at, $at, 0x8000
/* CDB58 800F66E8 44810000 */  mtc1       $at, $f0
/* CDB5C 800F66EC 00000000 */  nop
/* CDB60 800F66F0 E7A00018 */  swc1       $f0, 0x18($sp)
/* CDB64 800F66F4 44052000 */  mfc1       $a1, $f4
/* CDB68 800F66F8 44061000 */  mfc1       $a2, $f2
/* CDB6C 800F66FC 44070000 */  mfc1       $a3, $f0
/* CDB70 800F6700 00000000 */  nop
/* CDB74 800F6704 0C005DB1 */  jal        func_800176C4
/* CDB78 800F6708 02002021 */   addu      $a0, $s0, $zero
/* CDB7C 800F670C 3C054234 */  lui        $a1, 0x4234
/* CDB80 800F6710 3C0642A0 */  lui        $a2, 0x42a0
/* CDB84 800F6714 3C07457A */  lui        $a3, 0x457a
/* CDB88 800F6718 0C007525 */  jal        func_8001D494
/* CDB8C 800F671C 00002021 */   addu      $a0, $zero, $zero
/* CDB90 800F6720 0C03DF02 */  jal        func_800F7C08_CF078
/* CDB94 800F6724 00000000 */   nop
/* CDB98 800F6728 3C10800C */  lui        $s0, %hi(D_800C3110)
/* CDB9C 800F672C 8E103110 */  lw         $s0, %lo(D_800C3110)($s0)
/* CDBA0 800F6730 3C014220 */  lui        $at, 0x4220
/* CDBA4 800F6734 44810000 */  mtc1       $at, $f0
/* CDBA8 800F6738 3C018010 */  lui        $at, %hi(D_800FD900)
/* CDBAC 800F673C D436D900 */  ldc1       $f22, %lo(D_800FD900)($at)
/* CDBB0 800F6740 3C0141A0 */  lui        $at, 0x41a0
/* CDBB4 800F6744 44816000 */  mtc1       $at, $f12
/* CDBB8 800F6748 00000000 */  nop
/* CDBBC 800F674C 0C02BAB0 */  jal        func_800AEAC0
/* CDBC0 800F6750 E6000040 */   swc1      $f0, 0x40($s0)
/* CDBC4 800F6754 46000506 */  mov.s      $f20, $f0
/* CDBC8 800F6758 C60C0040 */  lwc1       $f12, 0x40($s0)
/* CDBCC 800F675C 46006321 */  cvt.d.s    $f12, $f12
/* CDBD0 800F6760 46366303 */  div.d      $f12, $f12, $f22
/* CDBD4 800F6764 0C02BBF4 */  jal        func_800AEFD0
/* CDBD8 800F6768 46206320 */   cvt.s.d   $f12, $f12
/* CDBDC 800F676C 4600A503 */  div.s      $f20, $f20, $f0
/* CDBE0 800F6770 3C018010 */  lui        $at, %hi(D_800FDE28)
/* CDBE4 800F6774 E434DE28 */  swc1       $f20, %lo(D_800FDE28)($at)
/* CDBE8 800F6778 3C048010 */  lui        $a0, %hi(D_800FDDE8)
/* CDBEC 800F677C 2484DDE8 */  addiu      $a0, $a0, %lo(D_800FDDE8)
/* CDBF0 800F6780 0C021BC2 */  jal        func_80086F08
/* CDBF4 800F6784 26050138 */   addiu     $a1, $s0, 0x138
/* CDBF8 800F6788 3C01800F */  lui        $at, %hi(D_800ED440)
/* CDBFC 800F678C A420D440 */  sh         $zero, %lo(D_800ED440)($at)
/* CDC00 800F6790 3C01800F */  lui        $at, %hi(D_800F2BC0)
/* CDC04 800F6794 A4202BC0 */  sh         $zero, %lo(D_800F2BC0)($at)
/* CDC08 800F6798 3C02800F */  lui        $v0, %hi(func_800F6858_CDCC8)
/* CDC0C 800F679C 24426858 */  addiu      $v0, $v0, %lo(func_800F6858_CDCC8)
/* CDC10 800F67A0 AFA20010 */  sw         $v0, 0x10($sp)
/* CDC14 800F67A4 24040020 */  addiu      $a0, $zero, 0x20
/* CDC18 800F67A8 00002821 */  addu       $a1, $zero, $zero
/* CDC1C 800F67AC 00003021 */  addu       $a2, $zero, $zero
/* CDC20 800F67B0 0C0174E1 */  jal        func_8005D384
/* CDC24 800F67B4 2407FFFF */   addiu     $a3, $zero, -1
/* CDC28 800F67B8 3C018010 */  lui        $at, %hi(D_800FDDDC)
/* CDC2C 800F67BC 0C005D63 */  jal        func_8001758C
/* CDC30 800F67C0 AC22DDDC */   sw        $v0, %lo(D_800FDDDC)($at)
/* CDC34 800F67C4 0C03DEDB */  jal        func_800F7B6C_CEFDC
/* CDC38 800F67C8 304400FF */   andi      $a0, $v0, 0xff
/* CDC3C 800F67CC 0C03DF5D */  jal        func_800F7D74_CF1E4
/* CDC40 800F67D0 00000000 */   nop
/* CDC44 800F67D4 3402FFFF */  ori        $v0, $zero, 0xffff
/* CDC48 800F67D8 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CDC4C 800F67DC A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CDC50 800F67E0 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CDC54 800F67E4 A420DE2C */  sh         $zero, %lo(D_800FDE2C)($at)
/* CDC58 800F67E8 3C01800F */  lui        $at, %hi(D_800ED430)
/* CDC5C 800F67EC AC20D430 */  sw         $zero, %lo(D_800ED430)($at)
/* CDC60 800F67F0 3C018010 */  lui        $at, %hi(D_800FE2C4)
/* CDC64 800F67F4 A420E2C4 */  sh         $zero, %lo(D_800FE2C4)($at)
/* CDC68 800F67F8 3C018010 */  lui        $at, %hi(D_800FE2C0)
/* CDC6C 800F67FC A420E2C0 */  sh         $zero, %lo(D_800FE2C0)($at)
/* CDC70 800F6800 3C018010 */  lui        $at, %hi(D_800FE180)
/* CDC74 800F6804 A420E180 */  sh         $zero, %lo(D_800FE180)($at)
/* CDC78 800F6808 3C048010 */  lui        $a0, %hi(D_800FD8D0)
/* CDC7C 800F680C 2484D8D0 */  addiu      $a0, $a0, %lo(D_800FD8D0)
/* CDC80 800F6810 0C01EC5A */  jal        func_8007B168
/* CDC84 800F6814 24050001 */   addiu     $a1, $zero, 1
/* CDC88 800F6818 3C048010 */  lui        $a0, %hi(D_800FD8DC)
/* CDC8C 800F681C 2484D8DC */  addiu      $a0, $a0, %lo(D_800FD8DC)
/* CDC90 800F6820 0C01EC5A */  jal        func_8007B168
/* CDC94 800F6824 24050001 */   addiu     $a1, $zero, 1
/* CDC98 800F6828 3C048010 */  lui        $a0, %hi(D_800FD8EC)
/* CDC9C 800F682C 2484D8EC */  addiu      $a0, $a0, %lo(D_800FD8EC)
/* CDCA0 800F6830 0C01EC5A */  jal        func_8007B168
/* CDCA4 800F6834 24050001 */   addiu     $a1, $zero, 1
/* CDCA8 800F6838 0C0180AB */  jal        func_800602AC
/* CDCAC 800F683C 240401A2 */   addiu     $a0, $zero, 0x1a2
/* CDCB0 800F6840 8FBF0024 */  lw         $ra, 0x24($sp)
/* CDCB4 800F6844 8FB00020 */  lw         $s0, 0x20($sp)
/* CDCB8 800F6848 D7B60030 */  ldc1       $f22, 0x30($sp)
/* CDCBC 800F684C D7B40028 */  ldc1       $f20, 0x28($sp)
/* CDCC0 800F6850 03E00008 */  jr         $ra
/* CDCC4 800F6854 27BD0038 */   addiu     $sp, $sp, 0x38
