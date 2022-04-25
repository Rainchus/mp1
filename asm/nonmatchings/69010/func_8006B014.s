	.set noat
	.set noreorder

glabel func_8006B014
/* 6BC14 8006B014 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 6BC18 8006B018 AFBF0084 */  sw         $ra, 0x84($sp)
/* 6BC1C 8006B01C AFBE0080 */  sw         $fp, 0x80($sp)
/* 6BC20 8006B020 AFB7007C */  sw         $s7, 0x7c($sp)
/* 6BC24 8006B024 AFB60078 */  sw         $s6, 0x78($sp)
/* 6BC28 8006B028 AFB50074 */  sw         $s5, 0x74($sp)
/* 6BC2C 8006B02C AFB40070 */  sw         $s4, 0x70($sp)
/* 6BC30 8006B030 AFB3006C */  sw         $s3, 0x6c($sp)
/* 6BC34 8006B034 AFB20068 */  sw         $s2, 0x68($sp)
/* 6BC38 8006B038 AFB10064 */  sw         $s1, 0x64($sp)
/* 6BC3C 8006B03C AFB00060 */  sw         $s0, 0x60($sp)
/* 6BC40 8006B040 AFA40054 */  sw         $a0, 0x54($sp)
/* 6BC44 8006B044 00A0F021 */  addu       $fp, $a1, $zero
/* 6BC48 8006B048 A7A6005E */  sh         $a2, 0x5e($sp)
/* 6BC4C 8006B04C 97B1009A */  lhu        $s1, 0x9a($sp)
/* 6BC50 8006B050 97B2009E */  lhu        $s2, 0x9e($sp)
/* 6BC54 8006B054 97B300A2 */  lhu        $s3, 0xa2($sp)
/* 6BC58 8006B058 97B400A6 */  lhu        $s4, 0xa6($sp)
/* 6BC5C 8006B05C 97B500AA */  lhu        $s5, 0xaa($sp)
/* 6BC60 8006B060 97B600AE */  lhu        $s6, 0xae($sp)
/* 6BC64 8006B064 97B700B2 */  lhu        $s7, 0xb2($sp)
/* 6BC68 8006B068 8FC4004C */  lw         $a0, 0x4c($fp)
/* 6BC6C 8006B06C 87C30052 */  lh         $v1, 0x52($fp)
/* 6BC70 8006B070 00031040 */  sll        $v0, $v1, 1
/* 6BC74 8006B074 00431021 */  addu       $v0, $v0, $v1
/* 6BC78 8006B078 00021080 */  sll        $v0, $v0, 2
/* 6BC7C 8006B07C 8C830000 */  lw         $v1, ($a0)
/* 6BC80 8006B080 00433021 */  addu       $a2, $v0, $v1
/* 6BC84 8006B084 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6BC88 8006B088 8DE20000 */  lw         $v0, ($t7)
/* 6BC8C 8006B08C AFA20048 */  sw         $v0, 0x48($sp)
/* 6BC90 8006B090 3C03800F */  lui        $v1, %hi(D_800F2A74)
/* 6BC94 8006B094 8C632A74 */  lw         $v1, %lo(D_800F2A74)($v1)
/* 6BC98 8006B098 24020001 */  addiu      $v0, $zero, 1
/* 6BC9C 8006B09C 10620071 */  beq        $v1, $v0, .L8006B264
/* 6BCA0 8006B0A0 00E08021 */   addu      $s0, $a3, $zero
/* 6BCA4 8006B0A4 28620002 */  slti       $v0, $v1, 2
/* 6BCA8 8006B0A8 50400005 */  beql       $v0, $zero, .L8006B0C0
/* 6BCAC 8006B0AC 24020002 */   addiu     $v0, $zero, 2
/* 6BCB0 8006B0B0 10600009 */  beqz       $v1, .L8006B0D8
/* 6BCB4 8006B0B4 3C03FD08 */   lui       $v1, 0xfd08
/* 6BCB8 8006B0B8 0801ACF4 */  j          .L8006B3D0
/* 6BCBC 8006B0BC 00000000 */   nop
.L8006B0C0:
/* 6BCC0 8006B0C0 10620085 */  beq        $v1, $v0, .L8006B2D8
/* 6BCC4 8006B0C4 24020003 */   addiu     $v0, $zero, 3
/* 6BCC8 8006B0C8 106200A3 */  beq        $v1, $v0, .L8006B358
/* 6BCCC 8006B0CC 00000000 */   nop
/* 6BCD0 8006B0D0 0801ACF4 */  j          .L8006B3D0
/* 6BCD4 8006B0D4 00000000 */   nop
.L8006B0D8:
/* 6BCD8 8006B0D8 8FA50048 */  lw         $a1, 0x48($sp)
/* 6BCDC 8006B0DC 24A20008 */  addiu      $v0, $a1, 8
/* 6BCE0 8006B0E0 AFA20048 */  sw         $v0, 0x48($sp)
/* 6BCE4 8006B0E4 3C09800F */  lui        $t1, %hi(D_800F3B84)
/* 6BCE8 8006B0E8 8D293B84 */  lw         $t1, %lo(D_800F3B84)($t1)
/* 6BCEC 8006B0EC 31290007 */  andi       $t1, $t1, 7
/* 6BCF0 8006B0F0 00094D40 */  sll        $t1, $t1, 0x15
/* 6BCF4 8006B0F4 94C20004 */  lhu        $v0, 4($a2)
/* 6BCF8 8006B0F8 00021042 */  srl        $v0, $v0, 1
/* 6BCFC 8006B0FC 2442FFFF */  addiu      $v0, $v0, -1
/* 6BD00 8006B100 30420FFF */  andi       $v0, $v0, 0xfff
/* 6BD04 8006B104 00431025 */  or         $v0, $v0, $v1
/* 6BD08 8006B108 01221025 */  or         $v0, $t1, $v0
/* 6BD0C 8006B10C ACA20000 */  sw         $v0, ($a1)
/* 6BD10 8006B110 8CC20000 */  lw         $v0, ($a2)
/* 6BD14 8006B114 ACA20004 */  sw         $v0, 4($a1)
/* 6BD18 8006B118 24A20010 */  addiu      $v0, $a1, 0x10
/* 6BD1C 8006B11C AFA20048 */  sw         $v0, 0x48($sp)
/* 6BD20 8006B120 3248FFFF */  andi       $t0, $s2, 0xffff
/* 6BD24 8006B124 3207FFFF */  andi       $a3, $s0, 0xffff
/* 6BD28 8006B128 01072023 */  subu       $a0, $t0, $a3
/* 6BD2C 8006B12C 24840001 */  addiu      $a0, $a0, 1
/* 6BD30 8006B130 00042043 */  sra        $a0, $a0, 1
/* 6BD34 8006B134 24840007 */  addiu      $a0, $a0, 7
/* 6BD38 8006B138 000420C3 */  sra        $a0, $a0, 3
/* 6BD3C 8006B13C 308401FF */  andi       $a0, $a0, 0x1ff
/* 6BD40 8006B140 00042240 */  sll        $a0, $a0, 9
/* 6BD44 8006B144 3C02F508 */  lui        $v0, 0xf508
/* 6BD48 8006B148 00821025 */  or         $v0, $a0, $v0
/* 6BD4C 8006B14C 01221025 */  or         $v0, $t1, $v0
/* 6BD50 8006B150 ACA20008 */  sw         $v0, 8($a1)
/* 6BD54 8006B154 32A60003 */  andi       $a2, $s5, 3
/* 6BD58 8006B158 00063480 */  sll        $a2, $a2, 0x12
/* 6BD5C 8006B15C 32EE000F */  andi       $t6, $s7, 0xf
/* 6BD60 8006B160 000E7380 */  sll        $t6, $t6, 0xe
/* 6BD64 8006B164 3C0B0700 */  lui        $t3, 0x700
/* 6BD68 8006B168 01CB1025 */  or         $v0, $t6, $t3
/* 6BD6C 8006B16C 00C21025 */  or         $v0, $a2, $v0
/* 6BD70 8006B170 328D0003 */  andi       $t5, $s4, 3
/* 6BD74 8006B174 000D6A00 */  sll        $t5, $t5, 8
/* 6BD78 8006B178 004D1025 */  or         $v0, $v0, $t5
/* 6BD7C 8006B17C 32CC000F */  andi       $t4, $s6, 0xf
/* 6BD80 8006B180 000C6100 */  sll        $t4, $t4, 4
/* 6BD84 8006B184 004C1025 */  or         $v0, $v0, $t4
/* 6BD88 8006B188 ACA2000C */  sw         $v0, 0xc($a1)
/* 6BD8C 8006B18C 24A20018 */  addiu      $v0, $a1, 0x18
/* 6BD90 8006B190 AFA20048 */  sw         $v0, 0x48($sp)
/* 6BD94 8006B194 3C02E600 */  lui        $v0, 0xe600
/* 6BD98 8006B198 ACA20010 */  sw         $v0, 0x10($a1)
/* 6BD9C 8006B19C ACA00014 */  sw         $zero, 0x14($a1)
/* 6BDA0 8006B1A0 24A20020 */  addiu      $v0, $a1, 0x20
/* 6BDA4 8006B1A4 AFA20048 */  sw         $v0, 0x48($sp)
/* 6BDA8 8006B1A8 00071840 */  sll        $v1, $a3, 1
/* 6BDAC 8006B1AC 30630FFF */  andi       $v1, $v1, 0xfff
/* 6BDB0 8006B1B0 00031B00 */  sll        $v1, $v1, 0xc
/* 6BDB4 8006B1B4 00115080 */  sll        $t2, $s1, 2
/* 6BDB8 8006B1B8 314A0FFF */  andi       $t2, $t2, 0xfff
/* 6BDBC 8006B1BC 3C02F400 */  lui        $v0, 0xf400
/* 6BDC0 8006B1C0 01421025 */  or         $v0, $t2, $v0
/* 6BDC4 8006B1C4 00621825 */  or         $v1, $v1, $v0
/* 6BDC8 8006B1C8 ACA30018 */  sw         $v1, 0x18($a1)
/* 6BDCC 8006B1CC 00081040 */  sll        $v0, $t0, 1
/* 6BDD0 8006B1D0 30420FFF */  andi       $v0, $v0, 0xfff
/* 6BDD4 8006B1D4 00021300 */  sll        $v0, $v0, 0xc
/* 6BDD8 8006B1D8 00131880 */  sll        $v1, $s3, 2
/* 6BDDC 8006B1DC 30630FFF */  andi       $v1, $v1, 0xfff
/* 6BDE0 8006B1E0 006B5825 */  or         $t3, $v1, $t3
/* 6BDE4 8006B1E4 004B1025 */  or         $v0, $v0, $t3
/* 6BDE8 8006B1E8 ACA2001C */  sw         $v0, 0x1c($a1)
/* 6BDEC 8006B1EC 24A20028 */  addiu      $v0, $a1, 0x28
/* 6BDF0 8006B1F0 AFA20048 */  sw         $v0, 0x48($sp)
/* 6BDF4 8006B1F4 3C02E700 */  lui        $v0, 0xe700
/* 6BDF8 8006B1F8 ACA20020 */  sw         $v0, 0x20($a1)
/* 6BDFC 8006B1FC ACA00024 */  sw         $zero, 0x24($a1)
/* 6BE00 8006B200 24A20030 */  addiu      $v0, $a1, 0x30
/* 6BE04 8006B204 AFA20048 */  sw         $v0, 0x48($sp)
/* 6BE08 8006B208 3C02F500 */  lui        $v0, 0xf500
/* 6BE0C 8006B20C 00822025 */  or         $a0, $a0, $v0
/* 6BE10 8006B210 01244825 */  or         $t1, $t1, $a0
/* 6BE14 8006B214 ACA90028 */  sw         $t1, 0x28($a1)
/* 6BE18 8006B218 00CE3025 */  or         $a2, $a2, $t6
/* 6BE1C 8006B21C 00CD3025 */  or         $a2, $a2, $t5
/* 6BE20 8006B220 00CC3025 */  or         $a2, $a2, $t4
/* 6BE24 8006B224 ACA6002C */  sw         $a2, 0x2c($a1)
/* 6BE28 8006B228 24A20038 */  addiu      $v0, $a1, 0x38
/* 6BE2C 8006B22C AFA20048 */  sw         $v0, 0x48($sp)
/* 6BE30 8006B230 00073880 */  sll        $a3, $a3, 2
/* 6BE34 8006B234 30E70FFF */  andi       $a3, $a3, 0xfff
/* 6BE38 8006B238 00073B00 */  sll        $a3, $a3, 0xc
/* 6BE3C 8006B23C 3C02F200 */  lui        $v0, 0xf200
/* 6BE40 8006B240 01425025 */  or         $t2, $t2, $v0
/* 6BE44 8006B244 00EA3825 */  or         $a3, $a3, $t2
/* 6BE48 8006B248 ACA70030 */  sw         $a3, 0x30($a1)
/* 6BE4C 8006B24C 00084080 */  sll        $t0, $t0, 2
/* 6BE50 8006B250 31080FFF */  andi       $t0, $t0, 0xfff
/* 6BE54 8006B254 00084300 */  sll        $t0, $t0, 0xc
/* 6BE58 8006B258 01034025 */  or         $t0, $t0, $v1
/* 6BE5C 8006B25C 0801ACF4 */  j          .L8006B3D0
/* 6BE60 8006B260 ACA80034 */   sw        $t0, 0x34($a1)
.L8006B264:
/* 6BE64 8006B264 94C70004 */  lhu        $a3, 4($a2)
/* 6BE68 8006B268 97A2005E */  lhu        $v0, 0x5e($sp)
/* 6BE6C 8006B26C AFA20010 */  sw         $v0, 0x10($sp)
/* 6BE70 8006B270 3202FFFF */  andi       $v0, $s0, 0xffff
/* 6BE74 8006B274 AFA20014 */  sw         $v0, 0x14($sp)
/* 6BE78 8006B278 3222FFFF */  andi       $v0, $s1, 0xffff
/* 6BE7C 8006B27C AFA20018 */  sw         $v0, 0x18($sp)
/* 6BE80 8006B280 3242FFFF */  andi       $v0, $s2, 0xffff
/* 6BE84 8006B284 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6BE88 8006B288 3262FFFF */  andi       $v0, $s3, 0xffff
/* 6BE8C 8006B28C AFA20020 */  sw         $v0, 0x20($sp)
/* 6BE90 8006B290 AFA00024 */  sw         $zero, 0x24($sp)
/* 6BE94 8006B294 3282FFFF */  andi       $v0, $s4, 0xffff
/* 6BE98 8006B298 AFA20028 */  sw         $v0, 0x28($sp)
/* 6BE9C 8006B29C 32A2FFFF */  andi       $v0, $s5, 0xffff
/* 6BEA0 8006B2A0 AFA2002C */  sw         $v0, 0x2c($sp)
/* 6BEA4 8006B2A4 32C2FFFF */  andi       $v0, $s6, 0xffff
/* 6BEA8 8006B2A8 AFA20030 */  sw         $v0, 0x30($sp)
/* 6BEAC 8006B2AC 32E2FFFF */  andi       $v0, $s7, 0xffff
/* 6BEB0 8006B2B0 AFA20034 */  sw         $v0, 0x34($sp)
/* 6BEB4 8006B2B4 AFA00038 */  sw         $zero, 0x38($sp)
/* 6BEB8 8006B2B8 AFA0003C */  sw         $zero, 0x3c($sp)
/* 6BEBC 8006B2BC 8CC50000 */  lw         $a1, ($a2)
/* 6BEC0 8006B2C0 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6BEC4 8006B2C4 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6BEC8 8006B2C8 0C00EA0A */  jal        func_8003A828
/* 6BECC 8006B2CC 27A40048 */   addiu     $a0, $sp, 0x48
/* 6BED0 8006B2D0 0801ACF4 */  j          .L8006B3D0
/* 6BED4 8006B2D4 00000000 */   nop
.L8006B2D8:
/* 6BED8 8006B2D8 94C20004 */  lhu        $v0, 4($a2)
/* 6BEDC 8006B2DC AFA20010 */  sw         $v0, 0x10($sp)
/* 6BEE0 8006B2E0 94C20006 */  lhu        $v0, 6($a2)
/* 6BEE4 8006B2E4 AFA20014 */  sw         $v0, 0x14($sp)
/* 6BEE8 8006B2E8 3202FFFF */  andi       $v0, $s0, 0xffff
/* 6BEEC 8006B2EC AFA20018 */  sw         $v0, 0x18($sp)
/* 6BEF0 8006B2F0 3222FFFF */  andi       $v0, $s1, 0xffff
/* 6BEF4 8006B2F4 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6BEF8 8006B2F8 3242FFFF */  andi       $v0, $s2, 0xffff
/* 6BEFC 8006B2FC AFA20020 */  sw         $v0, 0x20($sp)
/* 6BF00 8006B300 3262FFFF */  andi       $v0, $s3, 0xffff
/* 6BF04 8006B304 AFA20024 */  sw         $v0, 0x24($sp)
/* 6BF08 8006B308 AFA00028 */  sw         $zero, 0x28($sp)
/* 6BF0C 8006B30C 3282FFFF */  andi       $v0, $s4, 0xffff
/* 6BF10 8006B310 AFA2002C */  sw         $v0, 0x2c($sp)
/* 6BF14 8006B314 32A2FFFF */  andi       $v0, $s5, 0xffff
/* 6BF18 8006B318 AFA20030 */  sw         $v0, 0x30($sp)
/* 6BF1C 8006B31C 32C2FFFF */  andi       $v0, $s6, 0xffff
/* 6BF20 8006B320 AFA20034 */  sw         $v0, 0x34($sp)
/* 6BF24 8006B324 32E2FFFF */  andi       $v0, $s7, 0xffff
/* 6BF28 8006B328 AFA20038 */  sw         $v0, 0x38($sp)
/* 6BF2C 8006B32C AFA0003C */  sw         $zero, 0x3c($sp)
/* 6BF30 8006B330 AFA00040 */  sw         $zero, 0x40($sp)
/* 6BF34 8006B334 8CC50000 */  lw         $a1, ($a2)
/* 6BF38 8006B338 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6BF3C 8006B33C 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6BF40 8006B340 3C07800F */  lui        $a3, %hi(D_800F5444)
/* 6BF44 8006B344 8CE75444 */  lw         $a3, %lo(D_800F5444)($a3)
/* 6BF48 8006B348 0C00E818 */  jal        func_8003A060
/* 6BF4C 8006B34C 27A40048 */   addiu     $a0, $sp, 0x48
/* 6BF50 8006B350 0801ACF4 */  j          .L8006B3D0
/* 6BF54 8006B354 00000000 */   nop
.L8006B358:
/* 6BF58 8006B358 94C20004 */  lhu        $v0, 4($a2)
/* 6BF5C 8006B35C AFA20010 */  sw         $v0, 0x10($sp)
/* 6BF60 8006B360 97A2005E */  lhu        $v0, 0x5e($sp)
/* 6BF64 8006B364 AFA20014 */  sw         $v0, 0x14($sp)
/* 6BF68 8006B368 3202FFFF */  andi       $v0, $s0, 0xffff
/* 6BF6C 8006B36C AFA20018 */  sw         $v0, 0x18($sp)
/* 6BF70 8006B370 3222FFFF */  andi       $v0, $s1, 0xffff
/* 6BF74 8006B374 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6BF78 8006B378 3242FFFF */  andi       $v0, $s2, 0xffff
/* 6BF7C 8006B37C AFA20020 */  sw         $v0, 0x20($sp)
/* 6BF80 8006B380 3262FFFF */  andi       $v0, $s3, 0xffff
/* 6BF84 8006B384 AFA20024 */  sw         $v0, 0x24($sp)
/* 6BF88 8006B388 AFA00028 */  sw         $zero, 0x28($sp)
/* 6BF8C 8006B38C 3282FFFF */  andi       $v0, $s4, 0xffff
/* 6BF90 8006B390 AFA2002C */  sw         $v0, 0x2c($sp)
/* 6BF94 8006B394 32A2FFFF */  andi       $v0, $s5, 0xffff
/* 6BF98 8006B398 AFA20030 */  sw         $v0, 0x30($sp)
/* 6BF9C 8006B39C 32C2FFFF */  andi       $v0, $s6, 0xffff
/* 6BFA0 8006B3A0 AFA20034 */  sw         $v0, 0x34($sp)
/* 6BFA4 8006B3A4 32E2FFFF */  andi       $v0, $s7, 0xffff
/* 6BFA8 8006B3A8 AFA20038 */  sw         $v0, 0x38($sp)
/* 6BFAC 8006B3AC AFA0003C */  sw         $zero, 0x3c($sp)
/* 6BFB0 8006B3B0 AFA00040 */  sw         $zero, 0x40($sp)
/* 6BFB4 8006B3B4 8CC50000 */  lw         $a1, ($a2)
/* 6BFB8 8006B3B8 3C06800F */  lui        $a2, %hi(D_800F3B84)
/* 6BFBC 8006B3BC 8CC63B84 */  lw         $a2, %lo(D_800F3B84)($a2)
/* 6BFC0 8006B3C0 3C07800F */  lui        $a3, %hi(D_800F5444)
/* 6BFC4 8006B3C4 8CE75444 */  lw         $a3, %lo(D_800F5444)($a3)
/* 6BFC8 8006B3C8 0C00E93B */  jal        func_8003A4EC
/* 6BFCC 8006B3CC 27A40048 */   addiu     $a0, $sp, 0x48
.L8006B3D0:
/* 6BFD0 8006B3D0 8FC20020 */  lw         $v0, 0x20($fp)
/* 6BFD4 8006B3D4 30422000 */  andi       $v0, $v0, 0x2000
/* 6BFD8 8006B3D8 10400013 */  beqz       $v0, .L8006B428
/* 6BFDC 8006B3DC 3222FFFF */   andi      $v0, $s1, 0xffff
/* 6BFE0 8006B3E0 AFA20010 */  sw         $v0, 0x10($sp)
/* 6BFE4 8006B3E4 3242FFFF */  andi       $v0, $s2, 0xffff
/* 6BFE8 8006B3E8 AFA20014 */  sw         $v0, 0x14($sp)
/* 6BFEC 8006B3EC 3262FFFF */  andi       $v0, $s3, 0xffff
/* 6BFF0 8006B3F0 AFA20018 */  sw         $v0, 0x18($sp)
/* 6BFF4 8006B3F4 3282FFFF */  andi       $v0, $s4, 0xffff
/* 6BFF8 8006B3F8 AFA2001C */  sw         $v0, 0x1c($sp)
/* 6BFFC 8006B3FC 32A2FFFF */  andi       $v0, $s5, 0xffff
/* 6C000 8006B400 AFA20020 */  sw         $v0, 0x20($sp)
/* 6C004 8006B404 32C2FFFF */  andi       $v0, $s6, 0xffff
/* 6C008 8006B408 AFA20024 */  sw         $v0, 0x24($sp)
/* 6C00C 8006B40C 32E2FFFF */  andi       $v0, $s7, 0xffff
/* 6C010 8006B410 AFA20028 */  sw         $v0, 0x28($sp)
/* 6C014 8006B414 27A40048 */  addiu      $a0, $sp, 0x48
/* 6C018 8006B418 03C02821 */  addu       $a1, $fp, $zero
/* 6C01C 8006B41C 97A6005E */  lhu        $a2, 0x5e($sp)
/* 6C020 8006B420 0C01AD19 */  jal        func_8006B464
/* 6C024 8006B424 3207FFFF */   andi      $a3, $s0, 0xffff
.L8006B428:
/* 6C028 8006B428 8FA20048 */  lw         $v0, 0x48($sp)
/* 6C02C 8006B42C 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6C030 8006B430 ADE20000 */  sw         $v0, ($t7)
/* 6C034 8006B434 8FBF0084 */  lw         $ra, 0x84($sp)
/* 6C038 8006B438 8FBE0080 */  lw         $fp, 0x80($sp)
/* 6C03C 8006B43C 8FB7007C */  lw         $s7, 0x7c($sp)
/* 6C040 8006B440 8FB60078 */  lw         $s6, 0x78($sp)
/* 6C044 8006B444 8FB50074 */  lw         $s5, 0x74($sp)
/* 6C048 8006B448 8FB40070 */  lw         $s4, 0x70($sp)
/* 6C04C 8006B44C 8FB3006C */  lw         $s3, 0x6c($sp)
/* 6C050 8006B450 8FB20068 */  lw         $s2, 0x68($sp)
/* 6C054 8006B454 8FB10064 */  lw         $s1, 0x64($sp)
/* 6C058 8006B458 8FB00060 */  lw         $s0, 0x60($sp)
/* 6C05C 8006B45C 03E00008 */  jr         $ra
/* 6C060 8006B460 27BD0088 */   addiu     $sp, $sp, 0x88
