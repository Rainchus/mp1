	.set noat
	.set noreorder

glabel func_800F97D0_D0C40
/* D0C40 800F97D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D0C44 800F97D4 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* D0C48 800F97D8 F7B80010 */  sdc1       $f24, 0x10($sp)
/* D0C4C 800F97DC F7B60008 */  sdc1       $f22, 8($sp)
/* D0C50 800F97E0 F7B40000 */  sdc1       $f20, ($sp)
/* D0C54 800F97E4 9083004C */  lbu        $v1, 0x4c($a0)
/* D0C58 800F97E8 000310C0 */  sll        $v0, $v1, 3
/* D0C5C 800F97EC 00431023 */  subu       $v0, $v0, $v1
/* D0C60 800F97F0 00021080 */  sll        $v0, $v0, 2
/* D0C64 800F97F4 3C038010 */  lui        $v1, %hi(D_800FE2C8)
/* D0C68 800F97F8 2463E2C8 */  addiu      $v1, $v1, %lo(D_800FE2C8)
/* D0C6C 800F97FC 00431821 */  addu       $v1, $v0, $v1
/* D0C70 800F9800 AC600008 */  sw         $zero, 8($v1)
/* D0C74 800F9804 2402FFFF */  addiu      $v0, $zero, -1
/* D0C78 800F9808 A4620004 */  sh         $v0, 4($v1)
/* D0C7C 800F980C 44800000 */  mtc1       $zero, $f0
/* D0C80 800F9810 00000000 */  nop
/* D0C84 800F9814 E4600014 */  swc1       $f0, 0x14($v1)
/* D0C88 800F9818 E4600010 */  swc1       $f0, 0x10($v1)
/* D0C8C 800F981C E460000C */  swc1       $f0, 0xc($v1)
/* D0C90 800F9820 C4800018 */  lwc1       $f0, 0x18($a0)
/* D0C94 800F9824 46000021 */  cvt.d.s    $f0, $f0
/* D0C98 800F9828 3C018010 */  lui        $at, %hi(D_800FDB20)
/* D0C9C 800F982C D422DB20 */  ldc1       $f2, %lo(D_800FDB20)($at)
/* D0CA0 800F9830 4620103C */  c.lt.d     $f2, $f0
/* D0CA4 800F9834 00000000 */  nop
/* D0CA8 800F9838 45000006 */  bc1f       .L800F9854
/* D0CAC 800F983C 00000000 */   nop
/* D0CB0 800F9840 3C0143E1 */  lui        $at, 0x43e1
/* D0CB4 800F9844 44810000 */  mtc1       $at, $f0
/* D0CB8 800F9848 00000000 */  nop
/* D0CBC 800F984C 0803E621 */  j          .L800F9884
/* D0CC0 800F9850 E4800018 */   swc1      $f0, 0x18($a0)
.L800F9854:
/* D0CC4 800F9854 C4800018 */  lwc1       $f0, 0x18($a0)
/* D0CC8 800F9858 46000021 */  cvt.d.s    $f0, $f0
/* D0CCC 800F985C 3C018010 */  lui        $at, %hi(D_800FDB28)
/* D0CD0 800F9860 D422DB28 */  ldc1       $f2, %lo(D_800FDB28)($at)
/* D0CD4 800F9864 4622003C */  c.lt.d     $f0, $f2
/* D0CD8 800F9868 00000000 */  nop
/* D0CDC 800F986C 45000005 */  bc1f       .L800F9884
/* D0CE0 800F9870 00000000 */   nop
/* D0CE4 800F9874 3C01C3E1 */  lui        $at, 0xc3e1
/* D0CE8 800F9878 44810000 */  mtc1       $at, $f0
/* D0CEC 800F987C 00000000 */  nop
/* D0CF0 800F9880 E4800018 */  swc1       $f0, 0x18($a0)
.L800F9884:
/* D0CF4 800F9884 C4800020 */  lwc1       $f0, 0x20($a0)
/* D0CF8 800F9888 46000021 */  cvt.d.s    $f0, $f0
/* D0CFC 800F988C 3C018010 */  lui        $at, %hi(D_800FDB30)
/* D0D00 800F9890 D422DB30 */  ldc1       $f2, %lo(D_800FDB30)($at)
/* D0D04 800F9894 4620103C */  c.lt.d     $f2, $f0
/* D0D08 800F9898 00000000 */  nop
/* D0D0C 800F989C 45000019 */  bc1f       .L800F9904
/* D0D10 800F98A0 00000000 */   nop
/* D0D14 800F98A4 3C0143C8 */  lui        $at, 0x43c8
/* D0D18 800F98A8 44810000 */  mtc1       $at, $f0
/* D0D1C 800F98AC 00000000 */  nop
/* D0D20 800F98B0 0803E64E */  j          .L800F9938
/* D0D24 800F98B4 E4800020 */   swc1      $f0, 0x20($a0)
.L800F98B8:
/* D0D28 800F98B8 3C0141F0 */  lui        $at, 0x41f0
/* D0D2C 800F98BC 44810000 */  mtc1       $at, $f0
/* D0D30 800F98C0 00000000 */  nop
/* D0D34 800F98C4 E4600008 */  swc1       $f0, 8($v1)
/* D0D38 800F98C8 E4600014 */  swc1       $f0, 0x14($v1)
/* D0D3C 800F98CC 44800000 */  mtc1       $zero, $f0
/* D0D40 800F98D0 00000000 */  nop
/* D0D44 800F98D4 E4600010 */  swc1       $f0, 0x10($v1)
/* D0D48 800F98D8 0803E6EC */  j          .L800F9BB0
/* D0D4C 800F98DC E460000C */   swc1      $f0, 0xc($v1)
.L800F98E0:
/* D0D50 800F98E0 3C018010 */  lui        $at, %hi(D_800FDB38)
/* D0D54 800F98E4 D422DB38 */  ldc1       $f2, %lo(D_800FDB38)($at)
/* D0D58 800F98E8 46220003 */  div.d      $f0, $f0, $f2
/* D0D5C 800F98EC 462000A0 */  cvt.s.d    $f2, $f0
/* D0D60 800F98F0 460010A1 */  cvt.d.s    $f2, $f2
/* D0D64 800F98F4 3C018010 */  lui        $at, %hi(D_800FDB40)
/* D0D68 800F98F8 D420DB40 */  ldc1       $f0, %lo(D_800FDB40)($at)
/* D0D6C 800F98FC 0803E6E2 */  j          .L800F9B88
/* D0D70 800F9900 46220001 */   sub.d     $f0, $f0, $f2
.L800F9904:
/* D0D74 800F9904 C4800020 */  lwc1       $f0, 0x20($a0)
/* D0D78 800F9908 46000021 */  cvt.d.s    $f0, $f0
/* D0D7C 800F990C 3C018010 */  lui        $at, %hi(D_800FDB48)
/* D0D80 800F9910 D422DB48 */  ldc1       $f2, %lo(D_800FDB48)($at)
/* D0D84 800F9914 4622003C */  c.lt.d     $f0, $f2
/* D0D88 800F9918 00000000 */  nop
/* D0D8C 800F991C 00000000 */  nop
/* D0D90 800F9920 45000006 */  bc1f       .L800F993C
/* D0D94 800F9924 00002821 */   addu      $a1, $zero, $zero
/* D0D98 800F9928 3C01C3C8 */  lui        $at, 0xc3c8
/* D0D9C 800F992C 44810000 */  mtc1       $at, $f0
/* D0DA0 800F9930 00000000 */  nop
/* D0DA4 800F9934 E4800020 */  swc1       $f0, 0x20($a0)
.L800F9938:
/* D0DA8 800F9938 00002821 */  addu       $a1, $zero, $zero
.L800F993C:
/* D0DAC 800F993C 3C068010 */  lui        $a2, %hi(D_800FE2E8)
/* D0DB0 800F9940 24C6E2E8 */  addiu      $a2, $a2, %lo(D_800FE2E8)
/* D0DB4 800F9944 3C018010 */  lui        $at, %hi(D_800FDB50)
/* D0DB8 800F9948 D430DB50 */  ldc1       $f16, %lo(D_800FDB50)($at)
/* D0DBC 800F994C 3C018010 */  lui        $at, %hi(D_800FDB58)
/* D0DC0 800F9950 D438DB58 */  ldc1       $f24, %lo(D_800FDB58)($at)
/* D0DC4 800F9954 3C018010 */  lui        $at, %hi(D_800FDB60)
/* D0DC8 800F9958 D42EDB60 */  ldc1       $f14, %lo(D_800FDB60)($at)
/* D0DCC 800F995C 3C01428C */  lui        $at, 0x428c
/* D0DD0 800F9960 4481D000 */  mtc1       $at, $f26
/* D0DD4 800F9964 3C018010 */  lui        $at, %hi(D_800FDB68)
/* D0DD8 800F9968 D432DB68 */  ldc1       $f18, %lo(D_800FDB68)($at)
/* D0DDC 800F996C 3C018010 */  lui        $at, %hi(D_800FDB70)
/* D0DE0 800F9970 D436DB70 */  ldc1       $f22, %lo(D_800FDB70)($at)
/* D0DE4 800F9974 3C018010 */  lui        $at, %hi(D_800FDB78)
/* D0DE8 800F9978 D434DB78 */  ldc1       $f20, %lo(D_800FDB78)($at)
/* D0DEC 800F997C 30A2FFFF */  andi       $v0, $a1, 0xffff
.L800F9980:
/* D0DF0 800F9980 00021080 */  sll        $v0, $v0, 2
/* D0DF4 800F9984 00461021 */  addu       $v0, $v0, $a2
/* D0DF8 800F9988 8C420000 */  lw         $v0, ($v0)
/* D0DFC 800F998C C44C0018 */  lwc1       $f12, 0x18($v0)
/* D0E00 800F9990 C4480020 */  lwc1       $f8, 0x20($v0)
/* D0E04 800F9994 C4800018 */  lwc1       $f0, 0x18($a0)
/* D0E08 800F9998 46006001 */  sub.s      $f0, $f12, $f0
/* D0E0C 800F999C 46000105 */  abs.s      $f4, $f0
/* D0E10 800F99A0 C4860020 */  lwc1       $f6, 0x20($a0)
/* D0E14 800F99A4 46064001 */  sub.s      $f0, $f8, $f6
/* D0E18 800F99A8 46000285 */  abs.s      $f10, $f0
/* D0E1C 800F99AC 46002021 */  cvt.d.s    $f0, $f4
/* D0E20 800F99B0 4630003C */  c.lt.d     $f0, $f16
/* D0E24 800F99B4 00000000 */  nop
/* D0E28 800F99B8 4500004C */  bc1f       .L800F9AEC
/* D0E2C 800F99BC 00000000 */   nop
/* D0E30 800F99C0 46005021 */  cvt.d.s    $f0, $f10
/* D0E34 800F99C4 4630003C */  c.lt.d     $f0, $f16
/* D0E38 800F99C8 00000000 */  nop
/* D0E3C 800F99CC 00000000 */  nop
/* D0E40 800F99D0 4502003A */  bc1fl      .L800F9ABC
/* D0E44 800F99D4 46002021 */   cvt.d.s   $f0, $f4
/* D0E48 800F99D8 460A203C */  c.lt.s     $f4, $f10
/* D0E4C 800F99DC 00000000 */  nop
/* D0E50 800F99E0 00000000 */  nop
/* D0E54 800F99E4 45020018 */  bc1fl      .L800F9A48
/* D0E58 800F99E8 46002021 */   cvt.d.s   $f0, $f4
/* D0E5C 800F99EC 46340001 */  sub.d      $f0, $f0, $f20
/* D0E60 800F99F0 46380003 */  div.d      $f0, $f0, $f24
/* D0E64 800F99F4 4606403C */  c.lt.s     $f8, $f6
/* D0E68 800F99F8 00000000 */  nop
/* D0E6C 800F99FC 00000000 */  nop
/* D0E70 800F9A00 45000005 */  bc1f       .L800F9A18
/* D0E74 800F9A04 462000A0 */   cvt.s.d   $f2, $f0
/* D0E78 800F9A08 46001021 */  cvt.d.s    $f0, $f2
/* D0E7C 800F9A0C 462E0001 */  sub.d      $f0, $f0, $f14
/* D0E80 800F9A10 0803E68A */  j          .L800F9A28
/* D0E84 800F9A14 46200005 */   abs.d     $f0, $f0
.L800F9A18:
/* D0E88 800F9A18 46001021 */  cvt.d.s    $f0, $f2
/* D0E8C 800F9A1C 462E0001 */  sub.d      $f0, $f0, $f14
/* D0E90 800F9A20 46200005 */  abs.d      $f0, $f0
/* D0E94 800F9A24 46200007 */  neg.d      $f0, $f0
.L800F9A28:
/* D0E98 800F9A28 46200020 */  cvt.s.d    $f0, $f0
/* D0E9C 800F9A2C 461A0002 */  mul.s      $f0, $f0, $f26
/* D0EA0 800F9A30 E460000C */  swc1       $f0, 0xc($v1)
/* D0EA4 800F9A34 46001021 */  cvt.d.s    $f0, $f2
/* D0EA8 800F9A38 3C018010 */  lui        $at, %hi(D_800FDB80)
/* D0EAC 800F9A3C D422DB80 */  ldc1       $f2, %lo(D_800FDB80)($at)
/* D0EB0 800F9A40 0803E6AA */  j          .L800F9AA8
/* D0EB4 800F9A44 46209001 */   sub.d     $f0, $f18, $f0
.L800F9A48:
/* D0EB8 800F9A48 3C018010 */  lui        $at, %hi(D_800FDB88)
/* D0EBC 800F9A4C D422DB88 */  ldc1       $f2, %lo(D_800FDB88)($at)
/* D0EC0 800F9A50 46220001 */  sub.d      $f0, $f0, $f2
/* D0EC4 800F9A54 46380003 */  div.d      $f0, $f0, $f24
/* D0EC8 800F9A58 462000A0 */  cvt.s.d    $f2, $f0
/* D0ECC 800F9A5C C4800018 */  lwc1       $f0, 0x18($a0)
/* D0ED0 800F9A60 4600603C */  c.lt.s     $f12, $f0
/* D0ED4 800F9A64 00000000 */  nop
/* D0ED8 800F9A68 00000000 */  nop
/* D0EDC 800F9A6C 45000005 */  bc1f       .L800F9A84
/* D0EE0 800F9A70 46001021 */   cvt.d.s   $f0, $f2
/* D0EE4 800F9A74 462E0001 */  sub.d      $f0, $f0, $f14
/* D0EE8 800F9A78 46200005 */  abs.d      $f0, $f0
/* D0EEC 800F9A7C 0803E6A3 */  j          .L800F9A8C
/* D0EF0 800F9A80 46200007 */   neg.d     $f0, $f0
.L800F9A84:
/* D0EF4 800F9A84 462E0001 */  sub.d      $f0, $f0, $f14
/* D0EF8 800F9A88 46200005 */  abs.d      $f0, $f0
.L800F9A8C:
/* D0EFC 800F9A8C 46200020 */  cvt.s.d    $f0, $f0
/* D0F00 800F9A90 461A0002 */  mul.s      $f0, $f0, $f26
/* D0F04 800F9A94 E4600010 */  swc1       $f0, 0x10($v1)
/* D0F08 800F9A98 46001021 */  cvt.d.s    $f0, $f2
/* D0F0C 800F9A9C 46209001 */  sub.d      $f0, $f18, $f0
/* D0F10 800F9AA0 3C018010 */  lui        $at, %hi(D_800FDB90)
/* D0F14 800F9AA4 D422DB90 */  ldc1       $f2, %lo(D_800FDB90)($at)
.L800F9AA8:
/* D0F18 800F9AA8 00000000 */  nop
/* D0F1C 800F9AAC 46220002 */  mul.d      $f0, $f0, $f2
/* D0F20 800F9AB0 46200020 */  cvt.s.d    $f0, $f0
/* D0F24 800F9AB4 E4600014 */  swc1       $f0, 0x14($v1)
/* D0F28 800F9AB8 46002021 */  cvt.d.s    $f0, $f4
.L800F9ABC:
/* D0F2C 800F9ABC 4630003C */  c.lt.d     $f0, $f16
/* D0F30 800F9AC0 00000000 */  nop
/* D0F34 800F9AC4 00000000 */  nop
/* D0F38 800F9AC8 45020008 */  bc1fl      .L800F9AEC
/* D0F3C 800F9ACC 46002021 */   cvt.d.s   $f0, $f4
/* D0F40 800F9AD0 46005021 */  cvt.d.s    $f0, $f10
/* D0F44 800F9AD4 4630003C */  c.lt.d     $f0, $f16
/* D0F48 800F9AD8 00000000 */  nop
/* D0F4C 800F9ADC 00000000 */  nop
/* D0F50 800F9AE0 45030001 */  bc1tl      .L800F9AE8
/* D0F54 800F9AE4 A4650004 */   sh        $a1, 4($v1)
.L800F9AE8:
/* D0F58 800F9AE8 46002021 */  cvt.d.s    $f0, $f4
.L800F9AEC:
/* D0F5C 800F9AEC 3C018010 */  lui        $at, %hi(D_800FDB98)
/* D0F60 800F9AF0 D422DB98 */  ldc1       $f2, %lo(D_800FDB98)($at)
/* D0F64 800F9AF4 4622003C */  c.lt.d     $f0, $f2
/* D0F68 800F9AF8 00000000 */  nop
/* D0F6C 800F9AFC 00000000 */  nop
/* D0F70 800F9B00 45020007 */  bc1fl      .L800F9B20
/* D0F74 800F9B04 460020A1 */   cvt.d.s   $f2, $f4
/* D0F78 800F9B08 46005021 */  cvt.d.s    $f0, $f10
/* D0F7C 800F9B0C 4622003C */  c.lt.d     $f0, $f2
/* D0F80 800F9B10 00000000 */  nop
/* D0F84 800F9B14 4501FF68 */  bc1t       .L800F98B8
/* D0F88 800F9B18 00000000 */   nop
/* D0F8C 800F9B1C 460020A1 */  cvt.d.s    $f2, $f4
.L800F9B20:
/* D0F90 800F9B20 4636103C */  c.lt.d     $f2, $f22
/* D0F94 800F9B24 00000000 */  nop
/* D0F98 800F9B28 00000000 */  nop
/* D0F9C 800F9B2C 4502001C */  bc1fl      .L800F9BA0
/* D0FA0 800F9B30 24A50001 */   addiu     $a1, $a1, 1
/* D0FA4 800F9B34 46005021 */  cvt.d.s    $f0, $f10
/* D0FA8 800F9B38 4636003C */  c.lt.d     $f0, $f22
/* D0FAC 800F9B3C 00000000 */  nop
/* D0FB0 800F9B40 00000000 */  nop
/* D0FB4 800F9B44 45020016 */  bc1fl      .L800F9BA0
/* D0FB8 800F9B48 24A50001 */   addiu     $a1, $a1, 1
/* D0FBC 800F9B4C 4634103C */  c.lt.d     $f2, $f20
/* D0FC0 800F9B50 00000000 */  nop
/* D0FC4 800F9B54 00000000 */  nop
/* D0FC8 800F9B58 4503FF61 */  bc1tl      .L800F98E0
/* D0FCC 800F9B5C 46340001 */   sub.d     $f0, $f0, $f20
/* D0FD0 800F9B60 460020A1 */  cvt.d.s    $f2, $f4
/* D0FD4 800F9B64 3C018010 */  lui        $at, %hi(D_800FDBA0)
/* D0FD8 800F9B68 D420DBA0 */  ldc1       $f0, %lo(D_800FDBA0)($at)
/* D0FDC 800F9B6C 46201081 */  sub.d      $f2, $f2, $f0
/* D0FE0 800F9B70 3C018010 */  lui        $at, %hi(D_800FDBA8)
/* D0FE4 800F9B74 D420DBA8 */  ldc1       $f0, %lo(D_800FDBA8)($at)
/* D0FE8 800F9B78 46201083 */  div.d      $f2, $f2, $f0
/* D0FEC 800F9B7C 462010A0 */  cvt.s.d    $f2, $f2
/* D0FF0 800F9B80 46001021 */  cvt.d.s    $f0, $f2
/* D0FF4 800F9B84 46209001 */  sub.d      $f0, $f18, $f0
.L800F9B88:
/* D0FF8 800F9B88 3C018010 */  lui        $at, %hi(D_800FDBB0)
/* D0FFC 800F9B8C D422DBB0 */  ldc1       $f2, %lo(D_800FDBB0)($at)
/* D1000 800F9B90 46220002 */  mul.d      $f0, $f0, $f2
/* D1004 800F9B94 46200020 */  cvt.s.d    $f0, $f0
/* D1008 800F9B98 0803E6EC */  j          .L800F9BB0
/* D100C 800F9B9C E4600008 */   swc1      $f0, 8($v1)
.L800F9BA0:
/* D1010 800F9BA0 30A2FFFF */  andi       $v0, $a1, 0xffff
/* D1014 800F9BA4 2C420009 */  sltiu      $v0, $v0, 9
/* D1018 800F9BA8 1440FF75 */  bnez       $v0, .L800F9980
/* D101C 800F9BAC 30A2FFFF */   andi      $v0, $a1, 0xffff
.L800F9BB0:
/* D1020 800F9BB0 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* D1024 800F9BB4 D7B80010 */  ldc1       $f24, 0x10($sp)
/* D1028 800F9BB8 D7B60008 */  ldc1       $f22, 8($sp)
/* D102C 800F9BBC D7B40000 */  ldc1       $f20, ($sp)
/* D1030 800F9BC0 03E00008 */  jr         $ra
/* D1034 800F9BC4 27BD0020 */   addiu     $sp, $sp, 0x20
