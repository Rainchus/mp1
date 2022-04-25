	.set noat
	.set noreorder

glabel func_800F953C_D09AC
/* D09AC 800F953C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* D09B0 800F9540 AFBF0024 */  sw         $ra, 0x24($sp)
/* D09B4 800F9544 AFB40020 */  sw         $s4, 0x20($sp)
/* D09B8 800F9548 AFB3001C */  sw         $s3, 0x1c($sp)
/* D09BC 800F954C AFB20018 */  sw         $s2, 0x18($sp)
/* D09C0 800F9550 AFB10014 */  sw         $s1, 0x14($sp)
/* D09C4 800F9554 AFB00010 */  sw         $s0, 0x10($sp)
/* D09C8 800F9558 F7B80038 */  sdc1       $f24, 0x38($sp)
/* D09CC 800F955C F7B60030 */  sdc1       $f22, 0x30($sp)
/* D09D0 800F9560 F7B40028 */  sdc1       $f20, 0x28($sp)
/* D09D4 800F9564 46006606 */  mov.s      $f24, $f12
/* D09D8 800F9568 4486A000 */  mtc1       $a2, $f20
/* D09DC 800F956C 3C038010 */  lui        $v1, %hi(D_800FE2C2)
/* D09E0 800F9570 9463E2C2 */  lhu        $v1, %lo(D_800FE2C2)($v1)
/* D09E4 800F9574 24020001 */  addiu      $v0, $zero, 1
/* D09E8 800F9578 14620025 */  bne        $v1, $v0, .L800F9610
/* D09EC 800F957C 46007586 */   mov.s     $f22, $f14
/* D09F0 800F9580 0C03DEBF */  jal        func_800F7AFC_CEF6C
/* D09F4 800F9584 24040168 */   addiu     $a0, $zero, 0x168
/* D09F8 800F9588 00408821 */  addu       $s1, $v0, $zero
/* D09FC 800F958C 3C108010 */  lui        $s0, %hi(D_800FDF10)
/* D0A00 800F9590 2610DF10 */  addiu      $s0, $s0, %lo(D_800FDF10)
/* D0A04 800F9594 00009021 */  addu       $s2, $zero, $zero
/* D0A08 800F9598 2414002D */  addiu      $s4, $zero, 0x2d
/* D0A0C 800F959C 24130002 */  addiu      $s3, $zero, 2
.L800F95A0:
/* D0A10 800F95A0 86040000 */  lh         $a0, ($s0)
/* D0A14 800F95A4 24050004 */  addiu      $a1, $zero, 4
/* D0A18 800F95A8 0C00963B */  jal        func_800258EC
/* D0A1C 800F95AC 00003021 */   addu      $a2, $zero, $zero
/* D0A20 800F95B0 26230078 */  addiu      $v1, $s1, 0x78
/* D0A24 800F95B4 00608821 */  addu       $s1, $v1, $zero
/* D0A28 800F95B8 3222FFFF */  andi       $v0, $s1, 0xffff
/* D0A2C 800F95BC 2C420168 */  sltiu      $v0, $v0, 0x168
/* D0A30 800F95C0 50400001 */  beql       $v0, $zero, .L800F95C8
/* D0A34 800F95C4 2471FE98 */   addiu     $s1, $v1, -0x168
.L800F95C8:
/* D0A38 800F95C8 A611000A */  sh         $s1, 0xa($s0)
/* D0A3C 800F95CC A614000C */  sh         $s4, 0xc($s0)
/* D0A40 800F95D0 A6130010 */  sh         $s3, 0x10($s0)
/* D0A44 800F95D4 E6180018 */  swc1       $f24, 0x18($s0)
/* D0A48 800F95D8 E616001C */  swc1       $f22, 0x1c($s0)
/* D0A4C 800F95DC E6140020 */  swc1       $f20, 0x20($s0)
/* D0A50 800F95E0 86040000 */  lh         $a0, ($s0)
/* D0A54 800F95E4 4405C000 */  mfc1       $a1, $f24
/* D0A58 800F95E8 4406B000 */  mfc1       $a2, $f22
/* D0A5C 800F95EC 4407A000 */  mfc1       $a3, $f20
/* D0A60 800F95F0 00000000 */  nop
/* D0A64 800F95F4 0C0095E6 */  jal        func_80025798
/* D0A68 800F95F8 26100024 */   addiu     $s0, $s0, 0x24
/* D0A6C 800F95FC 26520001 */  addiu      $s2, $s2, 1
/* D0A70 800F9600 3242FFFF */  andi       $v0, $s2, 0xffff
/* D0A74 800F9604 2C420003 */  sltiu      $v0, $v0, 3
/* D0A78 800F9608 1440FFE5 */  bnez       $v0, .L800F95A0
/* D0A7C 800F960C 00000000 */   nop
.L800F9610:
/* D0A80 800F9610 8FBF0024 */  lw         $ra, 0x24($sp)
/* D0A84 800F9614 8FB40020 */  lw         $s4, 0x20($sp)
/* D0A88 800F9618 8FB3001C */  lw         $s3, 0x1c($sp)
/* D0A8C 800F961C 8FB20018 */  lw         $s2, 0x18($sp)
/* D0A90 800F9620 8FB10014 */  lw         $s1, 0x14($sp)
/* D0A94 800F9624 8FB00010 */  lw         $s0, 0x10($sp)
/* D0A98 800F9628 D7B80038 */  ldc1       $f24, 0x38($sp)
/* D0A9C 800F962C D7B60030 */  ldc1       $f22, 0x30($sp)
/* D0AA0 800F9630 D7B40028 */  ldc1       $f20, 0x28($sp)
/* D0AA4 800F9634 03E00008 */  jr         $ra
/* D0AA8 800F9638 27BD0040 */   addiu     $sp, $sp, 0x40
