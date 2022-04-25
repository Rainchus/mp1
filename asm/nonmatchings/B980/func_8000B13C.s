	.set noat
	.set noreorder

glabel func_8000B13C
/* BD3C 8000B13C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD40 8000B140 AFBF0010 */  sw         $ra, 0x10($sp)
/* BD44 8000B144 3C04800D */  lui        $a0, %hi(D_800CDA90)
/* BD48 8000B148 2484DA90 */  addiu      $a0, $a0, %lo(D_800CDA90)
/* BD4C 8000B14C 3C05800D */  lui        $a1, %hi(D_800CD9C8)
/* BD50 8000B150 24A5D9C8 */  addiu      $a1, $a1, %lo(D_800CD9C8)
/* BD54 8000B154 0C022188 */  jal        func_80088620
/* BD58 8000B158 24060032 */   addiu     $a2, $zero, 0x32
/* BD5C 8000B15C 3C01800F */  lui        $at, %hi(D_800ECB2C)
/* BD60 8000B160 A020CB2C */  sb         $zero, %lo(D_800ECB2C)($at)
/* BD64 8000B164 3C03800C */  lui        $v1, %hi(D_800C18A0)
/* BD68 8000B168 246318A0 */  addiu      $v1, $v1, %lo(D_800C18A0)
/* BD6C 8000B16C 8C620000 */  lw         $v0, ($v1)
/* BD70 8000B170 10400006 */  beqz       $v0, .L8000B18C
/* BD74 8000B174 24020001 */   addiu     $v0, $zero, 1
/* BD78 8000B178 8C620004 */  lw         $v0, 4($v1)
/* BD7C 8000B17C 10400003 */  beqz       $v0, .L8000B18C
/* BD80 8000B180 24020001 */   addiu     $v0, $zero, 1
/* BD84 8000B184 0C002C84 */  jal        func_8000B210
/* BD88 8000B188 00000000 */   nop
.L8000B18C:
/* BD8C 8000B18C 8FBF0010 */  lw         $ra, 0x10($sp)
/* BD90 8000B190 03E00008 */  jr         $ra
/* BD94 8000B194 27BD0018 */   addiu     $sp, $sp, 0x18
