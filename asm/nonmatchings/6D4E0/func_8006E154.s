	.set noat
	.set noreorder

glabel func_8006E154
/* 6ED54 8006E154 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6ED58 8006E158 AFBF0018 */  sw         $ra, 0x18($sp)
/* 6ED5C 8006E15C AFB10014 */  sw         $s1, 0x14($sp)
/* 6ED60 8006E160 AFB00010 */  sw         $s0, 0x10($sp)
/* 6ED64 8006E164 00A08821 */  addu       $s1, $a1, $zero
/* 6ED68 8006E168 00042400 */  sll        $a0, $a0, 0x10
/* 6ED6C 8006E16C 00042403 */  sra        $a0, $a0, 0x10
/* 6ED70 8006E170 00041080 */  sll        $v0, $a0, 2
/* 6ED74 8006E174 00441021 */  addu       $v0, $v0, $a0
/* 6ED78 8006E178 00021140 */  sll        $v0, $v0, 5
/* 6ED7C 8006E17C 00441023 */  subu       $v0, $v0, $a0
/* 6ED80 8006E180 00021080 */  sll        $v0, $v0, 2
/* 6ED84 8006E184 3C03800F */  lui        $v1, %hi(D_800ED4B0)
/* 6ED88 8006E188 8C63D4B0 */  lw         $v1, %lo(D_800ED4B0)($v1)
/* 6ED8C 8006E18C 00052C00 */  sll        $a1, $a1, 0x10
/* 6ED90 8006E190 14A00007 */  bnez       $a1, .L8006E1B0
/* 6ED94 8006E194 00438021 */   addu      $s0, $v0, $v1
/* 6ED98 8006E198 86040044 */  lh         $a0, 0x44($s0)
/* 6ED9C 8006E19C 00002821 */  addu       $a1, $zero, $zero
/* 6EDA0 8006E1A0 0C019D2F */  jal        func_800674BC
/* 6EDA4 8006E1A4 34068000 */   ori       $a2, $zero, 0x8000
/* 6EDA8 8006E1A8 0801B870 */  j          .L8006E1C0
/* 6EDAC 8006E1AC 00000000 */   nop
.L8006E1B0:
/* 6EDB0 8006E1B0 86040044 */  lh         $a0, 0x44($s0)
/* 6EDB4 8006E1B4 00002821 */  addu       $a1, $zero, $zero
/* 6EDB8 8006E1B8 0C019D20 */  jal        func_80067480
/* 6EDBC 8006E1BC 34068000 */   ori       $a2, $zero, 0x8000
.L8006E1C0:
/* 6EDC0 8006E1C0 86040044 */  lh         $a0, 0x44($s0)
/* 6EDC4 8006E1C4 00002821 */  addu       $a1, $zero, $zero
/* 6EDC8 8006E1C8 0C019D4B */  jal        func_8006752C
/* 6EDCC 8006E1CC 3226FFFF */   andi      $a2, $s1, 0xffff
/* 6EDD0 8006E1D0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 6EDD4 8006E1D4 8FB10014 */  lw         $s1, 0x14($sp)
/* 6EDD8 8006E1D8 8FB00010 */  lw         $s0, 0x10($sp)
/* 6EDDC 8006E1DC 03E00008 */  jr         $ra
/* 6EDE0 8006E1E0 27BD0020 */   addiu     $sp, $sp, 0x20
