	.set noat
	.set noreorder

glabel func_8000F118
/* FD18 8000F118 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FD1C 8000F11C AFBF0010 */  sw         $ra, 0x10($sp)
/* FD20 8000F120 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* FD24 8000F124 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* FD28 8000F128 00022040 */  sll        $a0, $v0, 1
/* FD2C 8000F12C 00822021 */  addu       $a0, $a0, $v0
/* FD30 8000F130 0C002BE8 */  jal        func_8000AFA0
/* FD34 8000F134 00042080 */   sll       $a0, $a0, 2
/* FD38 8000F138 3C01800D */  lui        $at, %hi(D_800CEAE4)
/* FD3C 8000F13C AC22EAE4 */  sw         $v0, %lo(D_800CEAE4)($at)
/* FD40 8000F140 50400012 */  beql       $v0, $zero, .L8000F18C
/* FD44 8000F144 24020001 */   addiu     $v0, $zero, 1
/* FD48 8000F148 3C02800D */  lui        $v0, %hi(D_800CEA9C)
/* FD4C 8000F14C 8C42EA9C */  lw         $v0, %lo(D_800CEA9C)($v0)
/* FD50 8000F150 3C01800D */  lui        $at, %hi(D_800CEAF0)
/* FD54 8000F154 0C003C8E */  jal        func_8000F238
/* FD58 8000F158 AC22EAF0 */   sw        $v0, %lo(D_800CEAF0)($at)
/* FD5C 8000F15C 3C01800D */  lui        $at, %hi(D_800CEAF5)
/* FD60 8000F160 A020EAF5 */  sb         $zero, %lo(D_800CEAF5)($at)
/* FD64 8000F164 3C01800D */  lui        $at, %hi(D_800CEAF4)
/* FD68 8000F168 A020EAF4 */  sb         $zero, %lo(D_800CEAF4)($at)
/* FD6C 8000F16C 44800000 */  mtc1       $zero, $f0
/* FD70 8000F170 3C01800D */  lui        $at, %hi(D_800CEAEC)
/* FD74 8000F174 E420EAEC */  swc1       $f0, %lo(D_800CEAEC)($at)
/* FD78 8000F178 3C01800D */  lui        $at, %hi(D_800CEAE8)
/* FD7C 8000F17C E420EAE8 */  swc1       $f0, %lo(D_800CEAE8)($at)
/* FD80 8000F180 3C01800D */  lui        $at, %hi(D_800CEAF0)
/* FD84 8000F184 AC20EAF0 */  sw         $zero, %lo(D_800CEAF0)($at)
/* FD88 8000F188 00001021 */  addu       $v0, $zero, $zero
.L8000F18C:
/* FD8C 8000F18C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FD90 8000F190 03E00008 */  jr         $ra
/* FD94 8000F194 27BD0018 */   addiu     $sp, $sp, 0x18
