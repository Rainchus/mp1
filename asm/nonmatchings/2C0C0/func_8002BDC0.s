	.set noat
	.set noreorder

glabel func_8002BDC0
/* 2C9C0 8002BDC0 8C8200D0 */  lw         $v0, 0xd0($a0)
/* 2C9C4 8002BDC4 1040003D */  beqz       $v0, .L8002BEBC
/* 2C9C8 8002BDC8 00000000 */   nop
/* 2C9CC 8002BDCC 00403821 */  addu       $a3, $v0, $zero
/* 2C9D0 8002BDD0 84820074 */  lh         $v0, 0x74($a0)
/* 2C9D4 8002BDD4 18400039 */  blez       $v0, .L8002BEBC
/* 2C9D8 8002BDD8 00005821 */   addu      $t3, $zero, $zero
/* 2C9DC 8002BDDC 00006021 */  addu       $t4, $zero, $zero
.L8002BDE0:
/* 2C9E0 8002BDE0 24E50002 */  addiu      $a1, $a3, 2
/* 2C9E4 8002BDE4 90EA0000 */  lbu        $t2, ($a3)
/* 2C9E8 8002BDE8 44802000 */  mtc1       $zero, $f4
/* 2C9EC 8002BDEC 00000000 */  nop
/* 2C9F0 8002BDF0 46002206 */  mov.s      $f8, $f4
/* 2C9F4 8002BDF4 46002186 */  mov.s      $f6, $f4
/* 2C9F8 8002BDF8 3142FFFF */  andi       $v0, $t2, 0xffff
/* 2C9FC 8002BDFC 00404821 */  addu       $t1, $v0, $zero
/* 2CA00 8002BE00 0182102A */  slt        $v0, $t4, $v0
/* 2CA04 8002BE04 1040001B */  beqz       $v0, .L8002BE74
/* 2CA08 8002BE08 00003021 */   addu      $a2, $zero, $zero
/* 2CA0C 8002BE0C 8C880004 */  lw         $t0, 4($a0)
.L8002BE10:
/* 2CA10 8002BE10 84A30000 */  lh         $v1, ($a1)
/* 2CA14 8002BE14 00031900 */  sll        $v1, $v1, 4
/* 2CA18 8002BE18 00681821 */  addu       $v1, $v1, $t0
/* 2CA1C 8002BE1C 84620000 */  lh         $v0, ($v1)
/* 2CA20 8002BE20 44820000 */  mtc1       $v0, $f0
/* 2CA24 8002BE24 00000000 */  nop
/* 2CA28 8002BE28 46800020 */  cvt.s.w    $f0, $f0
/* 2CA2C 8002BE2C 46003180 */  add.s      $f6, $f6, $f0
/* 2CA30 8002BE30 84620002 */  lh         $v0, 2($v1)
/* 2CA34 8002BE34 44820000 */  mtc1       $v0, $f0
/* 2CA38 8002BE38 00000000 */  nop
/* 2CA3C 8002BE3C 46800020 */  cvt.s.w    $f0, $f0
/* 2CA40 8002BE40 46004200 */  add.s      $f8, $f8, $f0
/* 2CA44 8002BE44 84620004 */  lh         $v0, 4($v1)
/* 2CA48 8002BE48 44820000 */  mtc1       $v0, $f0
/* 2CA4C 8002BE4C 00000000 */  nop
/* 2CA50 8002BE50 46800020 */  cvt.s.w    $f0, $f0
/* 2CA54 8002BE54 46002100 */  add.s      $f4, $f4, $f0
/* 2CA58 8002BE58 24C20001 */  addiu      $v0, $a2, 1
/* 2CA5C 8002BE5C 00403021 */  addu       $a2, $v0, $zero
/* 2CA60 8002BE60 00021400 */  sll        $v0, $v0, 0x10
/* 2CA64 8002BE64 00021403 */  sra        $v0, $v0, 0x10
/* 2CA68 8002BE68 0049102A */  slt        $v0, $v0, $t1
/* 2CA6C 8002BE6C 1440FFE8 */  bnez       $v0, .L8002BE10
/* 2CA70 8002BE70 24A50002 */   addiu     $a1, $a1, 2
.L8002BE74:
/* 2CA74 8002BE74 3142FFFF */  andi       $v0, $t2, 0xffff
/* 2CA78 8002BE78 44821000 */  mtc1       $v0, $f2
/* 2CA7C 8002BE7C 00000000 */  nop
/* 2CA80 8002BE80 468010A0 */  cvt.s.w    $f2, $f2
/* 2CA84 8002BE84 46023003 */  div.s      $f0, $f6, $f2
/* 2CA88 8002BE88 E4E0000C */  swc1       $f0, 0xc($a3)
/* 2CA8C 8002BE8C 46024003 */  div.s      $f0, $f8, $f2
/* 2CA90 8002BE90 E4E00010 */  swc1       $f0, 0x10($a3)
/* 2CA94 8002BE94 46022083 */  div.s      $f2, $f4, $f2
/* 2CA98 8002BE98 E4E20014 */  swc1       $f2, 0x14($a3)
/* 2CA9C 8002BE9C 25620001 */  addiu      $v0, $t3, 1
/* 2CAA0 8002BEA0 00405821 */  addu       $t3, $v0, $zero
/* 2CAA4 8002BEA4 00021400 */  sll        $v0, $v0, 0x10
/* 2CAA8 8002BEA8 00021403 */  sra        $v0, $v0, 0x10
/* 2CAAC 8002BEAC 84830074 */  lh         $v1, 0x74($a0)
/* 2CAB0 8002BEB0 0043102A */  slt        $v0, $v0, $v1
/* 2CAB4 8002BEB4 1440FFCA */  bnez       $v0, .L8002BDE0
/* 2CAB8 8002BEB8 24E70018 */   addiu     $a3, $a3, 0x18
.L8002BEBC:
/* 2CABC 8002BEBC 03E00008 */  jr         $ra
/* 2CAC0 8002BEC0 00000000 */   nop
