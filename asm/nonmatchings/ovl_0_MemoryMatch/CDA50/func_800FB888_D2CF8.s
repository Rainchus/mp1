	.set noat
	.set noreorder

glabel func_800FB888_D2CF8
/* D2CF8 800FB888 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D2CFC 800FB88C AFBF0020 */  sw         $ra, 0x20($sp)
/* D2D00 800FB890 AFB1001C */  sw         $s1, 0x1c($sp)
/* D2D04 800FB894 AFB00018 */  sw         $s0, 0x18($sp)
/* D2D08 800FB898 00808821 */  addu       $s1, $a0, $zero
/* D2D0C 800FB89C 3C040012 */  lui        $a0, 0x12
/* D2D10 800FB8A0 34840007 */  ori        $a0, $a0, 7
/* D2D14 800FB8A4 0C005D30 */  jal        func_800174C0
/* D2D18 800FB8A8 240500D9 */   addiu     $a1, $zero, 0xd9
/* D2D1C 800FB8AC 8E230040 */  lw         $v1, 0x40($s1)
/* D2D20 800FB8B0 A4620000 */  sh         $v0, ($v1)
/* D2D24 800FB8B4 8E220040 */  lw         $v0, 0x40($s1)
/* D2D28 800FB8B8 0C009810 */  jal        func_80026040
/* D2D2C 800FB8BC 84440000 */   lh        $a0, ($v0)
/* D2D30 800FB8C0 2404002C */  addiu      $a0, $zero, 0x2c
/* D2D34 800FB8C4 0C008DA1 */  jal        func_80023684
/* D2D38 800FB8C8 24057918 */   addiu     $a1, $zero, 0x7918
/* D2D3C 800FB8CC 00408021 */  addu       $s0, $v0, $zero
/* D2D40 800FB8D0 AE300050 */  sw         $s0, 0x50($s1)
/* D2D44 800FB8D4 02002021 */  addu       $a0, $s0, $zero
/* D2D48 800FB8D8 00002821 */  addu       $a1, $zero, $zero
/* D2D4C 800FB8DC 0C026DDC */  jal        func_8009B770
/* D2D50 800FB8E0 2406002C */   addiu     $a2, $zero, 0x2c
/* D2D54 800FB8E4 3C028010 */  lui        $v0, %hi(D_800FE1DB)
/* D2D58 800FB8E8 9042E1DB */  lbu        $v0, %lo(D_800FE1DB)($v0)
/* D2D5C 800FB8EC A2020005 */  sb         $v0, 5($s0)
/* D2D60 800FB8F0 3C028010 */  lui        $v0, %hi(func_800FB9FC_D2E6C)
/* D2D64 800FB8F4 2442B9FC */  addiu      $v0, $v0, %lo(func_800FB9FC_D2E6C)
/* D2D68 800FB8F8 AE220014 */  sw         $v0, 0x14($s1)
/* D2D6C 800FB8FC 3C014416 */  lui        $at, 0x4416
/* D2D70 800FB900 44810000 */  mtc1       $at, $f0
/* D2D74 800FB904 00000000 */  nop
/* D2D78 800FB908 0C005D63 */  jal        func_8001758C
/* D2D7C 800FB90C E620001C */   swc1      $f0, 0x1c($s1)
/* D2D80 800FB910 304200FF */  andi       $v0, $v0, 0xff
/* D2D84 800FB914 00021940 */  sll        $v1, $v0, 5
/* D2D88 800FB918 00621823 */  subu       $v1, $v1, $v0
/* D2D8C 800FB91C 00031880 */  sll        $v1, $v1, 2
/* D2D90 800FB920 00621821 */  addu       $v1, $v1, $v0
/* D2D94 800FB924 00031903 */  sra        $v1, $v1, 4
/* D2D98 800FB928 2463FC18 */  addiu      $v1, $v1, -0x3e8
/* D2D9C 800FB92C 44830000 */  mtc1       $v1, $f0
/* D2DA0 800FB930 00000000 */  nop
/* D2DA4 800FB934 46800020 */  cvt.s.w    $f0, $f0
/* D2DA8 800FB938 0C005D63 */  jal        func_8001758C
/* D2DAC 800FB93C E6200018 */   swc1      $f0, 0x18($s1)
/* D2DB0 800FB940 304200FF */  andi       $v0, $v0, 0xff
/* D2DB4 800FB944 00021940 */  sll        $v1, $v0, 5
/* D2DB8 800FB948 00621823 */  subu       $v1, $v1, $v0
/* D2DBC 800FB94C 00031880 */  sll        $v1, $v1, 2
/* D2DC0 800FB950 00621821 */  addu       $v1, $v1, $v0
/* D2DC4 800FB954 00031983 */  sra        $v1, $v1, 6
/* D2DC8 800FB958 2463FF06 */  addiu      $v1, $v1, -0xfa
/* D2DCC 800FB95C 44830000 */  mtc1       $v1, $f0
/* D2DD0 800FB960 00000000 */  nop
/* D2DD4 800FB964 46800020 */  cvt.s.w    $f0, $f0
/* D2DD8 800FB968 E6200020 */  swc1       $f0, 0x20($s1)
/* D2DDC 800FB96C 8E220040 */  lw         $v0, 0x40($s1)
/* D2DE0 800FB970 84440000 */  lh         $a0, ($v0)
/* D2DE4 800FB974 8E250018 */  lw         $a1, 0x18($s1)
/* D2DE8 800FB978 8E26001C */  lw         $a2, 0x1c($s1)
/* D2DEC 800FB97C 44070000 */  mfc1       $a3, $f0
/* D2DF0 800FB980 0C0095E6 */  jal        func_80025798
/* D2DF4 800FB984 00000000 */   nop
/* D2DF8 800FB988 0C03EDDE */  jal        func_800FB778_D2BE8
/* D2DFC 800FB98C 02202021 */   addu      $a0, $s1, $zero
/* D2E00 800FB990 3C058010 */  lui        $a1, %hi(D_800FE1DA)
/* D2E04 800FB994 84A5E1DA */  lh         $a1, %lo(D_800FE1DA)($a1)
/* D2E08 800FB998 00052880 */  sll        $a1, $a1, 2
/* D2E0C 800FB99C 3C028010 */  lui        $v0, %hi(D_800FE1E8)
/* D2E10 800FB9A0 2442E1E8 */  addiu      $v0, $v0, %lo(D_800FE1E8)
/* D2E14 800FB9A4 3C048010 */  lui        $a0, %hi(D_800FDC48)
/* D2E18 800FB9A8 2484DC48 */  addiu      $a0, $a0, %lo(D_800FDC48)
/* D2E1C 800FB9AC 0C00E712 */  jal        func_80039C48
/* D2E20 800FB9B0 00A22821 */   addu      $a1, $a1, $v0
/* D2E24 800FB9B4 3C028010 */  lui        $v0, %hi(D_800FE1DA)
/* D2E28 800FB9B8 8442E1DA */  lh         $v0, %lo(D_800FE1DA)($v0)
/* D2E2C 800FB9BC 00021880 */  sll        $v1, $v0, 2
/* D2E30 800FB9C0 44800000 */  mtc1       $zero, $f0
/* D2E34 800FB9C4 3C018010 */  lui        $at, %hi(D_800FE218)
/* D2E38 800FB9C8 00230821 */  addu       $at, $at, $v1
/* D2E3C 800FB9CC E420E218 */  swc1       $f0, %lo(D_800FE218)($at)
/* D2E40 800FB9D0 3C018010 */  lui        $at, %hi(D_800FE200)
/* D2E44 800FB9D4 00230821 */  addu       $at, $at, $v1
/* D2E48 800FB9D8 E420E200 */  swc1       $f0, %lo(D_800FE200)($at)
/* D2E4C 800FB9DC 24420001 */  addiu      $v0, $v0, 1
/* D2E50 800FB9E0 3C018010 */  lui        $at, %hi(D_800FE1DA)
/* D2E54 800FB9E4 A422E1DA */  sh         $v0, %lo(D_800FE1DA)($at)
/* D2E58 800FB9E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* D2E5C 800FB9EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* D2E60 800FB9F0 8FB00018 */  lw         $s0, 0x18($sp)
/* D2E64 800FB9F4 03E00008 */  jr         $ra
/* D2E68 800FB9F8 27BD0028 */   addiu     $sp, $sp, 0x28
