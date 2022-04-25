	.set noat
	.set noreorder

glabel func_8005E044
/* 5EC44 8005E044 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EC48 8005E048 AFBF0018 */  sw         $ra, 0x18($sp)
/* 5EC4C 8005E04C AFB10014 */  sw         $s1, 0x14($sp)
/* 5EC50 8005E050 AFB00010 */  sw         $s0, 0x10($sp)
/* 5EC54 8005E054 00808821 */  addu       $s1, $a0, $zero
/* 5EC58 8005E058 3C04800F */  lui        $a0, %hi(D_800F09F4)
/* 5EC5C 8005E05C 8C8409F4 */  lw         $a0, %lo(D_800F09F4)($a0)
/* 5EC60 8005E060 38830083 */  xori       $v1, $a0, 0x83
/* 5EC64 8005E064 0003182B */  sltu       $v1, $zero, $v1
/* 5EC68 8005E068 3882007A */  xori       $v0, $a0, 0x7a
/* 5EC6C 8005E06C 0002102B */  sltu       $v0, $zero, $v0
/* 5EC70 8005E070 00621824 */  and        $v1, $v1, $v0
/* 5EC74 8005E074 10600003 */  beqz       $v1, .L8005E084
/* 5EC78 8005E078 00C08021 */   addu      $s0, $a2, $zero
/* 5EC7C 8005E07C 3C01800C */  lui        $at, %hi(D_800C5968)
/* 5EC80 8005E080 AC245968 */  sw         $a0, %lo(D_800C5968)($at)
.L8005E084:
/* 5EC84 8005E084 24020001 */  addiu      $v0, $zero, 1
/* 5EC88 8005E088 3C01800C */  lui        $at, %hi(D_800C5982)
/* 5EC8C 8005E08C A0225982 */  sb         $v0, %lo(D_800C5982)($at)
/* 5EC90 8005E090 3C01800F */  lui        $at, %hi(D_800F09F4)
/* 5EC94 8005E094 AC3109F4 */  sw         $s1, %lo(D_800F09F4)($at)
/* 5EC98 8005E098 3C01800C */  lui        $at, %hi(D_800C597A)
/* 5EC9C 8005E09C A425597A */  sh         $a1, %lo(D_800C597A)($at)
/* 5ECA0 8005E0A0 3C01800C */  lui        $at, %hi(D_800C597C)
/* 5ECA4 8005E0A4 A430597C */  sh         $s0, %lo(D_800C597C)($at)
/* 5ECA8 8005E0A8 3C01800F */  lui        $at, %hi(D_800F3184)
/* 5ECAC 8005E0AC A4203184 */  sh         $zero, %lo(D_800F3184)($at)
/* 5ECB0 8005E0B0 32020040 */  andi       $v0, $s0, 0x40
/* 5ECB4 8005E0B4 10400005 */  beqz       $v0, .L8005E0CC
/* 5ECB8 8005E0B8 24020002 */   addiu     $v0, $zero, 2
/* 5ECBC 8005E0BC 3C03800F */  lui        $v1, %hi(D_800ED552)
/* 5ECC0 8005E0C0 9063D552 */  lbu        $v1, %lo(D_800ED552)($v1)
/* 5ECC4 8005E0C4 14620008 */  bne        $v1, $v0, .L8005E0E8
/* 5ECC8 8005E0C8 24040002 */   addiu     $a0, $zero, 2
.L8005E0CC:
/* 5ECCC 8005E0CC 32020080 */  andi       $v0, $s0, 0x80
/* 5ECD0 8005E0D0 10400007 */  beqz       $v0, .L8005E0F0
/* 5ECD4 8005E0D4 24020003 */   addiu     $v0, $zero, 3
/* 5ECD8 8005E0D8 3C03800F */  lui        $v1, %hi(D_800ED552)
/* 5ECDC 8005E0DC 9063D552 */  lbu        $v1, %lo(D_800ED552)($v1)
/* 5ECE0 8005E0E0 10620003 */  beq        $v1, $v0, .L8005E0F0
/* 5ECE4 8005E0E4 24040003 */   addiu     $a0, $zero, 3
.L8005E0E8:
/* 5ECE8 8005E0E8 0C01837F */  jal        func_80060DFC
/* 5ECEC 8005E0EC 00000000 */   nop
.L8005E0F0:
/* 5ECF0 8005E0F0 32020001 */  andi       $v0, $s0, 1
/* 5ECF4 8005E0F4 1040000F */  beqz       $v0, .L8005E134
/* 5ECF8 8005E0F8 24021000 */   addiu     $v0, $zero, 0x1000
/* 5ECFC 8005E0FC 3C03800F */  lui        $v1, %hi(D_800F3F30)
/* 5ED00 8005E100 94633F30 */  lhu        $v1, %lo(D_800F3F30)($v1)
/* 5ED04 8005E104 1462002F */  bne        $v1, $v0, .L8005E1C4
/* 5ED08 8005E108 24041000 */   addiu     $a0, $zero, 0x1000
/* 5ED0C 8005E10C 3C03800F */  lui        $v1, %hi(D_800ED726)
/* 5ED10 8005E110 9463D726 */  lhu        $v1, %lo(D_800ED726)($v1)
/* 5ED14 8005E114 24022004 */  addiu      $v0, $zero, 0x2004
/* 5ED18 8005E118 1462002B */  bne        $v1, $v0, .L8005E1C8
/* 5ED1C 8005E11C 24052004 */   addiu     $a1, $zero, 0x2004
/* 5ED20 8005E120 3C03800F */  lui        $v1, %hi(D_800F64EC)
/* 5ED24 8005E124 946364EC */  lhu        $v1, %lo(D_800F64EC)($v1)
/* 5ED28 8005E128 24020180 */  addiu      $v0, $zero, 0x180
/* 5ED2C 8005E12C 14620026 */  bne        $v1, $v0, .L8005E1C8
/* 5ED30 8005E130 00000000 */   nop
.L8005E134:
/* 5ED34 8005E134 32020002 */  andi       $v0, $s0, 2
/* 5ED38 8005E138 10400011 */  beqz       $v0, .L8005E180
/* 5ED3C 8005E13C 24020800 */   addiu     $v0, $zero, 0x800
/* 5ED40 8005E140 3C03800F */  lui        $v1, %hi(D_800F3F30)
/* 5ED44 8005E144 94633F30 */  lhu        $v1, %lo(D_800F3F30)($v1)
/* 5ED48 8005E148 1462000B */  bne        $v1, $v0, .L8005E178
/* 5ED4C 8005E14C 24040800 */   addiu     $a0, $zero, 0x800
/* 5ED50 8005E150 3C03800F */  lui        $v1, %hi(D_800ED726)
/* 5ED54 8005E154 9463D726 */  lhu        $v1, %lo(D_800ED726)($v1)
/* 5ED58 8005E158 24021000 */  addiu      $v0, $zero, 0x1000
/* 5ED5C 8005E15C 14620006 */  bne        $v1, $v0, .L8005E178
/* 5ED60 8005E160 00000000 */   nop
/* 5ED64 8005E164 3C03800F */  lui        $v1, %hi(D_800F64EC)
/* 5ED68 8005E168 946364EC */  lhu        $v1, %lo(D_800F64EC)($v1)
/* 5ED6C 8005E16C 24020180 */  addiu      $v0, $zero, 0x180
/* 5ED70 8005E170 10620004 */  beq        $v1, $v0, .L8005E184
/* 5ED74 8005E174 32020004 */   andi      $v0, $s0, 4
.L8005E178:
/* 5ED78 8005E178 08017872 */  j          .L8005E1C8
/* 5ED7C 8005E17C 24051000 */   addiu     $a1, $zero, 0x1000
.L8005E180:
/* 5ED80 8005E180 32020004 */  andi       $v0, $s0, 4
.L8005E184:
/* 5ED84 8005E184 10400012 */  beqz       $v0, .L8005E1D0
/* 5ED88 8005E188 24021000 */   addiu     $v0, $zero, 0x1000
/* 5ED8C 8005E18C 3C03800F */  lui        $v1, %hi(D_800F3F30)
/* 5ED90 8005E190 94633F30 */  lhu        $v1, %lo(D_800F3F30)($v1)
/* 5ED94 8005E194 1462000B */  bne        $v1, $v0, .L8005E1C4
/* 5ED98 8005E198 24041000 */   addiu     $a0, $zero, 0x1000
/* 5ED9C 8005E19C 3C03800F */  lui        $v1, %hi(D_800ED726)
/* 5EDA0 8005E1A0 9463D726 */  lhu        $v1, %lo(D_800ED726)($v1)
/* 5EDA4 8005E1A4 24022004 */  addiu      $v0, $zero, 0x2004
/* 5EDA8 8005E1A8 14620007 */  bne        $v1, $v0, .L8005E1C8
/* 5EDAC 8005E1AC 24052004 */   addiu     $a1, $zero, 0x2004
/* 5EDB0 8005E1B0 3C03800F */  lui        $v1, %hi(D_800F64EC)
/* 5EDB4 8005E1B4 946364EC */  lhu        $v1, %lo(D_800F64EC)($v1)
/* 5EDB8 8005E1B8 24020180 */  addiu      $v0, $zero, 0x180
/* 5EDBC 8005E1BC 10620005 */  beq        $v1, $v0, .L8005E1D4
/* 5EDC0 8005E1C0 32021000 */   andi      $v0, $s0, 0x1000
.L8005E1C4:
/* 5EDC4 8005E1C4 24052004 */  addiu      $a1, $zero, 0x2004
.L8005E1C8:
/* 5EDC8 8005E1C8 0C018388 */  jal        func_80060E20
/* 5EDCC 8005E1CC 24060180 */   addiu     $a2, $zero, 0x180
.L8005E1D0:
/* 5EDD0 8005E1D0 32021000 */  andi       $v0, $s0, 0x1000
.L8005E1D4:
/* 5EDD4 8005E1D4 14400044 */  bnez       $v0, .L8005E2E8
/* 5EDD8 8005E1D8 2623FF99 */   addiu     $v1, $s1, -0x67
/* 5EDDC 8005E1DC 32020002 */  andi       $v0, $s0, 2
/* 5EDE0 8005E1E0 10400014 */  beqz       $v0, .L8005E234
/* 5EDE4 8005E1E4 24020001 */   addiu     $v0, $zero, 1
/* 5EDE8 8005E1E8 16220007 */  bne        $s1, $v0, .L8005E208
/* 5EDEC 8005E1EC 00000000 */   nop
/* 5EDF0 8005E1F0 3C02800C */  lui        $v0, %hi(D_800C58E2)
/* 5EDF4 8005E1F4 244258E2 */  addiu      $v0, $v0, %lo(D_800C58E2)
/* 5EDF8 8005E1F8 90440000 */  lbu        $a0, ($v0)
/* 5EDFC 8005E1FC 90430001 */  lbu        $v1, 1($v0)
/* 5EE00 8005E200 080178A4 */  j          .L8005E290
/* 5EE04 8005E204 32020100 */   andi      $v0, $s0, 0x100
.L8005E208:
/* 5EE08 8005E208 3C02800F */  lui        $v0, %hi(D_800ED5C2)
/* 5EE0C 8005E20C 8442D5C2 */  lh         $v0, %lo(D_800ED5C2)($v0)
/* 5EE10 8005E210 00021040 */  sll        $v0, $v0, 1
/* 5EE14 8005E214 3C04800C */  lui        $a0, %hi(D_800C5950)
/* 5EE18 8005E218 00822021 */  addu       $a0, $a0, $v0
/* 5EE1C 8005E21C 90845950 */  lbu        $a0, %lo(D_800C5950)($a0)
/* 5EE20 8005E220 3C03800C */  lui        $v1, %hi(D_800C5951)
/* 5EE24 8005E224 00621821 */  addu       $v1, $v1, $v0
/* 5EE28 8005E228 90635951 */  lbu        $v1, %lo(D_800C5951)($v1)
/* 5EE2C 8005E22C 080178A4 */  j          .L8005E290
/* 5EE30 8005E230 32020100 */   andi      $v0, $s0, 0x100
.L8005E234:
/* 5EE34 8005E234 32020004 */  andi       $v0, $s0, 4
/* 5EE38 8005E238 10400012 */  beqz       $v0, .L8005E284
/* 5EE3C 8005E23C 3A23006F */   xori      $v1, $s1, 0x6f
/* 5EE40 8005E240 2C630001 */  sltiu      $v1, $v1, 1
/* 5EE44 8005E244 3A22007B */  xori       $v0, $s1, 0x7b
/* 5EE48 8005E248 2C420001 */  sltiu      $v0, $v0, 1
/* 5EE4C 8005E24C 00621825 */  or         $v1, $v1, $v0
/* 5EE50 8005E250 1460000D */  bnez       $v1, .L8005E288
/* 5EE54 8005E254 00002021 */   addu      $a0, $zero, $zero
/* 5EE58 8005E258 3C02800F */  lui        $v0, %hi(D_800ED5DE)
/* 5EE5C 8005E25C 8442D5DE */  lh         $v0, %lo(D_800ED5DE)($v0)
/* 5EE60 8005E260 00021040 */  sll        $v0, $v0, 1
/* 5EE64 8005E264 3C04800C */  lui        $a0, %hi(D_800C58E0)
/* 5EE68 8005E268 00822021 */  addu       $a0, $a0, $v0
/* 5EE6C 8005E26C 908458E0 */  lbu        $a0, %lo(D_800C58E0)($a0)
/* 5EE70 8005E270 3C03800C */  lui        $v1, %hi(D_800C58E1)
/* 5EE74 8005E274 00621821 */  addu       $v1, $v1, $v0
/* 5EE78 8005E278 906358E1 */  lbu        $v1, %lo(D_800C58E1)($v1)
/* 5EE7C 8005E27C 080178A4 */  j          .L8005E290
/* 5EE80 8005E280 32020100 */   andi      $v0, $s0, 0x100
.L8005E284:
/* 5EE84 8005E284 00002021 */  addu       $a0, $zero, $zero
.L8005E288:
/* 5EE88 8005E288 24030014 */  addiu      $v1, $zero, 0x14
/* 5EE8C 8005E28C 32020100 */  andi       $v0, $s0, 0x100
.L8005E290:
/* 5EE90 8005E290 10400003 */  beqz       $v0, .L8005E2A0
/* 5EE94 8005E294 32020200 */   andi      $v0, $s0, 0x200
/* 5EE98 8005E298 080178B3 */  j          .L8005E2CC
/* 5EE9C 8005E29C 00002021 */   addu      $a0, $zero, $zero
.L8005E2A0:
/* 5EEA0 8005E2A0 10400003 */  beqz       $v0, .L8005E2B0
/* 5EEA4 8005E2A4 32020400 */   andi      $v0, $s0, 0x400
/* 5EEA8 8005E2A8 080178B3 */  j          .L8005E2CC
/* 5EEAC 8005E2AC 24040001 */   addiu     $a0, $zero, 1
.L8005E2B0:
/* 5EEB0 8005E2B0 10400003 */  beqz       $v0, .L8005E2C0
/* 5EEB4 8005E2B4 32020800 */   andi      $v0, $s0, 0x800
/* 5EEB8 8005E2B8 080178B3 */  j          .L8005E2CC
/* 5EEBC 8005E2BC 24040002 */   addiu     $a0, $zero, 2
.L8005E2C0:
/* 5EEC0 8005E2C0 10400003 */  beqz       $v0, .L8005E2D0
/* 5EEC4 8005E2C4 00000000 */   nop
/* 5EEC8 8005E2C8 24040003 */  addiu      $a0, $zero, 3
.L8005E2CC:
/* 5EECC 8005E2CC 24030014 */  addiu      $v1, $zero, 0x14
.L8005E2D0:
/* 5EED0 8005E2D0 3C01800C */  lui        $at, %hi(D_800C59A3)
/* 5EED4 8005E2D4 A02359A3 */  sb         $v1, %lo(D_800C59A3)($at)
/* 5EED8 8005E2D8 308200FF */  andi       $v0, $a0, 0xff
/* 5EEDC 8005E2DC 3C01800C */  lui        $at, %hi(D_800C599A)
/* 5EEE0 8005E2E0 A422599A */  sh         $v0, %lo(D_800C599A)($at)
/* 5EEE4 8005E2E4 2623FF99 */  addiu      $v1, $s1, -0x67
.L8005E2E8:
/* 5EEE8 8005E2E8 2C630002 */  sltiu      $v1, $v1, 2
/* 5EEEC 8005E2EC 3A220066 */  xori       $v0, $s1, 0x66
/* 5EEF0 8005E2F0 2C420001 */  sltiu      $v0, $v0, 1
/* 5EEF4 8005E2F4 00621825 */  or         $v1, $v1, $v0
/* 5EEF8 8005E2F8 14600012 */  bnez       $v1, .L8005E344
/* 5EEFC 8005E2FC 24020001 */   addiu     $v0, $zero, 1
/* 5EF00 8005E300 3A230081 */  xori       $v1, $s1, 0x81
/* 5EF04 8005E304 2C630001 */  sltiu      $v1, $v1, 1
/* 5EF08 8005E308 3A220061 */  xori       $v0, $s1, 0x61
/* 5EF0C 8005E30C 2C420001 */  sltiu      $v0, $v0, 1
/* 5EF10 8005E310 00621825 */  or         $v1, $v1, $v0
/* 5EF14 8005E314 1460000B */  bnez       $v1, .L8005E344
/* 5EF18 8005E318 24020001 */   addiu     $v0, $zero, 1
/* 5EF1C 8005E31C 3A230041 */  xori       $v1, $s1, 0x41
/* 5EF20 8005E320 2C630001 */  sltiu      $v1, $v1, 1
/* 5EF24 8005E324 3A220064 */  xori       $v0, $s1, 0x64
/* 5EF28 8005E328 2C420001 */  sltiu      $v0, $v0, 1
/* 5EF2C 8005E32C 00621825 */  or         $v1, $v1, $v0
/* 5EF30 8005E330 14600004 */  bnez       $v1, .L8005E344
/* 5EF34 8005E334 24020001 */   addiu     $v0, $zero, 1
/* 5EF38 8005E338 24020063 */  addiu      $v0, $zero, 0x63
/* 5EF3C 8005E33C 16220004 */  bne        $s1, $v0, .L8005E350
/* 5EF40 8005E340 24020001 */   addiu     $v0, $zero, 1
.L8005E344:
/* 5EF44 8005E344 3C01800C */  lui        $at, %hi(D_800C599E)
/* 5EF48 8005E348 080178D6 */  j          .L8005E358
/* 5EF4C 8005E34C A422599E */   sh        $v0, %lo(D_800C599E)($at)
.L8005E350:
/* 5EF50 8005E350 3C01800C */  lui        $at, %hi(D_800C599E)
/* 5EF54 8005E354 A420599E */  sh         $zero, %lo(D_800C599E)($at)
.L8005E358:
/* 5EF58 8005E358 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5EF5C 8005E35C 8FB10014 */  lw         $s1, 0x14($sp)
/* 5EF60 8005E360 8FB00010 */  lw         $s0, 0x10($sp)
/* 5EF64 8005E364 03E00008 */  jr         $ra
/* 5EF68 8005E368 27BD0020 */   addiu     $sp, $sp, 0x20
