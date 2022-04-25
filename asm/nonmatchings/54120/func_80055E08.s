	.set noat
	.set noreorder

glabel func_80055E08
/* 56A08 80055E08 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 56A0C 80055E0C AFBF001C */  sw         $ra, 0x1c($sp)
/* 56A10 80055E10 AFB20018 */  sw         $s2, 0x18($sp)
/* 56A14 80055E14 AFB10014 */  sw         $s1, 0x14($sp)
/* 56A18 80055E18 AFB00010 */  sw         $s0, 0x10($sp)
/* 56A1C 80055E1C 3C126666 */  lui        $s2, 0x6666
/* 56A20 80055E20 36526667 */  ori        $s2, $s2, 0x6667
.L80055E24:
/* 56A24 80055E24 3C11800F */  lui        $s1, %hi(D_800F37C4)
/* 56A28 80055E28 823137C4 */  lb         $s1, %lo(D_800F37C4)($s1)
/* 56A2C 80055E2C 00111027 */  nor        $v0, $zero, $s1
/* 56A30 80055E30 000217C3 */  sra        $v0, $v0, 0x1f
/* 56A34 80055E34 00518824 */  and        $s1, $v0, $s1
/* 56A38 80055E38 2A220064 */  slti       $v0, $s1, 0x64
/* 56A3C 80055E3C 50400001 */  beql       $v0, $zero, .L80055E44
/* 56A40 80055E40 24110063 */   addiu     $s1, $zero, 0x63
.L80055E44:
/* 56A44 80055E44 3C04800E */  lui        $a0, %hi(D_800D855C)
/* 56A48 80055E48 8484855C */  lh         $a0, %lo(D_800D855C)($a0)
/* 56A4C 80055E4C 00002821 */  addu       $a1, $zero, $zero
/* 56A50 80055E50 0C019CAC */  jal        func_800672B0
/* 56A54 80055E54 24060001 */   addiu     $a2, $zero, 1
/* 56A58 80055E58 02320018 */  mult       $s1, $s2
/* 56A5C 80055E5C 00001810 */  mfhi       $v1
/* 56A60 80055E60 00038083 */  sra        $s0, $v1, 2
/* 56A64 80055E64 001117C3 */  sra        $v0, $s1, 0x1f
/* 56A68 80055E68 02028023 */  subu       $s0, $s0, $v0
/* 56A6C 80055E6C 3C04800E */  lui        $a0, %hi(D_800D855C)
/* 56A70 80055E70 8484855C */  lh         $a0, %lo(D_800D855C)($a0)
/* 56A74 80055E74 00002821 */  addu       $a1, $zero, $zero
/* 56A78 80055E78 3206FFFF */  andi       $a2, $s0, 0xffff
/* 56A7C 80055E7C 0C019CB7 */  jal        func_800672DC
/* 56A80 80055E80 00003821 */   addu      $a3, $zero, $zero
/* 56A84 80055E84 3C04800E */  lui        $a0, %hi(D_800D855C)
/* 56A88 80055E88 8484855C */  lh         $a0, %lo(D_800D855C)($a0)
/* 56A8C 80055E8C 24050001 */  addiu      $a1, $zero, 1
/* 56A90 80055E90 0C019CAC */  jal        func_800672B0
/* 56A94 80055E94 24060001 */   addiu     $a2, $zero, 1
/* 56A98 80055E98 00103080 */  sll        $a2, $s0, 2
/* 56A9C 80055E9C 00D03021 */  addu       $a2, $a2, $s0
/* 56AA0 80055EA0 00063040 */  sll        $a2, $a2, 1
/* 56AA4 80055EA4 02263023 */  subu       $a2, $s1, $a2
/* 56AA8 80055EA8 3C04800E */  lui        $a0, %hi(D_800D855C)
/* 56AAC 80055EAC 8484855C */  lh         $a0, %lo(D_800D855C)($a0)
/* 56AB0 80055EB0 24050001 */  addiu      $a1, $zero, 1
/* 56AB4 80055EB4 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 56AB8 80055EB8 0C019CB7 */  jal        func_800672DC
/* 56ABC 80055EBC 00003821 */   addu      $a3, $zero, $zero
/* 56AC0 80055EC0 0C018D6D */  jal        func_800635B4
/* 56AC4 80055EC4 00000000 */   nop
/* 56AC8 80055EC8 08015789 */  j          .L80055E24
/* 56ACC 80055ECC 00000000 */   nop
/* 56AD0 80055ED0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 56AD4 80055ED4 8FB20018 */  lw         $s2, 0x18($sp)
/* 56AD8 80055ED8 8FB10014 */  lw         $s1, 0x14($sp)
/* 56ADC 80055EDC 8FB00010 */  lw         $s0, 0x10($sp)
/* 56AE0 80055EE0 03E00008 */  jr         $ra
/* 56AE4 80055EE4 27BD0020 */   addiu     $sp, $sp, 0x20
