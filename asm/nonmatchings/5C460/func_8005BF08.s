	.set noat
	.set noreorder

glabel func_8005BF08
/* 5CB08 8005BF08 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5CB0C 8005BF0C AFBF0018 */  sw         $ra, 0x18($sp)
/* 5CB10 8005BF10 AFB10014 */  sw         $s1, 0x14($sp)
/* 5CB14 8005BF14 AFB00010 */  sw         $s0, 0x10($sp)
/* 5CB18 8005BF18 F7BE0048 */  sdc1       $f30, 0x48($sp)
/* 5CB1C 8005BF1C F7BC0040 */  sdc1       $f28, 0x40($sp)
/* 5CB20 8005BF20 F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 5CB24 8005BF24 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 5CB28 8005BF28 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 5CB2C 8005BF2C F7B40020 */  sdc1       $f20, 0x20($sp)
/* 5CB30 8005BF30 4480B000 */  mtc1       $zero, $f22
/* 5CB34 8005BF34 3C014170 */  lui        $at, 0x4170
/* 5CB38 8005BF38 4481F000 */  mtc1       $at, $f30
/* 5CB3C 8005BF3C 3C0143B4 */  lui        $at, 0x43b4
/* 5CB40 8005BF40 4481C000 */  mtc1       $at, $f24
/* 5CB44 8005BF44 3C013E19 */  lui        $at, 0x3e19
/* 5CB48 8005BF48 3421999A */  ori        $at, $at, 0x999a
/* 5CB4C 8005BF4C 4481E000 */  mtc1       $at, $f28
/* 5CB50 8005BF50 3C013F8C */  lui        $at, 0x3f8c
/* 5CB54 8005BF54 3421CCCD */  ori        $at, $at, 0xcccd
/* 5CB58 8005BF58 4481D000 */  mtc1       $at, $f26
/* 5CB5C 8005BF5C 3C11800E */  lui        $s1, %hi(D_800D8930)
/* 5CB60 8005BF60 26318930 */  addiu      $s1, $s1, %lo(D_800D8930)
.L8005BF64:
/* 5CB64 8005BF64 0C018D6D */  jal        func_800635B4
/* 5CB68 8005BF68 00000000 */   nop
/* 5CB6C 8005BF6C 461EB580 */  add.s      $f22, $f22, $f30
/* 5CB70 8005BF70 4616C03C */  c.lt.s     $f24, $f22
/* 5CB74 8005BF74 00000000 */  nop
/* 5CB78 8005BF78 00000000 */  nop
/* 5CB7C 8005BF7C 45030001 */  bc1tl      .L8005BF84
/* 5CB80 8005BF80 4618B581 */   sub.s     $f22, $f22, $f24
.L8005BF84:
/* 5CB84 8005BF84 0C02BBF4 */  jal        func_800AEFD0
/* 5CB88 8005BF88 4600B306 */   mov.s     $f12, $f22
/* 5CB8C 8005BF8C 461C0002 */  mul.s      $f0, $f0, $f28
/* 5CB90 8005BF90 461A0500 */  add.s      $f20, $f0, $f26
/* 5CB94 8005BF94 00008021 */  addu       $s0, $zero, $zero
/* 5CB98 8005BF98 00101080 */  sll        $v0, $s0, 2
.L8005BF9C:
/* 5CB9C 8005BF9C 00511021 */  addu       $v0, $v0, $s1
/* 5CBA0 8005BFA0 8C420000 */  lw         $v0, ($v0)
/* 5CBA4 8005BFA4 50400009 */  beql       $v0, $zero, .L8005BFCC
/* 5CBA8 8005BFA8 26100001 */   addiu     $s0, $s0, 1
/* 5CBAC 8005BFAC 8C440004 */  lw         $a0, 4($v0)
/* 5CBB0 8005BFB0 4405A000 */  mfc1       $a1, $f20
/* 5CBB4 8005BFB4 3C063F80 */  lui        $a2, 0x3f80
/* 5CBB8 8005BFB8 4407A000 */  mfc1       $a3, $f20
/* 5CBBC 8005BFBC 00000000 */  nop
/* 5CBC0 8005BFC0 0C028340 */  jal        func_800A0D00
/* 5CBC4 8005BFC4 24840024 */   addiu     $a0, $a0, 0x24
/* 5CBC8 8005BFC8 26100001 */  addiu      $s0, $s0, 1
.L8005BFCC:
/* 5CBCC 8005BFCC 2A020004 */  slti       $v0, $s0, 4
/* 5CBD0 8005BFD0 1440FFF2 */  bnez       $v0, .L8005BF9C
/* 5CBD4 8005BFD4 00101080 */   sll       $v0, $s0, 2
/* 5CBD8 8005BFD8 08016FD9 */  j          .L8005BF64
/* 5CBDC 8005BFDC 00000000 */   nop
/* 5CBE0 8005BFE0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 5CBE4 8005BFE4 8FB10014 */  lw         $s1, 0x14($sp)
/* 5CBE8 8005BFE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 5CBEC 8005BFEC D7BE0048 */  ldc1       $f30, 0x48($sp)
/* 5CBF0 8005BFF0 D7BC0040 */  ldc1       $f28, 0x40($sp)
/* 5CBF4 8005BFF4 D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 5CBF8 8005BFF8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 5CBFC 8005BFFC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 5CC00 8005C000 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 5CC04 8005C004 03E00008 */  jr         $ra
/* 5CC08 8005C008 27BD0050 */   addiu     $sp, $sp, 0x50
