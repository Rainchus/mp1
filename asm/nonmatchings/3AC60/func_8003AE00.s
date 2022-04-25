	.set noat
	.set noreorder

glabel func_8003AE00
/* 3BA00 8003AE00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3BA04 8003AE04 AFB50014 */  sw         $s5, 0x14($sp)
/* 3BA08 8003AE08 AFB40010 */  sw         $s4, 0x10($sp)
/* 3BA0C 8003AE0C AFB3000C */  sw         $s3, 0xc($sp)
/* 3BA10 8003AE10 AFB20008 */  sw         $s2, 8($sp)
/* 3BA14 8003AE14 AFB10004 */  sw         $s1, 4($sp)
/* 3BA18 8003AE18 AFB00000 */  sw         $s0, ($sp)
/* 3BA1C 8003AE1C 00805021 */  addu       $t2, $a0, $zero
/* 3BA20 8003AE20 00C04821 */  addu       $t1, $a2, $zero
/* 3BA24 8003AE24 8FA60028 */  lw         $a2, 0x28($sp)
/* 3BA28 8003AE28 8FB3002C */  lw         $s3, 0x2c($sp)
/* 3BA2C 8003AE2C 8FB00030 */  lw         $s0, 0x30($sp)
/* 3BA30 8003AE30 8FB40034 */  lw         $s4, 0x34($sp)
/* 3BA34 8003AE34 8FB50038 */  lw         $s5, 0x38($sp)
/* 3BA38 8003AE38 8FB2003C */  lw         $s2, 0x3c($sp)
/* 3BA3C 8003AE3C 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3BA40 8003AE40 8FAC0044 */  lw         $t4, 0x44($sp)
/* 3BA44 8003AE44 8FB80048 */  lw         $t8, 0x48($sp)
/* 3BA48 8003AE48 8FAD004C */  lw         $t5, 0x4c($sp)
/* 3BA4C 8003AE4C 8FB90050 */  lw         $t9, 0x50($sp)
/* 3BA50 8003AE50 8FAE0054 */  lw         $t6, 0x54($sp)
/* 3BA54 8003AE54 8FB10058 */  lw         $s1, 0x58($sp)
/* 3BA58 8003AE58 8FAB005C */  lw         $t3, 0x5c($sp)
/* 3BA5C 8003AE5C 8D480000 */  lw         $t0, ($t2)
/* 3BA60 8003AE60 00F00018 */  mult       $a3, $s0
/* 3BA64 8003AE64 00001012 */  mflo       $v0
/* 3BA68 8003AE68 00021042 */  srl        $v0, $v0, 1
/* 3BA6C 8003AE6C 00A22821 */  addu       $a1, $a1, $v0
/* 3BA70 8003AE70 01001821 */  addu       $v1, $t0, $zero
/* 3BA74 8003AE74 25080008 */  addiu      $t0, $t0, 8
/* 3BA78 8003AE78 31240007 */  andi       $a0, $t1, 7
/* 3BA7C 8003AE7C 00042540 */  sll        $a0, $a0, 0x15
/* 3BA80 8003AE80 3C02FD10 */  lui        $v0, 0xfd10
/* 3BA84 8003AE84 00821025 */  or         $v0, $a0, $v0
/* 3BA88 8003AE88 AC620000 */  sw         $v0, ($v1)
/* 3BA8C 8003AE8C AC650004 */  sw         $a1, 4($v1)
/* 3BA90 8003AE90 01002821 */  addu       $a1, $t0, $zero
/* 3BA94 8003AE94 25080008 */  addiu      $t0, $t0, 8
/* 3BA98 8003AE98 316201FF */  andi       $v0, $t3, 0x1ff
/* 3BA9C 8003AE9C 3C03F510 */  lui        $v1, 0xf510
/* 3BAA0 8003AEA0 00431025 */  or         $v0, $v0, $v1
/* 3BAA4 8003AEA4 00822025 */  or         $a0, $a0, $v0
/* 3BAA8 8003AEA8 ACA40000 */  sw         $a0, ($a1)
/* 3BAAC 8003AEAC 31830003 */  andi       $v1, $t4, 3
/* 3BAB0 8003AEB0 00031C80 */  sll        $v1, $v1, 0x12
/* 3BAB4 8003AEB4 31A2000F */  andi       $v0, $t5, 0xf
/* 3BAB8 8003AEB8 00021380 */  sll        $v0, $v0, 0xe
/* 3BABC 8003AEBC 3C040700 */  lui        $a0, 0x700
/* 3BAC0 8003AEC0 00441025 */  or         $v0, $v0, $a0
/* 3BAC4 8003AEC4 00621825 */  or         $v1, $v1, $v0
/* 3BAC8 8003AEC8 31C2000F */  andi       $v0, $t6, 0xf
/* 3BACC 8003AECC 00021280 */  sll        $v0, $v0, 0xa
/* 3BAD0 8003AED0 00621825 */  or         $v1, $v1, $v0
/* 3BAD4 8003AED4 31E20003 */  andi       $v0, $t7, 3
/* 3BAD8 8003AED8 00021200 */  sll        $v0, $v0, 8
/* 3BADC 8003AEDC 00621825 */  or         $v1, $v1, $v0
/* 3BAE0 8003AEE0 3302000F */  andi       $v0, $t8, 0xf
/* 3BAE4 8003AEE4 00021100 */  sll        $v0, $v0, 4
/* 3BAE8 8003AEE8 00621825 */  or         $v1, $v1, $v0
/* 3BAEC 8003AEEC 3322000F */  andi       $v0, $t9, 0xf
/* 3BAF0 8003AEF0 00621825 */  or         $v1, $v1, $v0
/* 3BAF4 8003AEF4 ACA30004 */  sw         $v1, 4($a1)
/* 3BAF8 8003AEF8 01001821 */  addu       $v1, $t0, $zero
/* 3BAFC 8003AEFC 25080008 */  addiu      $t0, $t0, 8
/* 3BB00 8003AF00 3C02E600 */  lui        $v0, 0xe600
/* 3BB04 8003AF04 AC620000 */  sw         $v0, ($v1)
/* 3BB08 8003AF08 AC600004 */  sw         $zero, 4($v1)
/* 3BB0C 8003AF0C 01002821 */  addu       $a1, $t0, $zero
/* 3BB10 8003AF10 3C02F300 */  lui        $v0, 0xf300
/* 3BB14 8003AF14 ACA20000 */  sw         $v0, ($a1)
/* 3BB18 8003AF18 00071102 */  srl        $v0, $a3, 4
/* 3BB1C 8003AF1C 10400003 */  beqz       $v0, .L8003AF2C
/* 3BB20 8003AF20 25080008 */   addiu     $t0, $t0, 8
/* 3BB24 8003AF24 0800EBCC */  j          .L8003AF30
/* 3BB28 8003AF28 244307FF */   addiu     $v1, $v0, 0x7ff
.L8003AF2C:
/* 3BB2C 8003AF2C 24030800 */  addiu      $v1, $zero, 0x800
.L8003AF30:
/* 3BB30 8003AF30 00000000 */  nop
/* 3BB34 8003AF34 00E60018 */  mult       $a3, $a2
/* 3BB38 8003AF38 00002012 */  mflo       $a0
/* 3BB3C 8003AF3C 24840003 */  addiu      $a0, $a0, 3
/* 3BB40 8003AF40 00042082 */  srl        $a0, $a0, 2
/* 3BB44 8003AF44 2484FFFF */  addiu      $a0, $a0, -1
/* 3BB48 8003AF48 2C820800 */  sltiu      $v0, $a0, 0x800
/* 3BB4C 8003AF4C 50400001 */  beql       $v0, $zero, .L8003AF54
/* 3BB50 8003AF50 240407FF */   addiu     $a0, $zero, 0x7ff
.L8003AF54:
/* 3BB54 8003AF54 30840FFF */  andi       $a0, $a0, 0xfff
/* 3BB58 8003AF58 00042300 */  sll        $a0, $a0, 0xc
/* 3BB5C 8003AF5C 3C020700 */  lui        $v0, 0x700
/* 3BB60 8003AF60 00822025 */  or         $a0, $a0, $v0
/* 3BB64 8003AF64 00071102 */  srl        $v0, $a3, 4
/* 3BB68 8003AF68 50400007 */  beql       $v0, $zero, .L8003AF88
/* 3BB6C 8003AF6C 30620FFF */   andi      $v0, $v1, 0xfff
/* 3BB70 8003AF70 0062001B */  divu       $zero, $v1, $v0
/* 3BB74 8003AF74 14400002 */  bnez       $v0, .L8003AF80
/* 3BB78 8003AF78 00000000 */   nop
/* 3BB7C 8003AF7C 0007000D */  break      7
.L8003AF80:
/* 3BB80 8003AF80 00001012 */   mflo      $v0
/* 3BB84 8003AF84 30420FFF */  andi       $v0, $v0, 0xfff
.L8003AF88:
/* 3BB88 8003AF88 00821025 */  or         $v0, $a0, $v0
/* 3BB8C 8003AF8C ACA20004 */  sw         $v0, 4($a1)
/* 3BB90 8003AF90 01001821 */  addu       $v1, $t0, $zero
/* 3BB94 8003AF94 25080008 */  addiu      $t0, $t0, 8
/* 3BB98 8003AF98 3C02E700 */  lui        $v0, 0xe700
/* 3BB9C 8003AF9C AC620000 */  sw         $v0, ($v1)
/* 3BBA0 8003AFA0 AC600004 */  sw         $zero, 4($v1)
/* 3BBA4 8003AFA4 01003021 */  addu       $a2, $t0, $zero
/* 3BBA8 8003AFA8 25080008 */  addiu      $t0, $t0, 8
/* 3BBAC 8003AFAC 31230007 */  andi       $v1, $t1, 7
/* 3BBB0 8003AFB0 00031D40 */  sll        $v1, $v1, 0x15
/* 3BBB4 8003AFB4 00071042 */  srl        $v0, $a3, 1
/* 3BBB8 8003AFB8 24420007 */  addiu      $v0, $v0, 7
/* 3BBBC 8003AFBC 000210C2 */  srl        $v0, $v0, 3
/* 3BBC0 8003AFC0 304201FF */  andi       $v0, $v0, 0x1ff
/* 3BBC4 8003AFC4 00021240 */  sll        $v0, $v0, 9
/* 3BBC8 8003AFC8 3C04F500 */  lui        $a0, 0xf500
/* 3BBCC 8003AFCC 00441025 */  or         $v0, $v0, $a0
/* 3BBD0 8003AFD0 00621825 */  or         $v1, $v1, $v0
/* 3BBD4 8003AFD4 316201FF */  andi       $v0, $t3, 0x1ff
/* 3BBD8 8003AFD8 00621825 */  or         $v1, $v1, $v0
/* 3BBDC 8003AFDC ACC30000 */  sw         $v1, ($a2)
/* 3BBE0 8003AFE0 32250007 */  andi       $a1, $s1, 7
/* 3BBE4 8003AFE4 00052E00 */  sll        $a1, $a1, 0x18
/* 3BBE8 8003AFE8 3243000F */  andi       $v1, $s2, 0xf
/* 3BBEC 8003AFEC 00031D00 */  sll        $v1, $v1, 0x14
/* 3BBF0 8003AFF0 00A31825 */  or         $v1, $a1, $v1
/* 3BBF4 8003AFF4 31820003 */  andi       $v0, $t4, 3
/* 3BBF8 8003AFF8 00021480 */  sll        $v0, $v0, 0x12
/* 3BBFC 8003AFFC 00621825 */  or         $v1, $v1, $v0
/* 3BC00 8003B000 31A2000F */  andi       $v0, $t5, 0xf
/* 3BC04 8003B004 00021380 */  sll        $v0, $v0, 0xe
/* 3BC08 8003B008 00621825 */  or         $v1, $v1, $v0
/* 3BC0C 8003B00C 31C2000F */  andi       $v0, $t6, 0xf
/* 3BC10 8003B010 00021280 */  sll        $v0, $v0, 0xa
/* 3BC14 8003B014 00621825 */  or         $v1, $v1, $v0
/* 3BC18 8003B018 31E20003 */  andi       $v0, $t7, 3
/* 3BC1C 8003B01C 00021200 */  sll        $v0, $v0, 8
/* 3BC20 8003B020 00621825 */  or         $v1, $v1, $v0
/* 3BC24 8003B024 3302000F */  andi       $v0, $t8, 0xf
/* 3BC28 8003B028 00021100 */  sll        $v0, $v0, 4
/* 3BC2C 8003B02C 00621825 */  or         $v1, $v1, $v0
/* 3BC30 8003B030 3322000F */  andi       $v0, $t9, 0xf
/* 3BC34 8003B034 00621825 */  or         $v1, $v1, $v0
/* 3BC38 8003B038 ACC30004 */  sw         $v1, 4($a2)
/* 3BC3C 8003B03C 01003021 */  addu       $a2, $t0, $zero
/* 3BC40 8003B040 25080008 */  addiu      $t0, $t0, 8
/* 3BC44 8003B044 00131080 */  sll        $v0, $s3, 2
/* 3BC48 8003B048 30420FFF */  andi       $v0, $v0, 0xfff
/* 3BC4C 8003B04C 00021300 */  sll        $v0, $v0, 0xc
/* 3BC50 8003B050 00101880 */  sll        $v1, $s0, 2
/* 3BC54 8003B054 30630FFF */  andi       $v1, $v1, 0xfff
/* 3BC58 8003B058 3C04F200 */  lui        $a0, 0xf200
/* 3BC5C 8003B05C 00641825 */  or         $v1, $v1, $a0
/* 3BC60 8003B060 00431025 */  or         $v0, $v0, $v1
/* 3BC64 8003B064 ACC20000 */  sw         $v0, ($a2)
/* 3BC68 8003B068 00141080 */  sll        $v0, $s4, 2
/* 3BC6C 8003B06C 30420FFF */  andi       $v0, $v0, 0xfff
/* 3BC70 8003B070 00021300 */  sll        $v0, $v0, 0xc
/* 3BC74 8003B074 00A22825 */  or         $a1, $a1, $v0
/* 3BC78 8003B078 00151080 */  sll        $v0, $s5, 2
/* 3BC7C 8003B07C 30420FFF */  andi       $v0, $v0, 0xfff
/* 3BC80 8003B080 00A22825 */  or         $a1, $a1, $v0
/* 3BC84 8003B084 ACC50004 */  sw         $a1, 4($a2)
/* 3BC88 8003B088 AD480000 */  sw         $t0, ($t2)
/* 3BC8C 8003B08C 8FB50014 */  lw         $s5, 0x14($sp)
/* 3BC90 8003B090 8FB40010 */  lw         $s4, 0x10($sp)
/* 3BC94 8003B094 8FB3000C */  lw         $s3, 0xc($sp)
/* 3BC98 8003B098 8FB20008 */  lw         $s2, 8($sp)
/* 3BC9C 8003B09C 8FB10004 */  lw         $s1, 4($sp)
/* 3BCA0 8003B0A0 8FB00000 */  lw         $s0, ($sp)
/* 3BCA4 8003B0A4 03E00008 */  jr         $ra
/* 3BCA8 8003B0A8 27BD0018 */   addiu     $sp, $sp, 0x18
