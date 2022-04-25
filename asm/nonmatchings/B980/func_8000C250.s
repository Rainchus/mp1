	.set noat
	.set noreorder

glabel func_8000C250
/* CE50 8000C250 3C03800D */  lui        $v1, %hi(D_800CDAEC)
/* CE54 8000C254 8C63DAEC */  lw         $v1, %lo(D_800CDAEC)($v1)
/* CE58 8000C258 24020001 */  addiu      $v0, $zero, 1
/* CE5C 8000C25C 1462001B */  bne        $v1, $v0, .L8000C2CC
/* CE60 8000C260 00802821 */   addu      $a1, $a0, $zero
/* CE64 8000C264 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* CE68 8000C268 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* CE6C 8000C26C 30420002 */  andi       $v0, $v0, 2
/* CE70 8000C270 14400016 */  bnez       $v0, .L8000C2CC
/* CE74 8000C274 00041400 */   sll       $v0, $a0, 0x10
/* CE78 8000C278 04420001 */  bltzl      $v0, .L8000C280
/* CE7C 8000C27C 24050001 */   addiu     $a1, $zero, 1
.L8000C280:
/* CE80 8000C280 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* CE84 8000C284 AC20DAF8 */  sw         $zero, %lo(D_800CDAF8)($at)
/* CE88 8000C288 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* CE8C 8000C28C 9442DB02 */  lhu        $v0, %lo(D_800CDB02)($v0)
/* CE90 8000C290 3C01800D */  lui        $at, %hi(D_800CDAFE)
/* CE94 8000C294 A422DAFE */  sh         $v0, %lo(D_800CDAFE)($at)
/* CE98 8000C298 00021400 */  sll        $v0, $v0, 0x10
/* CE9C 8000C29C 00021403 */  sra        $v0, $v0, 0x10
/* CEA0 8000C2A0 44821000 */  mtc1       $v0, $f2
/* CEA4 8000C2A4 00000000 */  nop
/* CEA8 8000C2A8 468010A0 */  cvt.s.w    $f2, $f2
/* CEAC 8000C2AC 00051400 */  sll        $v0, $a1, 0x10
/* CEB0 8000C2B0 00021403 */  sra        $v0, $v0, 0x10
/* CEB4 8000C2B4 44820000 */  mtc1       $v0, $f0
/* CEB8 8000C2B8 00000000 */  nop
/* CEBC 8000C2BC 46800020 */  cvt.s.w    $f0, $f0
/* CEC0 8000C2C0 46001083 */  div.s      $f2, $f2, $f0
/* CEC4 8000C2C4 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* CEC8 8000C2C8 E422DAF4 */  swc1       $f2, %lo(D_800CDAF4)($at)
.L8000C2CC:
/* CECC 8000C2CC 03E00008 */  jr         $ra
/* CED0 8000C2D0 00000000 */   nop
