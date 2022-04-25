	.set noat
	.set noreorder

glabel func_800F68CC_CDD3C
/* CDD3C 800F68CC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* CDD40 800F68D0 AFBF004C */  sw         $ra, 0x4c($sp)
/* CDD44 800F68D4 AFBE0048 */  sw         $fp, 0x48($sp)
/* CDD48 800F68D8 AFB70044 */  sw         $s7, 0x44($sp)
/* CDD4C 800F68DC AFB60040 */  sw         $s6, 0x40($sp)
/* CDD50 800F68E0 AFB5003C */  sw         $s5, 0x3c($sp)
/* CDD54 800F68E4 AFB40038 */  sw         $s4, 0x38($sp)
/* CDD58 800F68E8 AFB30034 */  sw         $s3, 0x34($sp)
/* CDD5C 800F68EC AFB20030 */  sw         $s2, 0x30($sp)
/* CDD60 800F68F0 AFB1002C */  sw         $s1, 0x2c($sp)
/* CDD64 800F68F4 AFB00028 */  sw         $s0, 0x28($sp)
/* CDD68 800F68F8 F7B40050 */  sdc1       $f20, 0x50($sp)
/* CDD6C 800F68FC 0C03DE5B */  jal        func_800F796C_CEDDC
/* CDD70 800F6900 0080A021 */   addu      $s4, $a0, $zero
/* CDD74 800F6904 3C028010 */  lui        $v0, %hi(D_800FDE2C)
/* CDD78 800F6908 8442DE2C */  lh         $v0, %lo(D_800FDE2C)($v0)
/* CDD7C 800F690C 144000AC */  bnez       $v0, .L800F6BC0
/* CDD80 800F6910 00408021 */   addu      $s0, $v0, $zero
/* CDD84 800F6914 00009021 */  addu       $s2, $zero, $zero
/* CDD88 800F6918 3C158010 */  lui        $s5, %hi(D_800FDDA0)
/* CDD8C 800F691C 26B5DDA0 */  addiu      $s5, $s5, %lo(D_800FDDA0)
/* CDD90 800F6920 3C168010 */  lui        $s6, %hi(D_800FDD70)
/* CDD94 800F6924 26D6DD70 */  addiu      $s6, $s6, %lo(D_800FDD70)
/* CDD98 800F6928 00008821 */  addu       $s1, $zero, $zero
.L800F692C:
/* CDD9C 800F692C 3243FFFF */  andi       $v1, $s2, 0xffff
/* CDDA0 800F6930 00039880 */  sll        $s3, $v1, 2
/* CDDA4 800F6934 2C680001 */  sltiu      $t0, $v1, 1
/* CDDA8 800F6938 AFA8001C */  sw         $t0, 0x1c($sp)
/* CDDAC 800F693C 38620001 */  xori       $v0, $v1, 1
/* CDDB0 800F6940 2C420001 */  sltiu      $v0, $v0, 1
/* CDDB4 800F6944 AFA20024 */  sw         $v0, 0x24($sp)
/* CDDB8 800F6948 38620002 */  xori       $v0, $v1, 2
/* CDDBC 800F694C 2C5E0001 */  sltiu      $fp, $v0, 1
/* CDDC0 800F6950 38620003 */  xori       $v0, $v1, 3
/* CDDC4 800F6954 2C570001 */  sltiu      $s7, $v0, 1
/* CDDC8 800F6958 0003A040 */  sll        $s4, $v1, 1
/* CDDCC 800F695C 3222FFFF */  andi       $v0, $s1, 0xffff
.L800F6960:
/* CDDD0 800F6960 00022100 */  sll        $a0, $v0, 4
/* CDDD4 800F6964 3C088010 */  lui        $t0, %hi(D_800FDD80)
/* CDDD8 800F6968 2508DD80 */  addiu      $t0, $t0, %lo(D_800FDD80)
/* CDDDC 800F696C 00881821 */  addu       $v1, $a0, $t0
/* CDDE0 800F6970 02631821 */  addu       $v1, $s3, $v1
/* CDDE4 800F6974 3C014320 */  lui        $at, 0x4320
/* CDDE8 800F6978 44810000 */  mtc1       $at, $f0
/* CDDEC 800F697C 00000000 */  nop
/* CDDF0 800F6980 E4600000 */  swc1       $f0, ($v1)
/* CDDF4 800F6984 38420001 */  xori       $v0, $v0, 1
/* CDDF8 800F6988 2C420001 */  sltiu      $v0, $v0, 1
/* CDDFC 800F698C 8FA8001C */  lw         $t0, 0x1c($sp)
/* CDE00 800F6990 01021024 */  and        $v0, $t0, $v0
/* CDE04 800F6994 10400006 */  beqz       $v0, .L800F69B0
/* CDE08 800F6998 00951021 */   addu      $v0, $a0, $s5
/* CDE0C 800F699C 3C0142C8 */  lui        $at, 0x42c8
/* CDE10 800F69A0 44810000 */  mtc1       $at, $f0
/* CDE14 800F69A4 00000000 */  nop
/* CDE18 800F69A8 0803DA95 */  j          .L800F6A54
/* CDE1C 800F69AC 02621021 */   addu      $v0, $s3, $v0
.L800F69B0:
/* CDE20 800F69B0 3223FFFF */  andi       $v1, $s1, 0xffff
/* CDE24 800F69B4 2C620001 */  sltiu      $v0, $v1, 1
/* CDE28 800F69B8 8FA80024 */  lw         $t0, 0x24($sp)
/* CDE2C 800F69BC 01021024 */  and        $v0, $t0, $v0
/* CDE30 800F69C0 10400007 */  beqz       $v0, .L800F69E0
/* CDE34 800F69C4 00031100 */   sll       $v0, $v1, 4
/* CDE38 800F69C8 00551021 */  addu       $v0, $v0, $s5
/* CDE3C 800F69CC 3C0142C8 */  lui        $at, 0x42c8
/* CDE40 800F69D0 44810000 */  mtc1       $at, $f0
/* CDE44 800F69D4 00000000 */  nop
/* CDE48 800F69D8 0803DA95 */  j          .L800F6A54
/* CDE4C 800F69DC 02621021 */   addu      $v0, $s3, $v0
.L800F69E0:
/* CDE50 800F69E0 2C620001 */  sltiu      $v0, $v1, 1
/* CDE54 800F69E4 03C21024 */  and        $v0, $fp, $v0
/* CDE58 800F69E8 10400007 */  beqz       $v0, .L800F6A08
/* CDE5C 800F69EC 00031100 */   sll       $v0, $v1, 4
/* CDE60 800F69F0 00551021 */  addu       $v0, $v0, $s5
/* CDE64 800F69F4 3C01430C */  lui        $at, 0x430c
/* CDE68 800F69F8 44810000 */  mtc1       $at, $f0
/* CDE6C 800F69FC 00000000 */  nop
/* CDE70 800F6A00 0803DA95 */  j          .L800F6A54
/* CDE74 800F6A04 02621021 */   addu      $v0, $s3, $v0
.L800F6A08:
/* CDE78 800F6A08 3223FFFF */  andi       $v1, $s1, 0xffff
/* CDE7C 800F6A0C 38620001 */  xori       $v0, $v1, 1
/* CDE80 800F6A10 2C420001 */  sltiu      $v0, $v0, 1
/* CDE84 800F6A14 02E21024 */  and        $v0, $s7, $v0
/* CDE88 800F6A18 10400007 */  beqz       $v0, .L800F6A38
/* CDE8C 800F6A1C 00031100 */   sll       $v0, $v1, 4
/* CDE90 800F6A20 00551021 */  addu       $v0, $v0, $s5
/* CDE94 800F6A24 3C01430C */  lui        $at, 0x430c
/* CDE98 800F6A28 44810000 */  mtc1       $at, $f0
/* CDE9C 800F6A2C 00000000 */  nop
/* CDEA0 800F6A30 0803DA95 */  j          .L800F6A54
/* CDEA4 800F6A34 02621021 */   addu      $v0, $s3, $v0
.L800F6A38:
/* CDEA8 800F6A38 3222FFFF */  andi       $v0, $s1, 0xffff
/* CDEAC 800F6A3C 00021100 */  sll        $v0, $v0, 4
/* CDEB0 800F6A40 00551021 */  addu       $v0, $v0, $s5
/* CDEB4 800F6A44 02621021 */  addu       $v0, $s3, $v0
/* CDEB8 800F6A48 3C0142F0 */  lui        $at, 0x42f0
/* CDEBC 800F6A4C 44810000 */  mtc1       $at, $f0
/* CDEC0 800F6A50 00000000 */  nop
.L800F6A54:
/* CDEC4 800F6A54 E4400000 */  swc1       $f0, ($v0)
/* CDEC8 800F6A58 24040001 */  addiu      $a0, $zero, 1
/* CDECC 800F6A5C 0C0193BD */  jal        func_80064EF4
/* CDED0 800F6A60 00002821 */   addu      $a1, $zero, $zero
/* CDED4 800F6A64 3223FFFF */  andi       $v1, $s1, 0xffff
/* CDED8 800F6A68 000318C0 */  sll        $v1, $v1, 3
/* CDEDC 800F6A6C 00761821 */  addu       $v1, $v1, $s6
/* CDEE0 800F6A70 02838021 */  addu       $s0, $s4, $v1
/* CDEE4 800F6A74 A6020000 */  sh         $v0, ($s0)
/* CDEE8 800F6A78 00021400 */  sll        $v0, $v0, 0x10
/* CDEEC 800F6A7C 00022403 */  sra        $a0, $v0, 0x10
/* CDEF0 800F6A80 00002821 */  addu       $a1, $zero, $zero
/* CDEF4 800F6A84 0C019D20 */  jal        func_80067480
/* CDEF8 800F6A88 2406FFFF */   addiu     $a2, $zero, -1
/* CDEFC 800F6A8C 86040000 */  lh         $a0, ($s0)
/* CDF00 800F6A90 00002821 */  addu       $a1, $zero, $zero
/* CDF04 800F6A94 3C063F80 */  lui        $a2, 0x3f80
/* CDF08 800F6A98 0C019CD5 */  jal        func_80067354
/* CDF0C 800F6A9C 00C03821 */   addu      $a3, $a2, $zero
/* CDF10 800F6AA0 86040000 */  lh         $a0, ($s0)
/* CDF14 800F6AA4 00002821 */  addu       $a1, $zero, $zero
/* CDF18 800F6AA8 3C068010 */  lui        $a2, %hi(D_800FDE34)
/* CDF1C 800F6AAC 00D43021 */  addu       $a2, $a2, $s4
/* CDF20 800F6AB0 84C6DE34 */  lh         $a2, %lo(D_800FDE34)($a2)
/* CDF24 800F6AB4 0C019C82 */  jal        func_80067208
/* CDF28 800F6AB8 00003821 */   addu      $a3, $zero, $zero
/* CDF2C 800F6ABC 86040000 */  lh         $a0, ($s0)
/* CDF30 800F6AC0 00002821 */  addu       $a1, $zero, $zero
/* CDF34 800F6AC4 0C019C77 */  jal        func_800671DC
/* CDF38 800F6AC8 00003021 */   addu      $a2, $zero, $zero
/* CDF3C 800F6ACC 32220001 */  andi       $v0, $s1, 1
/* CDF40 800F6AD0 10400004 */  beqz       $v0, .L800F6AE4
/* CDF44 800F6AD4 00002821 */   addu      $a1, $zero, $zero
/* CDF48 800F6AD8 86040000 */  lh         $a0, ($s0)
/* CDF4C 800F6ADC 0803DABF */  j          .L800F6AFC
/* CDF50 800F6AE0 2406140C */   addiu     $a2, $zero, 0x140c
.L800F6AE4:
/* CDF54 800F6AE4 3222FFFF */  andi       $v0, $s1, 0xffff
/* CDF58 800F6AE8 000210C0 */  sll        $v0, $v0, 3
/* CDF5C 800F6AEC 00561021 */  addu       $v0, $v0, $s6
/* CDF60 800F6AF0 02821021 */  addu       $v0, $s4, $v0
/* CDF64 800F6AF4 84440000 */  lh         $a0, ($v0)
/* CDF68 800F6AF8 2406140D */  addiu      $a2, $zero, 0x140d
.L800F6AFC:
/* CDF6C 800F6AFC 0C019D2F */  jal        func_800674BC
/* CDF70 800F6B00 00000000 */   nop
/* CDF74 800F6B04 3223FFFF */  andi       $v1, $s1, 0xffff
/* CDF78 800F6B08 000380C0 */  sll        $s0, $v1, 3
/* CDF7C 800F6B0C 02168021 */  addu       $s0, $s0, $s6
/* CDF80 800F6B10 02908021 */  addu       $s0, $s4, $s0
/* CDF84 800F6B14 00031900 */  sll        $v1, $v1, 4
/* CDF88 800F6B18 3C088010 */  lui        $t0, %hi(D_800FDD80)
/* CDF8C 800F6B1C 2508DD80 */  addiu      $t0, $t0, %lo(D_800FDD80)
/* CDF90 800F6B20 00681021 */  addu       $v0, $v1, $t0
/* CDF94 800F6B24 02621021 */  addu       $v0, $s3, $v0
/* CDF98 800F6B28 C4400000 */  lwc1       $f0, ($v0)
/* CDF9C 800F6B2C 4600008D */  trunc.w.s  $f2, $f0
/* CDFA0 800F6B30 44061000 */  mfc1       $a2, $f2
/* CDFA4 800F6B34 00000000 */  nop
/* CDFA8 800F6B38 00063400 */  sll        $a2, $a2, 0x10
/* CDFAC 800F6B3C 00751821 */  addu       $v1, $v1, $s5
/* CDFB0 800F6B40 02631821 */  addu       $v1, $s3, $v1
/* CDFB4 800F6B44 C4600000 */  lwc1       $f0, ($v1)
/* CDFB8 800F6B48 4600008D */  trunc.w.s  $f2, $f0
/* CDFBC 800F6B4C 44071000 */  mfc1       $a3, $f2
/* CDFC0 800F6B50 00000000 */  nop
/* CDFC4 800F6B54 00073C00 */  sll        $a3, $a3, 0x10
/* CDFC8 800F6B58 86040000 */  lh         $a0, ($s0)
/* CDFCC 800F6B5C 00002821 */  addu       $a1, $zero, $zero
/* CDFD0 800F6B60 00063403 */  sra        $a2, $a2, 0x10
/* CDFD4 800F6B64 0C019B71 */  jal        func_80066DC4
/* CDFD8 800F6B68 00073C03 */   sra       $a3, $a3, 0x10
/* CDFDC 800F6B6C 86040000 */  lh         $a0, ($s0)
/* CDFE0 800F6B70 00002821 */  addu       $a1, $zero, $zero
/* CDFE4 800F6B74 0C019CAC */  jal        func_800672B0
/* CDFE8 800F6B78 00003021 */   addu      $a2, $zero, $zero
/* CDFEC 800F6B7C 2646FFF0 */  addiu      $a2, $s2, -0x10
/* CDFF0 800F6B80 86040000 */  lh         $a0, ($s0)
/* CDFF4 800F6B84 00002821 */  addu       $a1, $zero, $zero
/* CDFF8 800F6B88 0C019CE1 */  jal        func_80067384
/* CDFFC 800F6B8C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* CE000 800F6B90 26310001 */  addiu      $s1, $s1, 1
/* CE004 800F6B94 3222FFFF */  andi       $v0, $s1, 0xffff
/* CE008 800F6B98 2C420002 */  sltiu      $v0, $v0, 2
/* CE00C 800F6B9C 1440FF70 */  bnez       $v0, .L800F6960
/* CE010 800F6BA0 3222FFFF */   andi      $v0, $s1, 0xffff
/* CE014 800F6BA4 26520001 */  addiu      $s2, $s2, 1
/* CE018 800F6BA8 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE01C 800F6BAC 2C420004 */  sltiu      $v0, $v0, 4
/* CE020 800F6BB0 1440FF5E */  bnez       $v0, .L800F692C
/* CE024 800F6BB4 00008821 */   addu      $s1, $zero, $zero
/* CE028 800F6BB8 0803DC41 */  j          .L800F7104
/* CE02C 800F6BBC 00000000 */   nop
.L800F6BC0:
/* CE030 800F6BC0 00101400 */  sll        $v0, $s0, 0x10
/* CE034 800F6BC4 00021403 */  sra        $v0, $v0, 0x10
/* CE038 800F6BC8 24030046 */  addiu      $v1, $zero, 0x46
/* CE03C 800F6BCC 14430004 */  bne        $v0, $v1, .L800F6BE0
/* CE040 800F6BD0 00101400 */   sll       $v0, $s0, 0x10
/* CE044 800F6BD4 0C01D733 */  jal        func_80075CCC
/* CE048 800F6BD8 00002021 */   addu      $a0, $zero, $zero
/* CE04C 800F6BDC 00101400 */  sll        $v0, $s0, 0x10
.L800F6BE0:
/* CE050 800F6BE0 00021C03 */  sra        $v1, $v0, 0x10
/* CE054 800F6BE4 2862005A */  slti       $v0, $v1, 0x5a
/* CE058 800F6BE8 10400016 */  beqz       $v0, .L800F6C44
/* CE05C 800F6BEC 00101400 */   sll       $v0, $s0, 0x10
/* CE060 800F6BF0 44830000 */  mtc1       $v1, $f0
/* CE064 800F6BF4 00000000 */  nop
/* CE068 800F6BF8 46800020 */  cvt.s.w    $f0, $f0
/* CE06C 800F6BFC 46000021 */  cvt.d.s    $f0, $f0
/* CE070 800F6C00 3C018010 */  lui        $at, %hi(D_800FD908)
/* CE074 800F6C04 D422D908 */  ldc1       $f2, %lo(D_800FD908)($at)
/* CE078 800F6C08 46220003 */  div.d      $f0, $f0, $f2
/* CE07C 800F6C0C 46200520 */  cvt.s.d    $f20, $f0
/* CE080 800F6C10 4600A021 */  cvt.d.s    $f0, $f20
/* CE084 800F6C14 3C018010 */  lui        $at, %hi(D_800FD910)
/* CE088 800F6C18 D422D910 */  ldc1       $f2, %lo(D_800FD910)($at)
/* CE08C 800F6C1C 46220002 */  mul.d      $f0, $f0, $f2
/* CE090 800F6C20 3C018010 */  lui        $at, %hi(D_800FD918)
/* CE094 800F6C24 D422D918 */  ldc1       $f2, %lo(D_800FD918)($at)
/* CE098 800F6C28 46220000 */  add.d      $f0, $f0, $f2
/* CE09C 800F6C2C 3C018010 */  lui        $at, %hi(D_800FD920)
/* CE0A0 800F6C30 D422D920 */  ldc1       $f2, %lo(D_800FD920)($at)
/* CE0A4 800F6C34 46220002 */  mul.d      $f0, $f0, $f2
/* CE0A8 800F6C38 46200020 */  cvt.s.d    $f0, $f0
/* CE0AC 800F6C3C 3C01800F */  lui        $at, %hi(D_800EE98C)
/* CE0B0 800F6C40 E420E98C */  swc1       $f0, %lo(D_800EE98C)($at)
.L800F6C44:
/* CE0B4 800F6C44 00021C03 */  sra        $v1, $v0, 0x10
/* CE0B8 800F6C48 28620028 */  slti       $v0, $v1, 0x28
/* CE0BC 800F6C4C 10400087 */  beqz       $v0, .L800F6E6C
/* CE0C0 800F6C50 00101400 */   sll       $v0, $s0, 0x10
/* CE0C4 800F6C54 44830000 */  mtc1       $v1, $f0
/* CE0C8 800F6C58 00000000 */  nop
/* CE0CC 800F6C5C 46800020 */  cvt.s.w    $f0, $f0
/* CE0D0 800F6C60 46000021 */  cvt.d.s    $f0, $f0
/* CE0D4 800F6C64 3C018010 */  lui        $at, %hi(D_800FD928)
/* CE0D8 800F6C68 D422D928 */  ldc1       $f2, %lo(D_800FD928)($at)
/* CE0DC 800F6C6C 46220003 */  div.d      $f0, $f0, $f2
/* CE0E0 800F6C70 46200520 */  cvt.s.d    $f20, $f0
/* CE0E4 800F6C74 3C028010 */  lui        $v0, %hi(D_800FDD80)
/* CE0E8 800F6C78 2442DD80 */  addiu      $v0, $v0, %lo(D_800FDD80)
/* CE0EC 800F6C7C 4600A121 */  cvt.d.s    $f4, $f20
/* CE0F0 800F6C80 3C018010 */  lui        $at, %hi(D_800FD930)
/* CE0F4 800F6C84 D422D930 */  ldc1       $f2, %lo(D_800FD930)($at)
/* CE0F8 800F6C88 46222082 */  mul.d      $f2, $f4, $f2
/* CE0FC 800F6C8C 3C018010 */  lui        $at, %hi(D_800FD938)
/* CE100 800F6C90 D420D938 */  ldc1       $f0, %lo(D_800FD938)($at)
/* CE104 800F6C94 46220001 */  sub.d      $f0, $f0, $f2
/* CE108 800F6C98 46200020 */  cvt.s.d    $f0, $f0
/* CE10C 800F6C9C E4400000 */  swc1       $f0, ($v0)
/* CE110 800F6CA0 3C018010 */  lui        $at, %hi(D_800FD940)
/* CE114 800F6CA4 D420D940 */  ldc1       $f0, %lo(D_800FD940)($at)
/* CE118 800F6CA8 46201080 */  add.d      $f2, $f2, $f0
/* CE11C 800F6CAC 462010A0 */  cvt.s.d    $f2, $f2
/* CE120 800F6CB0 E4420010 */  swc1       $f2, 0x10($v0)
/* CE124 800F6CB4 3C028010 */  lui        $v0, %hi(D_800FDDA0)
/* CE128 800F6CB8 2442DDA0 */  addiu      $v0, $v0, %lo(D_800FDDA0)
/* CE12C 800F6CBC 3C018010 */  lui        $at, %hi(D_800FD948)
/* CE130 800F6CC0 D420D948 */  ldc1       $f0, %lo(D_800FD948)($at)
/* CE134 800F6CC4 46202102 */  mul.d      $f4, $f4, $f0
/* CE138 800F6CC8 46240001 */  sub.d      $f0, $f0, $f4
/* CE13C 800F6CCC 46200020 */  cvt.s.d    $f0, $f0
/* CE140 800F6CD0 E4400000 */  swc1       $f0, ($v0)
/* CE144 800F6CD4 3C018010 */  lui        $at, %hi(D_800FD950)
/* CE148 800F6CD8 D420D950 */  ldc1       $f0, %lo(D_800FD950)($at)
/* CE14C 800F6CDC 46240001 */  sub.d      $f0, $f0, $f4
/* CE150 800F6CE0 46200020 */  cvt.s.d    $f0, $f0
/* CE154 800F6CE4 E4400010 */  swc1       $f0, 0x10($v0)
/* CE158 800F6CE8 00009021 */  addu       $s2, $zero, $zero
/* CE15C 800F6CEC 3242FFFF */  andi       $v0, $s2, 0xffff
.L800F6CF0:
/* CE160 800F6CF0 000218C0 */  sll        $v1, $v0, 3
/* CE164 800F6CF4 00021100 */  sll        $v0, $v0, 4
/* CE168 800F6CF8 3C018010 */  lui        $at, %hi(D_800FDD80)
/* CE16C 800F6CFC 00220821 */  addu       $at, $at, $v0
/* CE170 800F6D00 C420DD80 */  lwc1       $f0, %lo(D_800FDD80)($at)
/* CE174 800F6D04 4600008D */  trunc.w.s  $f2, $f0
/* CE178 800F6D08 44061000 */  mfc1       $a2, $f2
/* CE17C 800F6D0C 00000000 */  nop
/* CE180 800F6D10 00063400 */  sll        $a2, $a2, 0x10
/* CE184 800F6D14 3C018010 */  lui        $at, %hi(D_800FDDA0)
/* CE188 800F6D18 00220821 */  addu       $at, $at, $v0
/* CE18C 800F6D1C C420DDA0 */  lwc1       $f0, %lo(D_800FDDA0)($at)
/* CE190 800F6D20 4600008D */  trunc.w.s  $f2, $f0
/* CE194 800F6D24 44071000 */  mfc1       $a3, $f2
/* CE198 800F6D28 00000000 */  nop
/* CE19C 800F6D2C 00073C00 */  sll        $a3, $a3, 0x10
/* CE1A0 800F6D30 3C048010 */  lui        $a0, %hi(D_800FDD70)
/* CE1A4 800F6D34 00832021 */  addu       $a0, $a0, $v1
/* CE1A8 800F6D38 8484DD70 */  lh         $a0, %lo(D_800FDD70)($a0)
/* CE1AC 800F6D3C 00002821 */  addu       $a1, $zero, $zero
/* CE1B0 800F6D40 00063403 */  sra        $a2, $a2, 0x10
/* CE1B4 800F6D44 0C019B71 */  jal        func_80066DC4
/* CE1B8 800F6D48 00073C03 */   sra       $a3, $a3, 0x10
/* CE1BC 800F6D4C 26520001 */  addiu      $s2, $s2, 1
/* CE1C0 800F6D50 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE1C4 800F6D54 2C420002 */  sltiu      $v0, $v0, 2
/* CE1C8 800F6D58 1440FFE5 */  bnez       $v0, .L800F6CF0
/* CE1CC 800F6D5C 3242FFFF */   andi      $v0, $s2, 0xffff
/* CE1D0 800F6D60 3C028010 */  lui        $v0, %hi(D_800FDD88)
/* CE1D4 800F6D64 2442DD88 */  addiu      $v0, $v0, %lo(D_800FDD88)
/* CE1D8 800F6D68 4600A121 */  cvt.d.s    $f4, $f20
/* CE1DC 800F6D6C 3C018010 */  lui        $at, %hi(D_800FD958)
/* CE1E0 800F6D70 D422D958 */  ldc1       $f2, %lo(D_800FD958)($at)
/* CE1E4 800F6D74 46222082 */  mul.d      $f2, $f4, $f2
/* CE1E8 800F6D78 3C018010 */  lui        $at, %hi(D_800FD960)
/* CE1EC 800F6D7C D420D960 */  ldc1       $f0, %lo(D_800FD960)($at)
/* CE1F0 800F6D80 46220001 */  sub.d      $f0, $f0, $f2
/* CE1F4 800F6D84 46200020 */  cvt.s.d    $f0, $f0
/* CE1F8 800F6D88 E4400000 */  swc1       $f0, ($v0)
/* CE1FC 800F6D8C 3C018010 */  lui        $at, %hi(D_800FD968)
/* CE200 800F6D90 D420D968 */  ldc1       $f0, %lo(D_800FD968)($at)
/* CE204 800F6D94 46201080 */  add.d      $f2, $f2, $f0
/* CE208 800F6D98 462010A0 */  cvt.s.d    $f2, $f2
/* CE20C 800F6D9C E4420010 */  swc1       $f2, 0x10($v0)
/* CE210 800F6DA0 3C028010 */  lui        $v0, %hi(D_800FDDA8)
/* CE214 800F6DA4 2442DDA8 */  addiu      $v0, $v0, %lo(D_800FDDA8)
/* CE218 800F6DA8 3C018010 */  lui        $at, %hi(D_800FD970)
/* CE21C 800F6DAC D422D970 */  ldc1       $f2, %lo(D_800FD970)($at)
/* CE220 800F6DB0 46222102 */  mul.d      $f4, $f4, $f2
/* CE224 800F6DB4 3C018010 */  lui        $at, %hi(D_800FD978)
/* CE228 800F6DB8 D420D978 */  ldc1       $f0, %lo(D_800FD978)($at)
/* CE22C 800F6DBC 46202000 */  add.d      $f0, $f4, $f0
/* CE230 800F6DC0 46200020 */  cvt.s.d    $f0, $f0
/* CE234 800F6DC4 E4400000 */  swc1       $f0, ($v0)
/* CE238 800F6DC8 46222100 */  add.d      $f4, $f4, $f2
/* CE23C 800F6DCC 46202120 */  cvt.s.d    $f4, $f4
/* CE240 800F6DD0 E4440010 */  swc1       $f4, 0x10($v0)
/* CE244 800F6DD4 00009021 */  addu       $s2, $zero, $zero
/* CE248 800F6DD8 3242FFFF */  andi       $v0, $s2, 0xffff
.L800F6DDC:
/* CE24C 800F6DDC 000218C0 */  sll        $v1, $v0, 3
/* CE250 800F6DE0 00021100 */  sll        $v0, $v0, 4
/* CE254 800F6DE4 3C018010 */  lui        $at, %hi(D_800FDD88)
/* CE258 800F6DE8 00220821 */  addu       $at, $at, $v0
/* CE25C 800F6DEC C420DD88 */  lwc1       $f0, %lo(D_800FDD88)($at)
/* CE260 800F6DF0 4600008D */  trunc.w.s  $f2, $f0
/* CE264 800F6DF4 44061000 */  mfc1       $a2, $f2
/* CE268 800F6DF8 00000000 */  nop
/* CE26C 800F6DFC 00063400 */  sll        $a2, $a2, 0x10
/* CE270 800F6E00 3C018010 */  lui        $at, %hi(D_800FDDA8)
/* CE274 800F6E04 00220821 */  addu       $at, $at, $v0
/* CE278 800F6E08 C420DDA8 */  lwc1       $f0, %lo(D_800FDDA8)($at)
/* CE27C 800F6E0C 4600008D */  trunc.w.s  $f2, $f0
/* CE280 800F6E10 44071000 */  mfc1       $a3, $f2
/* CE284 800F6E14 00000000 */  nop
/* CE288 800F6E18 00073C00 */  sll        $a3, $a3, 0x10
/* CE28C 800F6E1C 3C048010 */  lui        $a0, %hi(D_800FDD74)
/* CE290 800F6E20 00832021 */  addu       $a0, $a0, $v1
/* CE294 800F6E24 8484DD74 */  lh         $a0, %lo(D_800FDD74)($a0)
/* CE298 800F6E28 00002821 */  addu       $a1, $zero, $zero
/* CE29C 800F6E2C 00063403 */  sra        $a2, $a2, 0x10
/* CE2A0 800F6E30 0C019B71 */  jal        func_80066DC4
/* CE2A4 800F6E34 00073C03 */   sra       $a3, $a3, 0x10
/* CE2A8 800F6E38 26520001 */  addiu      $s2, $s2, 1
/* CE2AC 800F6E3C 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE2B0 800F6E40 2C420002 */  sltiu      $v0, $v0, 2
/* CE2B4 800F6E44 1440FFE5 */  bnez       $v0, .L800F6DDC
/* CE2B8 800F6E48 3242FFFF */   andi      $v0, $s2, 0xffff
/* CE2BC 800F6E4C 00101400 */  sll        $v0, $s0, 0x10
/* CE2C0 800F6E50 00021403 */  sra        $v0, $v0, 0x10
/* CE2C4 800F6E54 24030027 */  addiu      $v1, $zero, 0x27
/* CE2C8 800F6E58 14430004 */  bne        $v0, $v1, .L800F6E6C
/* CE2CC 800F6E5C 00101400 */   sll       $v0, $s0, 0x10
/* CE2D0 800F6E60 0C01804A */  jal        func_80060128
/* CE2D4 800F6E64 2404001A */   addiu     $a0, $zero, 0x1a
/* CE2D8 800F6E68 00101400 */  sll        $v0, $s0, 0x10
.L800F6E6C:
/* CE2DC 800F6E6C 00021C03 */  sra        $v1, $v0, 0x10
/* CE2E0 800F6E70 28620078 */  slti       $v0, $v1, 0x78
/* CE2E4 800F6E74 1040007E */  beqz       $v0, .L800F7070
/* CE2E8 800F6E78 00009021 */   addu      $s2, $zero, $zero
/* CE2EC 800F6E7C 44830000 */  mtc1       $v1, $f0
/* CE2F0 800F6E80 00000000 */  nop
/* CE2F4 800F6E84 46800020 */  cvt.s.w    $f0, $f0
/* CE2F8 800F6E88 46000021 */  cvt.d.s    $f0, $f0
/* CE2FC 800F6E8C 3C018010 */  lui        $at, %hi(D_800FD980)
/* CE300 800F6E90 D424D980 */  ldc1       $f4, %lo(D_800FD980)($at)
/* CE304 800F6E94 46240003 */  div.d      $f0, $f0, $f4
/* CE308 800F6E98 46200520 */  cvt.s.d    $f20, $f0
/* CE30C 800F6E9C 3C028010 */  lui        $v0, %hi(D_800FDD84)
/* CE310 800F6EA0 2442DD84 */  addiu      $v0, $v0, %lo(D_800FDD84)
/* CE314 800F6EA4 4600A1A1 */  cvt.d.s    $f6, $f20
/* CE318 800F6EA8 3C018010 */  lui        $at, %hi(D_800FD988)
/* CE31C 800F6EAC D422D988 */  ldc1       $f2, %lo(D_800FD988)($at)
/* CE320 800F6EB0 46223082 */  mul.d      $f2, $f6, $f2
/* CE324 800F6EB4 3C018010 */  lui        $at, %hi(D_800FD990)
/* CE328 800F6EB8 D420D990 */  ldc1       $f0, %lo(D_800FD990)($at)
/* CE32C 800F6EBC 46220001 */  sub.d      $f0, $f0, $f2
/* CE330 800F6EC0 46200020 */  cvt.s.d    $f0, $f0
/* CE334 800F6EC4 E4400000 */  swc1       $f0, ($v0)
/* CE338 800F6EC8 3C018010 */  lui        $at, %hi(D_800FD998)
/* CE33C 800F6ECC D420D998 */  ldc1       $f0, %lo(D_800FD998)($at)
/* CE340 800F6ED0 46201080 */  add.d      $f2, $f2, $f0
/* CE344 800F6ED4 462010A0 */  cvt.s.d    $f2, $f2
/* CE348 800F6ED8 E4420010 */  swc1       $f2, 0x10($v0)
/* CE34C 800F6EDC 3C028010 */  lui        $v0, %hi(D_800FDDA4)
/* CE350 800F6EE0 2442DDA4 */  addiu      $v0, $v0, %lo(D_800FDDA4)
/* CE354 800F6EE4 46243182 */  mul.d      $f6, $f6, $f4
/* CE358 800F6EE8 3C018010 */  lui        $at, %hi(D_800FD9A0)
/* CE35C 800F6EEC D420D9A0 */  ldc1       $f0, %lo(D_800FD9A0)($at)
/* CE360 800F6EF0 46260001 */  sub.d      $f0, $f0, $f6
/* CE364 800F6EF4 46200020 */  cvt.s.d    $f0, $f0
/* CE368 800F6EF8 E4400000 */  swc1       $f0, ($v0)
/* CE36C 800F6EFC 46262101 */  sub.d      $f4, $f4, $f6
/* CE370 800F6F00 46202120 */  cvt.s.d    $f4, $f4
/* CE374 800F6F04 E4440010 */  swc1       $f4, 0x10($v0)
/* CE378 800F6F08 3242FFFF */  andi       $v0, $s2, 0xffff
.L800F6F0C:
/* CE37C 800F6F0C 000218C0 */  sll        $v1, $v0, 3
/* CE380 800F6F10 00021100 */  sll        $v0, $v0, 4
/* CE384 800F6F14 3C018010 */  lui        $at, %hi(D_800FDD84)
/* CE388 800F6F18 00220821 */  addu       $at, $at, $v0
/* CE38C 800F6F1C C420DD84 */  lwc1       $f0, %lo(D_800FDD84)($at)
/* CE390 800F6F20 4600008D */  trunc.w.s  $f2, $f0
/* CE394 800F6F24 44061000 */  mfc1       $a2, $f2
/* CE398 800F6F28 00000000 */  nop
/* CE39C 800F6F2C 00063400 */  sll        $a2, $a2, 0x10
/* CE3A0 800F6F30 3C018010 */  lui        $at, %hi(D_800FDDA4)
/* CE3A4 800F6F34 00220821 */  addu       $at, $at, $v0
/* CE3A8 800F6F38 C420DDA4 */  lwc1       $f0, %lo(D_800FDDA4)($at)
/* CE3AC 800F6F3C 4600008D */  trunc.w.s  $f2, $f0
/* CE3B0 800F6F40 44071000 */  mfc1       $a3, $f2
/* CE3B4 800F6F44 00000000 */  nop
/* CE3B8 800F6F48 00073C00 */  sll        $a3, $a3, 0x10
/* CE3BC 800F6F4C 3C048010 */  lui        $a0, %hi(D_800FDD72)
/* CE3C0 800F6F50 00832021 */  addu       $a0, $a0, $v1
/* CE3C4 800F6F54 8484DD72 */  lh         $a0, %lo(D_800FDD72)($a0)
/* CE3C8 800F6F58 00002821 */  addu       $a1, $zero, $zero
/* CE3CC 800F6F5C 00063403 */  sra        $a2, $a2, 0x10
/* CE3D0 800F6F60 0C019B71 */  jal        func_80066DC4
/* CE3D4 800F6F64 00073C03 */   sra       $a3, $a3, 0x10
/* CE3D8 800F6F68 26520001 */  addiu      $s2, $s2, 1
/* CE3DC 800F6F6C 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE3E0 800F6F70 2C420002 */  sltiu      $v0, $v0, 2
/* CE3E4 800F6F74 1440FFE5 */  bnez       $v0, .L800F6F0C
/* CE3E8 800F6F78 3242FFFF */   andi      $v0, $s2, 0xffff
/* CE3EC 800F6F7C 3C028010 */  lui        $v0, %hi(D_800FDD8C)
/* CE3F0 800F6F80 2442DD8C */  addiu      $v0, $v0, %lo(D_800FDD8C)
/* CE3F4 800F6F84 4600A121 */  cvt.d.s    $f4, $f20
/* CE3F8 800F6F88 3C018010 */  lui        $at, %hi(D_800FD9A8)
/* CE3FC 800F6F8C D422D9A8 */  ldc1       $f2, %lo(D_800FD9A8)($at)
/* CE400 800F6F90 46222082 */  mul.d      $f2, $f4, $f2
/* CE404 800F6F94 3C018010 */  lui        $at, %hi(D_800FD9B0)
/* CE408 800F6F98 D420D9B0 */  ldc1       $f0, %lo(D_800FD9B0)($at)
/* CE40C 800F6F9C 46220001 */  sub.d      $f0, $f0, $f2
/* CE410 800F6FA0 46200020 */  cvt.s.d    $f0, $f0
/* CE414 800F6FA4 E4400000 */  swc1       $f0, ($v0)
/* CE418 800F6FA8 3C018010 */  lui        $at, %hi(D_800FD9B8)
/* CE41C 800F6FAC D420D9B8 */  ldc1       $f0, %lo(D_800FD9B8)($at)
/* CE420 800F6FB0 46201080 */  add.d      $f2, $f2, $f0
/* CE424 800F6FB4 462010A0 */  cvt.s.d    $f2, $f2
/* CE428 800F6FB8 E4420010 */  swc1       $f2, 0x10($v0)
/* CE42C 800F6FBC 3C028010 */  lui        $v0, %hi(D_800FDDAC)
/* CE430 800F6FC0 2442DDAC */  addiu      $v0, $v0, %lo(D_800FDDAC)
/* CE434 800F6FC4 3C018010 */  lui        $at, %hi(D_800FD9C0)
/* CE438 800F6FC8 D420D9C0 */  ldc1       $f0, %lo(D_800FD9C0)($at)
/* CE43C 800F6FCC 46202102 */  mul.d      $f4, $f4, $f0
/* CE440 800F6FD0 46202000 */  add.d      $f0, $f4, $f0
/* CE444 800F6FD4 46200020 */  cvt.s.d    $f0, $f0
/* CE448 800F6FD8 E4400000 */  swc1       $f0, ($v0)
/* CE44C 800F6FDC 3C018010 */  lui        $at, %hi(D_800FD9C8)
/* CE450 800F6FE0 D420D9C8 */  ldc1       $f0, %lo(D_800FD9C8)($at)
/* CE454 800F6FE4 46202100 */  add.d      $f4, $f4, $f0
/* CE458 800F6FE8 46202120 */  cvt.s.d    $f4, $f4
/* CE45C 800F6FEC E4440010 */  swc1       $f4, 0x10($v0)
/* CE460 800F6FF0 00009021 */  addu       $s2, $zero, $zero
/* CE464 800F6FF4 3242FFFF */  andi       $v0, $s2, 0xffff
.L800F6FF8:
/* CE468 800F6FF8 000218C0 */  sll        $v1, $v0, 3
/* CE46C 800F6FFC 00021100 */  sll        $v0, $v0, 4
/* CE470 800F7000 3C018010 */  lui        $at, %hi(D_800FDD8C)
/* CE474 800F7004 00220821 */  addu       $at, $at, $v0
/* CE478 800F7008 C420DD8C */  lwc1       $f0, %lo(D_800FDD8C)($at)
/* CE47C 800F700C 4600008D */  trunc.w.s  $f2, $f0
/* CE480 800F7010 44061000 */  mfc1       $a2, $f2
/* CE484 800F7014 00000000 */  nop
/* CE488 800F7018 00063400 */  sll        $a2, $a2, 0x10
/* CE48C 800F701C 3C018010 */  lui        $at, %hi(D_800FDDAC)
/* CE490 800F7020 00220821 */  addu       $at, $at, $v0
/* CE494 800F7024 C420DDAC */  lwc1       $f0, %lo(D_800FDDAC)($at)
/* CE498 800F7028 4600008D */  trunc.w.s  $f2, $f0
/* CE49C 800F702C 44071000 */  mfc1       $a3, $f2
/* CE4A0 800F7030 00000000 */  nop
/* CE4A4 800F7034 00073C00 */  sll        $a3, $a3, 0x10
/* CE4A8 800F7038 3C048010 */  lui        $a0, %hi(D_800FDD76)
/* CE4AC 800F703C 00832021 */  addu       $a0, $a0, $v1
/* CE4B0 800F7040 8484DD76 */  lh         $a0, %lo(D_800FDD76)($a0)
/* CE4B4 800F7044 00002821 */  addu       $a1, $zero, $zero
/* CE4B8 800F7048 00063403 */  sra        $a2, $a2, 0x10
/* CE4BC 800F704C 0C019B71 */  jal        func_80066DC4
/* CE4C0 800F7050 00073C03 */   sra       $a3, $a3, 0x10
/* CE4C4 800F7054 26520001 */  addiu      $s2, $s2, 1
/* CE4C8 800F7058 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE4CC 800F705C 2C420002 */  sltiu      $v0, $v0, 2
/* CE4D0 800F7060 1440FFE5 */  bnez       $v0, .L800F6FF8
/* CE4D4 800F7064 3242FFFF */   andi      $v0, $s2, 0xffff
/* CE4D8 800F7068 0803DC41 */  j          .L800F7104
/* CE4DC 800F706C 00000000 */   nop
.L800F7070:
/* CE4E0 800F7070 00101400 */  sll        $v0, $s0, 0x10
/* CE4E4 800F7074 00021403 */  sra        $v0, $v0, 0x10
/* CE4E8 800F7078 24030078 */  addiu      $v1, $zero, 0x78
/* CE4EC 800F707C 14430021 */  bne        $v0, $v1, .L800F7104
/* CE4F0 800F7080 00008821 */   addu      $s1, $zero, $zero
/* CE4F4 800F7084 3C138010 */  lui        $s3, %hi(D_800FDD70)
/* CE4F8 800F7088 2673DD70 */  addiu      $s3, $s3, %lo(D_800FDD70)
.L800F708C:
/* CE4FC 800F708C 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE500 800F7090 00028040 */  sll        $s0, $v0, 1
/* CE504 800F7094 3222FFFF */  andi       $v0, $s1, 0xffff
.L800F7098:
/* CE508 800F7098 000210C0 */  sll        $v0, $v0, 3
/* CE50C 800F709C 00531021 */  addu       $v0, $v0, $s3
/* CE510 800F70A0 02021021 */  addu       $v0, $s0, $v0
/* CE514 800F70A4 84440000 */  lh         $a0, ($v0)
/* CE518 800F70A8 00002821 */  addu       $a1, $zero, $zero
/* CE51C 800F70AC 0C01940F */  jal        func_8006503C
/* CE520 800F70B0 24060001 */   addiu     $a2, $zero, 1
/* CE524 800F70B4 26310001 */  addiu      $s1, $s1, 1
/* CE528 800F70B8 3222FFFF */  andi       $v0, $s1, 0xffff
/* CE52C 800F70BC 2C420002 */  sltiu      $v0, $v0, 2
/* CE530 800F70C0 1440FFF5 */  bnez       $v0, .L800F7098
/* CE534 800F70C4 3222FFFF */   andi      $v0, $s1, 0xffff
/* CE538 800F70C8 26520001 */  addiu      $s2, $s2, 1
/* CE53C 800F70CC 3242FFFF */  andi       $v0, $s2, 0xffff
/* CE540 800F70D0 2C420004 */  sltiu      $v0, $v0, 4
/* CE544 800F70D4 5440FFED */  bnel       $v0, $zero, .L800F708C
/* CE548 800F70D8 00008821 */   addu      $s1, $zero, $zero
/* CE54C 800F70DC 0C01C9C6 */  jal        func_80072718
/* CE550 800F70E0 00000000 */   nop
/* CE554 800F70E4 14400007 */  bnez       $v0, .L800F7104
/* CE558 800F70E8 00000000 */   nop
/* CE55C 800F70EC 3C02800F */  lui        $v0, %hi(func_800F714C_CE5BC)
/* CE560 800F70F0 2442714C */  addiu      $v0, $v0, %lo(func_800F714C_CE5BC)
/* CE564 800F70F4 AE820014 */  sw         $v0, 0x14($s4)
/* CE568 800F70F8 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CE56C 800F70FC 0803DC46 */  j          .L800F7118
/* CE570 800F7100 A420DE2C */   sh        $zero, %lo(D_800FDE2C)($at)
.L800F7104:
/* CE574 800F7104 3C028010 */  lui        $v0, %hi(D_800FDE2C)
/* CE578 800F7108 9442DE2C */  lhu        $v0, %lo(D_800FDE2C)($v0)
/* CE57C 800F710C 24420001 */  addiu      $v0, $v0, 1
/* CE580 800F7110 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CE584 800F7114 A422DE2C */  sh         $v0, %lo(D_800FDE2C)($at)
.L800F7118:
/* CE588 800F7118 8FBF004C */  lw         $ra, 0x4c($sp)
/* CE58C 800F711C 8FBE0048 */  lw         $fp, 0x48($sp)
/* CE590 800F7120 8FB70044 */  lw         $s7, 0x44($sp)
/* CE594 800F7124 8FB60040 */  lw         $s6, 0x40($sp)
/* CE598 800F7128 8FB5003C */  lw         $s5, 0x3c($sp)
/* CE59C 800F712C 8FB40038 */  lw         $s4, 0x38($sp)
/* CE5A0 800F7130 8FB30034 */  lw         $s3, 0x34($sp)
/* CE5A4 800F7134 8FB20030 */  lw         $s2, 0x30($sp)
/* CE5A8 800F7138 8FB1002C */  lw         $s1, 0x2c($sp)
/* CE5AC 800F713C 8FB00028 */  lw         $s0, 0x28($sp)
/* CE5B0 800F7140 D7B40050 */  ldc1       $f20, 0x50($sp)
/* CE5B4 800F7144 03E00008 */  jr         $ra
/* CE5B8 800F7148 27BD0058 */   addiu     $sp, $sp, 0x58
