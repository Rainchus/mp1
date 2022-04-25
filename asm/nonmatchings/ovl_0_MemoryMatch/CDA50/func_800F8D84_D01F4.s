	.set noat
	.set noreorder

glabel func_800F8D84_D01F4
/* D01F4 800F8D84 3C038010 */  lui        $v1, %hi(D_800FDE50)
/* D01F8 800F8D88 2463DE50 */  addiu      $v1, $v1, %lo(D_800FDE50)
/* D01FC 800F8D8C 00003021 */  addu       $a2, $zero, $zero
/* D0200 800F8D90 24070001 */  addiu      $a3, $zero, 1
.L800F8D94:
/* D0204 800F8D94 84620000 */  lh         $v0, ($v1)
/* D0208 800F8D98 5440000F */  bnel       $v0, $zero, .L800F8DD8
/* D020C 800F8D9C 24C60001 */   addiu     $a2, $a2, 1
/* D0210 800F8DA0 A4670000 */  sh         $a3, ($v1)
/* D0214 800F8DA4 C4800000 */  lwc1       $f0, ($a0)
/* D0218 800F8DA8 E460000C */  swc1       $f0, 0xc($v1)
/* D021C 800F8DAC C4800004 */  lwc1       $f0, 4($a0)
/* D0220 800F8DB0 E4600010 */  swc1       $f0, 0x10($v1)
/* D0224 800F8DB4 C4800008 */  lwc1       $f0, 8($a0)
/* D0228 800F8DB8 E4600014 */  swc1       $f0, 0x14($v1)
/* D022C 800F8DBC C4A00000 */  lwc1       $f0, ($a1)
/* D0230 800F8DC0 E4600004 */  swc1       $f0, 4($v1)
/* D0234 800F8DC4 C4A00004 */  lwc1       $f0, 4($a1)
/* D0238 800F8DC8 E4600008 */  swc1       $f0, 8($v1)
/* D023C 800F8DCC 00061400 */  sll        $v0, $a2, 0x10
/* D0240 800F8DD0 0803E37B */  j          .L800F8DEC
/* D0244 800F8DD4 00021403 */   sra       $v0, $v0, 0x10
.L800F8DD8:
/* D0248 800F8DD8 30C2FFFF */  andi       $v0, $a2, 0xffff
/* D024C 800F8DDC 2C420008 */  sltiu      $v0, $v0, 8
/* D0250 800F8DE0 1440FFEC */  bnez       $v0, .L800F8D94
/* D0254 800F8DE4 24630018 */   addiu     $v1, $v1, 0x18
/* D0258 800F8DE8 2402FFFF */  addiu      $v0, $zero, -1
.L800F8DEC:
/* D025C 800F8DEC 03E00008 */  jr         $ra
/* D0260 800F8DF0 00000000 */   nop
