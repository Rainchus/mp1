	.set noat
	.set noreorder

glabel func_8004A140
/* 4AD40 8004A140 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4AD44 8004A144 AFBF0010 */  sw         $ra, 0x10($sp)
/* 4AD48 8004A148 3C04800C */  lui        $a0, %hi(D_800C4F74)
/* 4AD4C 8004A14C 8C844F74 */  lw         $a0, %lo(D_800C4F74)($a0)
/* 4AD50 8004A150 1080000F */  beqz       $a0, .L8004A190
/* 4AD54 8004A154 00000000 */   nop
/* 4AD58 8004A158 0C00EDE6 */  jal        func_8003B798
/* 4AD5C 8004A15C 00000000 */   nop
/* 4AD60 8004A160 3C01800C */  lui        $at, %hi(D_800C4F74)
/* 4AD64 8004A164 AC204F74 */  sw         $zero, %lo(D_800C4F74)($at)
/* 4AD68 8004A168 3C04800C */  lui        $a0, %hi(D_800C4F78)
/* 4AD6C 8004A16C 0C00EDE6 */  jal        func_8003B798
/* 4AD70 8004A170 8C844F78 */   lw        $a0, %lo(D_800C4F78)($a0)
/* 4AD74 8004A174 00002021 */  addu       $a0, $zero, $zero
/* 4AD78 8004A178 0C00A3A3 */  jal        func_80028E8C
/* 4AD7C 8004A17C 00002821 */   addu      $a1, $zero, $zero
/* 4AD80 8004A180 0C0129F7 */  jal        func_8004A7DC
/* 4AD84 8004A184 00000000 */   nop
/* 4AD88 8004A188 0C012C7B */  jal        func_8004B1EC
/* 4AD8C 8004A18C 00000000 */   nop
.L8004A190:
/* 4AD90 8004A190 8FBF0010 */  lw         $ra, 0x10($sp)
/* 4AD94 8004A194 03E00008 */  jr         $ra
/* 4AD98 8004A198 27BD0018 */   addiu     $sp, $sp, 0x18
