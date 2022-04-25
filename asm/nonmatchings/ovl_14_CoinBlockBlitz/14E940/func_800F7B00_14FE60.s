	.set noat
	.set noreorder

glabel func_800F7B00_14FE60
/* 14FE60 800F7B00 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14FE64 800F7B04 AFBF0028 */  sw         $ra, 0x28($sp)
/* 14FE68 800F7B08 AFB10024 */  sw         $s1, 0x24($sp)
/* 14FE6C 800F7B0C AFB00020 */  sw         $s0, 0x20($sp)
/* 14FE70 800F7B10 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 14FE74 800F7B14 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 14FE78 800F7B18 000410C0 */  sll        $v0, $a0, 3
/* 14FE7C 800F7B1C 00441023 */  subu       $v0, $v0, $a0
/* 14FE80 800F7B20 00021080 */  sll        $v0, $v0, 2
/* 14FE84 800F7B24 3C018010 */  lui        $at, %hi(D_800FAA80)
/* 14FE88 800F7B28 00220821 */  addu       $at, $at, $v0
/* 14FE8C 800F7B2C 9422AA80 */  lhu        $v0, %lo(D_800FAA80)($at)
/* 14FE90 800F7B30 30420001 */  andi       $v0, $v0, 1
/* 14FE94 800F7B34 14400037 */  bnez       $v0, .L800F7C14
/* 14FE98 800F7B38 27B10010 */   addiu     $s1, $sp, 0x10
/* 14FE9C 800F7B3C 00048040 */  sll        $s0, $a0, 1
/* 14FEA0 800F7B40 02048021 */  addu       $s0, $s0, $a0
/* 14FEA4 800F7B44 00108100 */  sll        $s0, $s0, 4
/* 14FEA8 800F7B48 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FEAC 800F7B4C 00501021 */  addu       $v0, $v0, $s0
/* 14FEB0 800F7B50 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FEB4 800F7B54 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 14FEB8 800F7B58 00220821 */  addu       $at, $at, $v0
/* 14FEBC 800F7B5C 8022CE14 */  lb         $v0, %lo(D_800ECE14)($at)
/* 14FEC0 800F7B60 44826000 */  mtc1       $v0, $f12
/* 14FEC4 800F7B64 00000000 */  nop
/* 14FEC8 800F7B68 46806320 */  cvt.s.w    $f12, $f12
/* 14FECC 800F7B6C E7AC0010 */  swc1       $f12, 0x10($sp)
/* 14FED0 800F7B70 AFA00014 */  sw         $zero, 0x14($sp)
/* 14FED4 800F7B74 3C02800F */  lui        $v0, %hi(D_800F32B3)
/* 14FED8 800F7B78 00501021 */  addu       $v0, $v0, $s0
/* 14FEDC 800F7B7C 904232B3 */  lbu        $v0, %lo(D_800F32B3)($v0)
/* 14FEE0 800F7B80 3C01800F */  lui        $at, %hi(D_800F3843)
/* 14FEE4 800F7B84 00220821 */  addu       $at, $at, $v0
/* 14FEE8 800F7B88 80223843 */  lb         $v0, %lo(D_800F3843)($at)
/* 14FEEC 800F7B8C 44827000 */  mtc1       $v0, $f14
/* 14FEF0 800F7B90 00000000 */  nop
/* 14FEF4 800F7B94 468073A0 */  cvt.s.w    $f14, $f14
/* 14FEF8 800F7B98 0C02C336 */  jal        func_800B0CD8
/* 14FEFC 800F7B9C E7AE0018 */   swc1      $f14, 0x18($sp)
/* 14FF00 800F7BA0 46000506 */  mov.s      $f20, $f0
/* 14FF04 800F7BA4 0C028480 */  jal        func_800A1200
/* 14FF08 800F7BA8 02202021 */   addu      $a0, $s1, $zero
/* 14FF0C 800F7BAC 46000586 */  mov.s      $f22, $f0
/* 14FF10 800F7BB0 3C01800F */  lui        $at, %hi(D_800F33F0)
/* 14FF14 800F7BB4 C42033F0 */  lwc1       $f0, %lo(D_800F33F0)($at)
/* 14FF18 800F7BB8 4600A501 */  sub.s      $f20, $f20, $f0
/* 14FF1C 800F7BBC 0C02BAB0 */  jal        func_800AEAC0
/* 14FF20 800F7BC0 4600A306 */   mov.s     $f12, $f20
/* 14FF24 800F7BC4 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 14FF28 800F7BC8 00701821 */  addu       $v1, $v1, $s0
/* 14FF2C 800F7BCC 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 14FF30 800F7BD0 46160002 */  mul.s      $f0, $f0, $f22
/* 14FF34 800F7BD4 4600008D */  trunc.w.s  $f2, $f0
/* 14FF38 800F7BD8 44021000 */  mfc1       $v0, $f2
/* 14FF3C 800F7BDC 3C01800F */  lui        $at, %hi(D_800ECE14)
/* 14FF40 800F7BE0 00230821 */  addu       $at, $at, $v1
/* 14FF44 800F7BE4 A022CE14 */  sb         $v0, %lo(D_800ECE14)($at)
/* 14FF48 800F7BE8 0C02BBF4 */  jal        func_800AEFD0
/* 14FF4C 800F7BEC 4600A306 */   mov.s     $f12, $f20
/* 14FF50 800F7BF0 3C03800F */  lui        $v1, %hi(D_800F32B3)
/* 14FF54 800F7BF4 00701821 */  addu       $v1, $v1, $s0
/* 14FF58 800F7BF8 906332B3 */  lbu        $v1, %lo(D_800F32B3)($v1)
/* 14FF5C 800F7BFC 46160002 */  mul.s      $f0, $f0, $f22
/* 14FF60 800F7C00 4600008D */  trunc.w.s  $f2, $f0
/* 14FF64 800F7C04 44021000 */  mfc1       $v0, $f2
/* 14FF68 800F7C08 3C01800F */  lui        $at, %hi(D_800F3843)
/* 14FF6C 800F7C0C 00230821 */  addu       $at, $at, $v1
/* 14FF70 800F7C10 A0223843 */  sb         $v0, %lo(D_800F3843)($at)
.L800F7C14:
/* 14FF74 800F7C14 8FBF0028 */  lw         $ra, 0x28($sp)
/* 14FF78 800F7C18 8FB10024 */  lw         $s1, 0x24($sp)
/* 14FF7C 800F7C1C 8FB00020 */  lw         $s0, 0x20($sp)
/* 14FF80 800F7C20 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 14FF84 800F7C24 D7B40030 */  ldc1       $f20, 0x30($sp)
/* 14FF88 800F7C28 03E00008 */  jr         $ra
/* 14FF8C 800F7C2C 27BD0040 */   addiu     $sp, $sp, 0x40
