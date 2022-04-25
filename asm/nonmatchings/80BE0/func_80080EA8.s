	.set noat
	.set noreorder

glabel func_80080EA8
/* 81AA8 80080EA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81AAC 80080EAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 81AB0 80080EB0 AFA40018 */  sw         $a0, 0x18($sp)
/* 81AB4 80080EB4 0C0202B7 */  jal        func_80080ADC
/* 81AB8 80080EB8 AFA5001C */   sw        $a1, 0x1c($sp)
/* 81ABC 80080EBC 2401002F */  addiu      $at, $zero, 0x2f
/* 81AC0 80080EC0 10410009 */  beq        $v0, $at, .L80080EE8
/* 81AC4 80080EC4 304400FF */   andi      $a0, $v0, 0xff
/* 81AC8 80080EC8 10400007 */  beqz       $v0, .L80080EE8
/* 81ACC 80080ECC 3C03800F */   lui       $v1, %hi(D_800E87D8)
/* 81AD0 80080ED0 246387D8 */  addiu      $v1, $v1, %lo(D_800E87D8)
/* 81AD4 80080ED4 8C6E0000 */  lw         $t6, ($v1)
/* 81AD8 80080ED8 A1C40005 */  sb         $a0, 5($t6)
/* 81ADC 80080EDC 8C6F0000 */  lw         $t7, ($v1)
/* 81AE0 80080EE0 10000028 */  b          .L80080F84
/* 81AE4 80080EE4 91E20005 */   lbu       $v0, 5($t7)
.L80080EE8:
/* 81AE8 80080EE8 3C04800F */  lui        $a0, %hi(D_800EA150)
/* 81AEC 80080EEC 3C050500 */  lui        $a1, 0x500
/* 81AF0 80080EF0 34A50500 */  ori        $a1, $a1, 0x500
/* 81AF4 80080EF4 8C84A150 */  lw         $a0, %lo(D_800EA150)($a0)
/* 81AF8 80080EF8 0C024154 */  jal        func_80090550
/* 81AFC 80080EFC 8FA6001C */   lw        $a2, 0x1c($sp)
/* 81B00 80080F00 0C02042B */  jal        func_800810AC
/* 81B04 80080F04 00002025 */   or        $a0, $zero, $zero
/* 81B08 80080F08 10400008 */  beqz       $v0, .L80080F2C
/* 81B0C 80080F0C 3C03800F */   lui       $v1, %hi(D_800E87D8)
/* 81B10 80080F10 246387D8 */  addiu      $v1, $v1, %lo(D_800E87D8)
/* 81B14 80080F14 8C790000 */  lw         $t9, ($v1)
/* 81B18 80080F18 24180025 */  addiu      $t8, $zero, 0x25
/* 81B1C 80080F1C A3380005 */  sb         $t8, 5($t9)
/* 81B20 80080F20 8C680000 */  lw         $t0, ($v1)
/* 81B24 80080F24 10000017 */  b          .L80080F84
/* 81B28 80080F28 91020005 */   lbu       $v0, 5($t0)
.L80080F2C:
/* 81B2C 80080F2C 3C04800F */  lui        $a0, %hi(D_800EA150)
/* 81B30 80080F30 3C050500 */  lui        $a1, 0x500
/* 81B34 80080F34 34A50508 */  ori        $a1, $a1, 0x508
/* 81B38 80080F38 8C84A150 */  lw         $a0, %lo(D_800EA150)($a0)
/* 81B3C 80080F3C 0C024154 */  jal        func_80090550
/* 81B40 80080F40 8FA60018 */   lw        $a2, 0x18($sp)
/* 81B44 80080F44 0C02042B */  jal        func_800810AC
/* 81B48 80080F48 24040001 */   addiu     $a0, $zero, 1
/* 81B4C 80080F4C 10400003 */  beqz       $v0, .L80080F5C
/* 81B50 80080F50 00000000 */   nop
/* 81B54 80080F54 1000000B */  b          .L80080F84
/* 81B58 80080F58 24020025 */   addiu     $v0, $zero, 0x25
.L80080F5C:
/* 81B5C 80080F5C 0C0202F1 */  jal        func_80080BC4
/* 81B60 80080F60 8FA40018 */   lw        $a0, 0x18($sp)
/* 81B64 80080F64 2401002F */  addiu      $at, $zero, 0x2f
/* 81B68 80080F68 50410006 */  beql       $v0, $at, .L80080F84
/* 81B6C 80080F6C 00001025 */   or        $v0, $zero, $zero
/* 81B70 80080F70 50400004 */  beql       $v0, $zero, .L80080F84
/* 81B74 80080F74 00001025 */   or        $v0, $zero, $zero
/* 81B78 80080F78 10000002 */  b          .L80080F84
/* 81B7C 80080F7C 304200FF */   andi      $v0, $v0, 0xff
/* 81B80 80080F80 00001025 */  or         $v0, $zero, $zero
.L80080F84:
/* 81B84 80080F84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81B88 80080F88 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81B8C 80080F8C 03E00008 */  jr         $ra
/* 81B90 80080F90 00000000 */   nop
