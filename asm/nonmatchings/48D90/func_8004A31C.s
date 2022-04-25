	.set noat
	.set noreorder

glabel func_8004A31C
/* 4AF1C 8004A31C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4AF20 8004A320 AFBF0018 */  sw         $ra, 0x18($sp)
.L8004A324:
/* 4AF24 8004A324 3C04800D */  lui        $a0, %hi(D_800D6AF0)
/* 4AF28 8004A328 24846AF0 */  addiu      $a0, $a0, %lo(D_800D6AF0)
/* 4AF2C 8004A32C 27A50010 */  addiu      $a1, $sp, 0x10
/* 4AF30 8004A330 0C022278 */  jal        func_800889E0
/* 4AF34 8004A334 24060001 */   addiu     $a2, $zero, 1
/* 4AF38 8004A338 8FA20010 */  lw         $v0, 0x10($sp)
/* 4AF3C 8004A33C 1040000C */  beqz       $v0, .L8004A370
/* 4AF40 8004A340 24050001 */   addiu     $a1, $zero, 1
/* 4AF44 8004A344 8C440010 */  lw         $a0, 0x10($v0)
/* 4AF48 8004A348 8C450008 */  lw         $a1, 8($v0)
/* 4AF4C 8004A34C 0C0187FA */  jal        func_80061FE8
/* 4AF50 8004A350 8C46000C */   lw        $a2, 0xc($v0)
/* 4AF54 8004A354 3C04800D */  lui        $a0, %hi(D_800D7F20)
/* 4AF58 8004A358 24847F20 */  addiu      $a0, $a0, %lo(D_800D7F20)
/* 4AF5C 8004A35C 8FA50010 */  lw         $a1, 0x10($sp)
/* 4AF60 8004A360 0C0222C4 */  jal        func_80088B10
/* 4AF64 8004A364 00003021 */   addu      $a2, $zero, $zero
/* 4AF68 8004A368 080128C9 */  j          .L8004A324
/* 4AF6C 8004A36C 00000000 */   nop
.L8004A370:
/* 4AF70 8004A370 3C04800E */  lui        $a0, %hi(D_800D8090)
/* 4AF74 8004A374 24848090 */  addiu      $a0, $a0, %lo(D_800D8090)
/* 4AF78 8004A378 0C0222C4 */  jal        func_80088B10
/* 4AF7C 8004A37C 00003021 */   addu      $a2, $zero, $zero
/* 4AF80 8004A380 0C0221C8 */  jal        func_80088720
/* 4AF84 8004A384 00002021 */   addu      $a0, $zero, $zero
/* 4AF88 8004A388 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4AF8C 8004A38C 03E00008 */  jr         $ra
/* 4AF90 8004A390 27BD0020 */   addiu     $sp, $sp, 0x20
