	.set noat
	.set noreorder

glabel func_8004DE64
/* 4EA64 8004DE64 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4EA68 8004DE68 AFBF0030 */  sw         $ra, 0x30($sp)
/* 4EA6C 8004DE6C AFB1002C */  sw         $s1, 0x2c($sp)
/* 4EA70 8004DE70 AFB00028 */  sw         $s0, 0x28($sp)
/* 4EA74 8004DE74 00808821 */  addu       $s1, $a0, $zero
/* 4EA78 8004DE78 3C05800D */  lui        $a1, %hi(D_800CB0EC)
/* 4EA7C 8004DE7C 24A5B0EC */  addiu      $a1, $a1, %lo(D_800CB0EC)
/* 4EA80 8004DE80 88A20000 */  lwl        $v0, ($a1)
/* 4EA84 8004DE84 98A20003 */  lwr        $v0, 3($a1)
/* 4EA88 8004DE88 ABA20020 */  swl        $v0, 0x20($sp)
/* 4EA8C 8004DE8C BBA20023 */  swr        $v0, 0x23($sp)
/* 4EA90 8004DE90 00002821 */  addu       $a1, $zero, $zero
/* 4EA94 8004DE94 00002021 */  addu       $a0, $zero, $zero
/* 4EA98 8004DE98 00041040 */  sll        $v0, $a0, 1
.L8004DE9C:
/* 4EA9C 8004DE9C 00441021 */  addu       $v0, $v0, $a0
/* 4EAA0 8004DEA0 00021100 */  sll        $v0, $v0, 4
/* 4EAA4 8004DEA4 3C01800F */  lui        $at, %hi(D_800F32B6)
/* 4EAA8 8004DEA8 00220821 */  addu       $at, $at, $v0
/* 4EAAC 8004DEAC 942232B6 */  lhu        $v0, %lo(D_800F32B6)($at)
/* 4EAB0 8004DEB0 30420001 */  andi       $v0, $v0, 1
/* 4EAB4 8004DEB4 10400006 */  beqz       $v0, .L8004DED0
/* 4EAB8 8004DEB8 24020004 */   addiu     $v0, $zero, 4
/* 4EABC 8004DEBC 24840001 */  addiu      $a0, $a0, 1
/* 4EAC0 8004DEC0 28820004 */  slti       $v0, $a0, 4
/* 4EAC4 8004DEC4 1440FFF5 */  bnez       $v0, .L8004DE9C
/* 4EAC8 8004DEC8 00041040 */   sll       $v0, $a0, 1
/* 4EACC 8004DECC 24020004 */  addiu      $v0, $zero, 4
.L8004DED0:
/* 4EAD0 8004DED0 5482004B */  bnel       $a0, $v0, .L8004E000
/* 4EAD4 8004DED4 00002021 */   addu      $a0, $zero, $zero
/* 4EAD8 8004DED8 00112400 */  sll        $a0, $s1, 0x10
/* 4EADC 8004DEDC 00042403 */  sra        $a0, $a0, 0x10
/* 4EAE0 8004DEE0 24050002 */  addiu      $a1, $zero, 2
/* 4EAE4 8004DEE4 0C01B687 */  jal        func_8006DA1C
/* 4EAE8 8004DEE8 24060002 */   addiu     $a2, $zero, 2
/* 4EAEC 8004DEEC 3C10800C */  lui        $s0, %hi(D_800C5213)
/* 4EAF0 8004DEF0 26105213 */  addiu      $s0, $s0, %lo(D_800C5213)
/* 4EAF4 8004DEF4 92020000 */  lbu        $v0, ($s0)
/* 4EAF8 8004DEF8 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EAFC 8004DEFC 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB00 8004DF00 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB04 8004DF04 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB08 8004DF08 0C01C3FE */  jal        func_80070FF8
/* 4EB0C 8004DF0C 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB10 8004DF10 92020000 */  lbu        $v0, ($s0)
/* 4EB14 8004DF14 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EB18 8004DF18 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB1C 8004DF1C 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB20 8004DF20 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB24 8004DF24 0C01C3FE */  jal        func_80070FF8
/* 4EB28 8004DF28 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB2C 8004DF2C 92020000 */  lbu        $v0, ($s0)
/* 4EB30 8004DF30 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EB34 8004DF34 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB38 8004DF38 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB3C 8004DF3C 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB40 8004DF40 0C01C3FE */  jal        func_80070FF8
/* 4EB44 8004DF44 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB48 8004DF48 92020000 */  lbu        $v0, ($s0)
/* 4EB4C 8004DF4C AFA20010 */  sw         $v0, 0x10($sp)
/* 4EB50 8004DF50 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB54 8004DF54 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB58 8004DF58 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB5C 8004DF5C 0C01C3FE */  jal        func_80070FF8
/* 4EB60 8004DF60 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB64 8004DF64 92020000 */  lbu        $v0, ($s0)
/* 4EB68 8004DF68 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EB6C 8004DF6C 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB70 8004DF70 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB74 8004DF74 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB78 8004DF78 0C01C3FE */  jal        func_80070FF8
/* 4EB7C 8004DF7C 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB80 8004DF80 92020000 */  lbu        $v0, ($s0)
/* 4EB84 8004DF84 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EB88 8004DF88 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EB8C 8004DF8C 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EB90 8004DF90 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EB94 8004DF94 0C01C3FE */  jal        func_80070FF8
/* 4EB98 8004DF98 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EB9C 8004DF9C 92020000 */  lbu        $v0, ($s0)
/* 4EBA0 8004DFA0 AFA20010 */  sw         $v0, 0x10($sp)
/* 4EBA4 8004DFA4 24048000 */  addiu      $a0, $zero, -0x8000
/* 4EBA8 8004DFA8 24058000 */  addiu      $a1, $zero, -0x8000
/* 4EBAC 8004DFAC 24068000 */  addiu      $a2, $zero, -0x8000
/* 4EBB0 8004DFB0 0C01C3FE */  jal        func_80070FF8
/* 4EBB4 8004DFB4 24078000 */   addiu     $a3, $zero, -0x8000
/* 4EBB8 8004DFB8 3C02800C */  lui        $v0, %hi(D_800C5214)
/* 4EBBC 8004DFBC 8C425214 */  lw         $v0, %lo(D_800C5214)($v0)
/* 4EBC0 8004DFC0 3C01800C */  lui        $at, %hi(D_800C5210)
/* 4EBC4 8004DFC4 AC225210 */  sw         $v0, %lo(D_800C5210)($at)
/* 4EBC8 8004DFC8 00118400 */  sll        $s0, $s1, 0x10
.L8004DFCC:
/* 4EBCC 8004DFCC 0C01BF30 */  jal        func_8006FCC0
/* 4EBD0 8004DFD0 00102403 */   sra       $a0, $s0, 0x10
/* 4EBD4 8004DFD4 00021400 */  sll        $v0, $v0, 0x10
/* 4EBD8 8004DFD8 10400005 */  beqz       $v0, .L8004DFF0
/* 4EBDC 8004DFDC 00000000 */   nop
/* 4EBE0 8004DFE0 0C018D6D */  jal        func_800635B4
/* 4EBE4 8004DFE4 00000000 */   nop
/* 4EBE8 8004DFE8 080137F3 */  j          .L8004DFCC
/* 4EBEC 8004DFEC 00000000 */   nop
.L8004DFF0:
/* 4EBF0 8004DFF0 0C01C499 */  jal        func_80071264
/* 4EBF4 8004DFF4 00000000 */   nop
/* 4EBF8 8004DFF8 08013835 */  j          .L8004E0D4
/* 4EBFC 8004DFFC 00000000 */   nop
.L8004E000:
/* 4EC00 8004E000 27A60018 */  addiu      $a2, $sp, 0x18
/* 4EC04 8004E004 27A70020 */  addiu      $a3, $sp, 0x20
/* 4EC08 8004E008 2408FFFF */  addiu      $t0, $zero, -1
/* 4EC0C 8004E00C 00041040 */  sll        $v0, $a0, 1
.L8004E010:
/* 4EC10 8004E010 00441021 */  addu       $v0, $v0, $a0
/* 4EC14 8004E014 00021900 */  sll        $v1, $v0, 4
/* 4EC18 8004E018 3C02800F */  lui        $v0, %hi(D_800F32B6)
/* 4EC1C 8004E01C 00431021 */  addu       $v0, $v0, $v1
/* 4EC20 8004E020 944232B6 */  lhu        $v0, %lo(D_800F32B6)($v0)
/* 4EC24 8004E024 30420001 */  andi       $v0, $v0, 1
/* 4EC28 8004E028 10400008 */  beqz       $v0, .L8004E04C
/* 4EC2C 8004E02C 00041040 */   sll       $v0, $a0, 1
/* 4EC30 8004E030 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 4EC34 8004E034 00431021 */  addu       $v0, $v0, $v1
/* 4EC38 8004E038 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 4EC3C 8004E03C 00021040 */  sll        $v0, $v0, 1
/* 4EC40 8004E040 00461021 */  addu       $v0, $v0, $a2
/* 4EC44 8004E044 0801381E */  j          .L8004E078
/* 4EC48 8004E048 A4400000 */   sh        $zero, ($v0)
.L8004E04C:
/* 4EC4C 8004E04C 00441021 */  addu       $v0, $v0, $a0
/* 4EC50 8004E050 00021100 */  sll        $v0, $v0, 4
/* 4EC54 8004E054 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 4EC58 8004E058 00621821 */  addu       $v1, $v1, $v0
/* 4EC5C 8004E05C 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 4EC60 8004E060 00E31021 */  addu       $v0, $a3, $v1
/* 4EC64 8004E064 90420000 */  lbu        $v0, ($v0)
/* 4EC68 8004E068 00452825 */  or         $a1, $v0, $a1
/* 4EC6C 8004E06C 00031840 */  sll        $v1, $v1, 1
/* 4EC70 8004E070 00661821 */  addu       $v1, $v1, $a2
/* 4EC74 8004E074 A4680000 */  sh         $t0, ($v1)
.L8004E078:
/* 4EC78 8004E078 24840001 */  addiu      $a0, $a0, 1
/* 4EC7C 8004E07C 28820004 */  slti       $v0, $a0, 4
/* 4EC80 8004E080 1440FFE3 */  bnez       $v0, .L8004E010
/* 4EC84 8004E084 00041040 */   sll       $v0, $a0, 1
/* 4EC88 8004E088 00112400 */  sll        $a0, $s1, 0x10
/* 4EC8C 8004E08C 00042403 */  sra        $a0, $a0, 0x10
/* 4EC90 8004E090 0C01C557 */  jal        func_8007155C
/* 4EC94 8004E094 30A500FF */   andi      $a1, $a1, 0xff
/* 4EC98 8004E098 87A40018 */  lh         $a0, 0x18($sp)
/* 4EC9C 8004E09C 87A5001A */  lh         $a1, 0x1a($sp)
/* 4ECA0 8004E0A0 87A6001C */  lh         $a2, 0x1c($sp)
/* 4ECA4 8004E0A4 87A7001E */  lh         $a3, 0x1e($sp)
/* 4ECA8 8004E0A8 0C01C429 */  jal        func_800710A4
/* 4ECAC 8004E0AC 00118400 */   sll       $s0, $s1, 0x10
.L8004E0B0:
/* 4ECB0 8004E0B0 0C01BF30 */  jal        func_8006FCC0
/* 4ECB4 8004E0B4 00102403 */   sra       $a0, $s0, 0x10
/* 4ECB8 8004E0B8 00021400 */  sll        $v0, $v0, 0x10
/* 4ECBC 8004E0BC 10400005 */  beqz       $v0, .L8004E0D4
/* 4ECC0 8004E0C0 00000000 */   nop
/* 4ECC4 8004E0C4 0C018D6D */  jal        func_800635B4
/* 4ECC8 8004E0C8 00000000 */   nop
/* 4ECCC 8004E0CC 0801382C */  j          .L8004E0B0
/* 4ECD0 8004E0D0 00000000 */   nop
.L8004E0D4:
/* 4ECD4 8004E0D4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 4ECD8 8004E0D8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 4ECDC 8004E0DC 8FB00028 */  lw         $s0, 0x28($sp)
/* 4ECE0 8004E0E0 03E00008 */  jr         $ra
/* 4ECE4 8004E0E4 27BD0038 */   addiu     $sp, $sp, 0x38
