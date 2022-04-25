	.set noat
	.set noreorder

glabel func_8004A394
/* 4AF94 8004A394 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4AF98 8004A398 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4AF9C 8004A39C 0C01FEB0 */  jal        func_8007FAC0
/* 4AFA0 8004A3A0 00000000 */   nop
.L8004A3A4:
/* 4AFA4 8004A3A4 3C04800D */  lui        $a0, %hi(D_800D7F20)
/* 4AFA8 8004A3A8 24847F20 */  addiu      $a0, $a0, %lo(D_800D7F20)
/* 4AFAC 8004A3AC 27A50010 */  addiu      $a1, $sp, 0x10
/* 4AFB0 8004A3B0 0C022278 */  jal        func_800889E0
/* 4AFB4 8004A3B4 24060001 */   addiu     $a2, $zero, 1
/* 4AFB8 8004A3B8 8FA20010 */  lw         $v0, 0x10($sp)
/* 4AFBC 8004A3BC 1040000E */  beqz       $v0, .L8004A3F8
/* 4AFC0 8004A3C0 24050002 */   addiu     $a1, $zero, 2
/* 4AFC4 8004A3C4 8C440008 */  lw         $a0, 8($v0)
/* 4AFC8 8004A3C8 8C450004 */  lw         $a1, 4($v0)
/* 4AFCC 8004A3CC 3C07800D */  lui        $a3, %hi(D_800D673C)
/* 4AFD0 8004A3D0 8CE7673C */  lw         $a3, %lo(D_800D673C)($a3)
/* 4AFD4 8004A3D4 0C01FD53 */  jal        func_8007F54C
/* 4AFD8 8004A3D8 24060040 */   addiu     $a2, $zero, 0x40
/* 4AFDC 8004A3DC 3C04800D */  lui        $a0, %hi(D_800D7FD8)
/* 4AFE0 8004A3E0 24847FD8 */  addiu      $a0, $a0, %lo(D_800D7FD8)
/* 4AFE4 8004A3E4 8FA50010 */  lw         $a1, 0x10($sp)
/* 4AFE8 8004A3E8 0C0222C4 */  jal        func_80088B10
/* 4AFEC 8004A3EC 00003021 */   addu      $a2, $zero, $zero
/* 4AFF0 8004A3F0 080128E9 */  j          .L8004A3A4
/* 4AFF4 8004A3F4 00000000 */   nop
.L8004A3F8:
/* 4AFF8 8004A3F8 3C04800E */  lui        $a0, %hi(D_800D8090)
/* 4AFFC 8004A3FC 24848090 */  addiu      $a0, $a0, %lo(D_800D8090)
/* 4B000 8004A400 0C0222C4 */  jal        func_80088B10
/* 4B004 8004A404 00003021 */   addu      $a2, $zero, $zero
/* 4B008 8004A408 0C0221C8 */  jal        func_80088720
/* 4B00C 8004A40C 00002021 */   addu      $a0, $zero, $zero
/* 4B010 8004A410 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4B014 8004A414 03E00008 */  jr         $ra
/* 4B018 8004A418 27BD0020 */   addiu     $sp, $sp, 0x20
