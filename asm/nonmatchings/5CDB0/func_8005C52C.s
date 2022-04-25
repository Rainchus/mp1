	.set noat
	.set noreorder

glabel func_8005C52C
/* 5D12C 8005C52C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D130 8005C530 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D134 8005C534 AFB00010 */  sw         $s0, 0x10($sp)
/* 5D138 8005C538 3C01800F */  lui        $at, %hi(D_800ED5DC)
/* 5D13C 8005C53C A420D5DC */  sh         $zero, %lo(D_800ED5DC)($at)
/* 5D140 8005C540 2410FFFF */  addiu      $s0, $zero, -1
/* 5D144 8005C544 3C01800F */  lui        $at, %hi(D_800ED5DE)
/* 5D148 8005C548 A430D5DE */  sh         $s0, %lo(D_800ED5DE)($at)
/* 5D14C 8005C54C 3C01800F */  lui        $at, %hi(D_800ED5E3)
/* 5D150 8005C550 A020D5E3 */  sb         $zero, %lo(D_800ED5E3)($at)
/* 5D154 8005C554 0C016E18 */  jal        func_8005B860
/* 5D158 8005C558 2404FFFF */   addiu     $a0, $zero, -1
/* 5D15C 8005C55C 0C017381 */  jal        func_8005CE04
/* 5D160 8005C560 00000000 */   nop
/* 5D164 8005C564 3C01800E */  lui        $at, %hi(D_800D89A0)
/* 5D168 8005C568 A43089A0 */  sh         $s0, %lo(D_800D89A0)($at)
/* 5D16C 8005C56C 0C017392 */  jal        func_8005CE48
/* 5D170 8005C570 24040004 */   addiu     $a0, $zero, 4
/* 5D174 8005C574 14400018 */  bnez       $v0, .L8005C5D8
/* 5D178 8005C578 24020003 */   addiu     $v0, $zero, 3
/* 5D17C 8005C57C 3C01800F */  lui        $at, %hi(D_800F37BA)
/* 5D180 8005C580 A02037BA */  sb         $zero, %lo(D_800F37BA)($at)
/* 5D184 8005C584 3C01800F */  lui        $at, %hi(D_800F37C4)
/* 5D188 8005C588 A02037C4 */  sb         $zero, %lo(D_800F37C4)($at)
/* 5D18C 8005C58C 3C01800F */  lui        $at, %hi(D_800F37BB)
/* 5D190 8005C590 A02237BB */  sb         $v0, %lo(D_800F37BB)($at)
/* 5D194 8005C594 00008021 */  addu       $s0, $zero, $zero
.L8005C598:
/* 5D198 8005C598 52000004 */  beql       $s0, $zero, .L8005C5AC
/* 5D19C 8005C59C 26100001 */   addiu     $s0, $s0, 1
/* 5D1A0 8005C5A0 0C0173B7 */  jal        func_8005CEDC
/* 5D1A4 8005C5A4 02002021 */   addu      $a0, $s0, $zero
/* 5D1A8 8005C5A8 26100001 */  addiu      $s0, $s0, 1
.L8005C5AC:
/* 5D1AC 8005C5AC 2A020039 */  slti       $v0, $s0, 0x39
/* 5D1B0 8005C5B0 1440FFF9 */  bnez       $v0, .L8005C598
/* 5D1B4 8005C5B4 00000000 */   nop
/* 5D1B8 8005C5B8 00008021 */  addu       $s0, $zero, $zero
.L8005C5BC:
/* 5D1BC 8005C5BC 0C014AA3 */  jal        func_80052A8C
/* 5D1C0 8005C5C0 02002021 */   addu      $a0, $s0, $zero
/* 5D1C4 8005C5C4 A4400008 */  sh         $zero, 8($v0)
/* 5D1C8 8005C5C8 26100001 */  addiu      $s0, $s0, 1
/* 5D1CC 8005C5CC 2A020004 */  slti       $v0, $s0, 4
/* 5D1D0 8005C5D0 1440FFFA */  bnez       $v0, .L8005C5BC
/* 5D1D4 8005C5D4 00000000 */   nop
.L8005C5D8:
/* 5D1D8 8005C5D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D1DC 8005C5DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 5D1E0 8005C5E0 03E00008 */  jr         $ra
/* 5D1E4 8005C5E4 27BD0018 */   addiu     $sp, $sp, 0x18
