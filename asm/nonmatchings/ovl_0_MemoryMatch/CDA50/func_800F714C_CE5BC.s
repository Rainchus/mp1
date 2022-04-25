	.set noat
	.set noreorder

glabel func_800F714C_CE5BC
/* CE5BC 800F714C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE5C0 800F7150 AFBF0014 */  sw         $ra, 0x14($sp)
/* CE5C4 800F7154 AFB00010 */  sw         $s0, 0x10($sp)
/* CE5C8 800F7158 0C03E45E */  jal        func_800F9178_D05E8
/* CE5CC 800F715C 00808021 */   addu      $s0, $a0, $zero
/* CE5D0 800F7160 0C03DE5B */  jal        func_800F796C_CEDDC
/* CE5D4 800F7164 02002021 */   addu      $a0, $s0, $zero
/* CE5D8 800F7168 0C01D7F8 */  jal        func_80075FE0
/* CE5DC 800F716C 00000000 */   nop
/* CE5E0 800F7170 14400010 */  bnez       $v0, .L800F71B4
/* CE5E4 800F7174 24020001 */   addiu     $v0, $zero, 1
/* CE5E8 800F7178 3C018010 */  lui        $at, %hi(D_800FDE2C)
/* CE5EC 800F717C A420DE2C */  sh         $zero, %lo(D_800FDE2C)($at)
/* CE5F0 800F7180 3C018010 */  lui        $at, %hi(D_800FE2C2)
/* CE5F4 800F7184 A422E2C2 */  sh         $v0, %lo(D_800FE2C2)($at)
/* CE5F8 800F7188 3C02800F */  lui        $v0, %hi(func_800F71C4_CE634)
/* CE5FC 800F718C 244271C4 */  addiu      $v0, $v0, %lo(func_800F71C4_CE634)
/* CE600 800F7190 0C03E3FB */  jal        func_800F8FEC_D045C
/* CE604 800F7194 AE020014 */   sw        $v0, 0x14($s0)
/* CE608 800F7198 0C003151 */  jal        func_8000C544
/* CE60C 800F719C 00000000 */   nop
/* CE610 800F71A0 3C018010 */  lui        $at, %hi(D_800FE150)
/* CE614 800F71A4 A422E150 */  sh         $v0, %lo(D_800FE150)($at)
/* CE618 800F71A8 24020001 */  addiu      $v0, $zero, 1
/* CE61C 800F71AC 3C01800F */  lui        $at, %hi(D_800ED430)
/* CE620 800F71B0 AC22D430 */  sw         $v0, %lo(D_800ED430)($at)
.L800F71B4:
/* CE624 800F71B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CE628 800F71B8 8FB00010 */  lw         $s0, 0x10($sp)
/* CE62C 800F71BC 03E00008 */  jr         $ra
/* CE630 800F71C0 27BD0018 */   addiu     $sp, $sp, 0x18
