	.set noat
	.set noreorder

glabel func_8000DF98
/* EB98 8000DF98 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EB9C 8000DF9C AFBF0020 */  sw         $ra, 0x20($sp)
/* EBA0 8000DFA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* EBA4 8000DFA4 AFB00018 */  sw         $s0, 0x18($sp)
/* EBA8 8000DFA8 00A08021 */  addu       $s0, $a1, $zero
/* EBAC 8000DFAC 00802821 */  addu       $a1, $a0, $zero
/* EBB0 8000DFB0 A605000C */  sh         $a1, 0xc($s0)
/* EBB4 8000DFB4 2402007F */  addiu      $v0, $zero, 0x7f
/* EBB8 8000DFB8 A6020010 */  sh         $v0, 0x10($s0)
/* EBBC 8000DFBC 24020040 */  addiu      $v0, $zero, 0x40
/* EBC0 8000DFC0 A2020012 */  sb         $v0, 0x12($s0)
/* EBC4 8000DFC4 2402FFFF */  addiu      $v0, $zero, -1
/* EBC8 8000DFC8 A602000E */  sh         $v0, 0xe($s0)
/* EBCC 8000DFCC AE000008 */  sw         $zero, 8($s0)
/* EBD0 8000DFD0 A2000015 */  sb         $zero, 0x15($s0)
/* EBD4 8000DFD4 A2000016 */  sb         $zero, 0x16($s0)
/* EBD8 8000DFD8 A2000014 */  sb         $zero, 0x14($s0)
/* EBDC 8000DFDC A2000017 */  sb         $zero, 0x17($s0)
/* EBE0 8000DFE0 A2000018 */  sb         $zero, 0x18($s0)
/* EBE4 8000DFE4 3C06800D */  lui        $a2, %hi(D_800CEA90)
/* EBE8 8000DFE8 8CC6EA90 */  lw         $a2, %lo(D_800CEA90)($a2)
/* EBEC 8000DFEC 84C30000 */  lh         $v1, ($a2)
/* EBF0 8000DFF0 24025431 */  addiu      $v0, $zero, 0x5431
/* EBF4 8000DFF4 14620018 */  bne        $v1, $v0, .L8000E058
/* EBF8 8000DFF8 28625431 */   slti      $v0, $v1, 0x5431
/* EBFC 8000DFFC 00041400 */  sll        $v0, $a0, 0x10
/* EC00 8000E000 00021343 */  sra        $v0, $v0, 0xd
/* EC04 8000E004 00461021 */  addu       $v0, $v0, $a2
/* EC08 8000E008 24510004 */  addiu      $s1, $v0, 4
/* EC0C 8000E00C 3C04800D */  lui        $a0, %hi(D_800CEA88)
/* EC10 8000E010 8C84EA88 */  lw         $a0, %lo(D_800CEA88)($a0)
/* EC14 8000E014 92250000 */  lbu        $a1, ($s1)
/* EC18 8000E018 92260001 */  lbu        $a2, 1($s1)
/* EC1C 8000E01C 0C0038B4 */  jal        func_8000E2D0
/* EC20 8000E020 92270002 */   lbu       $a3, 2($s1)
/* EC24 8000E024 AE020000 */  sw         $v0, ($s0)
/* EC28 8000E028 96220006 */  lhu        $v0, 6($s1)
/* EC2C 8000E02C 44820000 */  mtc1       $v0, $f0
/* EC30 8000E030 00000000 */  nop
/* EC34 8000E034 46800020 */  cvt.s.w    $f0, $f0
/* EC38 8000E038 3C01800C */  lui        $at, %hi(D_800C18A8)
/* EC3C 8000E03C C42218A8 */  lwc1       $f2, %lo(D_800C18A8)($at)
/* EC40 8000E040 468010A0 */  cvt.s.w    $f2, $f2
/* EC44 8000E044 46020003 */  div.s      $f0, $f0, $f2
/* EC48 8000E048 E6000004 */  swc1       $f0, 4($s0)
/* EC4C 8000E04C 92220003 */  lbu        $v0, 3($s1)
/* EC50 8000E050 08003881 */  j          .L8000E204
/* EC54 8000E054 A2020013 */   sb        $v0, 0x13($s0)
.L8000E058:
/* EC58 8000E058 1440005E */  bnez       $v0, .L8000E1D4
/* EC5C 8000E05C 00008821 */   addu      $s1, $zero, $zero
/* EC60 8000E060 28625434 */  slti       $v0, $v1, 0x5434
/* EC64 8000E064 1040005B */  beqz       $v0, .L8000E1D4
/* EC68 8000E068 00051400 */   sll       $v0, $a1, 0x10
/* EC6C 8000E06C 00021343 */  sra        $v0, $v0, 0xd
/* EC70 8000E070 3C03800D */  lui        $v1, %hi(D_800CEA90)
/* EC74 8000E074 8C63EA90 */  lw         $v1, %lo(D_800CEA90)($v1)
/* EC78 8000E078 00432021 */  addu       $a0, $v0, $v1
/* EC7C 8000E07C 24840004 */  addiu      $a0, $a0, 4
/* EC80 8000E080 00808821 */  addu       $s1, $a0, $zero
/* EC84 8000E084 96220004 */  lhu        $v0, 4($s1)
/* EC88 8000E088 30421FFF */  andi       $v0, $v0, 0x1fff
/* EC8C 8000E08C 00021100 */  sll        $v0, $v0, 4
/* EC90 8000E090 3C03800D */  lui        $v1, %hi(D_800CEA88)
/* EC94 8000E094 8C63EA88 */  lw         $v1, %lo(D_800CEA88)($v1)
/* EC98 8000E098 00431021 */  addu       $v0, $v0, $v1
/* EC9C 8000E09C AE020000 */  sw         $v0, ($s0)
/* ECA0 8000E0A0 96220004 */  lhu        $v0, 4($s1)
/* ECA4 8000E0A4 30428000 */  andi       $v0, $v0, 0x8000
/* ECA8 8000E0A8 10400004 */  beqz       $v0, .L8000E0BC
/* ECAC 8000E0AC 00000000 */   nop
/* ECB0 8000E0B0 8E020008 */  lw         $v0, 8($s0)
/* ECB4 8000E0B4 34420010 */  ori        $v0, $v0, 0x10
/* ECB8 8000E0B8 AE020008 */  sw         $v0, 8($s0)
.L8000E0BC:
/* ECBC 8000E0BC 94820004 */  lhu        $v0, 4($a0)
/* ECC0 8000E0C0 30424000 */  andi       $v0, $v0, 0x4000
/* ECC4 8000E0C4 10400004 */  beqz       $v0, .L8000E0D8
/* ECC8 8000E0C8 00000000 */   nop
/* ECCC 8000E0CC 8E020008 */  lw         $v0, 8($s0)
/* ECD0 8000E0D0 34420040 */  ori        $v0, $v0, 0x40
/* ECD4 8000E0D4 AE020008 */  sw         $v0, 8($s0)
.L8000E0D8:
/* ECD8 8000E0D8 94820004 */  lhu        $v0, 4($a0)
/* ECDC 8000E0DC 30422000 */  andi       $v0, $v0, 0x2000
/* ECE0 8000E0E0 10400002 */  beqz       $v0, .L8000E0EC
/* ECE4 8000E0E4 24020001 */   addiu     $v0, $zero, 1
/* ECE8 8000E0E8 A2020018 */  sb         $v0, 0x18($s0)
.L8000E0EC:
/* ECEC 8000E0EC 80820000 */  lb         $v0, ($a0)
/* ECF0 8000E0F0 0441000A */  bgez       $v0, .L8000E11C
/* ECF4 8000E0F4 00401821 */   addu      $v1, $v0, $zero
/* ECF8 8000E0F8 3C02800D */  lui        $v0, %hi(D_800CEABC)
/* ECFC 8000E0FC 8C42EABC */  lw         $v0, %lo(D_800CEABC)($v0)
/* ED00 8000E100 10400006 */  beqz       $v0, .L8000E11C
/* ED04 8000E104 3063007F */   andi      $v1, $v1, 0x7f
/* ED08 8000E108 00031A00 */  sll        $v1, $v1, 8
/* ED0C 8000E10C 90820001 */  lbu        $v0, 1($a0)
/* ED10 8000E110 00431021 */  addu       $v0, $v0, $v1
/* ED14 8000E114 08003853 */  j          .L8000E14C
/* ED18 8000E118 A602000E */   sh        $v0, 0xe($s0)
.L8000E11C:
/* ED1C 8000E11C 90820001 */  lbu        $v0, 1($a0)
/* ED20 8000E120 3042007F */  andi       $v0, $v0, 0x7f
/* ED24 8000E124 A6020010 */  sh         $v0, 0x10($s0)
/* ED28 8000E128 90820000 */  lbu        $v0, ($a0)
/* ED2C 8000E12C 3042007F */  andi       $v0, $v0, 0x7f
/* ED30 8000E130 A2020012 */  sb         $v0, 0x12($s0)
/* ED34 8000E134 80820001 */  lb         $v0, 1($a0)
/* ED38 8000E138 04410004 */  bgez       $v0, .L8000E14C
/* ED3C 8000E13C 00000000 */   nop
/* ED40 8000E140 8E020008 */  lw         $v0, 8($s0)
/* ED44 8000E144 34420100 */  ori        $v0, $v0, 0x100
/* ED48 8000E148 AE020008 */  sw         $v0, 8($s0)
.L8000E14C:
/* ED4C 8000E14C 90820002 */  lbu        $v0, 2($a0)
/* ED50 8000E150 A2020014 */  sb         $v0, 0x14($s0)
/* ED54 8000E154 94820006 */  lhu        $v0, 6($a0)
/* ED58 8000E158 44820000 */  mtc1       $v0, $f0
/* ED5C 8000E15C 00000000 */  nop
/* ED60 8000E160 46800020 */  cvt.s.w    $f0, $f0
/* ED64 8000E164 3C01800C */  lui        $at, %hi(D_800C18A8)
/* ED68 8000E168 C42218A8 */  lwc1       $f2, %lo(D_800C18A8)($at)
/* ED6C 8000E16C 468010A0 */  cvt.s.w    $f2, $f2
/* ED70 8000E170 46020003 */  div.s      $f0, $f0, $f2
/* ED74 8000E174 E6000004 */  swc1       $f0, 4($s0)
/* ED78 8000E178 90820003 */  lbu        $v0, 3($a0)
/* ED7C 8000E17C A2020013 */  sb         $v0, 0x13($s0)
/* ED80 8000E180 3C02800D */  lui        $v0, %hi(D_800CEA90)
/* ED84 8000E184 8C42EA90 */  lw         $v0, %lo(D_800CEA90)($v0)
/* ED88 8000E188 84430000 */  lh         $v1, ($v0)
/* ED8C 8000E18C 24025432 */  addiu      $v0, $zero, 0x5432
/* ED90 8000E190 5062001D */  beql       $v1, $v0, .L8000E208
/* ED94 8000E194 02201021 */   addu      $v0, $s1, $zero
/* ED98 8000E198 3C03800D */  lui        $v1, %hi(D_800CEA98)
/* ED9C 8000E19C 8C63EA98 */  lw         $v1, %lo(D_800CEA98)($v1)
/* EDA0 8000E1A0 10600018 */  beqz       $v1, .L8000E204
/* EDA4 8000E1A4 00051400 */   sll       $v0, $a1, 0x10
/* EDA8 8000E1A8 00021343 */  sra        $v0, $v0, 0xd
/* EDAC 8000E1AC 00431021 */  addu       $v0, $v0, $v1
/* EDB0 8000E1B0 90430000 */  lbu        $v1, ($v0)
/* EDB4 8000E1B4 A2030015 */  sb         $v1, 0x15($s0)
/* EDB8 8000E1B8 90430001 */  lbu        $v1, 1($v0)
/* EDBC 8000E1BC A2030016 */  sb         $v1, 0x16($s0)
/* EDC0 8000E1C0 90430002 */  lbu        $v1, 2($v0)
/* EDC4 8000E1C4 A2030017 */  sb         $v1, 0x17($s0)
/* EDC8 8000E1C8 90420003 */  lbu        $v0, 3($v0)
/* EDCC 8000E1CC 08003881 */  j          .L8000E204
/* EDD0 8000E1D0 A2020018 */   sb        $v0, 0x18($s0)
.L8000E1D4:
/* EDD4 8000E1D4 00052C00 */  sll        $a1, $a1, 0x10
/* EDD8 8000E1D8 3C04800D */  lui        $a0, %hi(D_800CEA88)
/* EDDC 8000E1DC 8C84EA88 */  lw         $a0, %lo(D_800CEA88)($a0)
/* EDE0 8000E1E0 0C0038D0 */  jal        func_8000E340
/* EDE4 8000E1E4 00052C03 */   sra       $a1, $a1, 0x10
/* EDE8 8000E1E8 AE020000 */  sw         $v0, ($s0)
/* EDEC 8000E1EC 3C013F80 */  lui        $at, 0x3f80
/* EDF0 8000E1F0 44810000 */  mtc1       $at, $f0
/* EDF4 8000E1F4 00000000 */  nop
/* EDF8 8000E1F8 E6000004 */  swc1       $f0, 4($s0)
/* EDFC 8000E1FC 24020050 */  addiu      $v0, $zero, 0x50
/* EE00 8000E200 A2020013 */  sb         $v0, 0x13($s0)
.L8000E204:
/* EE04 8000E204 02201021 */  addu       $v0, $s1, $zero
.L8000E208:
/* EE08 8000E208 8FBF0020 */  lw         $ra, 0x20($sp)
/* EE0C 8000E20C 8FB1001C */  lw         $s1, 0x1c($sp)
/* EE10 8000E210 8FB00018 */  lw         $s0, 0x18($sp)
/* EE14 8000E214 03E00008 */  jr         $ra
/* EE18 8000E218 27BD0028 */   addiu     $sp, $sp, 0x28
