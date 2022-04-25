	.set noat
	.set noreorder

glabel func_80080E20
/* 81A20 80080E20 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 81A24 80080E24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 81A28 80080E28 AFA40018 */  sw         $a0, 0x18($sp)
/* 81A2C 80080E2C 0C02042B */  jal        func_800810AC
/* 81A30 80080E30 24040001 */   addiu     $a0, $zero, 1
/* 81A34 80080E34 10400003 */  beqz       $v0, .L80080E44
/* 81A38 80080E38 00000000 */   nop
/* 81A3C 80080E3C 10000008 */  b          .L80080E60
/* 81A40 80080E40 24020025 */   addiu     $v0, $zero, 0x25
.L80080E44:
/* 81A44 80080E44 0C0202F1 */  jal        func_80080BC4
/* 81A48 80080E48 8FA40018 */   lw        $a0, 0x18($sp)
/* 81A4C 80080E4C 50400004 */  beql       $v0, $zero, .L80080E60
/* 81A50 80080E50 00001025 */   or        $v0, $zero, $zero
/* 81A54 80080E54 10000002 */  b          .L80080E60
/* 81A58 80080E58 304200FF */   andi      $v0, $v0, 0xff
/* 81A5C 80080E5C 00001025 */  or         $v0, $zero, $zero
.L80080E60:
/* 81A60 80080E60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 81A64 80080E64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 81A68 80080E68 03E00008 */  jr         $ra
/* 81A6C 80080E6C 00000000 */   nop
