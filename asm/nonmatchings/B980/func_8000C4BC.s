	.set noat
	.set noreorder

glabel func_8000C4BC
/* D0BC 8000C4BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0C0 8000C4C0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D0C4 8000C4C4 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D0C8 8000C4C8 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D0CC 8000C4CC 30428000 */  andi       $v0, $v0, 0x8000
/* D0D0 8000C4D0 10400019 */  beqz       $v0, .L8000C538
/* D0D4 8000C4D4 00801821 */   addu      $v1, $a0, $zero
/* D0D8 8000C4D8 00041400 */  sll        $v0, $a0, 0x10
/* D0DC 8000C4DC 58400001 */  blezl      $v0, .L8000C4E4
/* D0E0 8000C4E0 24030001 */   addiu     $v1, $zero, 1
.L8000C4E4:
/* D0E4 8000C4E4 00031400 */  sll        $v0, $v1, 0x10
/* D0E8 8000C4E8 00021403 */  sra        $v0, $v0, 0x10
/* D0EC 8000C4EC 44821000 */  mtc1       $v0, $f2
/* D0F0 8000C4F0 00000000 */  nop
/* D0F4 8000C4F4 468010A0 */  cvt.s.w    $f2, $f2
/* D0F8 8000C4F8 3C014270 */  lui        $at, 0x4270
/* D0FC 8000C4FC 44810000 */  mtc1       $at, $f0
/* D100 8000C500 00000000 */  nop
/* D104 8000C504 46020003 */  div.s      $f0, $f0, $f2
/* D108 8000C508 3C01447A */  lui        $at, 0x447a
/* D10C 8000C50C 44811000 */  mtc1       $at, $f2
/* D110 8000C510 00000000 */  nop
/* D114 8000C514 46020002 */  mul.s      $f0, $f0, $f2
/* D118 8000C518 00000000 */  nop
/* D11C 8000C51C 46020002 */  mul.s      $f0, $f0, $f2
/* D120 8000C520 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D124 8000C524 8C84DAD4 */  lw         $a0, %lo(D_800CDAD4)($a0)
/* D128 8000C528 4600008D */  trunc.w.s  $f2, $f0
/* D12C 8000C52C 44051000 */  mfc1       $a1, $f2
/* D130 8000C530 0C0229C8 */  jal        func_8008A720
/* D134 8000C534 00000000 */   nop
.L8000C538:
/* D138 8000C538 8FBF0010 */  lw         $ra, 0x10($sp)
/* D13C 8000C53C 03E00008 */  jr         $ra
/* D140 8000C540 27BD0018 */   addiu     $sp, $sp, 0x18
