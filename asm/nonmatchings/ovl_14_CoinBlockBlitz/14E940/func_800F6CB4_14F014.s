	.set noat
	.set noreorder

glabel func_800F6CB4_14F014
/* 14F014 800F6CB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 14F018 800F6CB8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 14F01C 800F6CBC 3C02800F */  lui        $v0, %hi(D_800F5144)
/* 14F020 800F6CC0 94425144 */  lhu        $v0, %lo(D_800F5144)($v0)
/* 14F024 800F6CC4 38420001 */  xori       $v0, $v0, 1
/* 14F028 800F6CC8 2C420001 */  sltiu      $v0, $v0, 1
/* 14F02C 800F6CCC 1040000B */  beqz       $v0, .L800F6CFC
/* 14F030 800F6CD0 00000000 */   nop
/* 14F034 800F6CD4 0C018075 */  jal        func_800601D4
/* 14F038 800F6CD8 24040028 */   addiu     $a0, $zero, 0x28
/* 14F03C 800F6CDC 0C0025CC */  jal        func_80009730
/* 14F040 800F6CE0 00000000 */   nop
/* 14F044 800F6CE4 00002021 */  addu       $a0, $zero, $zero
/* 14F048 800F6CE8 00002821 */  addu       $a1, $zero, $zero
/* 14F04C 800F6CEC 0C00A243 */  jal        func_8002890C
/* 14F050 800F6CF0 00003021 */   addu      $a2, $zero, $zero
/* 14F054 800F6CF4 0C0177EE */  jal        func_8005DFB8
/* 14F058 800F6CF8 24040001 */   addiu     $a0, $zero, 1
.L800F6CFC:
/* 14F05C 800F6CFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 14F060 800F6D00 03E00008 */  jr         $ra
/* 14F064 800F6D04 27BD0018 */   addiu     $sp, $sp, 0x18
