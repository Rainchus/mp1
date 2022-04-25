	.set noat
	.set noreorder

glabel func_800FBF24_D3394
/* D3394 800FBF24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* D3398 800FBF28 AFBF0024 */  sw         $ra, 0x24($sp)
/* D339C 800FBF2C AFB40020 */  sw         $s4, 0x20($sp)
/* D33A0 800FBF30 AFB3001C */  sw         $s3, 0x1c($sp)
/* D33A4 800FBF34 AFB20018 */  sw         $s2, 0x18($sp)
/* D33A8 800FBF38 AFB10014 */  sw         $s1, 0x14($sp)
/* D33AC 800FBF3C AFB00010 */  sw         $s0, 0x10($sp)
/* D33B0 800FBF40 F7B60030 */  sdc1       $f22, 0x30($sp)
/* D33B4 800FBF44 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D33B8 800FBF48 00809021 */  addu       $s2, $a0, $zero
/* D33BC 800FBF4C 9253004C */  lbu        $s3, 0x4c($s2)
/* D33C0 800FBF50 3C14800F */  lui        $s4, %hi(D_800F3FB0)
/* D33C4 800FBF54 8E943FB0 */  lw         $s4, %lo(D_800F3FB0)($s4)
/* D33C8 800FBF58 00131040 */  sll        $v0, $s3, 1
/* D33CC 800FBF5C 3C018010 */  lui        $at, %hi(D_800FE230)
/* D33D0 800FBF60 00220821 */  addu       $at, $at, $v0
/* D33D4 800FBF64 9422E230 */  lhu        $v0, %lo(D_800FE230)($at)
/* D33D8 800FBF68 30437FFF */  andi       $v1, $v0, 0x7fff
/* D33DC 800FBF6C 10600005 */  beqz       $v1, .L800FBF84
/* D33E0 800FBF70 24020001 */   addiu     $v0, $zero, 1
/* D33E4 800FBF74 1062002E */  beq        $v1, $v0, .L800FC030
/* D33E8 800FBF78 02601821 */   addu      $v1, $s3, $zero
/* D33EC 800FBF7C 0803F047 */  j          .L800FC11C
/* D33F0 800FBF80 001310C0 */   sll       $v0, $s3, 3
.L800FBF84:
/* D33F4 800FBF84 0C005D63 */  jal        func_8001758C
/* D33F8 800FBF88 00000000 */   nop
/* D33FC 800FBF8C 304200FF */  andi       $v0, $v0, 0xff
/* D3400 800FBF90 14400062 */  bnez       $v0, .L800FC11C
/* D3404 800FBF94 001310C0 */   sll       $v0, $s3, 3
/* D3408 800FBF98 02601821 */  addu       $v1, $s3, $zero
/* D340C 800FBF9C 00032040 */  sll        $a0, $v1, 1
/* D3410 800FBFA0 24020001 */  addiu      $v0, $zero, 1
/* D3414 800FBFA4 3C018010 */  lui        $at, %hi(D_800FE230)
/* D3418 800FBFA8 00240821 */  addu       $at, $at, $a0
/* D341C 800FBFAC A422E230 */  sh         $v0, %lo(D_800FE230)($at)
/* D3420 800FBFB0 C644001C */  lwc1       $f4, 0x1c($s2)
/* D3424 800FBFB4 46002121 */  cvt.d.s    $f4, $f4
/* D3428 800FBFB8 00031880 */  sll        $v1, $v1, 2
/* D342C 800FBFBC 3C018010 */  lui        $at, %hi(D_800FE248)
/* D3430 800FBFC0 00230821 */  addu       $at, $at, $v1
/* D3434 800FBFC4 C420E248 */  lwc1       $f0, %lo(D_800FE248)($at)
/* D3438 800FBFC8 46000021 */  cvt.d.s    $f0, $f0
/* D343C 800FBFCC 3C018010 */  lui        $at, %hi(D_800FDC98)
/* D3440 800FBFD0 D422DC98 */  ldc1       $f2, %lo(D_800FDC98)($at)
/* D3444 800FBFD4 46220000 */  add.d      $f0, $f0, $f2
/* D3448 800FBFD8 3C018010 */  lui        $at, %hi(D_800FDCA0)
/* D344C 800FBFDC D422DCA0 */  ldc1       $f2, %lo(D_800FDCA0)($at)
/* D3450 800FBFE0 46220002 */  mul.d      $f0, $f0, $f2
/* D3454 800FBFE4 4620203C */  c.lt.d     $f4, $f0
/* D3458 800FBFE8 00000000 */  nop
/* D345C 800FBFEC 00000000 */  nop
/* D3460 800FBFF0 45000008 */  bc1f       .L800FC014
/* D3464 800FBFF4 00131840 */   sll       $v1, $s3, 1
/* D3468 800FBFF8 3C038010 */  lui        $v1, %hi(D_800FE234)
/* D346C 800FBFFC 2463E234 */  addiu      $v1, $v1, %lo(D_800FE234)
/* D3470 800FC000 00831821 */  addu       $v1, $a0, $v1
/* D3474 800FC004 94620000 */  lhu        $v0, ($v1)
/* D3478 800FC008 3042FFFE */  andi       $v0, $v0, 0xfffe
/* D347C 800FC00C 0803F046 */  j          .L800FC118
/* D3480 800FC010 A4620000 */   sh        $v0, ($v1)
.L800FC014:
/* D3484 800FC014 3C028010 */  lui        $v0, %hi(D_800FE234)
/* D3488 800FC018 2442E234 */  addiu      $v0, $v0, %lo(D_800FE234)
/* D348C 800FC01C 00621821 */  addu       $v1, $v1, $v0
/* D3490 800FC020 94620000 */  lhu        $v0, ($v1)
/* D3494 800FC024 34420001 */  ori        $v0, $v0, 1
/* D3498 800FC028 0803F046 */  j          .L800FC118
/* D349C 800FC02C A4620000 */   sh        $v0, ($v1)
.L800FC030:
/* D34A0 800FC030 00032040 */  sll        $a0, $v1, 1
/* D34A4 800FC034 3C028010 */  lui        $v0, %hi(D_800FE234)
/* D34A8 800FC038 00441021 */  addu       $v0, $v0, $a0
/* D34AC 800FC03C 9442E234 */  lhu        $v0, %lo(D_800FE234)($v0)
/* D34B0 800FC040 30420001 */  andi       $v0, $v0, 1
/* D34B4 800FC044 5440001B */  bnel       $v0, $zero, .L800FC0B4
/* D34B8 800FC048 02601821 */   addu      $v1, $s3, $zero
/* D34BC 800FC04C C640001C */  lwc1       $f0, 0x1c($s2)
/* D34C0 800FC050 46000021 */  cvt.d.s    $f0, $f0
/* D34C4 800FC054 3C018010 */  lui        $at, %hi(D_800FDCA8)
/* D34C8 800FC058 D424DCA8 */  ldc1       $f4, %lo(D_800FDCA8)($at)
/* D34CC 800FC05C 46240000 */  add.d      $f0, $f0, $f4
/* D34D0 800FC060 46200020 */  cvt.s.d    $f0, $f0
/* D34D4 800FC064 E640001C */  swc1       $f0, 0x1c($s2)
/* D34D8 800FC068 460001A1 */  cvt.d.s    $f6, $f0
/* D34DC 800FC06C 00031080 */  sll        $v0, $v1, 2
/* D34E0 800FC070 3C018010 */  lui        $at, %hi(D_800FE248)
/* D34E4 800FC074 00220821 */  addu       $at, $at, $v0
/* D34E8 800FC078 C420E248 */  lwc1       $f0, %lo(D_800FE248)($at)
/* D34EC 800FC07C 46000021 */  cvt.d.s    $f0, $f0
/* D34F0 800FC080 3C018010 */  lui        $at, %hi(D_800FDCB0)
/* D34F4 800FC084 D422DCB0 */  ldc1       $f2, %lo(D_800FDCB0)($at)
/* D34F8 800FC088 46220000 */  add.d      $f0, $f0, $f2
/* D34FC 800FC08C 46240002 */  mul.d      $f0, $f0, $f4
/* D3500 800FC090 4626003E */  c.le.d     $f0, $f6
/* D3504 800FC094 00000000 */  nop
/* D3508 800FC098 00000000 */  nop
/* D350C 800FC09C 4500001F */  bc1f       .L800FC11C
/* D3510 800FC0A0 001310C0 */   sll       $v0, $s3, 3
/* D3514 800FC0A4 3C018010 */  lui        $at, %hi(D_800FE230)
/* D3518 800FC0A8 00240821 */  addu       $at, $at, $a0
/* D351C 800FC0AC 0803F046 */  j          .L800FC118
/* D3520 800FC0B0 A420E230 */   sh        $zero, %lo(D_800FE230)($at)
.L800FC0B4:
/* D3524 800FC0B4 C640001C */  lwc1       $f0, 0x1c($s2)
/* D3528 800FC0B8 46000021 */  cvt.d.s    $f0, $f0
/* D352C 800FC0BC 3C018010 */  lui        $at, %hi(D_800FDCB8)
/* D3530 800FC0C0 D424DCB8 */  ldc1       $f4, %lo(D_800FDCB8)($at)
/* D3534 800FC0C4 46240001 */  sub.d      $f0, $f0, $f4
/* D3538 800FC0C8 46200020 */  cvt.s.d    $f0, $f0
/* D353C 800FC0CC E640001C */  swc1       $f0, 0x1c($s2)
/* D3540 800FC0D0 460001A1 */  cvt.d.s    $f6, $f0
/* D3544 800FC0D4 00031080 */  sll        $v0, $v1, 2
/* D3548 800FC0D8 3C018010 */  lui        $at, %hi(D_800FE248)
/* D354C 800FC0DC 00220821 */  addu       $at, $at, $v0
/* D3550 800FC0E0 C420E248 */  lwc1       $f0, %lo(D_800FE248)($at)
/* D3554 800FC0E4 46000021 */  cvt.d.s    $f0, $f0
/* D3558 800FC0E8 3C018010 */  lui        $at, %hi(D_800FDCC0)
/* D355C 800FC0EC D422DCC0 */  ldc1       $f2, %lo(D_800FDCC0)($at)
/* D3560 800FC0F0 46220000 */  add.d      $f0, $f0, $f2
/* D3564 800FC0F4 46240002 */  mul.d      $f0, $f0, $f4
/* D3568 800FC0F8 4620303E */  c.le.d     $f6, $f0
/* D356C 800FC0FC 00000000 */  nop
/* D3570 800FC100 00000000 */  nop
/* D3574 800FC104 45000004 */  bc1f       .L800FC118
/* D3578 800FC108 00031040 */   sll       $v0, $v1, 1
/* D357C 800FC10C 3C018010 */  lui        $at, %hi(D_800FE230)
/* D3580 800FC110 00220821 */  addu       $at, $at, $v0
/* D3584 800FC114 A420E230 */  sh         $zero, %lo(D_800FE230)($at)
.L800FC118:
/* D3588 800FC118 001310C0 */  sll        $v0, $s3, 3
.L800FC11C:
/* D358C 800FC11C 3C018010 */  lui        $at, %hi(D_800FE238)
/* D3590 800FC120 00220821 */  addu       $at, $at, $v0
/* D3594 800FC124 C422E238 */  lwc1       $f2, %lo(D_800FE238)($at)
/* D3598 800FC128 C64C0018 */  lwc1       $f12, 0x18($s2)
/* D359C 800FC12C 3C018010 */  lui        $at, %hi(D_800FE23C)
/* D35A0 800FC130 00220821 */  addu       $at, $at, $v0
/* D35A4 800FC134 C420E23C */  lwc1       $f0, %lo(D_800FE23C)($at)
/* D35A8 800FC138 C64E0020 */  lwc1       $f14, 0x20($s2)
/* D35AC 800FC13C 460C1301 */  sub.s      $f12, $f2, $f12
/* D35B0 800FC140 0C02C336 */  jal        func_800B0CD8
/* D35B4 800FC144 460E0381 */   sub.s     $f14, $f0, $f14
/* D35B8 800FC148 46000021 */  cvt.d.s    $f0, $f0
/* D35BC 800FC14C 3C018010 */  lui        $at, %hi(D_800FDCC8)
/* D35C0 800FC150 D422DCC8 */  ldc1       $f2, %lo(D_800FDCC8)($at)
/* D35C4 800FC154 46220000 */  add.d      $f0, $f0, $f2
/* D35C8 800FC158 C64C0028 */  lwc1       $f12, 0x28($s2)
/* D35CC 800FC15C 3C064080 */  lui        $a2, 0x4080
/* D35D0 800FC160 0C03ED62 */  jal        func_800FB588_D29F8
/* D35D4 800FC164 462003A0 */   cvt.s.d   $f14, $f0
/* D35D8 800FC168 E6400028 */  swc1       $f0, 0x28($s2)
/* D35DC 800FC16C 0C02BAB0 */  jal        func_800AEAC0
/* D35E0 800FC170 46000306 */   mov.s     $f12, $f0
/* D35E4 800FC174 C6420018 */  lwc1       $f2, 0x18($s2)
/* D35E8 800FC178 460010A1 */  cvt.d.s    $f2, $f2
/* D35EC 800FC17C 46000021 */  cvt.d.s    $f0, $f0
/* D35F0 800FC180 3C018010 */  lui        $at, %hi(D_800FDCD0)
/* D35F4 800FC184 D434DCD0 */  ldc1       $f20, %lo(D_800FDCD0)($at)
/* D35F8 800FC188 46340002 */  mul.d      $f0, $f0, $f20
/* D35FC 800FC18C 46201081 */  sub.d      $f2, $f2, $f0
/* D3600 800FC190 462010A0 */  cvt.s.d    $f2, $f2
/* D3604 800FC194 E6420018 */  swc1       $f2, 0x18($s2)
/* D3608 800FC198 0C02BBF4 */  jal        func_800AEFD0
/* D360C 800FC19C C64C0028 */   lwc1      $f12, 0x28($s2)
/* D3610 800FC1A0 C6420020 */  lwc1       $f2, 0x20($s2)
/* D3614 800FC1A4 460010A1 */  cvt.d.s    $f2, $f2
/* D3618 800FC1A8 46000021 */  cvt.d.s    $f0, $f0
/* D361C 800FC1AC 46340002 */  mul.d      $f0, $f0, $f20
/* D3620 800FC1B0 46201081 */  sub.d      $f2, $f2, $f0
/* D3624 800FC1B4 462010A0 */  cvt.s.d    $f2, $f2
/* D3628 800FC1B8 E6420020 */  swc1       $f2, 0x20($s2)
/* D362C 800FC1BC C6840018 */  lwc1       $f4, 0x18($s4)
/* D3630 800FC1C0 C6400018 */  lwc1       $f0, 0x18($s2)
/* D3634 800FC1C4 46002101 */  sub.s      $f4, $f4, $f0
/* D3638 800FC1C8 C6800020 */  lwc1       $f0, 0x20($s4)
/* D363C 800FC1CC 46020001 */  sub.s      $f0, $f0, $f2
/* D3640 800FC1D0 46042302 */  mul.s      $f12, $f4, $f4
/* D3644 800FC1D4 00000000 */  nop
/* D3648 800FC1D8 46000002 */  mul.s      $f0, $f0, $f0
/* D364C 800FC1DC 46006300 */  add.s      $f12, $f12, $f0
/* D3650 800FC1E0 46006004 */  sqrt.s     $f0, $f12
/* D3654 800FC1E4 46000032 */  c.eq.s     $f0, $f0
/* D3658 800FC1E8 00000000 */  nop
/* D365C 800FC1EC 45010003 */  bc1t       .L800FC1FC
/* D3660 800FC1F0 00000000 */   nop
/* D3664 800FC1F4 0C02156C */  jal        func_800855B0
/* D3668 800FC1F8 00000000 */   nop
.L800FC1FC:
/* D366C 800FC1FC 3C028010 */  lui        $v0, %hi(D_800FE2C0)
/* D3670 800FC200 8442E2C0 */  lh         $v0, %lo(D_800FE2C0)($v0)
/* D3674 800FC204 1040000B */  beqz       $v0, .L800FC234
/* D3678 800FC208 46000506 */   mov.s     $f20, $f0
/* D367C 800FC20C 8E420040 */  lw         $v0, 0x40($s2)
/* D3680 800FC210 84440000 */  lh         $a0, ($v0)
/* D3684 800FC214 24050004 */  addiu      $a1, $zero, 4
/* D3688 800FC218 0C00963B */  jal        func_800258EC
/* D368C 800FC21C 24060004 */   addiu     $a2, $zero, 4
/* D3690 800FC220 8E420040 */  lw         $v0, 0x40($s2)
/* D3694 800FC224 84440002 */  lh         $a0, 2($v0)
/* D3698 800FC228 24050004 */  addiu      $a1, $zero, 4
/* D369C 800FC22C 0C00963B */  jal        func_800258EC
/* D36A0 800FC230 24060004 */   addiu     $a2, $zero, 4
.L800FC234:
/* D36A4 800FC234 02608021 */  addu       $s0, $s3, $zero
/* D36A8 800FC238 3C028010 */  lui        $v0, %hi(D_800FE234)
/* D36AC 800FC23C 2442E234 */  addiu      $v0, $v0, %lo(D_800FE234)
/* D36B0 800FC240 00101840 */  sll        $v1, $s0, 1
/* D36B4 800FC244 00628821 */  addu       $s1, $v1, $v0
/* D36B8 800FC248 86220000 */  lh         $v0, ($s1)
/* D36BC 800FC24C 04410055 */  bgez       $v0, .L800FC3A4
/* D36C0 800FC250 4600A0A1 */   cvt.d.s   $f2, $f20
/* D36C4 800FC254 3C018010 */  lui        $at, %hi(D_800FDCD8)
/* D36C8 800FC258 D420DCD8 */  ldc1       $f0, %lo(D_800FDCD8)($at)
/* D36CC 800FC25C 4622003E */  c.le.d     $f0, $f2
/* D36D0 800FC260 00000000 */  nop
/* D36D4 800FC264 4500002A */  bc1f       .L800FC310
/* D36D8 800FC268 00000000 */   nop
/* D36DC 800FC26C 0C005D63 */  jal        func_8001758C
/* D36E0 800FC270 001080C0 */   sll       $s0, $s0, 3
/* D36E4 800FC274 304200FF */  andi       $v0, $v0, 0xff
/* D36E8 800FC278 00021840 */  sll        $v1, $v0, 1
/* D36EC 800FC27C 00621821 */  addu       $v1, $v1, $v0
/* D36F0 800FC280 000318C0 */  sll        $v1, $v1, 3
/* D36F4 800FC284 00621821 */  addu       $v1, $v1, $v0
/* D36F8 800FC288 00031982 */  srl        $v1, $v1, 6
/* D36FC 800FC28C 44830000 */  mtc1       $v1, $f0
/* D3700 800FC290 00000000 */  nop
/* D3704 800FC294 46800021 */  cvt.d.w    $f0, $f0
/* D3708 800FC298 3C018010 */  lui        $at, %hi(D_800FDCE0)
/* D370C 800FC29C D436DCE0 */  ldc1       $f22, %lo(D_800FDCE0)($at)
/* D3710 800FC2A0 46360001 */  sub.d      $f0, $f0, $f22
/* D3714 800FC2A4 3C018010 */  lui        $at, %hi(D_800FDCE8)
/* D3718 800FC2A8 D434DCE8 */  ldc1       $f20, %lo(D_800FDCE8)($at)
/* D371C 800FC2AC 46340002 */  mul.d      $f0, $f0, $f20
/* D3720 800FC2B0 46200020 */  cvt.s.d    $f0, $f0
/* D3724 800FC2B4 3C018010 */  lui        $at, %hi(D_800FE238)
/* D3728 800FC2B8 00300821 */  addu       $at, $at, $s0
/* D372C 800FC2BC 0C005D63 */  jal        func_8001758C
/* D3730 800FC2C0 E420E238 */   swc1      $f0, %lo(D_800FE238)($at)
/* D3734 800FC2C4 304200FF */  andi       $v0, $v0, 0xff
/* D3738 800FC2C8 00021840 */  sll        $v1, $v0, 1
/* D373C 800FC2CC 00621821 */  addu       $v1, $v1, $v0
/* D3740 800FC2D0 000318C0 */  sll        $v1, $v1, 3
/* D3744 800FC2D4 00621821 */  addu       $v1, $v1, $v0
/* D3748 800FC2D8 00031982 */  srl        $v1, $v1, 6
/* D374C 800FC2DC 44830000 */  mtc1       $v1, $f0
/* D3750 800FC2E0 00000000 */  nop
/* D3754 800FC2E4 46800021 */  cvt.d.w    $f0, $f0
/* D3758 800FC2E8 46360001 */  sub.d      $f0, $f0, $f22
/* D375C 800FC2EC 46340002 */  mul.d      $f0, $f0, $f20
/* D3760 800FC2F0 46200020 */  cvt.s.d    $f0, $f0
/* D3764 800FC2F4 3C018010 */  lui        $at, %hi(D_800FE23C)
/* D3768 800FC2F8 00300821 */  addu       $at, $at, $s0
/* D376C 800FC2FC E420E23C */  swc1       $f0, %lo(D_800FE23C)($at)
/* D3770 800FC300 96220000 */  lhu        $v0, ($s1)
/* D3774 800FC304 30427FFF */  andi       $v0, $v0, 0x7fff
/* D3778 800FC308 0803F145 */  j          .L800FC514
/* D377C 800FC30C A6220000 */   sh        $v0, ($s1)
.L800FC310:
/* D3780 800FC310 9242004D */  lbu        $v0, 0x4d($s2)
/* D3784 800FC314 1440007C */  bnez       $v0, .L800FC508
/* D3788 800FC318 00000000 */   nop
/* D378C 800FC31C 0C005D63 */  jal        func_8001758C
/* D3790 800FC320 001380C0 */   sll       $s0, $s3, 3
/* D3794 800FC324 304200FF */  andi       $v0, $v0, 0xff
/* D3798 800FC328 00021082 */  srl        $v0, $v0, 2
/* D379C 800FC32C 44820000 */  mtc1       $v0, $f0
/* D37A0 800FC330 00000000 */  nop
/* D37A4 800FC334 46800020 */  cvt.s.w    $f0, $f0
/* D37A8 800FC338 C6820018 */  lwc1       $f2, 0x18($s4)
/* D37AC 800FC33C 46020000 */  add.s      $f0, $f0, $f2
/* D37B0 800FC340 46000021 */  cvt.d.s    $f0, $f0
/* D37B4 800FC344 3C018010 */  lui        $at, %hi(D_800FDCF0)
/* D37B8 800FC348 D434DCF0 */  ldc1       $f20, %lo(D_800FDCF0)($at)
/* D37BC 800FC34C 46340001 */  sub.d      $f0, $f0, $f20
/* D37C0 800FC350 46200020 */  cvt.s.d    $f0, $f0
/* D37C4 800FC354 3C018010 */  lui        $at, %hi(D_800FE238)
/* D37C8 800FC358 00300821 */  addu       $at, $at, $s0
/* D37CC 800FC35C 0C005D63 */  jal        func_8001758C
/* D37D0 800FC360 E420E238 */   swc1      $f0, %lo(D_800FE238)($at)
/* D37D4 800FC364 304200FF */  andi       $v0, $v0, 0xff
/* D37D8 800FC368 00021082 */  srl        $v0, $v0, 2
/* D37DC 800FC36C 44820000 */  mtc1       $v0, $f0
/* D37E0 800FC370 00000000 */  nop
/* D37E4 800FC374 46800020 */  cvt.s.w    $f0, $f0
/* D37E8 800FC378 C6820020 */  lwc1       $f2, 0x20($s4)
/* D37EC 800FC37C 46020000 */  add.s      $f0, $f0, $f2
/* D37F0 800FC380 46000021 */  cvt.d.s    $f0, $f0
/* D37F4 800FC384 46340001 */  sub.d      $f0, $f0, $f20
/* D37F8 800FC388 46200020 */  cvt.s.d    $f0, $f0
/* D37FC 800FC38C 3C018010 */  lui        $at, %hi(D_800FE23C)
/* D3800 800FC390 00300821 */  addu       $at, $at, $s0
/* D3804 800FC394 0C005D63 */  jal        func_8001758C
/* D3808 800FC398 E420E23C */   swc1      $f0, %lo(D_800FE23C)($at)
/* D380C 800FC39C 0803F144 */  j          .L800FC510
/* D3810 800FC3A0 344200C0 */   ori       $v0, $v0, 0xc0
.L800FC3A4:
/* D3814 800FC3A4 3C018010 */  lui        $at, %hi(D_800FDCF8)
/* D3818 800FC3A8 D420DCF8 */  ldc1       $f0, %lo(D_800FDCF8)($at)
/* D381C 800FC3AC 4620103C */  c.lt.d     $f2, $f0
/* D3820 800FC3B0 00000000 */  nop
/* D3824 800FC3B4 45000029 */  bc1f       .L800FC45C
/* D3828 800FC3B8 00000000 */   nop
/* D382C 800FC3BC 0C005D63 */  jal        func_8001758C
/* D3830 800FC3C0 02608021 */   addu      $s0, $s3, $zero
/* D3834 800FC3C4 001088C0 */  sll        $s1, $s0, 3
/* D3838 800FC3C8 304200FF */  andi       $v0, $v0, 0xff
/* D383C 800FC3CC 00021082 */  srl        $v0, $v0, 2
/* D3840 800FC3D0 44820000 */  mtc1       $v0, $f0
/* D3844 800FC3D4 00000000 */  nop
/* D3848 800FC3D8 46800020 */  cvt.s.w    $f0, $f0
/* D384C 800FC3DC C6820018 */  lwc1       $f2, 0x18($s4)
/* D3850 800FC3E0 46020000 */  add.s      $f0, $f0, $f2
/* D3854 800FC3E4 46000021 */  cvt.d.s    $f0, $f0
/* D3858 800FC3E8 3C018010 */  lui        $at, %hi(D_800FDD00)
/* D385C 800FC3EC D434DD00 */  ldc1       $f20, %lo(D_800FDD00)($at)
/* D3860 800FC3F0 46340001 */  sub.d      $f0, $f0, $f20
/* D3864 800FC3F4 46200020 */  cvt.s.d    $f0, $f0
/* D3868 800FC3F8 3C018010 */  lui        $at, %hi(D_800FE238)
/* D386C 800FC3FC 00310821 */  addu       $at, $at, $s1
/* D3870 800FC400 E420E238 */  swc1       $f0, %lo(D_800FE238)($at)
/* D3874 800FC404 0C005D63 */  jal        func_8001758C
/* D3878 800FC408 00108040 */   sll       $s0, $s0, 1
/* D387C 800FC40C 304200FF */  andi       $v0, $v0, 0xff
/* D3880 800FC410 00021082 */  srl        $v0, $v0, 2
/* D3884 800FC414 44820000 */  mtc1       $v0, $f0
/* D3888 800FC418 00000000 */  nop
/* D388C 800FC41C 46800020 */  cvt.s.w    $f0, $f0
/* D3890 800FC420 C6820020 */  lwc1       $f2, 0x20($s4)
/* D3894 800FC424 46020000 */  add.s      $f0, $f0, $f2
/* D3898 800FC428 46000021 */  cvt.d.s    $f0, $f0
/* D389C 800FC42C 46340001 */  sub.d      $f0, $f0, $f20
/* D38A0 800FC430 46200020 */  cvt.s.d    $f0, $f0
/* D38A4 800FC434 3C018010 */  lui        $at, %hi(D_800FE23C)
/* D38A8 800FC438 00310821 */  addu       $at, $at, $s1
/* D38AC 800FC43C E420E23C */  swc1       $f0, %lo(D_800FE23C)($at)
/* D38B0 800FC440 3C028010 */  lui        $v0, %hi(D_800FE234)
/* D38B4 800FC444 2442E234 */  addiu      $v0, $v0, %lo(D_800FE234)
/* D38B8 800FC448 02028021 */  addu       $s0, $s0, $v0
/* D38BC 800FC44C 96020000 */  lhu        $v0, ($s0)
/* D38C0 800FC450 34428000 */  ori        $v0, $v0, 0x8000
/* D38C4 800FC454 0803F145 */  j          .L800FC514
/* D38C8 800FC458 A6020000 */   sh        $v0, ($s0)
.L800FC45C:
/* D38CC 800FC45C 9242004D */  lbu        $v0, 0x4d($s2)
/* D38D0 800FC460 14400029 */  bnez       $v0, .L800FC508
/* D38D4 800FC464 00000000 */   nop
/* D38D8 800FC468 0C005D63 */  jal        func_8001758C
/* D38DC 800FC46C 001380C0 */   sll       $s0, $s3, 3
/* D38E0 800FC470 304200FF */  andi       $v0, $v0, 0xff
/* D38E4 800FC474 00021840 */  sll        $v1, $v0, 1
/* D38E8 800FC478 00621821 */  addu       $v1, $v1, $v0
/* D38EC 800FC47C 000318C0 */  sll        $v1, $v1, 3
/* D38F0 800FC480 00621821 */  addu       $v1, $v1, $v0
/* D38F4 800FC484 00031982 */  srl        $v1, $v1, 6
/* D38F8 800FC488 44830000 */  mtc1       $v1, $f0
/* D38FC 800FC48C 00000000 */  nop
/* D3900 800FC490 46800021 */  cvt.d.w    $f0, $f0
/* D3904 800FC494 3C018010 */  lui        $at, %hi(D_800FDD08)
/* D3908 800FC498 D436DD08 */  ldc1       $f22, %lo(D_800FDD08)($at)
/* D390C 800FC49C 46360001 */  sub.d      $f0, $f0, $f22
/* D3910 800FC4A0 3C018010 */  lui        $at, %hi(D_800FDD10)
/* D3914 800FC4A4 D434DD10 */  ldc1       $f20, %lo(D_800FDD10)($at)
/* D3918 800FC4A8 46340002 */  mul.d      $f0, $f0, $f20
/* D391C 800FC4AC 46200020 */  cvt.s.d    $f0, $f0
/* D3920 800FC4B0 3C018010 */  lui        $at, %hi(D_800FE238)
/* D3924 800FC4B4 00300821 */  addu       $at, $at, $s0
/* D3928 800FC4B8 0C005D63 */  jal        func_8001758C
/* D392C 800FC4BC E420E238 */   swc1      $f0, %lo(D_800FE238)($at)
/* D3930 800FC4C0 304200FF */  andi       $v0, $v0, 0xff
/* D3934 800FC4C4 00021840 */  sll        $v1, $v0, 1
/* D3938 800FC4C8 00621821 */  addu       $v1, $v1, $v0
/* D393C 800FC4CC 000318C0 */  sll        $v1, $v1, 3
/* D3940 800FC4D0 00621821 */  addu       $v1, $v1, $v0
/* D3944 800FC4D4 00031982 */  srl        $v1, $v1, 6
/* D3948 800FC4D8 44830000 */  mtc1       $v1, $f0
/* D394C 800FC4DC 00000000 */  nop
/* D3950 800FC4E0 46800021 */  cvt.d.w    $f0, $f0
/* D3954 800FC4E4 46360001 */  sub.d      $f0, $f0, $f22
/* D3958 800FC4E8 46340002 */  mul.d      $f0, $f0, $f20
/* D395C 800FC4EC 46200020 */  cvt.s.d    $f0, $f0
/* D3960 800FC4F0 3C018010 */  lui        $at, %hi(D_800FE23C)
/* D3964 800FC4F4 00300821 */  addu       $at, $at, $s0
/* D3968 800FC4F8 0C005D63 */  jal        func_8001758C
/* D396C 800FC4FC E420E23C */   swc1      $f0, %lo(D_800FE23C)($at)
/* D3970 800FC500 0803F144 */  j          .L800FC510
/* D3974 800FC504 344200C0 */   ori       $v0, $v0, 0xc0
.L800FC508:
/* D3978 800FC508 9242004D */  lbu        $v0, 0x4d($s2)
/* D397C 800FC50C 2442FFFF */  addiu      $v0, $v0, -1
.L800FC510:
/* D3980 800FC510 A242004D */  sb         $v0, 0x4d($s2)
.L800FC514:
/* D3984 800FC514 C64C0018 */  lwc1       $f12, 0x18($s2)
/* D3988 800FC518 0C03E5AA */  jal        func_800F96A8_D0B18
/* D398C 800FC51C C64E0020 */   lwc1      $f14, 0x20($s2)
/* D3990 800FC520 8E420040 */  lw         $v0, 0x40($s2)
/* D3994 800FC524 84440002 */  lh         $a0, 2($v0)
/* D3998 800FC528 8E450018 */  lw         $a1, 0x18($s2)
/* D399C 800FC52C 44060000 */  mfc1       $a2, $f0
/* D39A0 800FC530 0C0095E6 */  jal        func_80025798
/* D39A4 800FC534 8E470020 */   lw        $a3, 0x20($s2)
/* D39A8 800FC538 C642001C */  lwc1       $f2, 0x1c($s2)
/* D39AC 800FC53C 460010A1 */  cvt.d.s    $f2, $f2
/* D39B0 800FC540 3C018010 */  lui        $at, %hi(D_800FDD18)
/* D39B4 800FC544 D420DD18 */  ldc1       $f0, %lo(D_800FDD18)($at)
/* D39B8 800FC548 46220003 */  div.d      $f0, $f0, $f2
/* D39BC 800FC54C 3C018010 */  lui        $at, %hi(D_800FDD20)
/* D39C0 800FC550 D422DD20 */  ldc1       $f2, %lo(D_800FDD20)($at)
/* D39C4 800FC554 46220002 */  mul.d      $f0, $f0, $f2
/* D39C8 800FC558 46220000 */  add.d      $f0, $f0, $f2
/* D39CC 800FC55C 46200520 */  cvt.s.d    $f20, $f0
/* D39D0 800FC560 8E420040 */  lw         $v0, 0x40($s2)
/* D39D4 800FC564 84440002 */  lh         $a0, 2($v0)
/* D39D8 800FC568 4405A000 */  mfc1       $a1, $f20
/* D39DC 800FC56C 3C063F80 */  lui        $a2, 0x3f80
/* D39E0 800FC570 4407A000 */  mfc1       $a3, $f20
/* D39E4 800FC574 0C00960C */  jal        func_80025830
/* D39E8 800FC578 00000000 */   nop
/* D39EC 800FC57C 8FBF0024 */  lw         $ra, 0x24($sp)
/* D39F0 800FC580 8FB40020 */  lw         $s4, 0x20($sp)
/* D39F4 800FC584 8FB3001C */  lw         $s3, 0x1c($sp)
/* D39F8 800FC588 8FB20018 */  lw         $s2, 0x18($sp)
/* D39FC 800FC58C 8FB10014 */  lw         $s1, 0x14($sp)
/* D3A00 800FC590 8FB00010 */  lw         $s0, 0x10($sp)
/* D3A04 800FC594 D7B60030 */  ldc1       $f22, 0x30($sp)
/* D3A08 800FC598 D7B40028 */  ldc1       $f20, 0x28($sp)
/* D3A0C 800FC59C 03E00008 */  jr         $ra
/* D3A10 800FC5A0 27BD0038 */   addiu     $sp, $sp, 0x38
