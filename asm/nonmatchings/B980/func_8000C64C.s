	.set noat
	.set noreorder

glabel func_8000C64C
/* D24C 8000C64C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D250 8000C650 AFBF0014 */  sw         $ra, 0x14($sp)
/* D254 8000C654 AFB00010 */  sw         $s0, 0x10($sp)
/* D258 8000C658 3C03800D */  lui        $v1, %hi(D_800CDAF0)
/* D25C 8000C65C 8C63DAF0 */  lw         $v1, %lo(D_800CDAF0)($v1)
/* D260 8000C660 30620002 */  andi       $v0, $v1, 2
/* D264 8000C664 10400034 */  beqz       $v0, .L8000C738
/* D268 8000C668 34620010 */   ori       $v0, $v1, 0x10
/* D26C 8000C66C 2403FFFD */  addiu      $v1, $zero, -3
/* D270 8000C670 00431824 */  and        $v1, $v0, $v1
/* D274 8000C674 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D278 8000C678 AC23DAF0 */  sw         $v1, %lo(D_800CDAF0)($at)
/* D27C 8000C67C 30420001 */  andi       $v0, $v0, 1
/* D280 8000C680 1440002A */  bnez       $v0, .L8000C72C
/* D284 8000C684 2402FFEF */   addiu     $v0, $zero, -0x11
/* D288 8000C688 00041400 */  sll        $v0, $a0, 0x10
/* D28C 8000C68C 00028403 */  sra        $s0, $v0, 0x10
/* D290 8000C690 1200001D */  beqz       $s0, .L8000C708
/* D294 8000C694 00000000 */   nop
/* D298 8000C698 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* D29C 8000C69C C420DAF4 */  lwc1       $f0, %lo(D_800CDAF4)($at)
/* D2A0 8000C6A0 44801000 */  mtc1       $zero, $f2
/* D2A4 8000C6A4 00000000 */  nop
/* D2A8 8000C6A8 4602003E */  c.le.s     $f0, $f2
/* D2AC 8000C6AC 00000000 */  nop
/* D2B0 8000C6B0 45000015 */  bc1f       .L8000C708
/* D2B4 8000C6B4 00000000 */   nop
/* D2B8 8000C6B8 3C01800D */  lui        $at, %hi(D_800CDAF8)
/* D2BC 8000C6BC E422DAF8 */  swc1       $f2, %lo(D_800CDAF8)($at)
/* D2C0 8000C6C0 3C01800D */  lui        $at, %hi(D_800CDAFE)
/* D2C4 8000C6C4 A420DAFE */  sh         $zero, %lo(D_800CDAFE)($at)
/* D2C8 8000C6C8 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D2CC 8000C6CC 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D2D0 8000C6D0 0C0229DC */  jal        func_8008A770
/* D2D4 8000C6D4 00002821 */   addu      $a1, $zero, $zero
/* D2D8 8000C6D8 3C02800D */  lui        $v0, %hi(D_800CDB02)
/* D2DC 8000C6DC 8442DB02 */  lh         $v0, %lo(D_800CDB02)($v0)
/* D2E0 8000C6E0 44820000 */  mtc1       $v0, $f0
/* D2E4 8000C6E4 00000000 */  nop
/* D2E8 8000C6E8 46800020 */  cvt.s.w    $f0, $f0
/* D2EC 8000C6EC 44901000 */  mtc1       $s0, $f2
/* D2F0 8000C6F0 00000000 */  nop
/* D2F4 8000C6F4 468010A0 */  cvt.s.w    $f2, $f2
/* D2F8 8000C6F8 46020003 */  div.s      $f0, $f0, $f2
/* D2FC 8000C6FC 46000007 */  neg.s      $f0, $f0
/* D300 8000C700 3C01800D */  lui        $at, %hi(D_800CDAF4)
/* D304 8000C704 E420DAF4 */  swc1       $f0, %lo(D_800CDAF4)($at)
.L8000C708:
/* D308 8000C708 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D30C 8000C70C 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D310 8000C710 34420004 */  ori        $v0, $v0, 4
/* D314 8000C714 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D318 8000C718 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
/* D31C 8000C71C 24030001 */  addiu      $v1, $zero, 1
/* D320 8000C720 3C01800D */  lui        $at, %hi(D_800CDAEC)
/* D324 8000C724 AC23DAEC */  sw         $v1, %lo(D_800CDAEC)($at)
/* D328 8000C728 2403FFEF */  addiu      $v1, $zero, -0x11
.L8000C72C:
/* D32C 8000C72C 00431024 */  and        $v0, $v0, $v1
/* D330 8000C730 3C01800D */  lui        $at, %hi(D_800CDAF0)
/* D334 8000C734 AC22DAF0 */  sw         $v0, %lo(D_800CDAF0)($at)
.L8000C738:
/* D338 8000C738 8FBF0014 */  lw         $ra, 0x14($sp)
/* D33C 8000C73C 8FB00010 */  lw         $s0, 0x10($sp)
/* D340 8000C740 03E00008 */  jr         $ra
/* D344 8000C744 27BD0018 */   addiu     $sp, $sp, 0x18
