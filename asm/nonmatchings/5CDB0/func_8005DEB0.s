	.set noat
	.set noreorder

glabel func_8005DEB0
/* 5EAB0 8005DEB0 27BDFFF8 */  addiu      $sp, $sp, -8
/* 5EAB4 8005DEB4 3C03800C */  lui        $v1, %hi(D_800C5990)
/* 5EAB8 8005DEB8 8C635990 */  lw         $v1, %lo(D_800C5990)($v1)
/* 5EABC 8005DEBC 3C02800C */  lui        $v0, %hi(D_800C5988)
/* 5EAC0 8005DEC0 84425988 */  lh         $v0, %lo(D_800C5988)($v0)
/* 5EAC4 8005DEC4 1840001C */  blez       $v0, .L8005DF38
/* 5EAC8 8005DEC8 00002021 */   addu      $a0, $zero, $zero
/* 5EACC 8005DECC 24070003 */  addiu      $a3, $zero, 3
/* 5EAD0 8005DED0 24060001 */  addiu      $a2, $zero, 1
/* 5EAD4 8005DED4 3C05800C */  lui        $a1, %hi(D_800C5988)
/* 5EAD8 8005DED8 84A55988 */  lh         $a1, %lo(D_800C5988)($a1)
.L8005DEDC:
/* 5EADC 8005DEDC 94620000 */  lhu        $v0, ($v1)
/* 5EAE0 8005DEE0 30420004 */  andi       $v0, $v0, 4
/* 5EAE4 8005DEE4 50400011 */  beql       $v0, $zero, .L8005DF2C
/* 5EAE8 8005DEE8 24840001 */   addiu     $a0, $a0, 1
/* 5EAEC 8005DEEC 8C620004 */  lw         $v0, 4($v1)
/* 5EAF0 8005DEF0 9442001C */  lhu        $v0, 0x1c($v0)
/* 5EAF4 8005DEF4 5447000D */  bnel       $v0, $a3, .L8005DF2C
/* 5EAF8 8005DEF8 24840001 */   addiu     $a0, $a0, 1
/* 5EAFC 8005DEFC A4660000 */  sh         $a2, ($v1)
/* 5EB00 8005DF00 3C02800C */  lui        $v0, %hi(D_800C598C)
/* 5EB04 8005DF04 9442598C */  lhu        $v0, %lo(D_800C598C)($v0)
/* 5EB08 8005DF08 A4620002 */  sh         $v0, 2($v1)
/* 5EB0C 8005DF0C 3C01800C */  lui        $at, %hi(D_800C598C)
/* 5EB10 8005DF10 A424598C */  sh         $a0, %lo(D_800C598C)($at)
/* 5EB14 8005DF14 3C02800C */  lui        $v0, %hi(D_800C598A)
/* 5EB18 8005DF18 9442598A */  lhu        $v0, %lo(D_800C598A)($v0)
/* 5EB1C 8005DF1C 2442FFFF */  addiu      $v0, $v0, -1
/* 5EB20 8005DF20 3C01800C */  lui        $at, %hi(D_800C598A)
/* 5EB24 8005DF24 A422598A */  sh         $v0, %lo(D_800C598A)($at)
/* 5EB28 8005DF28 24840001 */  addiu      $a0, $a0, 1
.L8005DF2C:
/* 5EB2C 8005DF2C 0085102A */  slt        $v0, $a0, $a1
/* 5EB30 8005DF30 1440FFEA */  bnez       $v0, .L8005DEDC
/* 5EB34 8005DF34 2463000C */   addiu     $v1, $v1, 0xc
.L8005DF38:
/* 5EB38 8005DF38 27BD0008 */  addiu      $sp, $sp, 8
/* 5EB3C 8005DF3C 03E00008 */  jr         $ra
/* 5EB40 8005DF40 00000000 */   nop
