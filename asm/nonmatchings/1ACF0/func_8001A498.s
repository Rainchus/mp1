	.set noat
	.set noreorder

glabel func_8001A498
/* 1B098 8001A498 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B09C 8001A49C AFBF0020 */  sw         $ra, 0x20($sp)
/* 1B0A0 8001A4A0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 1B0A4 8001A4A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1B0A8 8001A4A8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1B0AC 8001A4AC AFB00010 */  sw         $s0, 0x10($sp)
/* 1B0B0 8001A4B0 00008821 */  addu       $s1, $zero, $zero
/* 1B0B4 8001A4B4 24130001 */  addiu      $s3, $zero, 1
/* 1B0B8 8001A4B8 2412000A */  addiu      $s2, $zero, 0xa
.L8001A4BC:
/* 1B0BC 8001A4BC 3C02800F */  lui        $v0, %hi(D_800F3778)
/* 1B0C0 8001A4C0 84423778 */  lh         $v0, %lo(D_800F3778)($v0)
/* 1B0C4 8001A4C4 0222102A */  slt        $v0, $s1, $v0
/* 1B0C8 8001A4C8 1040000B */  beqz       $v0, .L8001A4F8
/* 1B0CC 8001A4CC 00111840 */   sll       $v1, $s1, 1
/* 1B0D0 8001A4D0 3C01800F */  lui        $at, %hi(D_800ED558)
/* 1B0D4 8001A4D4 00310821 */  addu       $at, $at, $s1
/* 1B0D8 8001A4D8 A020D558 */  sb         $zero, %lo(D_800ED558)($at)
/* 1B0DC 8001A4DC 00711821 */  addu       $v1, $v1, $s1
/* 1B0E0 8001A4E0 00031900 */  sll        $v1, $v1, 4
/* 1B0E4 8001A4E4 3C02800F */  lui        $v0, %hi(D_800F32B6)
/* 1B0E8 8001A4E8 00431021 */  addu       $v0, $v0, $v1
/* 1B0EC 8001A4EC 944232B6 */  lhu        $v0, %lo(D_800F32B6)($v0)
/* 1B0F0 8001A4F0 08006947 */  j          .L8001A51C
/* 1B0F4 8001A4F4 3042FFFE */   andi      $v0, $v0, 0xfffe
.L8001A4F8:
/* 1B0F8 8001A4F8 3C01800F */  lui        $at, %hi(D_800ED558)
/* 1B0FC 8001A4FC 00310821 */  addu       $at, $at, $s1
/* 1B100 8001A500 A033D558 */  sb         $s3, %lo(D_800ED558)($at)
/* 1B104 8001A504 00711821 */  addu       $v1, $v1, $s1
/* 1B108 8001A508 00031900 */  sll        $v1, $v1, 4
/* 1B10C 8001A50C 3C02800F */  lui        $v0, %hi(D_800F32B6)
/* 1B110 8001A510 00431021 */  addu       $v0, $v0, $v1
/* 1B114 8001A514 944232B6 */  lhu        $v0, %lo(D_800F32B6)($v0)
/* 1B118 8001A518 34420001 */  ori        $v0, $v0, 1
.L8001A51C:
/* 1B11C 8001A51C 3C01800F */  lui        $at, %hi(D_800F32B6)
/* 1B120 8001A520 00230821 */  addu       $at, $at, $v1
/* 1B124 8001A524 A42232B6 */  sh         $v0, %lo(D_800F32B6)($at)
/* 1B128 8001A528 00118040 */  sll        $s0, $s1, 1
/* 1B12C 8001A52C 02118021 */  addu       $s0, $s0, $s1
/* 1B130 8001A530 00108100 */  sll        $s0, $s0, 4
/* 1B134 8001A534 3C01800F */  lui        $at, %hi(D_800F32B3)
/* 1B138 8001A538 00300821 */  addu       $at, $at, $s0
/* 1B13C 8001A53C A03132B3 */  sb         $s1, %lo(D_800F32B3)($at)
/* 1B140 8001A540 3C01800F */  lui        $at, %hi(D_800F32B8)
/* 1B144 8001A544 00300821 */  addu       $at, $at, $s0
/* 1B148 8001A548 A43232B8 */  sh         $s2, %lo(D_800F32B8)($at)
/* 1B14C 8001A54C 3C01800F */  lui        $at, %hi(D_800F32BA)
/* 1B150 8001A550 00300821 */  addu       $at, $at, $s0
/* 1B154 8001A554 A42032BA */  sh         $zero, %lo(D_800F32BA)($at)
/* 1B158 8001A558 3C01800F */  lui        $at, %hi(D_800F32B0)
/* 1B15C 8001A55C 00300821 */  addu       $at, $at, $s0
/* 1B160 8001A560 A03132B0 */  sb         $s1, %lo(D_800F32B0)($at)
/* 1B164 8001A564 02202021 */  addu       $a0, $s1, $zero
/* 1B168 8001A568 0C014B33 */  jal        func_80052CCC
/* 1B16C 8001A56C 24050001 */   addiu     $a1, $zero, 1
/* 1B170 8001A570 3C01800F */  lui        $at, %hi(D_800F32BC)
/* 1B174 8001A574 00300821 */  addu       $at, $at, $s0
/* 1B178 8001A578 A42032BC */  sh         $zero, %lo(D_800F32BC)($at)
/* 1B17C 8001A57C 26310001 */  addiu      $s1, $s1, 1
/* 1B180 8001A580 2A220004 */  slti       $v0, $s1, 4
/* 1B184 8001A584 1440FFCD */  bnez       $v0, .L8001A4BC
/* 1B188 8001A588 00002021 */   addu      $a0, $zero, $zero
/* 1B18C 8001A58C 0C016539 */  jal        func_800594E4
/* 1B190 8001A590 24054650 */   addiu     $a1, $zero, 0x4650
/* 1B194 8001A594 24040001 */  addiu      $a0, $zero, 1
/* 1B198 8001A598 0C016539 */  jal        func_800594E4
/* 1B19C 8001A59C 24050E10 */   addiu     $a1, $zero, 0xe10
/* 1B1A0 8001A5A0 24040002 */  addiu      $a0, $zero, 2
/* 1B1A4 8001A5A4 0C016539 */  jal        func_800594E4
/* 1B1A8 8001A5A8 24050E10 */   addiu     $a1, $zero, 0xe10
/* 1B1AC 8001A5AC 24040003 */  addiu      $a0, $zero, 3
/* 1B1B0 8001A5B0 0C016539 */  jal        func_800594E4
/* 1B1B4 8001A5B4 24054650 */   addiu     $a1, $zero, 0x4650
/* 1B1B8 8001A5B8 24040005 */  addiu      $a0, $zero, 5
/* 1B1BC 8001A5BC 0C016539 */  jal        func_800594E4
/* 1B1C0 8001A5C0 24050E10 */   addiu     $a1, $zero, 0xe10
/* 1B1C4 8001A5C4 24040006 */  addiu      $a0, $zero, 6
/* 1B1C8 8001A5C8 0C016539 */  jal        func_800594E4
/* 1B1CC 8001A5CC 24050E10 */   addiu     $a1, $zero, 0xe10
/* 1B1D0 8001A5D0 24040007 */  addiu      $a0, $zero, 7
/* 1B1D4 8001A5D4 0C016539 */  jal        func_800594E4
/* 1B1D8 8001A5D8 24050E10 */   addiu     $a1, $zero, 0xe10
/* 1B1DC 8001A5DC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1B1E0 8001A5E0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1B1E4 8001A5E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1B1E8 8001A5E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1B1EC 8001A5EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1B1F0 8001A5F0 03E00008 */  jr         $ra
/* 1B1F4 8001A5F4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1B1F8 8001A5F8 00000000 */  nop
/* 1B1FC 8001A5FC 00000000 */  nop
