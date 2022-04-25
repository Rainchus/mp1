	.set noat
	.set noreorder

glabel func_800FAB80_D1FF0
/* D1FF0 800FAB80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D1FF4 800FAB84 AFBF0018 */  sw         $ra, 0x18($sp)
/* D1FF8 800FAB88 AFB10014 */  sw         $s1, 0x14($sp)
/* D1FFC 800FAB8C AFB00010 */  sw         $s0, 0x10($sp)
/* D2000 800FAB90 3C028010 */  lui        $v0, %hi(D_800FD884)
/* D2004 800FAB94 8442D884 */  lh         $v0, %lo(D_800FD884)($v0)
/* D2008 800FAB98 10400009 */  beqz       $v0, .L800FABC0
/* D200C 800FAB9C 00808021 */   addu      $s0, $a0, $zero
/* D2010 800FABA0 0C00168A */  jal        func_80005A28
/* D2014 800FABA4 00000000 */   nop
/* D2018 800FABA8 3C028010 */  lui        $v0, %hi(D_800FD884)
/* D201C 800FABAC 9442D884 */  lhu        $v0, %lo(D_800FD884)($v0)
/* D2020 800FABB0 2442FFFF */  addiu      $v0, $v0, -1
/* D2024 800FABB4 3C018010 */  lui        $at, %hi(D_800FD884)
/* D2028 800FABB8 0803EB41 */  j          .L800FAD04
/* D202C 800FABBC A422D884 */   sh        $v0, %lo(D_800FD884)($at)
.L800FABC0:
/* D2030 800FABC0 9203004C */  lbu        $v1, 0x4c($s0)
/* D2034 800FABC4 000310C0 */  sll        $v0, $v1, 3
/* D2038 800FABC8 00431023 */  subu       $v0, $v0, $v1
/* D203C 800FABCC 00021080 */  sll        $v0, $v0, 2
/* D2040 800FABD0 8E110050 */  lw         $s1, 0x50($s0)
/* D2044 800FABD4 3C018010 */  lui        $at, %hi(D_800FE2D0)
/* D2048 800FABD8 00220821 */  addu       $at, $at, $v0
/* D204C 800FABDC C420E2D0 */  lwc1       $f0, %lo(D_800FE2D0)($at)
/* D2050 800FABE0 E600001C */  swc1       $f0, 0x1c($s0)
/* D2054 800FABE4 8E020040 */  lw         $v0, 0x40($s0)
/* D2058 800FABE8 84440002 */  lh         $a0, 2($v0)
/* D205C 800FABEC 8E050018 */  lw         $a1, 0x18($s0)
/* D2060 800FABF0 44060000 */  mfc1       $a2, $f0
/* D2064 800FABF4 0C0095E6 */  jal        func_80025798
/* D2068 800FABF8 8E070020 */   lw        $a3, 0x20($s0)
/* D206C 800FABFC 3C038010 */  lui        $v1, %hi(D_800FD880)
/* D2070 800FAC00 8463D880 */  lh         $v1, %lo(D_800FD880)($v1)
/* D2074 800FAC04 1060002A */  beqz       $v1, .L800FACB0
/* D2078 800FAC08 2402002D */   addiu     $v0, $zero, 0x2d
/* D207C 800FAC0C 14620014 */  bne        $v1, $v0, .L800FAC60
/* D2080 800FAC10 00000000 */   nop
/* D2084 800FAC14 C60E001C */  lwc1       $f14, 0x1c($s0)
/* D2088 800FAC18 460073A1 */  cvt.d.s    $f14, $f14
/* D208C 800FAC1C 3C018010 */  lui        $at, %hi(D_800FDBD0)
/* D2090 800FAC20 D420DBD0 */  ldc1       $f0, %lo(D_800FDBD0)($at)
/* D2094 800FAC24 46207380 */  add.d      $f14, $f14, $f0
/* D2098 800FAC28 C60C0018 */  lwc1       $f12, 0x18($s0)
/* D209C 800FAC2C 8E060020 */  lw         $a2, 0x20($s0)
/* D20A0 800FAC30 0C03E54F */  jal        func_800F953C_D09AC
/* D20A4 800FAC34 462073A0 */   cvt.s.d   $f14, $f14
/* D20A8 800FAC38 2404015E */  addiu      $a0, $zero, 0x15e
/* D20AC 800FAC3C 0C018150 */  jal        func_80060540
/* D20B0 800FAC40 00002821 */   addu      $a1, $zero, $zero
/* D20B4 800FAC44 82240058 */  lb         $a0, 0x58($s1)
/* D20B8 800FAC48 24050002 */  addiu      $a1, $zero, 2
/* D20BC 800FAC4C 24060002 */  addiu      $a2, $zero, 2
/* D20C0 800FAC50 0C0183C1 */  jal        func_80060F04
/* D20C4 800FAC54 24070014 */   addiu     $a3, $zero, 0x14
/* D20C8 800FAC58 0803EB26 */  j          .L800FAC98
/* D20CC 800FAC5C 00000000 */   nop
.L800FAC60:
/* D20D0 800FAC60 3C028010 */  lui        $v0, %hi(D_800FD880)
/* D20D4 800FAC64 8442D880 */  lh         $v0, %lo(D_800FD880)($v0)
/* D20D8 800FAC68 28420002 */  slti       $v0, $v0, 2
/* D20DC 800FAC6C 10400006 */  beqz       $v0, .L800FAC88
/* D20E0 800FAC70 24020009 */   addiu     $v0, $zero, 9
/* D20E4 800FAC74 3C018010 */  lui        $at, %hi(D_800FD882)
/* D20E8 800FAC78 A422D882 */  sh         $v0, %lo(D_800FD882)($at)
/* D20EC 800FAC7C 02002021 */  addu       $a0, $s0, $zero
/* D20F0 800FAC80 0803EB24 */  j          .L800FAC90
/* D20F4 800FAC84 24050025 */   addiu     $a1, $zero, 0x25
.L800FAC88:
/* D20F8 800FAC88 02002021 */  addu       $a0, $s0, $zero
/* D20FC 800FAC8C 24050023 */  addiu      $a1, $zero, 0x23
.L800FAC90:
/* D2100 800FAC90 0C03EB65 */  jal        func_800FAD94_D2204
/* D2104 800FAC94 00000000 */   nop
.L800FAC98:
/* D2108 800FAC98 3C028010 */  lui        $v0, %hi(D_800FD880)
/* D210C 800FAC9C 9442D880 */  lhu        $v0, %lo(D_800FD880)($v0)
/* D2110 800FACA0 2442FFFF */  addiu      $v0, $v0, -1
/* D2114 800FACA4 3C018010 */  lui        $at, %hi(D_800FD880)
/* D2118 800FACA8 0803EB3F */  j          .L800FACFC
/* D211C 800FACAC A422D880 */   sh        $v0, %lo(D_800FD880)($at)
.L800FACB0:
/* D2120 800FACB0 3C028010 */  lui        $v0, %hi(D_800FD882)
/* D2124 800FACB4 8442D882 */  lh         $v0, %lo(D_800FD882)($v0)
/* D2128 800FACB8 10400010 */  beqz       $v0, .L800FACFC
/* D212C 800FACBC 28420002 */   slti      $v0, $v0, 2
/* D2130 800FACC0 10400003 */  beqz       $v0, .L800FACD0
/* D2134 800FACC4 00002821 */   addu      $a1, $zero, $zero
/* D2138 800FACC8 0803EB36 */  j          .L800FACD8
/* D213C 800FACCC 02002021 */   addu      $a0, $s0, $zero
.L800FACD0:
/* D2140 800FACD0 02002021 */  addu       $a0, $s0, $zero
/* D2144 800FACD4 24050025 */  addiu      $a1, $zero, 0x25
.L800FACD8:
/* D2148 800FACD8 0C03EB65 */  jal        func_800FAD94_D2204
/* D214C 800FACDC 00000000 */   nop
/* D2150 800FACE0 0C0181D6 */  jal        func_80060758
/* D2154 800FACE4 2404015E */   addiu     $a0, $zero, 0x15e
/* D2158 800FACE8 3C028010 */  lui        $v0, %hi(D_800FD882)
/* D215C 800FACEC 9442D882 */  lhu        $v0, %lo(D_800FD882)($v0)
/* D2160 800FACF0 2442FFFF */  addiu      $v0, $v0, -1
/* D2164 800FACF4 3C018010 */  lui        $at, %hi(D_800FD882)
/* D2168 800FACF8 A422D882 */  sh         $v0, %lo(D_800FD882)($at)
.L800FACFC:
/* D216C 800FACFC 0C005F6C */  jal        func_80017DB0
/* D2170 800FAD00 02002021 */   addu      $a0, $s0, $zero
.L800FAD04:
/* D2174 800FAD04 8FBF0018 */  lw         $ra, 0x18($sp)
/* D2178 800FAD08 8FB10014 */  lw         $s1, 0x14($sp)
/* D217C 800FAD0C 8FB00010 */  lw         $s0, 0x10($sp)
/* D2180 800FAD10 03E00008 */  jr         $ra
/* D2184 800FAD14 27BD0020 */   addiu     $sp, $sp, 0x20
