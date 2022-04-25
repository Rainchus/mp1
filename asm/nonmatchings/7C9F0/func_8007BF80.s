	.set noat
	.set noreorder

glabel func_8007BF80
/* 7CB80 8007BF80 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7CB84 8007BF84 AFBF0028 */  sw         $ra, 0x28($sp)
/* 7CB88 8007BF88 AFBE0024 */  sw         $fp, 0x24($sp)
/* 7CB8C 8007BF8C AFB00020 */  sw         $s0, 0x20($sp)
/* 7CB90 8007BF90 03A0F021 */  addu       $fp, $sp, $zero
/* 7CB94 8007BF94 AFC40030 */  sw         $a0, 0x30($fp)
/* 7CB98 8007BF98 AFC50034 */  sw         $a1, 0x34($fp)
/* 7CB9C 8007BF9C 00C08021 */  addu       $s0, $a2, $zero
/* 7CBA0 8007BFA0 A3D00010 */  sb         $s0, 0x10($fp)
/* 7CBA4 8007BFA4 8FC20034 */  lw         $v0, 0x34($fp)
/* 7CBA8 8007BFA8 8C430008 */  lw         $v1, 8($v0)
/* 7CBAC 8007BFAC 1060002D */  beqz       $v1, .L8007C064
/* 7CBB0 8007BFB0 00000000 */   nop
/* 7CBB4 8007BFB4 0C023D9B */  jal        func_8008F66C
/* 7CBB8 8007BFB8 00000000 */   nop
/* 7CBBC 8007BFBC AFC20014 */  sw         $v0, 0x14($fp)
/* 7CBC0 8007BFC0 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CBC4 8007BFC4 14400003 */  bnez       $v0, .L8007BFD4
/* 7CBC8 8007BFC8 00000000 */   nop
/* 7CBCC 8007BFCC 0801F019 */  j          .L8007C064
/* 7CBD0 8007BFD0 00000000 */   nop
.L8007BFD4:
/* 7CBD4 8007BFD4 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CBD8 8007BFD8 8FC30030 */  lw         $v1, 0x30($fp)
/* 7CBDC 8007BFDC 8FC40034 */  lw         $a0, 0x34($fp)
/* 7CBE0 8007BFE0 8C850008 */  lw         $a1, 8($a0)
/* 7CBE4 8007BFE4 8C63001C */  lw         $v1, 0x1c($v1)
/* 7CBE8 8007BFE8 8CA400D8 */  lw         $a0, 0xd8($a1)
/* 7CBEC 8007BFEC 00641821 */  addu       $v1, $v1, $a0
/* 7CBF0 8007BFF0 AC430004 */  sw         $v1, 4($v0)
/* 7CBF4 8007BFF4 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CBF8 8007BFF8 2403000C */  addiu      $v1, $zero, 0xc
/* 7CBFC 8007BFFC A4430008 */  sh         $v1, 8($v0)
/* 7CC00 8007C000 3C02800F */  lui        $v0, %hi(D_800ECB2C)
/* 7CC04 8007C004 9042CB2C */  lbu        $v0, %lo(D_800ECB2C)($v0)
/* 7CC08 8007C008 30430001 */  andi       $v1, $v0, 1
/* 7CC0C 8007C00C 306200FF */  andi       $v0, $v1, 0xff
/* 7CC10 8007C010 10400005 */  beqz       $v0, .L8007C028
/* 7CC14 8007C014 00000000 */   nop
/* 7CC18 8007C018 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CC1C 8007C01C 24030040 */  addiu      $v1, $zero, 0x40
/* 7CC20 8007C020 0801F00D */  j          .L8007C034
/* 7CC24 8007C024 AC43000C */   sw        $v1, 0xc($v0)
.L8007C028:
/* 7CC28 8007C028 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CC2C 8007C02C 93C30010 */  lbu        $v1, 0x10($fp)
/* 7CC30 8007C030 AC43000C */  sw         $v1, 0xc($v0)
.L8007C034:
/* 7CC34 8007C034 8FC20014 */  lw         $v0, 0x14($fp)
/* 7CC38 8007C038 AC400000 */  sw         $zero, ($v0)
/* 7CC3C 8007C03C 8FC20034 */  lw         $v0, 0x34($fp)
/* 7CC40 8007C040 8C430008 */  lw         $v1, 8($v0)
/* 7CC44 8007C044 8C62000C */  lw         $v0, 0xc($v1)
/* 7CC48 8007C048 AFC20018 */  sw         $v0, 0x18($fp)
/* 7CC4C 8007C04C 8FC30018 */  lw         $v1, 0x18($fp)
/* 7CC50 8007C050 8C620008 */  lw         $v0, 8($v1)
/* 7CC54 8007C054 8FC40018 */  lw         $a0, 0x18($fp)
/* 7CC58 8007C058 24050003 */  addiu      $a1, $zero, 3
/* 7CC5C 8007C05C 0040F809 */  jalr       $v0
/* 7CC60 8007C060 8FC60014 */   lw        $a2, 0x14($fp)
.L8007C064:
/* 7CC64 8007C064 03C0E821 */  addu       $sp, $fp, $zero
/* 7CC68 8007C068 8FBF0028 */  lw         $ra, 0x28($sp)
/* 7CC6C 8007C06C 8FBE0024 */  lw         $fp, 0x24($sp)
/* 7CC70 8007C070 8FB00020 */  lw         $s0, 0x20($sp)
/* 7CC74 8007C074 03E00008 */  jr         $ra
/* 7CC78 8007C078 27BD0030 */   addiu     $sp, $sp, 0x30
/* 7CC7C 8007C07C 00000000 */  nop
