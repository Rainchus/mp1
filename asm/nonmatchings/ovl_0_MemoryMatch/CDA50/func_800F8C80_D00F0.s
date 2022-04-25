	.set noat
	.set noreorder

glabel func_800F8C80_D00F0
/* D00F0 800F8C80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D00F4 800F8C84 AFBF0018 */  sw         $ra, 0x18($sp)
/* D00F8 800F8C88 AFB10014 */  sw         $s1, 0x14($sp)
/* D00FC 800F8C8C AFB00010 */  sw         $s0, 0x10($sp)
/* D0100 800F8C90 F7B40020 */  sdc1       $f20, 0x20($sp)
/* D0104 800F8C94 00808821 */  addu       $s1, $a0, $zero
/* D0108 800F8C98 3C108010 */  lui        $s0, %hi(D_800FDE50)
/* D010C 800F8C9C 2610DE50 */  addiu      $s0, $s0, %lo(D_800FDE50)
/* D0110 800F8CA0 00001821 */  addu       $v1, $zero, $zero
.L800F8CA4:
/* D0114 800F8CA4 86020000 */  lh         $v0, ($s0)
/* D0118 800F8CA8 1040002C */  beqz       $v0, .L800F8D5C
/* D011C 800F8CAC 24630001 */   addiu     $v1, $v1, 1
/* D0120 800F8CB0 C6220018 */  lwc1       $f2, 0x18($s1)
/* D0124 800F8CB4 C600000C */  lwc1       $f0, 0xc($s0)
/* D0128 800F8CB8 46001301 */  sub.s      $f12, $f2, $f0
/* D012C 800F8CBC C622001C */  lwc1       $f2, 0x1c($s1)
/* D0130 800F8CC0 C6000010 */  lwc1       $f0, 0x10($s0)
/* D0134 800F8CC4 46001101 */  sub.s      $f4, $f2, $f0
/* D0138 800F8CC8 C6220020 */  lwc1       $f2, 0x20($s1)
/* D013C 800F8CCC C6000014 */  lwc1       $f0, 0x14($s0)
/* D0140 800F8CD0 46001381 */  sub.s      $f14, $f2, $f0
/* D0144 800F8CD4 460C6082 */  mul.s      $f2, $f12, $f12
/* D0148 800F8CD8 00000000 */  nop
/* D014C 800F8CDC 460E7002 */  mul.s      $f0, $f14, $f14
/* D0150 800F8CE0 46001080 */  add.s      $f2, $f2, $f0
/* D0154 800F8CE4 C6000004 */  lwc1       $f0, 4($s0)
/* D0158 800F8CE8 46000002 */  mul.s      $f0, $f0, $f0
/* D015C 800F8CEC 4600103C */  c.lt.s     $f2, $f0
/* D0160 800F8CF0 00000000 */  nop
/* D0164 800F8CF4 45000019 */  bc1f       .L800F8D5C
/* D0168 800F8CF8 00000000 */   nop
/* D016C 800F8CFC C6000008 */  lwc1       $f0, 8($s0)
/* D0170 800F8D00 4600203C */  c.lt.s     $f4, $f0
/* D0174 800F8D04 00000000 */  nop
/* D0178 800F8D08 00000000 */  nop
/* D017C 800F8D0C 45000014 */  bc1f       .L800F8D60
/* D0180 800F8D10 3062FFFF */   andi      $v0, $v1, 0xffff
/* D0184 800F8D14 0C03DEE4 */  jal        func_800F7B90_CF000
/* D0188 800F8D18 00000000 */   nop
/* D018C 800F8D1C 46000506 */  mov.s      $f20, $f0
/* D0190 800F8D20 0C02BAB0 */  jal        func_800AEAC0
/* D0194 800F8D24 4600A306 */   mov.s     $f12, $f20
/* D0198 800F8D28 C6020004 */  lwc1       $f2, 4($s0)
/* D019C 800F8D2C 46020002 */  mul.s      $f0, $f0, $f2
/* D01A0 800F8D30 C602000C */  lwc1       $f2, 0xc($s0)
/* D01A4 800F8D34 46020000 */  add.s      $f0, $f0, $f2
/* D01A8 800F8D38 E6200018 */  swc1       $f0, 0x18($s1)
/* D01AC 800F8D3C 0C02BBF4 */  jal        func_800AEFD0
/* D01B0 800F8D40 4600A306 */   mov.s     $f12, $f20
/* D01B4 800F8D44 C6020004 */  lwc1       $f2, 4($s0)
/* D01B8 800F8D48 46020002 */  mul.s      $f0, $f0, $f2
/* D01BC 800F8D4C C6020014 */  lwc1       $f2, 0x14($s0)
/* D01C0 800F8D50 46020000 */  add.s      $f0, $f0, $f2
/* D01C4 800F8D54 0803E35B */  j          .L800F8D6C
/* D01C8 800F8D58 E6200020 */   swc1      $f0, 0x20($s1)
.L800F8D5C:
/* D01CC 800F8D5C 3062FFFF */  andi       $v0, $v1, 0xffff
.L800F8D60:
/* D01D0 800F8D60 2C420008 */  sltiu      $v0, $v0, 8
/* D01D4 800F8D64 1440FFCF */  bnez       $v0, .L800F8CA4
/* D01D8 800F8D68 26100018 */   addiu     $s0, $s0, 0x18
.L800F8D6C:
/* D01DC 800F8D6C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D01E0 800F8D70 8FB10014 */  lw         $s1, 0x14($sp)
/* D01E4 800F8D74 8FB00010 */  lw         $s0, 0x10($sp)
/* D01E8 800F8D78 D7B40020 */  ldc1       $f20, 0x20($sp)
/* D01EC 800F8D7C 03E00008 */  jr         $ra
/* D01F0 800F8D80 27BD0028 */   addiu     $sp, $sp, 0x28
