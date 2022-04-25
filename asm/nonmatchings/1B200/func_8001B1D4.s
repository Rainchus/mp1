	.set noat
	.set noreorder

glabel func_8001B1D4
/* 1BDD4 8001B1D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1BDD8 8001B1D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1BDDC 8001B1DC AFB10014 */  sw         $s1, 0x14($sp)
/* 1BDE0 8001B1E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1BDE4 8001B1E4 00808021 */  addu       $s0, $a0, $zero
/* 1BDE8 8001B1E8 8E0300A0 */  lw         $v1, 0xa0($s0)
/* 1BDEC 8001B1EC 2402FFFF */  addiu      $v0, $zero, -1
/* 1BDF0 8001B1F0 1062001A */  beq        $v1, $v0, .L8001B25C
/* 1BDF4 8001B1F4 00000000 */   nop
/* 1BDF8 8001B1F8 86020070 */  lh         $v0, 0x70($s0)
/* 1BDFC 8001B1FC 18400014 */  blez       $v0, .L8001B250
/* 1BE00 8001B200 00008821 */   addu      $s1, $zero, $zero
/* 1BE04 8001B204 00111C00 */  sll        $v1, $s1, 0x10
.L8001B208:
/* 1BE08 8001B208 00031C03 */  sra        $v1, $v1, 0x10
/* 1BE0C 8001B20C 8E0400A0 */  lw         $a0, 0xa0($s0)
/* 1BE10 8001B210 00031080 */  sll        $v0, $v1, 2
/* 1BE14 8001B214 00431021 */  addu       $v0, $v0, $v1
/* 1BE18 8001B218 000210C0 */  sll        $v0, $v0, 3
/* 1BE1C 8001B21C 00431021 */  addu       $v0, $v0, $v1
/* 1BE20 8001B220 00021080 */  sll        $v0, $v0, 2
/* 1BE24 8001B224 00441021 */  addu       $v0, $v0, $a0
/* 1BE28 8001B228 0C008DCA */  jal        func_80023728
/* 1BE2C 8001B22C 8C440004 */   lw        $a0, 4($v0)
/* 1BE30 8001B230 26220001 */  addiu      $v0, $s1, 1
/* 1BE34 8001B234 00408821 */  addu       $s1, $v0, $zero
/* 1BE38 8001B238 00021400 */  sll        $v0, $v0, 0x10
/* 1BE3C 8001B23C 00021403 */  sra        $v0, $v0, 0x10
/* 1BE40 8001B240 86030070 */  lh         $v1, 0x70($s0)
/* 1BE44 8001B244 0043102A */  slt        $v0, $v0, $v1
/* 1BE48 8001B248 1440FFEF */  bnez       $v0, .L8001B208
/* 1BE4C 8001B24C 00111C00 */   sll       $v1, $s1, 0x10
.L8001B250:
/* 1BE50 8001B250 8E0400A0 */  lw         $a0, 0xa0($s0)
/* 1BE54 8001B254 08006C9B */  j          .L8001B26C
/* 1BE58 8001B258 00000000 */   nop
.L8001B25C:
/* 1BE5C 8001B25C 86020084 */  lh         $v0, 0x84($s0)
/* 1BE60 8001B260 10400004 */  beqz       $v0, .L8001B274
/* 1BE64 8001B264 00000000 */   nop
/* 1BE68 8001B268 8E040088 */  lw         $a0, 0x88($s0)
.L8001B26C:
/* 1BE6C 8001B26C 0C008DCA */  jal        func_80023728
/* 1BE70 8001B270 00000000 */   nop
.L8001B274:
/* 1BE74 8001B274 0C008DCA */  jal        func_80023728
/* 1BE78 8001B278 8E040080 */   lw        $a0, 0x80($s0)
/* 1BE7C 8001B27C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1BE80 8001B280 8FB10014 */  lw         $s1, 0x14($sp)
/* 1BE84 8001B284 8FB00010 */  lw         $s0, 0x10($sp)
/* 1BE88 8001B288 03E00008 */  jr         $ra
/* 1BE8C 8001B28C 27BD0020 */   addiu     $sp, $sp, 0x20
