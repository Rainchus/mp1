	.set noat
	.set noreorder

glabel func_8004D02C
/* 4DC2C 8004D02C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4DC30 8004D030 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4DC34 8004D034 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4DC38 8004D038 4485A000 */  mtc1       $a1, $f20
/* 4DC3C 8004D03C 00042400 */  sll        $a0, $a0, 0x10
/* 4DC40 8004D040 00042403 */  sra        $a0, $a0, 0x10
/* 4DC44 8004D044 3C02800F */  lui        $v0, %hi(D_800ECE14)
/* 4DC48 8004D048 00441021 */  addu       $v0, $v0, $a0
/* 4DC4C 8004D04C 8042CE14 */  lb         $v0, %lo(D_800ECE14)($v0)
/* 4DC50 8004D050 44820000 */  mtc1       $v0, $f0
/* 4DC54 8004D054 00000000 */  nop
/* 4DC58 8004D058 46800020 */  cvt.s.w    $f0, $f0
/* 4DC5C 8004D05C E7A00010 */  swc1       $f0, 0x10($sp)
/* 4DC60 8004D060 AFA00014 */  sw         $zero, 0x14($sp)
/* 4DC64 8004D064 3C02800F */  lui        $v0, %hi(D_800F3843)
/* 4DC68 8004D068 00441021 */  addu       $v0, $v0, $a0
/* 4DC6C 8004D06C 80423843 */  lb         $v0, %lo(D_800F3843)($v0)
/* 4DC70 8004D070 44820000 */  mtc1       $v0, $f0
/* 4DC74 8004D074 00000000 */  nop
/* 4DC78 8004D078 46800020 */  cvt.s.w    $f0, $f0
/* 4DC7C 8004D07C E7A00018 */  swc1       $f0, 0x18($sp)
/* 4DC80 8004D080 0C028480 */  jal        func_800A1200
/* 4DC84 8004D084 27A40010 */   addiu     $a0, $sp, 0x10
/* 4DC88 8004D088 4600A03E */  c.le.s     $f20, $f0
/* 4DC8C 8004D08C 00000000 */  nop
/* 4DC90 8004D090 00000000 */  nop
/* 4DC94 8004D094 45010002 */  bc1t       .L8004D0A0
/* 4DC98 8004D098 24020001 */   addiu     $v0, $zero, 1
/* 4DC9C 8004D09C 00001021 */  addu       $v0, $zero, $zero
.L8004D0A0:
/* 4DCA0 8004D0A0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4DCA4 8004D0A4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4DCA8 8004D0A8 03E00008 */  jr         $ra
/* 4DCAC 8004D0AC 27BD0030 */   addiu     $sp, $sp, 0x30
