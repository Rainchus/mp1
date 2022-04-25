	.set noat
	.set noreorder

glabel func_8004EE14
/* 4FA14 8004EE14 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 4FA18 8004EE18 AFBF0038 */  sw         $ra, 0x38($sp)
/* 4FA1C 8004EE1C AFB30034 */  sw         $s3, 0x34($sp)
/* 4FA20 8004EE20 AFB20030 */  sw         $s2, 0x30($sp)
/* 4FA24 8004EE24 AFB1002C */  sw         $s1, 0x2c($sp)
/* 4FA28 8004EE28 AFB00028 */  sw         $s0, 0x28($sp)
/* 4FA2C 8004EE2C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 4FA30 8004EE30 00808821 */  addu       $s1, $a0, $zero
/* 4FA34 8004EE34 00E09021 */  addu       $s2, $a3, $zero
/* 4FA38 8004EE38 16400009 */  bnez       $s2, .L8004EE60
/* 4FA3C 8004EE3C 00C09821 */   addu      $s3, $a2, $zero
/* 4FA40 8004EE40 00111040 */  sll        $v0, $s1, 1
/* 4FA44 8004EE44 00511021 */  addu       $v0, $v0, $s1
/* 4FA48 8004EE48 00021100 */  sll        $v0, $v0, 4
/* 4FA4C 8004EE4C 3C04800F */  lui        $a0, %hi(D_800F32D0)
/* 4FA50 8004EE50 00822021 */  addu       $a0, $a0, $v0
/* 4FA54 8004EE54 8C8432D0 */  lw         $a0, %lo(D_800F32D0)($a0)
/* 4FA58 8004EE58 08013B99 */  j          .L8004EE64
/* 4FA5C 8004EE5C 2484000C */   addiu     $a0, $a0, 0xc
.L8004EE60:
/* 4FA60 8004EE60 2644000C */  addiu      $a0, $s2, 0xc
.L8004EE64:
/* 4FA64 8004EE64 0C013334 */  jal        func_8004CCD0
/* 4FA68 8004EE68 27A60018 */   addiu     $a2, $sp, 0x18
/* 4FA6C 8004EE6C 3C028005 */  lui        $v0, %hi(func_8004EC44)
/* 4FA70 8004EE70 2442EC44 */  addiu      $v0, $v0, %lo(func_8004EC44)
/* 4FA74 8004EE74 AFA20010 */  sw         $v0, 0x10($sp)
/* 4FA78 8004EE78 24041000 */  addiu      $a0, $zero, 0x1000
/* 4FA7C 8004EE7C 00002821 */  addu       $a1, $zero, $zero
/* 4FA80 8004EE80 00003021 */  addu       $a2, $zero, $zero
/* 4FA84 8004EE84 0C0174E1 */  jal        func_8005D384
/* 4FA88 8004EE88 2407FFFF */   addiu     $a3, $zero, -1
/* 4FA8C 8004EE8C 00408021 */  addu       $s0, $v0, $zero
/* 4FA90 8004EE90 A211004C */  sb         $s1, 0x4c($s0)
/* 4FA94 8004EE94 A213004D */  sb         $s3, 0x4d($s0)
/* 4FA98 8004EE98 C7A00018 */  lwc1       $f0, 0x18($sp)
/* 4FA9C 8004EE9C E6000024 */  swc1       $f0, 0x24($s0)
/* 4FAA0 8004EEA0 C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 4FAA4 8004EEA4 E6000028 */  swc1       $f0, 0x28($s0)
/* 4FAA8 8004EEA8 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 4FAAC 8004EEAC 16400014 */  bnez       $s2, .L8004EF00
/* 4FAB0 8004EEB0 E600002C */   swc1      $f0, 0x2c($s0)
/* 4FAB4 8004EEB4 00111040 */  sll        $v0, $s1, 1
/* 4FAB8 8004EEB8 00511021 */  addu       $v0, $v0, $s1
/* 4FABC 8004EEBC 00021100 */  sll        $v0, $v0, 4
/* 4FAC0 8004EEC0 3C04800F */  lui        $a0, %hi(D_800F32D0)
/* 4FAC4 8004EEC4 00822021 */  addu       $a0, $a0, $v0
/* 4FAC8 8004EEC8 8C8432D0 */  lw         $a0, %lo(D_800F32D0)($a0)
/* 4FACC 8004EECC 0C00F4AC */  jal        func_8003D2B0
/* 4FAD0 8004EED0 24840018 */   addiu     $a0, $a0, 0x18
/* 4FAD4 8004EED4 46000506 */  mov.s      $f20, $f0
/* 4FAD8 8004EED8 0C00F4AC */  jal        func_8003D2B0
/* 4FADC 8004EEDC 27A40018 */   addiu     $a0, $sp, 0x18
/* 4FAE0 8004EEE0 46000106 */  mov.s      $f4, $f0
/* 4FAE4 8004EEE4 4614203C */  c.lt.s     $f4, $f20
/* 4FAE8 8004EEE8 00000000 */  nop
/* 4FAEC 8004EEEC 00000000 */  nop
/* 4FAF0 8004EEF0 4503000F */  bc1tl      .L8004EF30
/* 4FAF4 8004EEF4 4604A081 */   sub.s     $f2, $f20, $f4
/* 4FAF8 8004EEF8 08013BDB */  j          .L8004EF6C
/* 4FAFC 8004EEFC 46142081 */   sub.s     $f2, $f4, $f20
.L8004EF00:
/* 4FB00 8004EF00 0C00F4AC */  jal        func_8003D2B0
/* 4FB04 8004EF04 26440018 */   addiu     $a0, $s2, 0x18
/* 4FB08 8004EF08 46000506 */  mov.s      $f20, $f0
/* 4FB0C 8004EF0C 0C00F4AC */  jal        func_8003D2B0
/* 4FB10 8004EF10 27A40018 */   addiu     $a0, $sp, 0x18
/* 4FB14 8004EF14 46000106 */  mov.s      $f4, $f0
/* 4FB18 8004EF18 4614203C */  c.lt.s     $f4, $f20
/* 4FB1C 8004EF1C 00000000 */  nop
/* 4FB20 8004EF20 00000000 */  nop
/* 4FB24 8004EF24 45020011 */  bc1fl      .L8004EF6C
/* 4FB28 8004EF28 46142081 */   sub.s     $f2, $f4, $f20
/* 4FB2C 8004EF2C 4604A081 */  sub.s      $f2, $f20, $f4
.L8004EF30:
/* 4FB30 8004EF30 3C014334 */  lui        $at, 0x4334
/* 4FB34 8004EF34 44810000 */  mtc1       $at, $f0
/* 4FB38 8004EF38 00000000 */  nop
/* 4FB3C 8004EF3C 4602003E */  c.le.s     $f0, $f2
/* 4FB40 8004EF40 00000000 */  nop
/* 4FB44 8004EF44 00000000 */  nop
/* 4FB48 8004EF48 45020015 */  bc1fl      .L8004EFA0
/* 4FB4C 8004EF4C E6140034 */   swc1      $f20, 0x34($s0)
/* 4FB50 8004EF50 3C0143B4 */  lui        $at, 0x43b4
/* 4FB54 8004EF54 44810000 */  mtc1       $at, $f0
/* 4FB58 8004EF58 00000000 */  nop
/* 4FB5C 8004EF5C 08013BE7 */  j          .L8004EF9C
/* 4FB60 8004EF60 46002100 */   add.s     $f4, $f4, $f0
.L8004EF64:
/* 4FB64 8004EF64 08013BFA */  j          .L8004EFE8
/* 4FB68 8004EF68 AC900000 */   sw        $s0, ($a0)
.L8004EF6C:
/* 4FB6C 8004EF6C 3C014334 */  lui        $at, 0x4334
/* 4FB70 8004EF70 44810000 */  mtc1       $at, $f0
/* 4FB74 8004EF74 00000000 */  nop
/* 4FB78 8004EF78 4602003E */  c.le.s     $f0, $f2
/* 4FB7C 8004EF7C 00000000 */  nop
/* 4FB80 8004EF80 00000000 */  nop
/* 4FB84 8004EF84 45020006 */  bc1fl      .L8004EFA0
/* 4FB88 8004EF88 E6140034 */   swc1      $f20, 0x34($s0)
/* 4FB8C 8004EF8C 3C0143B4 */  lui        $at, 0x43b4
/* 4FB90 8004EF90 44810000 */  mtc1       $at, $f0
/* 4FB94 8004EF94 00000000 */  nop
/* 4FB98 8004EF98 4600A500 */  add.s      $f20, $f20, $f0
.L8004EF9C:
/* 4FB9C 8004EF9C E6140034 */  swc1       $f20, 0x34($s0)
.L8004EFA0:
/* 4FBA0 8004EFA0 46142001 */  sub.s      $f0, $f4, $f20
/* 4FBA4 8004EFA4 44931000 */  mtc1       $s3, $f2
/* 4FBA8 8004EFA8 00000000 */  nop
/* 4FBAC 8004EFAC 468010A0 */  cvt.s.w    $f2, $f2
/* 4FBB0 8004EFB0 46020003 */  div.s      $f0, $f0, $f2
/* 4FBB4 8004EFB4 E6000030 */  swc1       $f0, 0x30($s0)
/* 4FBB8 8004EFB8 AE120050 */  sw         $s2, 0x50($s0)
/* 4FBBC 8004EFBC 00001821 */  addu       $v1, $zero, $zero
/* 4FBC0 8004EFC0 3C05800F */  lui        $a1, %hi(D_800F50C0)
/* 4FBC4 8004EFC4 24A550C0 */  addiu      $a1, $a1, %lo(D_800F50C0)
/* 4FBC8 8004EFC8 00031080 */  sll        $v0, $v1, 2
.L8004EFCC:
/* 4FBCC 8004EFCC 00452021 */  addu       $a0, $v0, $a1
/* 4FBD0 8004EFD0 8C820000 */  lw         $v0, ($a0)
/* 4FBD4 8004EFD4 1040FFE3 */  beqz       $v0, .L8004EF64
/* 4FBD8 8004EFD8 24630001 */   addiu     $v1, $v1, 1
/* 4FBDC 8004EFDC 28620020 */  slti       $v0, $v1, 0x20
/* 4FBE0 8004EFE0 1440FFFA */  bnez       $v0, .L8004EFCC
/* 4FBE4 8004EFE4 00031080 */   sll       $v0, $v1, 2
.L8004EFE8:
/* 4FBE8 8004EFE8 02001021 */  addu       $v0, $s0, $zero
/* 4FBEC 8004EFEC 8FBF0038 */  lw         $ra, 0x38($sp)
/* 4FBF0 8004EFF0 8FB30034 */  lw         $s3, 0x34($sp)
/* 4FBF4 8004EFF4 8FB20030 */  lw         $s2, 0x30($sp)
/* 4FBF8 8004EFF8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 4FBFC 8004EFFC 8FB00028 */  lw         $s0, 0x28($sp)
/* 4FC00 8004F000 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 4FC04 8004F004 03E00008 */  jr         $ra
/* 4FC08 8004F008 27BD0048 */   addiu     $sp, $sp, 0x48
