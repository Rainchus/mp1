	.set noat
	.set noreorder

glabel func_8004F358
/* 4FF58 8004F358 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4FF5C 8004F35C AFBF0020 */  sw         $ra, 0x20($sp)
/* 4FF60 8004F360 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4FF64 8004F364 AFB00018 */  sw         $s0, 0x18($sp)
/* 4FF68 8004F368 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4FF6C 8004F36C 00808821 */  addu       $s1, $a0, $zero
/* 4FF70 8004F370 9223004C */  lbu        $v1, 0x4c($s1)
/* 4FF74 8004F374 00031040 */  sll        $v0, $v1, 1
/* 4FF78 8004F378 00431021 */  addu       $v0, $v0, $v1
/* 4FF7C 8004F37C 00021080 */  sll        $v0, $v0, 2
/* 4FF80 8004F380 3C03800E */  lui        $v1, %hi(D_800D8160)
/* 4FF84 8004F384 24638160 */  addiu      $v1, $v1, %lo(D_800D8160)
/* 4FF88 8004F388 00438021 */  addu       $s0, $v0, $v1
/* 4FF8C 8004F38C 8E020004 */  lw         $v0, 4($s0)
/* 4FF90 8004F390 8C42003C */  lw         $v0, 0x3c($v0)
/* 4FF94 8004F394 8C420040 */  lw         $v0, 0x40($v0)
/* 4FF98 8004F398 0C009746 */  jal        func_80025D18
/* 4FF9C 8004F39C 84440000 */   lh        $a0, ($v0)
/* 4FFA0 8004F3A0 8E020004 */  lw         $v0, 4($s0)
/* 4FFA4 8004F3A4 8C42003C */  lw         $v0, 0x3c($v0)
/* 4FFA8 8004F3A8 8C420040 */  lw         $v0, 0x40($v0)
/* 4FFAC 8004F3AC 84440000 */  lh         $a0, ($v0)
/* 4FFB0 8004F3B0 0C009750 */  jal        func_80025D40
/* 4FFB4 8004F3B4 46000506 */   mov.s     $f20, $f0
/* 4FFB8 8004F3B8 4600A032 */  c.eq.s     $f20, $f0
/* 4FFBC 8004F3BC 00000000 */  nop
/* 4FFC0 8004F3C0 00000000 */  nop
/* 4FFC4 8004F3C4 4500000B */  bc1f       .L8004F3F4
/* 4FFC8 8004F3C8 00003021 */   addu      $a2, $zero, $zero
/* 4FFCC 8004F3CC 86050000 */  lh         $a1, ($s0)
/* 4FFD0 8004F3D0 96020002 */  lhu        $v0, 2($s0)
/* 4FFD4 8004F3D4 AFA20010 */  sw         $v0, 0x10($sp)
/* 4FFD8 8004F3D8 8E040004 */  lw         $a0, 4($s0)
/* 4FFDC 8004F3DC 0C00FA2E */  jal        func_8003E8B8
/* 4FFE0 8004F3E0 2407000A */   addiu     $a3, $zero, 0xa
/* 4FFE4 8004F3E4 AE000004 */  sw         $zero, 4($s0)
/* 4FFE8 8004F3E8 AE000008 */  sw         $zero, 8($s0)
/* 4FFEC 8004F3EC 0C0175C6 */  jal        func_8005D718
/* 4FFF0 8004F3F0 02202021 */   addu      $a0, $s1, $zero
.L8004F3F4:
/* 4FFF4 8004F3F4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4FFF8 8004F3F8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4FFFC 8004F3FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 50000 8004F400 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 50004 8004F404 03E00008 */  jr         $ra
/* 50008 8004F408 27BD0030 */   addiu     $sp, $sp, 0x30
