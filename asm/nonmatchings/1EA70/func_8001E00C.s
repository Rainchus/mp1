	.set noat
	.set noreorder

glabel func_8001E00C
/* 1EC0C 8001E00C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1EC10 8001E010 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1EC14 8001E014 AFB50024 */  sw         $s5, 0x24($sp)
/* 1EC18 8001E018 AFB40020 */  sw         $s4, 0x20($sp)
/* 1EC1C 8001E01C AFB3001C */  sw         $s3, 0x1c($sp)
/* 1EC20 8001E020 AFB20018 */  sw         $s2, 0x18($sp)
/* 1EC24 8001E024 AFB10014 */  sw         $s1, 0x14($sp)
/* 1EC28 8001E028 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EC2C 8001E02C 0080A021 */  addu       $s4, $a0, $zero
/* 1EC30 8001E030 00A02021 */  addu       $a0, $a1, $zero
/* 1EC34 8001E034 00C0A821 */  addu       $s5, $a2, $zero
/* 1EC38 8001E038 00008821 */  addu       $s1, $zero, $zero
/* 1EC3C 8001E03C 3C02800F */  lui        $v0, %hi(D_800EE312)
/* 1EC40 8001E040 9442E312 */  lhu        $v0, %lo(D_800EE312)($v0)
/* 1EC44 8001E044 10400013 */  beqz       $v0, .L8001E094
/* 1EC48 8001E048 00403821 */   addu      $a3, $v0, $zero
/* 1EC4C 8001E04C 3C06800F */  lui        $a2, %hi(D_800ECDE0)
/* 1EC50 8001E050 8CC6CDE0 */  lw         $a2, %lo(D_800ECDE0)($a2)
/* 1EC54 8001E054 2408FFFF */  addiu      $t0, $zero, -1
/* 1EC58 8001E058 00111400 */  sll        $v0, $s1, 0x10
.L8001E05C:
/* 1EC5C 8001E05C 00021403 */  sra        $v0, $v0, 0x10
/* 1EC60 8001E060 000218C0 */  sll        $v1, $v0, 3
/* 1EC64 8001E064 00621821 */  addu       $v1, $v1, $v0
/* 1EC68 8001E068 00031880 */  sll        $v1, $v1, 2
/* 1EC6C 8001E06C 00661821 */  addu       $v1, $v1, $a2
/* 1EC70 8001E070 84620000 */  lh         $v0, ($v1)
/* 1EC74 8001E074 10480007 */  beq        $v0, $t0, .L8001E094
/* 1EC78 8001E078 26220001 */   addiu     $v0, $s1, 1
/* 1EC7C 8001E07C 00408821 */  addu       $s1, $v0, $zero
/* 1EC80 8001E080 00021400 */  sll        $v0, $v0, 0x10
/* 1EC84 8001E084 00021403 */  sra        $v0, $v0, 0x10
/* 1EC88 8001E088 0047102A */  slt        $v0, $v0, $a3
/* 1EC8C 8001E08C 1440FFF3 */  bnez       $v0, .L8001E05C
/* 1EC90 8001E090 00111400 */   sll       $v0, $s1, 0x10
.L8001E094:
/* 1EC94 8001E094 00111400 */  sll        $v0, $s1, 0x10
/* 1EC98 8001E098 00021403 */  sra        $v0, $v0, 0x10
/* 1EC9C 8001E09C 3C03800F */  lui        $v1, %hi(D_800EE312)
/* 1ECA0 8001E0A0 9463E312 */  lhu        $v1, %lo(D_800EE312)($v1)
/* 1ECA4 8001E0A4 10430009 */  beq        $v0, $v1, .L8001E0CC
/* 1ECA8 8001E0A8 00002821 */   addu      $a1, $zero, $zero
/* 1ECAC 8001E0AC 0C009066 */  jal        func_80024198
/* 1ECB0 8001E0B0 24060004 */   addiu     $a2, $zero, 4
/* 1ECB4 8001E0B4 00409021 */  addu       $s2, $v0, $zero
/* 1ECB8 8001E0B8 00021400 */  sll        $v0, $v0, 0x10
/* 1ECBC 8001E0BC 00021403 */  sra        $v0, $v0, 0x10
/* 1ECC0 8001E0C0 2403FFFF */  addiu      $v1, $zero, -1
/* 1ECC4 8001E0C4 14430003 */  bne        $v0, $v1, .L8001E0D4
/* 1ECC8 8001E0C8 00111400 */   sll       $v0, $s1, 0x10
.L8001E0CC:
/* 1ECCC 8001E0CC 0800786B */  j          .L8001E1AC
/* 1ECD0 8001E0D0 3402FFFF */   ori       $v0, $zero, 0xffff
.L8001E0D4:
/* 1ECD4 8001E0D4 00021403 */  sra        $v0, $v0, 0x10
/* 1ECD8 8001E0D8 3C04800F */  lui        $a0, %hi(D_800ECDE0)
/* 1ECDC 8001E0DC 8C84CDE0 */  lw         $a0, %lo(D_800ECDE0)($a0)
/* 1ECE0 8001E0E0 000218C0 */  sll        $v1, $v0, 3
/* 1ECE4 8001E0E4 00621821 */  addu       $v1, $v1, $v0
/* 1ECE8 8001E0E8 00038080 */  sll        $s0, $v1, 2
/* 1ECEC 8001E0EC 02042021 */  addu       $a0, $s0, $a0
/* 1ECF0 8001E0F0 2413FFFF */  addiu      $s3, $zero, -1
/* 1ECF4 8001E0F4 12930013 */  beq        $s4, $s3, .L8001E144
/* 1ECF8 8001E0F8 A4920000 */   sh        $s2, ($a0)
/* 1ECFC 8001E0FC 0C00E421 */  jal        func_80039084
/* 1ED00 8001E100 02802021 */   addu      $a0, $s4, $zero
/* 1ED04 8001E104 00409021 */  addu       $s2, $v0, $zero
/* 1ED08 8001E108 00121400 */  sll        $v0, $s2, 0x10
/* 1ED0C 8001E10C 00021403 */  sra        $v0, $v0, 0x10
/* 1ED10 8001E110 1453000E */  bne        $v0, $s3, .L8001E14C
/* 1ED14 8001E114 00111400 */   sll       $v0, $s1, 0x10
/* 1ED18 8001E118 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1ED1C 8001E11C 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1ED20 8001E120 02021021 */  addu       $v0, $s0, $v0
/* 1ED24 8001E124 0C00915B */  jal        func_8002456C
/* 1ED28 8001E128 84440000 */   lh        $a0, ($v0)
/* 1ED2C 8001E12C 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1ED30 8001E130 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1ED34 8001E134 02021021 */  addu       $v0, $s0, $v0
/* 1ED38 8001E138 2403FFFF */  addiu      $v1, $zero, -1
/* 1ED3C 8001E13C 08007852 */  j          .L8001E148
/* 1ED40 8001E140 A4430000 */   sh        $v1, ($v0)
.L8001E144:
/* 1ED44 8001E144 2412FFFF */  addiu      $s2, $zero, -1
.L8001E148:
/* 1ED48 8001E148 00111400 */  sll        $v0, $s1, 0x10
.L8001E14C:
/* 1ED4C 8001E14C 00021403 */  sra        $v0, $v0, 0x10
/* 1ED50 8001E150 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1ED54 8001E154 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1ED58 8001E158 000220C0 */  sll        $a0, $v0, 3
/* 1ED5C 8001E15C 00822021 */  addu       $a0, $a0, $v0
/* 1ED60 8001E160 00042080 */  sll        $a0, $a0, 2
/* 1ED64 8001E164 00831821 */  addu       $v1, $a0, $v1
/* 1ED68 8001E168 A4720002 */  sh         $s2, 2($v1)
/* 1ED6C 8001E16C 32A200FF */  andi       $v0, $s5, 0xff
/* 1ED70 8001E170 A4620010 */  sh         $v0, 0x10($v1)
/* 1ED74 8001E174 240200FF */  addiu      $v0, $zero, 0xff
/* 1ED78 8001E178 A0620015 */  sb         $v0, 0x15($v1)
/* 1ED7C 8001E17C A0620014 */  sb         $v0, 0x14($v1)
/* 1ED80 8001E180 A0620013 */  sb         $v0, 0x13($v1)
/* 1ED84 8001E184 A0620012 */  sb         $v0, 0x12($v1)
/* 1ED88 8001E188 3C02800F */  lui        $v0, %hi(D_800ECDE0)
/* 1ED8C 8001E18C 8C42CDE0 */  lw         $v0, %lo(D_800ECDE0)($v0)
/* 1ED90 8001E190 00822021 */  addu       $a0, $a0, $v0
/* 1ED94 8001E194 A480000A */  sh         $zero, 0xa($a0)
/* 1ED98 8001E198 A4800008 */  sh         $zero, 8($a0)
/* 1ED9C 8001E19C A4800004 */  sh         $zero, 4($a0)
/* 1EDA0 8001E1A0 A4800006 */  sh         $zero, 6($a0)
/* 1EDA4 8001E1A4 AC800020 */  sw         $zero, 0x20($a0)
/* 1EDA8 8001E1A8 3222FFFF */  andi       $v0, $s1, 0xffff
.L8001E1AC:
/* 1EDAC 8001E1AC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1EDB0 8001E1B0 8FB50024 */  lw         $s5, 0x24($sp)
/* 1EDB4 8001E1B4 8FB40020 */  lw         $s4, 0x20($sp)
/* 1EDB8 8001E1B8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1EDBC 8001E1BC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EDC0 8001E1C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EDC4 8001E1C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EDC8 8001E1C8 03E00008 */  jr         $ra
/* 1EDCC 8001E1CC 27BD0030 */   addiu     $sp, $sp, 0x30
