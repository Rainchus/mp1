	.set noat
	.set noreorder

glabel func_8003EE68
/* 3FA68 8003EE68 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 3FA6C 8003EE6C AFBF0040 */  sw         $ra, 0x40($sp)
/* 3FA70 8003EE70 AFB3003C */  sw         $s3, 0x3c($sp)
/* 3FA74 8003EE74 AFB20038 */  sw         $s2, 0x38($sp)
/* 3FA78 8003EE78 AFB10034 */  sw         $s1, 0x34($sp)
/* 3FA7C 8003EE7C AFB00030 */  sw         $s0, 0x30($sp)
/* 3FA80 8003EE80 00808021 */  addu       $s0, $a0, $zero
/* 3FA84 8003EE84 00A08821 */  addu       $s1, $a1, $zero
/* 3FA88 8003EE88 02009021 */  addu       $s2, $s0, $zero
/* 3FA8C 8003EE8C 3C04800F */  lui        $a0, %hi(D_800F5038)
/* 3FA90 8003EE90 24845038 */  addiu      $a0, $a0, %lo(D_800F5038)
/* 3FA94 8003EE94 3C05800D */  lui        $a1, %hi(D_800CAAF8)
/* 3FA98 8003EE98 24A5AAF8 */  addiu      $a1, $a1, %lo(D_800CAAF8)
/* 3FA9C 8003EE9C 0C023124 */  jal        func_8008C490
/* 3FAA0 8003EEA0 02209821 */   addu      $s3, $s1, $zero
/* 3FAA4 8003EEA4 001080C0 */  sll        $s0, $s0, 3
/* 3FAA8 8003EEA8 001188C0 */  sll        $s1, $s1, 3
/* 3FAAC 8003EEAC 24020009 */  addiu      $v0, $zero, 9
/* 3FAB0 8003EEB0 AFA20010 */  sw         $v0, 0x10($sp)
/* 3FAB4 8003EEB4 3204FFF8 */  andi       $a0, $s0, 0xfff8
/* 3FAB8 8003EEB8 3225FFF8 */  andi       $a1, $s1, 0xfff8
/* 3FABC 8003EEBC 3C06800F */  lui        $a2, %hi(D_800F5038)
/* 3FAC0 8003EEC0 24C65038 */  addiu      $a2, $a2, %lo(D_800F5038)
/* 3FAC4 8003EEC4 0C00FB2C */  jal        func_8003ECB0
/* 3FAC8 8003EEC8 2407000F */   addiu     $a3, $zero, 0xf
/* 3FACC 8003EECC 00008021 */  addu       $s0, $zero, $zero
/* 3FAD0 8003EED0 3C11800F */  lui        $s1, %hi(D_800F5038)
/* 3FAD4 8003EED4 26315038 */  addiu      $s1, $s1, %lo(D_800F5038)
/* 3FAD8 8003EED8 00129400 */  sll        $s2, $s2, 0x10
/* 3FADC 8003EEDC 00129343 */  sra        $s2, $s2, 0xd
/* 3FAE0 8003EEE0 00139C00 */  sll        $s3, $s3, 0x10
/* 3FAE4 8003EEE4 00139C03 */  sra        $s3, $s3, 0x10
.L8003EEE8:
/* 3FAE8 8003EEE8 0C014AA3 */  jal        func_80052A8C
/* 3FAEC 8003EEEC 02002021 */   addu      $a0, $s0, $zero
/* 3FAF0 8003EEF0 26100001 */  addiu      $s0, $s0, 1
/* 3FAF4 8003EEF4 84470024 */  lh         $a3, 0x24($v0)
/* 3FAF8 8003EEF8 84430026 */  lh         $v1, 0x26($v0)
/* 3FAFC 8003EEFC AFA30010 */  sw         $v1, 0x10($sp)
/* 3FB00 8003EF00 80430028 */  lb         $v1, 0x28($v0)
/* 3FB04 8003EF04 AFA30014 */  sw         $v1, 0x14($sp)
/* 3FB08 8003EF08 80430029 */  lb         $v1, 0x29($v0)
/* 3FB0C 8003EF0C AFA30018 */  sw         $v1, 0x18($sp)
/* 3FB10 8003EF10 8043002A */  lb         $v1, 0x2a($v0)
/* 3FB14 8003EF14 AFA3001C */  sw         $v1, 0x1c($sp)
/* 3FB18 8003EF18 8043002B */  lb         $v1, 0x2b($v0)
/* 3FB1C 8003EF1C AFA30020 */  sw         $v1, 0x20($sp)
/* 3FB20 8003EF20 8043002C */  lb         $v1, 0x2c($v0)
/* 3FB24 8003EF24 AFA30024 */  sw         $v1, 0x24($sp)
/* 3FB28 8003EF28 8043002D */  lb         $v1, 0x2d($v0)
/* 3FB2C 8003EF2C AFA30028 */  sw         $v1, 0x28($sp)
/* 3FB30 8003EF30 8042002E */  lb         $v0, 0x2e($v0)
/* 3FB34 8003EF34 AFA2002C */  sw         $v0, 0x2c($sp)
/* 3FB38 8003EF38 02202021 */  addu       $a0, $s1, $zero
/* 3FB3C 8003EF3C 3C05800D */  lui        $a1, %hi(D_800CAB1C)
/* 3FB40 8003EF40 24A5AB1C */  addiu      $a1, $a1, %lo(D_800CAB1C)
/* 3FB44 8003EF44 0C023124 */  jal        func_8008C490
/* 3FB48 8003EF48 02003021 */   addu      $a2, $s0, $zero
/* 3FB4C 8003EF4C 02702821 */  addu       $a1, $s3, $s0
/* 3FB50 8003EF50 000528C0 */  sll        $a1, $a1, 3
/* 3FB54 8003EF54 24020009 */  addiu      $v0, $zero, 9
/* 3FB58 8003EF58 AFA20010 */  sw         $v0, 0x10($sp)
/* 3FB5C 8003EF5C 3244FFFF */  andi       $a0, $s2, 0xffff
/* 3FB60 8003EF60 30A5FFFF */  andi       $a1, $a1, 0xffff
/* 3FB64 8003EF64 02203021 */  addu       $a2, $s1, $zero
/* 3FB68 8003EF68 0C00FB2C */  jal        func_8003ECB0
/* 3FB6C 8003EF6C 2407000F */   addiu     $a3, $zero, 0xf
/* 3FB70 8003EF70 2A020004 */  slti       $v0, $s0, 4
/* 3FB74 8003EF74 1440FFDC */  bnez       $v0, .L8003EEE8
/* 3FB78 8003EF78 00000000 */   nop
/* 3FB7C 8003EF7C 8FBF0040 */  lw         $ra, 0x40($sp)
/* 3FB80 8003EF80 8FB3003C */  lw         $s3, 0x3c($sp)
/* 3FB84 8003EF84 8FB20038 */  lw         $s2, 0x38($sp)
/* 3FB88 8003EF88 8FB10034 */  lw         $s1, 0x34($sp)
/* 3FB8C 8003EF8C 8FB00030 */  lw         $s0, 0x30($sp)
/* 3FB90 8003EF90 03E00008 */  jr         $ra
/* 3FB94 8003EF94 27BD0048 */   addiu     $sp, $sp, 0x48
