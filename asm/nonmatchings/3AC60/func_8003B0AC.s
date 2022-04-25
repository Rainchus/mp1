	.set noat
	.set noreorder

glabel func_8003B0AC
/* 3BCAC 8003B0AC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3BCB0 8003B0B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3BCB4 8003B0B4 AFB00010 */  sw         $s0, 0x10($sp)
/* 3BCB8 8003B0B8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 3BCBC 8003B0BC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 3BCC0 8003B0C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 3BCC4 8003B0C4 00808021 */  addu       $s0, $a0, $zero
/* 3BCC8 8003B0C8 4487B000 */  mtc1       $a3, $f22
/* 3BCCC 8003B0CC 4486B800 */  mtc1       $a2, $f23
/* 3BCD0 8003B0D0 D7B80040 */  ldc1       $f24, 0x40($sp)
/* 3BCD4 8003B0D4 D7B40048 */  ldc1       $f20, 0x48($sp)
/* 3BCD8 8003B0D8 3C01800D */  lui        $at, %hi(D_800CAA70)
/* 3BCDC 8003B0DC D420AA70 */  ldc1       $f0, %lo(D_800CAA70)($at)
/* 3BCE0 8003B0E0 4620A003 */  div.d      $f0, $f20, $f0
/* 3BCE4 8003B0E4 4620008D */  trunc.w.d  $f2, $f0
/* 3BCE8 8003B0E8 44021000 */  mfc1       $v0, $f2
/* 3BCEC 8003B0EC 00000000 */  nop
/* 3BCF0 8003B0F0 00021840 */  sll        $v1, $v0, 1
/* 3BCF4 8003B0F4 00621821 */  addu       $v1, $v1, $v0
/* 3BCF8 8003B0F8 00031100 */  sll        $v0, $v1, 4
/* 3BCFC 8003B0FC 00431023 */  subu       $v0, $v0, $v1
/* 3BD00 8003B100 000210C0 */  sll        $v0, $v0, 3
/* 3BD04 8003B104 44820000 */  mtc1       $v0, $f0
/* 3BD08 8003B108 00000000 */  nop
/* 3BD0C 8003B10C 46800021 */  cvt.d.w    $f0, $f0
/* 3BD10 8003B110 4620A501 */  sub.d      $f20, $f20, $f0
/* 3BD14 8003B114 3C01800D */  lui        $at, %hi(D_800CAA78)
/* 3BD18 8003B118 D420AA78 */  ldc1       $f0, %lo(D_800CAA78)($at)
/* 3BD1C 8003B11C 4620A502 */  mul.d      $f20, $f20, $f0
/* 3BD20 8003B120 3C01800D */  lui        $at, %hi(D_800CAA80)
/* 3BD24 8003B124 D420AA80 */  ldc1       $f0, %lo(D_800CAA80)($at)
/* 3BD28 8003B128 4620A503 */  div.d      $f20, $f20, $f0
/* 3BD2C 8003B12C 4620A520 */  cvt.s.d    $f20, $f20
/* 3BD30 8003B130 0C021570 */  jal        func_800855C0
/* 3BD34 8003B134 4600A306 */   mov.s     $f12, $f20
/* 3BD38 8003B138 E6000000 */  swc1       $f0, ($s0)
/* 3BD3C 8003B13C 0C022018 */  jal        func_80088060
/* 3BD40 8003B140 4600A306 */   mov.s     $f12, $f20
/* 3BD44 8003B144 E6000004 */  swc1       $f0, 4($s0)
/* 3BD48 8003B148 0C022018 */  jal        func_80088060
/* 3BD4C 8003B14C 4600A306 */   mov.s     $f12, $f20
/* 3BD50 8003B150 46000007 */  neg.s      $f0, $f0
/* 3BD54 8003B154 E6000010 */  swc1       $f0, 0x10($s0)
/* 3BD58 8003B158 0C021570 */  jal        func_800855C0
/* 3BD5C 8003B15C 4600A306 */   mov.s     $f12, $f20
/* 3BD60 8003B160 E6000014 */  swc1       $f0, 0x14($s0)
/* 3BD64 8003B164 4620B5A0 */  cvt.s.d    $f22, $f22
/* 3BD68 8003B168 E6160030 */  swc1       $f22, 0x30($s0)
/* 3BD6C 8003B16C 4620C620 */  cvt.s.d    $f24, $f24
/* 3BD70 8003B170 E6180034 */  swc1       $f24, 0x34($s0)
/* 3BD74 8003B174 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3BD78 8003B178 8FB00010 */  lw         $s0, 0x10($sp)
/* 3BD7C 8003B17C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 3BD80 8003B180 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 3BD84 8003B184 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 3BD88 8003B188 03E00008 */  jr         $ra
/* 3BD8C 8003B18C 27BD0030 */   addiu     $sp, $sp, 0x30
