	.set noat
	.set noreorder

glabel func_8005B984
/* 5C584 8005B984 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 5C588 8005B988 AFBF0028 */  sw         $ra, 0x28($sp)
/* 5C58C 8005B98C AFB30024 */  sw         $s3, 0x24($sp)
/* 5C590 8005B990 AFB20020 */  sw         $s2, 0x20($sp)
/* 5C594 8005B994 AFB1001C */  sw         $s1, 0x1c($sp)
/* 5C598 8005B998 AFB00018 */  sw         $s0, 0x18($sp)
/* 5C59C 8005B99C 00809021 */  addu       $s2, $a0, $zero
/* 5C5A0 8005B9A0 3C13800F */  lui        $s3, %hi(D_800F32B3)
/* 5C5A4 8005B9A4 927332B3 */  lbu        $s3, %lo(D_800F32B3)($s3)
/* 5C5A8 8005B9A8 0C0180AB */  jal        func_800602AC
/* 5C5AC 8005B9AC 24040036 */   addiu     $a0, $zero, 0x36
/* 5C5B0 8005B9B0 AFA00010 */  sw         $zero, 0x10($sp)
/* 5C5B4 8005B9B4 AFA00014 */  sw         $zero, 0x14($sp)
/* 5C5B8 8005B9B8 2404005F */  addiu      $a0, $zero, 0x5f
/* 5C5BC 8005B9BC 24050032 */  addiu      $a1, $zero, 0x32
/* 5C5C0 8005B9C0 24060081 */  addiu      $a2, $zero, 0x81
/* 5C5C4 8005B9C4 0C01B404 */  jal        func_8006D010
/* 5C5C8 8005B9C8 24070022 */   addiu     $a3, $zero, 0x22
/* 5C5CC 8005B9CC 00408021 */  addu       $s0, $v0, $zero
/* 5C5D0 8005B9D0 00101400 */  sll        $v0, $s0, 0x10
/* 5C5D4 8005B9D4 00028C03 */  sra        $s1, $v0, 0x10
/* 5C5D8 8005B9D8 02202021 */  addu       $a0, $s1, $zero
/* 5C5DC 8005B9DC 0C01B829 */  jal        func_8006E0A4
/* 5C5E0 8005B9E0 24050005 */   addiu     $a1, $zero, 5
/* 5C5E4 8005B9E4 02202021 */  addu       $a0, $s1, $zero
/* 5C5E8 8005B9E8 0C01B855 */  jal        func_8006E154
/* 5C5EC 8005B9EC 240500DC */   addiu     $a1, $zero, 0xdc
/* 5C5F0 8005B9F0 56400004 */  bnel       $s2, $zero, .L8005BA04
/* 5C5F4 8005B9F4 00102400 */   sll       $a0, $s0, 0x10
/* 5C5F8 8005B9F8 02202021 */  addu       $a0, $s1, $zero
/* 5C5FC 8005B9FC 08016E83 */  j          .L8005BA0C
/* 5C600 8005BA00 240504A8 */   addiu     $a1, $zero, 0x4a8
.L8005BA04:
/* 5C604 8005BA04 00042403 */  sra        $a0, $a0, 0x10
/* 5C608 8005BA08 02402821 */  addu       $a1, $s2, $zero
.L8005BA0C:
/* 5C60C 8005BA0C 2406FFFF */  addiu      $a2, $zero, -1
/* 5C610 8005BA10 0C01B5F6 */  jal        func_8006D7D8
/* 5C614 8005BA14 2407FFFF */   addiu     $a3, $zero, -1
/* 5C618 8005BA18 00102400 */  sll        $a0, $s0, 0x10
/* 5C61C 8005BA1C 00042403 */  sra        $a0, $a0, 0x10
/* 5C620 8005BA20 0C01B81C */  jal        func_8006E070
/* 5C624 8005BA24 00002821 */   addu      $a1, $zero, $zero
/* 5C628 8005BA28 00108C00 */  sll        $s1, $s0, 0x10
.L8005BA2C:
/* 5C62C 8005BA2C 0C01BF30 */  jal        func_8006FCC0
/* 5C630 8005BA30 00112403 */   sra       $a0, $s1, 0x10
/* 5C634 8005BA34 00021400 */  sll        $v0, $v0, 0x10
/* 5C638 8005BA38 50400005 */  beql       $v0, $zero, .L8005BA50
/* 5C63C 8005BA3C 00108400 */   sll       $s0, $s0, 0x10
/* 5C640 8005BA40 0C018D6D */  jal        func_800635B4
/* 5C644 8005BA44 00000000 */   nop
/* 5C648 8005BA48 08016E8B */  j          .L8005BA2C
/* 5C64C 8005BA4C 00000000 */   nop
.L8005BA50:
/* 5C650 8005BA50 00108403 */  sra        $s0, $s0, 0x10
/* 5C654 8005BA54 3C050001 */  lui        $a1, 1
/* 5C658 8005BA58 02652804 */  sllv       $a1, $a1, $s3
/* 5C65C 8005BA5C 02002021 */  addu       $a0, $s0, $zero
/* 5C660 8005BA60 0C01C557 */  jal        func_8007155C
/* 5C664 8005BA64 00052C03 */   sra       $a1, $a1, 0x10
/* 5C668 8005BA68 02002021 */  addu       $a0, $s0, $zero
/* 5C66C 8005BA6C 00002821 */  addu       $a1, $zero, $zero
/* 5C670 8005BA70 0C01BF3C */  jal        func_8006FCF0
/* 5C674 8005BA74 00003021 */   addu      $a2, $zero, $zero
/* 5C678 8005BA78 00408821 */  addu       $s1, $v0, $zero
/* 5C67C 8005BA7C 0C01C364 */  jal        func_80070D90
/* 5C680 8005BA80 02002021 */   addu      $a0, $s0, $zero
/* 5C684 8005BA84 0C0180AB */  jal        func_800602AC
/* 5C688 8005BA88 24040037 */   addiu     $a0, $zero, 0x37
/* 5C68C 8005BA8C 00118C00 */  sll        $s1, $s1, 0x10
/* 5C690 8005BA90 00111403 */  sra        $v0, $s1, 0x10
/* 5C694 8005BA94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 5C698 8005BA98 8FB30024 */  lw         $s3, 0x24($sp)
/* 5C69C 8005BA9C 8FB20020 */  lw         $s2, 0x20($sp)
/* 5C6A0 8005BAA0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 5C6A4 8005BAA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 5C6A8 8005BAA8 03E00008 */  jr         $ra
/* 5C6AC 8005BAAC 27BD0030 */   addiu     $sp, $sp, 0x30
