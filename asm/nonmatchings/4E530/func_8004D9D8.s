	.set noat
	.set noreorder

glabel func_8004D9D8
/* 4E5D8 8004D9D8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4E5DC 8004D9DC AFBF001C */  sw         $ra, 0x1c($sp)
/* 4E5E0 8004D9E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 4E5E4 8004D9E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 4E5E8 8004D9E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 4E5EC 8004D9EC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 4E5F0 8004D9F0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 4E5F4 8004D9F4 00809021 */  addu       $s2, $a0, $zero
/* 4E5F8 8004D9F8 0C0180AB */  jal        func_800602AC
/* 4E5FC 8004D9FC 24040036 */   addiu     $a0, $zero, 0x36
/* 4E600 8004DA00 00128400 */  sll        $s0, $s2, 0x10
/* 4E604 8004DA04 00108403 */  sra        $s0, $s0, 0x10
/* 4E608 8004DA08 02002021 */  addu       $a0, $s0, $zero
/* 4E60C 8004DA0C 0C01C5D0 */  jal        func_80071740
/* 4E610 8004DA10 24050001 */   addiu     $a1, $zero, 1
/* 4E614 8004DA14 02002021 */  addu       $a0, $s0, $zero
/* 4E618 8004DA18 00002821 */  addu       $a1, $zero, $zero
/* 4E61C 8004DA1C 0C01B7B2 */  jal        func_8006DEC8
/* 4E620 8004DA20 00003021 */   addu      $a2, $zero, $zero
/* 4E624 8004DA24 3C054334 */  lui        $a1, 0x4334
/* 4E628 8004DA28 0C01B807 */  jal        func_8006E01C
/* 4E62C 8004DA2C 02002021 */   addu      $a0, $s0, $zero
/* 4E630 8004DA30 02002021 */  addu       $a0, $s0, $zero
/* 4E634 8004DA34 00002821 */  addu       $a1, $zero, $zero
/* 4E638 8004DA38 0C01B788 */  jal        func_8006DE20
/* 4E63C 8004DA3C 00A03021 */   addu      $a2, $a1, $zero
/* 4E640 8004DA40 00008021 */  addu       $s0, $zero, $zero
/* 4E644 8004DA44 00121400 */  sll        $v0, $s2, 0x10
/* 4E648 8004DA48 00028C03 */  sra        $s1, $v0, 0x10
/* 4E64C 8004DA4C 3C014334 */  lui        $at, 0x4334
/* 4E650 8004DA50 4481B000 */  mtc1       $at, $f22
.L8004DA54:
/* 4E654 8004DA54 0C018D6D */  jal        func_800635B4
/* 4E658 8004DA58 00000000 */   nop
/* 4E65C 8004DA5C 4490A000 */  mtc1       $s0, $f20
/* 4E660 8004DA60 00000000 */  nop
/* 4E664 8004DA64 4680A520 */  cvt.s.w    $f20, $f20
/* 4E668 8004DA68 4614B001 */  sub.s      $f0, $f22, $f20
/* 4E66C 8004DA6C 44050000 */  mfc1       $a1, $f0
/* 4E670 8004DA70 00000000 */  nop
/* 4E674 8004DA74 0C01B807 */  jal        func_8006E01C
/* 4E678 8004DA78 02202021 */   addu      $a0, $s1, $zero
/* 4E67C 8004DA7C 4616A503 */  div.s      $f20, $f20, $f22
/* 4E680 8004DA80 4405A000 */  mfc1       $a1, $f20
/* 4E684 8004DA84 4406A000 */  mfc1       $a2, $f20
/* 4E688 8004DA88 00000000 */  nop
/* 4E68C 8004DA8C 0C01B788 */  jal        func_8006DE20
/* 4E690 8004DA90 02202021 */   addu      $a0, $s1, $zero
/* 4E694 8004DA94 26100014 */  addiu      $s0, $s0, 0x14
/* 4E698 8004DA98 2A0200B5 */  slti       $v0, $s0, 0xb5
/* 4E69C 8004DA9C 1440FFED */  bnez       $v0, .L8004DA54
/* 4E6A0 8004DAA0 00122400 */   sll       $a0, $s2, 0x10
/* 4E6A4 8004DAA4 00042403 */  sra        $a0, $a0, 0x10
/* 4E6A8 8004DAA8 0C01C5D0 */  jal        func_80071740
/* 4E6AC 8004DAAC 00002821 */   addu      $a1, $zero, $zero
/* 4E6B0 8004DAB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4E6B4 8004DAB4 8FB20018 */  lw         $s2, 0x18($sp)
/* 4E6B8 8004DAB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 4E6BC 8004DABC 8FB00010 */  lw         $s0, 0x10($sp)
/* 4E6C0 8004DAC0 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 4E6C4 8004DAC4 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 4E6C8 8004DAC8 03E00008 */  jr         $ra
/* 4E6CC 8004DACC 27BD0030 */   addiu     $sp, $sp, 0x30
