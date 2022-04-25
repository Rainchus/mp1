	.set noat
	.set noreorder

glabel func_800FBC34_D30A4
/* D30A4 800FBC34 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* D30A8 800FBC38 AFBF001C */  sw         $ra, 0x1c($sp)
/* D30AC 800FBC3C AFB00018 */  sw         $s0, 0x18($sp)
/* D30B0 800FBC40 F7B60028 */  sdc1       $f22, 0x28($sp)
/* D30B4 800FBC44 F7B40020 */  sdc1       $f20, 0x20($sp)
/* D30B8 800FBC48 00808021 */  addu       $s0, $a0, $zero
/* D30BC 800FBC4C 3C040012 */  lui        $a0, 0x12
/* D30C0 800FBC50 34840006 */  ori        $a0, $a0, 6
/* D30C4 800FBC54 0C005D30 */  jal        func_800174C0
/* D30C8 800FBC58 240500D9 */   addiu     $a1, $zero, 0xd9
/* D30CC 800FBC5C 8E030040 */  lw         $v1, 0x40($s0)
/* D30D0 800FBC60 A4620000 */  sh         $v0, ($v1)
/* D30D4 800FBC64 8E020040 */  lw         $v0, 0x40($s0)
/* D30D8 800FBC68 84440000 */  lh         $a0, ($v0)
/* D30DC 800FBC6C 24050002 */  addiu      $a1, $zero, 2
/* D30E0 800FBC70 0C0097AD */  jal        func_80025EB4
/* D30E4 800FBC74 24060002 */   addiu     $a2, $zero, 2
/* D30E8 800FBC78 0C005D63 */  jal        func_8001758C
/* D30EC 800FBC7C 00000000 */   nop
/* D30F0 800FBC80 8E030040 */  lw         $v1, 0x40($s0)
/* D30F4 800FBC84 84630000 */  lh         $v1, ($v1)
/* D30F8 800FBC88 3C07800F */  lui        $a3, %hi(D_800F2B7C)
/* D30FC 800FBC8C 8CE72B7C */  lw         $a3, %lo(D_800F2B7C)($a3)
/* D3100 800FBC90 00032040 */  sll        $a0, $v1, 1
/* D3104 800FBC94 00832021 */  addu       $a0, $a0, $v1
/* D3108 800FBC98 00042180 */  sll        $a0, $a0, 6
/* D310C 800FBC9C 00872021 */  addu       $a0, $a0, $a3
/* D3110 800FBCA0 304200FF */  andi       $v0, $v0, 0xff
/* D3114 800FBCA4 84850008 */  lh         $a1, 8($a0)
/* D3118 800FBCA8 3C06800F */  lui        $a2, %hi(D_800ED554)
/* D311C 800FBCAC 8CC6D554 */  lw         $a2, %lo(D_800ED554)($a2)
/* D3120 800FBCB0 00051840 */  sll        $v1, $a1, 1
/* D3124 800FBCB4 00651821 */  addu       $v1, $v1, $a1
/* D3128 800FBCB8 000318C0 */  sll        $v1, $v1, 3
/* D312C 800FBCBC 00661821 */  addu       $v1, $v1, $a2
/* D3130 800FBCC0 84630002 */  lh         $v1, 2($v1)
/* D3134 800FBCC4 00430018 */  mult       $v0, $v1
/* D3138 800FBCC8 00001012 */  mflo       $v0
/* D313C 800FBCCC 00021203 */  sra        $v0, $v0, 8
/* D3140 800FBCD0 44820000 */  mtc1       $v0, $f0
/* D3144 800FBCD4 00000000 */  nop
/* D3148 800FBCD8 46800020 */  cvt.s.w    $f0, $f0
/* D314C 800FBCDC E4800048 */  swc1       $f0, 0x48($a0)
/* D3150 800FBCE0 8E020040 */  lw         $v0, 0x40($s0)
/* D3154 800FBCE4 84430000 */  lh         $v1, ($v0)
/* D3158 800FBCE8 00031040 */  sll        $v0, $v1, 1
/* D315C 800FBCEC 00431021 */  addu       $v0, $v0, $v1
/* D3160 800FBCF0 00021180 */  sll        $v0, $v0, 6
/* D3164 800FBCF4 00471021 */  addu       $v0, $v0, $a3
/* D3168 800FBCF8 3C013FC0 */  lui        $at, 0x3fc0
/* D316C 800FBCFC 44810000 */  mtc1       $at, $f0
/* D3170 800FBD00 00000000 */  nop
/* D3174 800FBD04 E440004C */  swc1       $f0, 0x4c($v0)
/* D3178 800FBD08 24040006 */  addiu      $a0, $zero, 6
/* D317C 800FBD0C 0C005D3D */  jal        func_800174F4
/* D3180 800FBD10 24050699 */   addiu     $a1, $zero, 0x699
/* D3184 800FBD14 8E030040 */  lw         $v1, 0x40($s0)
/* D3188 800FBD18 A4620002 */  sh         $v0, 2($v1)
/* D318C 800FBD1C 3C028010 */  lui        $v0, %hi(func_800FBF24_D3394)
/* D3190 800FBD20 2442BF24 */  addiu      $v0, $v0, %lo(func_800FBF24_D3394)
/* D3194 800FBD24 AE020014 */  sw         $v0, 0x14($s0)
/* D3198 800FBD28 3C028010 */  lui        $v0, %hi(D_800FE1DE)
/* D319C 800FBD2C 8442E1DE */  lh         $v0, %lo(D_800FE1DE)($v0)
/* D31A0 800FBD30 00021040 */  sll        $v0, $v0, 1
/* D31A4 800FBD34 3C018010 */  lui        $at, %hi(D_800FE230)
/* D31A8 800FBD38 00220821 */  addu       $at, $at, $v0
/* D31AC 800FBD3C 0C005D63 */  jal        func_8001758C
/* D31B0 800FBD40 A420E230 */   sh        $zero, %lo(D_800FE230)($at)
/* D31B4 800FBD44 3C038010 */  lui        $v1, %hi(D_800FE1DE)
/* D31B8 800FBD48 8463E1DE */  lh         $v1, %lo(D_800FE1DE)($v1)
/* D31BC 800FBD4C 00031880 */  sll        $v1, $v1, 2
/* D31C0 800FBD50 304200FF */  andi       $v0, $v0, 0xff
/* D31C4 800FBD54 00021102 */  srl        $v0, $v0, 4
/* D31C8 800FBD58 44820000 */  mtc1       $v0, $f0
/* D31CC 800FBD5C 00000000 */  nop
/* D31D0 800FBD60 46800020 */  cvt.s.w    $f0, $f0
/* D31D4 800FBD64 3C018010 */  lui        $at, %hi(D_800FE248)
/* D31D8 800FBD68 00230821 */  addu       $at, $at, $v1
/* D31DC 800FBD6C E420E248 */  swc1       $f0, %lo(D_800FE248)($at)
/* D31E0 800FBD70 3C028010 */  lui        $v0, %hi(D_800FE1DF)
/* D31E4 800FBD74 9042E1DF */  lbu        $v0, %lo(D_800FE1DF)($v0)
/* D31E8 800FBD78 A202004C */  sb         $v0, 0x4c($s0)
/* D31EC 800FBD7C 0C005D63 */  jal        func_8001758C
/* D31F0 800FBD80 A200004D */   sb        $zero, 0x4d($s0)
/* D31F4 800FBD84 304200FF */  andi       $v0, $v0, 0xff
/* D31F8 800FBD88 00021840 */  sll        $v1, $v0, 1
/* D31FC 800FBD8C 00621821 */  addu       $v1, $v1, $v0
/* D3200 800FBD90 000318C0 */  sll        $v1, $v1, 3
/* D3204 800FBD94 00621821 */  addu       $v1, $v1, $v0
/* D3208 800FBD98 00031982 */  srl        $v1, $v1, 6
/* D320C 800FBD9C 44830000 */  mtc1       $v1, $f0
/* D3210 800FBDA0 00000000 */  nop
/* D3214 800FBDA4 46800021 */  cvt.d.w    $f0, $f0
/* D3218 800FBDA8 3C018010 */  lui        $at, %hi(D_800FDC80)
/* D321C 800FBDAC D436DC80 */  ldc1       $f22, %lo(D_800FDC80)($at)
/* D3220 800FBDB0 46360001 */  sub.d      $f0, $f0, $f22
/* D3224 800FBDB4 3C018010 */  lui        $at, %hi(D_800FDC88)
/* D3228 800FBDB8 D434DC88 */  ldc1       $f20, %lo(D_800FDC88)($at)
/* D322C 800FBDBC 46340002 */  mul.d      $f0, $f0, $f20
/* D3230 800FBDC0 46200020 */  cvt.s.d    $f0, $f0
/* D3234 800FBDC4 E6000018 */  swc1       $f0, 0x18($s0)
/* D3238 800FBDC8 3C028010 */  lui        $v0, %hi(D_800FE1DE)
/* D323C 800FBDCC 8442E1DE */  lh         $v0, %lo(D_800FE1DE)($v0)
/* D3240 800FBDD0 00021080 */  sll        $v0, $v0, 2
/* D3244 800FBDD4 3C018010 */  lui        $at, %hi(D_800FE248)
/* D3248 800FBDD8 00220821 */  addu       $at, $at, $v0
/* D324C 800FBDDC C420E248 */  lwc1       $f0, %lo(D_800FE248)($at)
/* D3250 800FBDE0 46000021 */  cvt.d.s    $f0, $f0
/* D3254 800FBDE4 3C018010 */  lui        $at, %hi(D_800FDC90)
/* D3258 800FBDE8 D422DC90 */  ldc1       $f2, %lo(D_800FDC90)($at)
/* D325C 800FBDEC 46220000 */  add.d      $f0, $f0, $f2
/* D3260 800FBDF0 46340002 */  mul.d      $f0, $f0, $f20
/* D3264 800FBDF4 46200020 */  cvt.s.d    $f0, $f0
/* D3268 800FBDF8 0C005D63 */  jal        func_8001758C
/* D326C 800FBDFC E600001C */   swc1      $f0, 0x1c($s0)
/* D3270 800FBE00 304200FF */  andi       $v0, $v0, 0xff
/* D3274 800FBE04 00021840 */  sll        $v1, $v0, 1
/* D3278 800FBE08 00621821 */  addu       $v1, $v1, $v0
/* D327C 800FBE0C 000318C0 */  sll        $v1, $v1, 3
/* D3280 800FBE10 00621821 */  addu       $v1, $v1, $v0
/* D3284 800FBE14 00031982 */  srl        $v1, $v1, 6
/* D3288 800FBE18 44830000 */  mtc1       $v1, $f0
/* D328C 800FBE1C 00000000 */  nop
/* D3290 800FBE20 46800021 */  cvt.d.w    $f0, $f0
/* D3294 800FBE24 46360001 */  sub.d      $f0, $f0, $f22
/* D3298 800FBE28 46340002 */  mul.d      $f0, $f0, $f20
/* D329C 800FBE2C 46200020 */  cvt.s.d    $f0, $f0
/* D32A0 800FBE30 E6000020 */  swc1       $f0, 0x20($s0)
/* D32A4 800FBE34 8E020040 */  lw         $v0, 0x40($s0)
/* D32A8 800FBE38 84440000 */  lh         $a0, ($v0)
/* D32AC 800FBE3C 8E050018 */  lw         $a1, 0x18($s0)
/* D32B0 800FBE40 8E06001C */  lw         $a2, 0x1c($s0)
/* D32B4 800FBE44 44070000 */  mfc1       $a3, $f0
/* D32B8 800FBE48 0C0095E6 */  jal        func_80025798
/* D32BC 800FBE4C 00000000 */   nop
/* D32C0 800FBE50 8E020040 */  lw         $v0, 0x40($s0)
/* D32C4 800FBE54 84440002 */  lh         $a0, 2($v0)
/* D32C8 800FBE58 8E050018 */  lw         $a1, 0x18($s0)
/* D32CC 800FBE5C 8E06001C */  lw         $a2, 0x1c($s0)
/* D32D0 800FBE60 0C0095E6 */  jal        func_80025798
/* D32D4 800FBE64 8E070020 */   lw        $a3, 0x20($s0)
/* D32D8 800FBE68 44800000 */  mtc1       $zero, $f0
/* D32DC 800FBE6C 00000000 */  nop
/* D32E0 800FBE70 E600002C */  swc1       $f0, 0x2c($s0)
/* D32E4 800FBE74 E6000028 */  swc1       $f0, 0x28($s0)
/* D32E8 800FBE78 E6000024 */  swc1       $f0, 0x24($s0)
/* D32EC 800FBE7C 8E020040 */  lw         $v0, 0x40($s0)
/* D32F0 800FBE80 84440000 */  lh         $a0, ($v0)
/* D32F4 800FBE84 44050000 */  mfc1       $a1, $f0
/* D32F8 800FBE88 8E060028 */  lw         $a2, 0x28($s0)
/* D32FC 800FBE8C 0C0095F9 */  jal        func_800257E4
/* D3300 800FBE90 8E07002C */   lw        $a3, 0x2c($s0)
/* D3304 800FBE94 8E020040 */  lw         $v0, 0x40($s0)
/* D3308 800FBE98 84440002 */  lh         $a0, 2($v0)
/* D330C 800FBE9C 8E050024 */  lw         $a1, 0x24($s0)
/* D3310 800FBEA0 8E060028 */  lw         $a2, 0x28($s0)
/* D3314 800FBEA4 0C0095F9 */  jal        func_800257E4
/* D3318 800FBEA8 8E07002C */   lw        $a3, 0x2c($s0)
/* D331C 800FBEAC 3C013E99 */  lui        $at, 0x3e99
/* D3320 800FBEB0 3421999A */  ori        $at, $at, 0x999a
/* D3324 800FBEB4 44810000 */  mtc1       $at, $f0
/* D3328 800FBEB8 00000000 */  nop
/* D332C 800FBEBC E6000038 */  swc1       $f0, 0x38($s0)
/* D3330 800FBEC0 E6000034 */  swc1       $f0, 0x34($s0)
/* D3334 800FBEC4 E6000030 */  swc1       $f0, 0x30($s0)
/* D3338 800FBEC8 8E020040 */  lw         $v0, 0x40($s0)
/* D333C 800FBECC 84440000 */  lh         $a0, ($v0)
/* D3340 800FBED0 44050000 */  mfc1       $a1, $f0
/* D3344 800FBED4 8E060034 */  lw         $a2, 0x34($s0)
/* D3348 800FBED8 0C00960C */  jal        func_80025830
/* D334C 800FBEDC 8E070038 */   lw        $a3, 0x38($s0)
/* D3350 800FBEE0 8E020040 */  lw         $v0, 0x40($s0)
/* D3354 800FBEE4 84440002 */  lh         $a0, 2($v0)
/* D3358 800FBEE8 8E050030 */  lw         $a1, 0x30($s0)
/* D335C 800FBEEC 8E060034 */  lw         $a2, 0x34($s0)
/* D3360 800FBEF0 0C00960C */  jal        func_80025830
/* D3364 800FBEF4 8E070038 */   lw        $a3, 0x38($s0)
/* D3368 800FBEF8 3C028010 */  lui        $v0, %hi(D_800FE1DE)
/* D336C 800FBEFC 9442E1DE */  lhu        $v0, %lo(D_800FE1DE)($v0)
/* D3370 800FBF00 24420001 */  addiu      $v0, $v0, 1
/* D3374 800FBF04 3C018010 */  lui        $at, %hi(D_800FE1DE)
/* D3378 800FBF08 A422E1DE */  sh         $v0, %lo(D_800FE1DE)($at)
/* D337C 800FBF0C 8FBF001C */  lw         $ra, 0x1c($sp)
/* D3380 800FBF10 8FB00018 */  lw         $s0, 0x18($sp)
/* D3384 800FBF14 D7B60028 */  ldc1       $f22, 0x28($sp)
/* D3388 800FBF18 D7B40020 */  ldc1       $f20, 0x20($sp)
/* D338C 800FBF1C 03E00008 */  jr         $ra
/* D3390 800FBF20 27BD0030 */   addiu     $sp, $sp, 0x30
