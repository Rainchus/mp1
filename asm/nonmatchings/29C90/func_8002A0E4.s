	.set noat
	.set noreorder

glabel func_8002A0E4
/* 2ACE4 8002A0E4 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 2ACE8 8002A0E8 AFBF00E4 */  sw         $ra, 0xe4($sp)
/* 2ACEC 8002A0EC AFBE00E0 */  sw         $fp, 0xe0($sp)
/* 2ACF0 8002A0F0 AFB700DC */  sw         $s7, 0xdc($sp)
/* 2ACF4 8002A0F4 AFB600D8 */  sw         $s6, 0xd8($sp)
/* 2ACF8 8002A0F8 AFB500D4 */  sw         $s5, 0xd4($sp)
/* 2ACFC 8002A0FC AFB400D0 */  sw         $s4, 0xd0($sp)
/* 2AD00 8002A100 AFB300CC */  sw         $s3, 0xcc($sp)
/* 2AD04 8002A104 AFB200C8 */  sw         $s2, 0xc8($sp)
/* 2AD08 8002A108 AFB100C4 */  sw         $s1, 0xc4($sp)
/* 2AD0C 8002A10C AFB000C0 */  sw         $s0, 0xc0($sp)
/* 2AD10 8002A110 F7BA0100 */  sdc1       $f26, 0x100($sp)
/* 2AD14 8002A114 F7B800F8 */  sdc1       $f24, 0xf8($sp)
/* 2AD18 8002A118 F7B600F0 */  sdc1       $f22, 0xf0($sp)
/* 2AD1C 8002A11C F7B400E8 */  sdc1       $f20, 0xe8($sp)
/* 2AD20 8002A120 00809021 */  addu       $s2, $a0, $zero
/* 2AD24 8002A124 00A08821 */  addu       $s1, $a1, $zero
/* 2AD28 8002A128 2653000C */  addiu      $s3, $s2, 0xc
/* 2AD2C 8002A12C 96360004 */  lhu        $s6, 4($s1)
/* 2AD30 8002A130 02202021 */  addu       $a0, $s1, $zero
/* 2AD34 8002A134 0C00A6BB */  jal        func_80029AEC
/* 2AD38 8002A138 27A50028 */   addiu     $a1, $sp, 0x28
/* 2AD3C 8002A13C 0C021BEC */  jal        func_80086FB0
/* 2AD40 8002A140 27A40068 */   addiu     $a0, $sp, 0x68
/* 2AD44 8002A144 C64C0000 */  lwc1       $f12, ($s2)
/* 2AD48 8002A148 0C02BAB0 */  jal        func_800AEAC0
/* 2AD4C 8002A14C 00000000 */   nop
/* 2AD50 8002A150 00161400 */  sll        $v0, $s6, 0x10
/* 2AD54 8002A154 00021403 */  sra        $v0, $v0, 0x10
/* 2AD58 8002A158 000280C0 */  sll        $s0, $v0, 3
/* 2AD5C 8002A15C 02028021 */  addu       $s0, $s0, $v0
/* 2AD60 8002A160 3C014000 */  lui        $at, 0x4000
/* 2AD64 8002A164 4481A000 */  mtc1       $at, $f20
/* 2AD68 8002A168 C64C0000 */  lwc1       $f12, ($s2)
/* 2AD6C 8002A16C 0C02BBF4 */  jal        func_800AEFD0
/* 2AD70 8002A170 00108080 */   sll       $s0, $s0, 2
/* 2AD74 8002A174 A7A0001E */  sh         $zero, 0x1e($sp)
/* 2AD78 8002A178 A7A00018 */  sh         $zero, 0x18($sp)
/* 2AD7C 8002A17C A7A00012 */  sh         $zero, 0x12($sp)
/* 2AD80 8002A180 0C02BAB0 */  jal        func_800AEAC0
/* 2AD84 8002A184 C64C0000 */   lwc1      $f12, ($s2)
/* 2AD88 8002A188 3C02800F */  lui        $v0, %hi(D_800F32AC)
/* 2AD8C 8002A18C 8C4232AC */  lw         $v0, %lo(D_800F32AC)($v0)
/* 2AD90 8002A190 02028021 */  addu       $s0, $s0, $v0
/* 2AD94 8002A194 C6020000 */  lwc1       $f2, ($s0)
/* 2AD98 8002A198 468010A0 */  cvt.s.w    $f2, $f2
/* 2AD9C 8002A19C C6040008 */  lwc1       $f4, 8($s0)
/* 2ADA0 8002A1A0 46041082 */  mul.s      $f2, $f2, $f4
/* 2ADA4 8002A1A4 46141083 */  div.s      $f2, $f2, $f20
/* 2ADA8 8002A1A8 C6440004 */  lwc1       $f4, 4($s2)
/* 2ADAC 8002A1AC 46041080 */  add.s      $f2, $f2, $f4
/* 2ADB0 8002A1B0 C6440014 */  lwc1       $f4, 0x14($s2)
/* 2ADB4 8002A1B4 46040002 */  mul.s      $f0, $f0, $f4
/* 2ADB8 8002A1B8 46001080 */  add.s      $f2, $f2, $f0
/* 2ADBC 8002A1BC 4600100D */  trunc.w.s  $f0, $f2
/* 2ADC0 8002A1C0 44030000 */  mfc1       $v1, $f0
/* 2ADC4 8002A1C4 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2ADC8 8002A1C8 0043102A */  slt        $v0, $v0, $v1
/* 2ADCC 8002A1CC 10400003 */  beqz       $v0, .L8002A1DC
/* 2ADD0 8002A1D0 28628000 */   slti      $v0, $v1, -0x8000
/* 2ADD4 8002A1D4 0800A879 */  j          .L8002A1E4
/* 2ADD8 8002A1D8 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A1DC:
/* 2ADDC 8002A1DC 54400001 */  bnel       $v0, $zero, .L8002A1E4
/* 2ADE0 8002A1E0 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A1E4:
/* 2ADE4 8002A1E4 A7A30010 */  sh         $v1, 0x10($sp)
/* 2ADE8 8002A1E8 0C02BBF4 */  jal        func_800AEFD0
/* 2ADEC 8002A1EC C64C0000 */   lwc1      $f12, ($s2)
/* 2ADF0 8002A1F0 00161C00 */  sll        $v1, $s6, 0x10
/* 2ADF4 8002A1F4 00031C03 */  sra        $v1, $v1, 0x10
/* 2ADF8 8002A1F8 3C04800F */  lui        $a0, %hi(D_800F32AC)
/* 2ADFC 8002A1FC 8C8432AC */  lw         $a0, %lo(D_800F32AC)($a0)
/* 2AE00 8002A200 000310C0 */  sll        $v0, $v1, 3
/* 2AE04 8002A204 00431021 */  addu       $v0, $v0, $v1
/* 2AE08 8002A208 00021080 */  sll        $v0, $v0, 2
/* 2AE0C 8002A20C 00441021 */  addu       $v0, $v0, $a0
/* 2AE10 8002A210 C4420004 */  lwc1       $f2, 4($v0)
/* 2AE14 8002A214 468010A0 */  cvt.s.w    $f2, $f2
/* 2AE18 8002A218 C444000C */  lwc1       $f4, 0xc($v0)
/* 2AE1C 8002A21C 46041082 */  mul.s      $f2, $f2, $f4
/* 2AE20 8002A220 3C014000 */  lui        $at, 0x4000
/* 2AE24 8002A224 44812000 */  mtc1       $at, $f4
/* 2AE28 8002A228 00000000 */  nop
/* 2AE2C 8002A22C 46041083 */  div.s      $f2, $f2, $f4
/* 2AE30 8002A230 C6440008 */  lwc1       $f4, 8($s2)
/* 2AE34 8002A234 46041080 */  add.s      $f2, $f2, $f4
/* 2AE38 8002A238 C6640008 */  lwc1       $f4, 8($s3)
/* 2AE3C 8002A23C 46040002 */  mul.s      $f0, $f0, $f4
/* 2AE40 8002A240 46001080 */  add.s      $f2, $f2, $f0
/* 2AE44 8002A244 4600100D */  trunc.w.s  $f0, $f2
/* 2AE48 8002A248 44030000 */  mfc1       $v1, $f0
/* 2AE4C 8002A24C 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2AE50 8002A250 0043102A */  slt        $v0, $v0, $v1
/* 2AE54 8002A254 10400003 */  beqz       $v0, .L8002A264
/* 2AE58 8002A258 28628000 */   slti      $v0, $v1, -0x8000
/* 2AE5C 8002A25C 0800A89B */  j          .L8002A26C
/* 2AE60 8002A260 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A264:
/* 2AE64 8002A264 54400001 */  bnel       $v0, $zero, .L8002A26C
/* 2AE68 8002A268 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A26C:
/* 2AE6C 8002A26C A7A30014 */  sh         $v1, 0x14($sp)
/* 2AE70 8002A270 C66C0000 */  lwc1       $f12, ($s3)
/* 2AE74 8002A274 3C014000 */  lui        $at, 0x4000
/* 2AE78 8002A278 44810000 */  mtc1       $at, $f0
/* 2AE7C 8002A27C 00000000 */  nop
/* 2AE80 8002A280 46006303 */  div.s      $f12, $f12, $f0
/* 2AE84 8002A284 C6400000 */  lwc1       $f0, ($s2)
/* 2AE88 8002A288 0C02BAB0 */  jal        func_800AEAC0
/* 2AE8C 8002A28C 46006300 */   add.s     $f12, $f12, $f0
/* 2AE90 8002A290 87A20010 */  lh         $v0, 0x10($sp)
/* 2AE94 8002A294 44821000 */  mtc1       $v0, $f2
/* 2AE98 8002A298 00000000 */  nop
/* 2AE9C 8002A29C 468010A0 */  cvt.s.w    $f2, $f2
/* 2AEA0 8002A2A0 C6640004 */  lwc1       $f4, 4($s3)
/* 2AEA4 8002A2A4 46040002 */  mul.s      $f0, $f0, $f4
/* 2AEA8 8002A2A8 46001081 */  sub.s      $f2, $f2, $f0
/* 2AEAC 8002A2AC 4600100D */  trunc.w.s  $f0, $f2
/* 2AEB0 8002A2B0 44030000 */  mfc1       $v1, $f0
/* 2AEB4 8002A2B4 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2AEB8 8002A2B8 0043102A */  slt        $v0, $v0, $v1
/* 2AEBC 8002A2BC 10400003 */  beqz       $v0, .L8002A2CC
/* 2AEC0 8002A2C0 28628000 */   slti      $v0, $v1, -0x8000
/* 2AEC4 8002A2C4 0800A8B5 */  j          .L8002A2D4
/* 2AEC8 8002A2C8 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A2CC:
/* 2AECC 8002A2CC 54400001 */  bnel       $v0, $zero, .L8002A2D4
/* 2AED0 8002A2D0 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A2D4:
/* 2AED4 8002A2D4 A7A30016 */  sh         $v1, 0x16($sp)
/* 2AED8 8002A2D8 C66C0000 */  lwc1       $f12, ($s3)
/* 2AEDC 8002A2DC 3C014000 */  lui        $at, 0x4000
/* 2AEE0 8002A2E0 44810000 */  mtc1       $at, $f0
/* 2AEE4 8002A2E4 00000000 */  nop
/* 2AEE8 8002A2E8 46006303 */  div.s      $f12, $f12, $f0
/* 2AEEC 8002A2EC C6400000 */  lwc1       $f0, ($s2)
/* 2AEF0 8002A2F0 0C02BBF4 */  jal        func_800AEFD0
/* 2AEF4 8002A2F4 46006300 */   add.s     $f12, $f12, $f0
/* 2AEF8 8002A2F8 87A20014 */  lh         $v0, 0x14($sp)
/* 2AEFC 8002A2FC 44821000 */  mtc1       $v0, $f2
/* 2AF00 8002A300 00000000 */  nop
/* 2AF04 8002A304 468010A0 */  cvt.s.w    $f2, $f2
/* 2AF08 8002A308 C6640004 */  lwc1       $f4, 4($s3)
/* 2AF0C 8002A30C 46040002 */  mul.s      $f0, $f0, $f4
/* 2AF10 8002A310 46001081 */  sub.s      $f2, $f2, $f0
/* 2AF14 8002A314 4600100D */  trunc.w.s  $f0, $f2
/* 2AF18 8002A318 44030000 */  mfc1       $v1, $f0
/* 2AF1C 8002A31C 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2AF20 8002A320 0043102A */  slt        $v0, $v0, $v1
/* 2AF24 8002A324 10400003 */  beqz       $v0, .L8002A334
/* 2AF28 8002A328 28628000 */   slti      $v0, $v1, -0x8000
/* 2AF2C 8002A32C 0800A8CF */  j          .L8002A33C
/* 2AF30 8002A330 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A334:
/* 2AF34 8002A334 54400001 */  bnel       $v0, $zero, .L8002A33C
/* 2AF38 8002A338 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A33C:
/* 2AF3C 8002A33C A7A3001A */  sh         $v1, 0x1a($sp)
/* 2AF40 8002A340 C66C0000 */  lwc1       $f12, ($s3)
/* 2AF44 8002A344 3C014000 */  lui        $at, 0x4000
/* 2AF48 8002A348 44810000 */  mtc1       $at, $f0
/* 2AF4C 8002A34C 00000000 */  nop
/* 2AF50 8002A350 46006303 */  div.s      $f12, $f12, $f0
/* 2AF54 8002A354 C6400000 */  lwc1       $f0, ($s2)
/* 2AF58 8002A358 0C02BAB0 */  jal        func_800AEAC0
/* 2AF5C 8002A35C 460C0301 */   sub.s     $f12, $f0, $f12
/* 2AF60 8002A360 87A20010 */  lh         $v0, 0x10($sp)
/* 2AF64 8002A364 44821000 */  mtc1       $v0, $f2
/* 2AF68 8002A368 00000000 */  nop
/* 2AF6C 8002A36C 468010A0 */  cvt.s.w    $f2, $f2
/* 2AF70 8002A370 C6640004 */  lwc1       $f4, 4($s3)
/* 2AF74 8002A374 46040002 */  mul.s      $f0, $f0, $f4
/* 2AF78 8002A378 46001081 */  sub.s      $f2, $f2, $f0
/* 2AF7C 8002A37C 4600100D */  trunc.w.s  $f0, $f2
/* 2AF80 8002A380 44030000 */  mfc1       $v1, $f0
/* 2AF84 8002A384 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2AF88 8002A388 0043102A */  slt        $v0, $v0, $v1
/* 2AF8C 8002A38C 10400003 */  beqz       $v0, .L8002A39C
/* 2AF90 8002A390 28628000 */   slti      $v0, $v1, -0x8000
/* 2AF94 8002A394 0800A8E9 */  j          .L8002A3A4
/* 2AF98 8002A398 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A39C:
/* 2AF9C 8002A39C 54400001 */  bnel       $v0, $zero, .L8002A3A4
/* 2AFA0 8002A3A0 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A3A4:
/* 2AFA4 8002A3A4 A7A3001C */  sh         $v1, 0x1c($sp)
/* 2AFA8 8002A3A8 C66C0000 */  lwc1       $f12, ($s3)
/* 2AFAC 8002A3AC 3C014000 */  lui        $at, 0x4000
/* 2AFB0 8002A3B0 44810000 */  mtc1       $at, $f0
/* 2AFB4 8002A3B4 00000000 */  nop
/* 2AFB8 8002A3B8 46006303 */  div.s      $f12, $f12, $f0
/* 2AFBC 8002A3BC C6400000 */  lwc1       $f0, ($s2)
/* 2AFC0 8002A3C0 0C02BBF4 */  jal        func_800AEFD0
/* 2AFC4 8002A3C4 460C0301 */   sub.s     $f12, $f0, $f12
/* 2AFC8 8002A3C8 87A20014 */  lh         $v0, 0x14($sp)
/* 2AFCC 8002A3CC 44821000 */  mtc1       $v0, $f2
/* 2AFD0 8002A3D0 00000000 */  nop
/* 2AFD4 8002A3D4 468010A0 */  cvt.s.w    $f2, $f2
/* 2AFD8 8002A3D8 C6640004 */  lwc1       $f4, 4($s3)
/* 2AFDC 8002A3DC 46040002 */  mul.s      $f0, $f0, $f4
/* 2AFE0 8002A3E0 46001081 */  sub.s      $f2, $f2, $f0
/* 2AFE4 8002A3E4 4600100D */  trunc.w.s  $f0, $f2
/* 2AFE8 8002A3E8 44030000 */  mfc1       $v1, $f0
/* 2AFEC 8002A3EC 24027FFF */  addiu      $v0, $zero, 0x7fff
/* 2AFF0 8002A3F0 0043102A */  slt        $v0, $v0, $v1
/* 2AFF4 8002A3F4 10400003 */  beqz       $v0, .L8002A404
/* 2AFF8 8002A3F8 28628000 */   slti      $v0, $v1, -0x8000
/* 2AFFC 8002A3FC 0800A903 */  j          .L8002A40C
/* 2B000 8002A400 24037FFF */   addiu     $v1, $zero, 0x7fff
.L8002A404:
/* 2B004 8002A404 54400001 */  bnel       $v0, $zero, .L8002A40C
/* 2B008 8002A408 24038000 */   addiu     $v1, $zero, -0x8000
.L8002A40C:
/* 2B00C 8002A40C A7A30020 */  sh         $v1, 0x20($sp)
/* 2B010 8002A410 00161C00 */  sll        $v1, $s6, 0x10
/* 2B014 8002A414 00603021 */  addu       $a2, $v1, $zero
/* 2B018 8002A418 00031C03 */  sra        $v1, $v1, 0x10
/* 2B01C 8002A41C 3C04800F */  lui        $a0, %hi(D_800F32AC)
/* 2B020 8002A420 8C8432AC */  lw         $a0, %lo(D_800F32AC)($a0)
/* 2B024 8002A424 00802821 */  addu       $a1, $a0, $zero
/* 2B028 8002A428 000310C0 */  sll        $v0, $v1, 3
/* 2B02C 8002A42C 00431021 */  addu       $v0, $v0, $v1
/* 2B030 8002A430 00021080 */  sll        $v0, $v0, 2
/* 2B034 8002A434 00441021 */  addu       $v0, $v0, $a0
/* 2B038 8002A438 8C420004 */  lw         $v0, 4($v0)
/* 2B03C 8002A43C 184000BC */  blez       $v0, .L8002A730
/* 2B040 8002A440 0000A821 */   addu      $s5, $zero, $zero
/* 2B044 8002A444 2417FFFF */  addiu      $s7, $zero, -1
/* 2B048 8002A448 24120001 */  addiu      $s2, $zero, 1
/* 2B04C 8002A44C 00161400 */  sll        $v0, $s6, 0x10
/* 2B050 8002A450 00021403 */  sra        $v0, $v0, 0x10
/* 2B054 8002A454 000240C0 */  sll        $t0, $v0, 3
/* 2B058 8002A458 01024021 */  addu       $t0, $t0, $v0
/* 2B05C 8002A45C AFA800AC */  sw         $t0, 0xac($sp)
/* 2B060 8002A460 0002F0C0 */  sll        $fp, $v0, 3
/* 2B064 8002A464 03C2F021 */  addu       $fp, $fp, $v0
.L8002A468:
/* 2B068 8002A468 44952000 */  mtc1       $s5, $f4
/* 2B06C 8002A46C 00000000 */  nop
/* 2B070 8002A470 46802120 */  cvt.s.w    $f4, $f4
/* 2B074 8002A474 00C01821 */  addu       $v1, $a2, $zero
/* 2B078 8002A478 00031C03 */  sra        $v1, $v1, 0x10
/* 2B07C 8002A47C 00A02021 */  addu       $a0, $a1, $zero
/* 2B080 8002A480 000310C0 */  sll        $v0, $v1, 3
/* 2B084 8002A484 00431021 */  addu       $v0, $v0, $v1
/* 2B088 8002A488 00021080 */  sll        $v0, $v0, 2
/* 2B08C 8002A48C 00441021 */  addu       $v0, $v0, $a0
/* 2B090 8002A490 C442000C */  lwc1       $f2, 0xc($v0)
/* 2B094 8002A494 46022102 */  mul.s      $f4, $f4, $f2
/* 2B098 8002A498 C620002C */  lwc1       $f0, 0x2c($s1)
/* 2B09C 8002A49C 46002600 */  add.s      $f24, $f4, $f0
/* 2B0A0 8002A4A0 4602C680 */  add.s      $f26, $f24, $f2
/* 2B0A4 8002A4A4 8C420000 */  lw         $v0, ($v0)
/* 2B0A8 8002A4A8 18400094 */  blez       $v0, .L8002A6FC
/* 2B0AC 8002A4AC 00009821 */   addu      $s3, $zero, $zero
/* 2B0B0 8002A4B0 00061403 */  sra        $v0, $a2, 0x10
.L8002A4B4:
/* 2B0B4 8002A4B4 000218C0 */  sll        $v1, $v0, 3
/* 2B0B8 8002A4B8 00621821 */  addu       $v1, $v1, $v0
/* 2B0BC 8002A4BC 00031880 */  sll        $v1, $v1, 2
/* 2B0C0 8002A4C0 00651821 */  addu       $v1, $v1, $a1
/* 2B0C4 8002A4C4 8C620000 */  lw         $v0, ($v1)
/* 2B0C8 8002A4C8 02A20018 */  mult       $s5, $v0
/* 2B0CC 8002A4CC 00001012 */  mflo       $v0
/* 2B0D0 8002A4D0 0053A021 */  addu       $s4, $v0, $s3
/* 2B0D4 8002A4D4 44931000 */  mtc1       $s3, $f2
/* 2B0D8 8002A4D8 00000000 */  nop
/* 2B0DC 8002A4DC 468010A0 */  cvt.s.w    $f2, $f2
/* 2B0E0 8002A4E0 C4640008 */  lwc1       $f4, 8($v1)
/* 2B0E4 8002A4E4 46041082 */  mul.s      $f2, $f2, $f4
/* 2B0E8 8002A4E8 C6200024 */  lwc1       $f0, 0x24($s1)
/* 2B0EC 8002A4EC 46001500 */  add.s      $f20, $f2, $f0
/* 2B0F0 8002A4F0 8C630014 */  lw         $v1, 0x14($v1)
/* 2B0F4 8002A4F4 00141040 */  sll        $v0, $s4, 1
/* 2B0F8 8002A4F8 00431021 */  addu       $v0, $v0, $v1
/* 2B0FC 8002A4FC 84500000 */  lh         $s0, ($v0)
/* 2B100 8002A500 12170020 */  beq        $s0, $s7, .L8002A584
/* 2B104 8002A504 4604A580 */   add.s     $f22, $f20, $f4
/* 2B108 8002A508 4600A306 */  mov.s      $f12, $f20
/* 2B10C 8002A50C 4600C386 */  mov.s      $f14, $f24
/* 2B110 8002A510 0C00A9E1 */  jal        func_8002A784
/* 2B114 8002A514 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B118 8002A518 10520010 */  beq        $v0, $s2, .L8002A55C
/* 2B11C 8002A51C 4600B306 */   mov.s     $f12, $f22
/* 2B120 8002A520 4600C386 */  mov.s      $f14, $f24
/* 2B124 8002A524 0C00A9E1 */  jal        func_8002A784
/* 2B128 8002A528 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B12C 8002A52C 1052000B */  beq        $v0, $s2, .L8002A55C
/* 2B130 8002A530 4600A306 */   mov.s     $f12, $f20
/* 2B134 8002A534 4600D386 */  mov.s      $f14, $f26
/* 2B138 8002A538 0C00A9E1 */  jal        func_8002A784
/* 2B13C 8002A53C 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B140 8002A540 10520006 */  beq        $v0, $s2, .L8002A55C
/* 2B144 8002A544 4600B306 */   mov.s     $f12, $f22
/* 2B148 8002A548 4600D386 */  mov.s      $f14, $f26
/* 2B14C 8002A54C 0C00A9E1 */  jal        func_8002A784
/* 2B150 8002A550 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B154 8002A554 1452000B */  bne        $v0, $s2, .L8002A584
/* 2B158 8002A558 00000000 */   nop
.L8002A55C:
/* 2B15C 8002A55C 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B160 8002A560 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B164 8002A564 00063180 */  sll        $a2, $a2, 6
/* 2B168 8002A568 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B16C 8002A56C 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B170 8002A570 8E24006C */  lw         $a0, 0x6c($s1)
/* 2B174 8002A574 02002821 */  addu       $a1, $s0, $zero
/* 2B178 8002A578 00C23021 */  addu       $a2, $a2, $v0
/* 2B17C 8002A57C 0C00B4B3 */  jal        func_8002D2CC
/* 2B180 8002A580 27A70068 */   addiu     $a3, $sp, 0x68
.L8002A584:
/* 2B184 8002A584 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2B188 8002A588 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2B18C 8002A58C 8FA800AC */  lw         $t0, 0xac($sp)
/* 2B190 8002A590 00081080 */  sll        $v0, $t0, 2
/* 2B194 8002A594 00431021 */  addu       $v0, $v0, $v1
/* 2B198 8002A598 8C430018 */  lw         $v1, 0x18($v0)
/* 2B19C 8002A59C 00141040 */  sll        $v0, $s4, 1
/* 2B1A0 8002A5A0 00431021 */  addu       $v0, $v0, $v1
/* 2B1A4 8002A5A4 84500000 */  lh         $s0, ($v0)
/* 2B1A8 8002A5A8 1217001F */  beq        $s0, $s7, .L8002A628
/* 2B1AC 8002A5AC 4600A306 */   mov.s     $f12, $f20
/* 2B1B0 8002A5B0 4600C386 */  mov.s      $f14, $f24
/* 2B1B4 8002A5B4 0C00A9E1 */  jal        func_8002A784
/* 2B1B8 8002A5B8 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B1BC 8002A5BC 10520010 */  beq        $v0, $s2, .L8002A600
/* 2B1C0 8002A5C0 4600B306 */   mov.s     $f12, $f22
/* 2B1C4 8002A5C4 4600C386 */  mov.s      $f14, $f24
/* 2B1C8 8002A5C8 0C00A9E1 */  jal        func_8002A784
/* 2B1CC 8002A5CC 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B1D0 8002A5D0 1052000B */  beq        $v0, $s2, .L8002A600
/* 2B1D4 8002A5D4 4600A306 */   mov.s     $f12, $f20
/* 2B1D8 8002A5D8 4600D386 */  mov.s      $f14, $f26
/* 2B1DC 8002A5DC 0C00A9E1 */  jal        func_8002A784
/* 2B1E0 8002A5E0 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B1E4 8002A5E4 10520006 */  beq        $v0, $s2, .L8002A600
/* 2B1E8 8002A5E8 4600B306 */   mov.s     $f12, $f22
/* 2B1EC 8002A5EC 4600D386 */  mov.s      $f14, $f26
/* 2B1F0 8002A5F0 0C00A9E1 */  jal        func_8002A784
/* 2B1F4 8002A5F4 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B1F8 8002A5F8 1452000B */  bne        $v0, $s2, .L8002A628
/* 2B1FC 8002A5FC 00000000 */   nop
.L8002A600:
/* 2B200 8002A600 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B204 8002A604 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B208 8002A608 00063180 */  sll        $a2, $a2, 6
/* 2B20C 8002A60C 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B210 8002A610 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B214 8002A614 8E24006C */  lw         $a0, 0x6c($s1)
/* 2B218 8002A618 02002821 */  addu       $a1, $s0, $zero
/* 2B21C 8002A61C 00C23021 */  addu       $a2, $a2, $v0
/* 2B220 8002A620 0C00B4B3 */  jal        func_8002D2CC
/* 2B224 8002A624 27A70028 */   addiu     $a3, $sp, 0x28
.L8002A628:
/* 2B228 8002A628 3C03800F */  lui        $v1, %hi(D_800F32AC)
/* 2B22C 8002A62C 8C6332AC */  lw         $v1, %lo(D_800F32AC)($v1)
/* 2B230 8002A630 001E1080 */  sll        $v0, $fp, 2
/* 2B234 8002A634 00431021 */  addu       $v0, $v0, $v1
/* 2B238 8002A638 8C43001C */  lw         $v1, 0x1c($v0)
/* 2B23C 8002A63C 00141040 */  sll        $v0, $s4, 1
/* 2B240 8002A640 00431021 */  addu       $v0, $v0, $v1
/* 2B244 8002A644 84500000 */  lh         $s0, ($v0)
/* 2B248 8002A648 1217001F */  beq        $s0, $s7, .L8002A6C8
/* 2B24C 8002A64C 4600A306 */   mov.s     $f12, $f20
/* 2B250 8002A650 4600C386 */  mov.s      $f14, $f24
/* 2B254 8002A654 0C00A9E1 */  jal        func_8002A784
/* 2B258 8002A658 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B25C 8002A65C 10520010 */  beq        $v0, $s2, .L8002A6A0
/* 2B260 8002A660 4600B306 */   mov.s     $f12, $f22
/* 2B264 8002A664 4600C386 */  mov.s      $f14, $f24
/* 2B268 8002A668 0C00A9E1 */  jal        func_8002A784
/* 2B26C 8002A66C 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B270 8002A670 1052000B */  beq        $v0, $s2, .L8002A6A0
/* 2B274 8002A674 4600A306 */   mov.s     $f12, $f20
/* 2B278 8002A678 4600D386 */  mov.s      $f14, $f26
/* 2B27C 8002A67C 0C00A9E1 */  jal        func_8002A784
/* 2B280 8002A680 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B284 8002A684 10520006 */  beq        $v0, $s2, .L8002A6A0
/* 2B288 8002A688 4600B306 */   mov.s     $f12, $f22
/* 2B28C 8002A68C 4600D386 */  mov.s      $f14, $f26
/* 2B290 8002A690 0C00A9E1 */  jal        func_8002A784
/* 2B294 8002A694 27A60010 */   addiu     $a2, $sp, 0x10
/* 2B298 8002A698 5452000C */  bnel       $v0, $s2, .L8002A6CC
/* 2B29C 8002A69C 26730001 */   addiu     $s3, $s3, 1
.L8002A6A0:
/* 2B2A0 8002A6A0 3C06800F */  lui        $a2, %hi(D_800ED52C)
/* 2B2A4 8002A6A4 84C6D52C */  lh         $a2, %lo(D_800ED52C)($a2)
/* 2B2A8 8002A6A8 00063180 */  sll        $a2, $a2, 6
/* 2B2AC 8002A6AC 3C02800F */  lui        $v0, %hi(D_800F374C)
/* 2B2B0 8002A6B0 8C42374C */  lw         $v0, %lo(D_800F374C)($v0)
/* 2B2B4 8002A6B4 8E24006C */  lw         $a0, 0x6c($s1)
/* 2B2B8 8002A6B8 02002821 */  addu       $a1, $s0, $zero
/* 2B2BC 8002A6BC 00C23021 */  addu       $a2, $a2, $v0
/* 2B2C0 8002A6C0 0C00B4B3 */  jal        func_8002D2CC
/* 2B2C4 8002A6C4 27A70028 */   addiu     $a3, $sp, 0x28
.L8002A6C8:
/* 2B2C8 8002A6C8 26730001 */  addiu      $s3, $s3, 1
.L8002A6CC:
/* 2B2CC 8002A6CC 00163400 */  sll        $a2, $s6, 0x10
/* 2B2D0 8002A6D0 00061403 */  sra        $v0, $a2, 0x10
/* 2B2D4 8002A6D4 3C05800F */  lui        $a1, %hi(D_800F32AC)
/* 2B2D8 8002A6D8 8CA532AC */  lw         $a1, %lo(D_800F32AC)($a1)
/* 2B2DC 8002A6DC 000218C0 */  sll        $v1, $v0, 3
/* 2B2E0 8002A6E0 00621821 */  addu       $v1, $v1, $v0
/* 2B2E4 8002A6E4 00031880 */  sll        $v1, $v1, 2
/* 2B2E8 8002A6E8 00651821 */  addu       $v1, $v1, $a1
/* 2B2EC 8002A6EC 8C620000 */  lw         $v0, ($v1)
/* 2B2F0 8002A6F0 0262102A */  slt        $v0, $s3, $v0
/* 2B2F4 8002A6F4 1440FF6F */  bnez       $v0, .L8002A4B4
/* 2B2F8 8002A6F8 00061403 */   sra       $v0, $a2, 0x10
.L8002A6FC:
/* 2B2FC 8002A6FC 26B50001 */  addiu      $s5, $s5, 1
/* 2B300 8002A700 00163400 */  sll        $a2, $s6, 0x10
/* 2B304 8002A704 00061403 */  sra        $v0, $a2, 0x10
/* 2B308 8002A708 3C05800F */  lui        $a1, %hi(D_800F32AC)
/* 2B30C 8002A70C 8CA532AC */  lw         $a1, %lo(D_800F32AC)($a1)
/* 2B310 8002A710 000218C0 */  sll        $v1, $v0, 3
/* 2B314 8002A714 00621821 */  addu       $v1, $v1, $v0
/* 2B318 8002A718 00031880 */  sll        $v1, $v1, 2
/* 2B31C 8002A71C 00651821 */  addu       $v1, $v1, $a1
/* 2B320 8002A720 8C620004 */  lw         $v0, 4($v1)
/* 2B324 8002A724 02A2102A */  slt        $v0, $s5, $v0
/* 2B328 8002A728 1440FF4F */  bnez       $v0, .L8002A468
/* 2B32C 8002A72C 00000000 */   nop
.L8002A730:
/* 2B330 8002A730 3C02800F */  lui        $v0, %hi(D_800ED52C)
/* 2B334 8002A734 9442D52C */  lhu        $v0, %lo(D_800ED52C)($v0)
/* 2B338 8002A738 24420001 */  addiu      $v0, $v0, 1
/* 2B33C 8002A73C 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2B340 8002A740 A422D52C */  sh         $v0, %lo(D_800ED52C)($at)
/* 2B344 8002A744 8FBF00E4 */  lw         $ra, 0xe4($sp)
/* 2B348 8002A748 8FBE00E0 */  lw         $fp, 0xe0($sp)
/* 2B34C 8002A74C 8FB700DC */  lw         $s7, 0xdc($sp)
/* 2B350 8002A750 8FB600D8 */  lw         $s6, 0xd8($sp)
/* 2B354 8002A754 8FB500D4 */  lw         $s5, 0xd4($sp)
/* 2B358 8002A758 8FB400D0 */  lw         $s4, 0xd0($sp)
/* 2B35C 8002A75C 8FB300CC */  lw         $s3, 0xcc($sp)
/* 2B360 8002A760 8FB200C8 */  lw         $s2, 0xc8($sp)
/* 2B364 8002A764 8FB100C4 */  lw         $s1, 0xc4($sp)
/* 2B368 8002A768 8FB000C0 */  lw         $s0, 0xc0($sp)
/* 2B36C 8002A76C D7BA0100 */  ldc1       $f26, 0x100($sp)
/* 2B370 8002A770 D7B800F8 */  ldc1       $f24, 0xf8($sp)
/* 2B374 8002A774 D7B600F0 */  ldc1       $f22, 0xf0($sp)
/* 2B378 8002A778 D7B400E8 */  ldc1       $f20, 0xe8($sp)
/* 2B37C 8002A77C 03E00008 */  jr         $ra
/* 2B380 8002A780 27BD0108 */   addiu     $sp, $sp, 0x108
