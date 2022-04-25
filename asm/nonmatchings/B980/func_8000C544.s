	.set noat
	.set noreorder

glabel func_8000C544
/* D144 8000C544 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D148 8000C548 AFBF0010 */  sw         $ra, 0x10($sp)
/* D14C 8000C54C 3C02800D */  lui        $v0, %hi(D_800CDAF0)
/* D150 8000C550 8C42DAF0 */  lw         $v0, %lo(D_800CDAF0)($v0)
/* D154 8000C554 30428000 */  andi       $v0, $v0, 0x8000
/* D158 8000C558 10400017 */  beqz       $v0, .L8000C5B8
/* D15C 8000C55C 00001021 */   addu      $v0, $zero, $zero
/* D160 8000C560 3C04800D */  lui        $a0, %hi(D_800CDAD4)
/* D164 8000C564 0C022980 */  jal        func_8008A600
/* D168 8000C568 8C84DAD4 */   lw        $a0, %lo(D_800CDAD4)($a0)
/* D16C 8000C56C 50400012 */  beql       $v0, $zero, .L8000C5B8
/* D170 8000C570 00001021 */   addu      $v0, $zero, $zero
/* D174 8000C574 44821000 */  mtc1       $v0, $f2
/* D178 8000C578 00000000 */  nop
/* D17C 8000C57C 468010A0 */  cvt.s.w    $f2, $f2
/* D180 8000C580 3C014974 */  lui        $at, 0x4974
/* D184 8000C584 34212400 */  ori        $at, $at, 0x2400
/* D188 8000C588 44810000 */  mtc1       $at, $f0
/* D18C 8000C58C 00000000 */  nop
/* D190 8000C590 46001083 */  div.s      $f2, $f2, $f0
/* D194 8000C594 3C014270 */  lui        $at, 0x4270
/* D198 8000C598 44810000 */  mtc1       $at, $f0
/* D19C 8000C59C 00000000 */  nop
/* D1A0 8000C5A0 46020003 */  div.s      $f0, $f0, $f2
/* D1A4 8000C5A4 4600008D */  trunc.w.s  $f2, $f0
/* D1A8 8000C5A8 44021000 */  mfc1       $v0, $f2
/* D1AC 8000C5AC 00000000 */  nop
/* D1B0 8000C5B0 00021400 */  sll        $v0, $v0, 0x10
/* D1B4 8000C5B4 00021403 */  sra        $v0, $v0, 0x10
.L8000C5B8:
/* D1B8 8000C5B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* D1BC 8000C5BC 03E00008 */  jr         $ra
/* D1C0 8000C5C0 27BD0018 */   addiu     $sp, $sp, 0x18
