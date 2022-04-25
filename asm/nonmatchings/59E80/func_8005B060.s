	.set noat
	.set noreorder

glabel func_8005B060
/* 5BC60 8005B060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5BC64 8005B064 AFBF0010 */  sw         $ra, 0x10($sp)
/* 5BC68 8005B068 0C0164A0 */  jal        func_80059280
/* 5BC6C 8005B06C 00000000 */   nop
/* 5BC70 8005B070 0C006926 */  jal        func_8001A498
/* 5BC74 8005B074 00000000 */   nop
/* 5BC78 8005B078 2402012C */  addiu      $v0, $zero, 0x12c
/* 5BC7C 8005B07C 3C01800F */  lui        $at, %hi(D_800ED140)
/* 5BC80 8005B080 0C016CA0 */  jal        func_8005B280
/* 5BC84 8005B084 AC22D140 */   sw        $v0, %lo(D_800ED140)($at)
/* 5BC88 8005B088 0C016CEC */  jal        func_8005B3B0
/* 5BC8C 8005B08C 00000000 */   nop
/* 5BC90 8005B090 3C02800E */  lui        $v0, %hi(D_800D8720)
/* 5BC94 8005B094 90428720 */  lbu        $v0, %lo(D_800D8720)($v0)
/* 5BC98 8005B098 10400005 */  beqz       $v0, .L8005B0B0
/* 5BC9C 8005B09C 2404017A */   addiu     $a0, $zero, 0x17a
/* 5BCA0 8005B0A0 3C05800F */  lui        $a1, %hi(D_800F37B8)
/* 5BCA4 8005B0A4 24A537B8 */  addiu      $a1, $a1, %lo(D_800F37B8)
/* 5BCA8 8005B0A8 0C006541 */  jal        func_80019504
/* 5BCAC 8005B0AC 2406000F */   addiu     $a2, $zero, 0xf
.L8005B0B0:
/* 5BCB0 8005B0B0 0C016C09 */  jal        func_8005B024
/* 5BCB4 8005B0B4 00000000 */   nop
/* 5BCB8 8005B0B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 5BCBC 8005B0BC 03E00008 */  jr         $ra
/* 5BCC0 8005B0C0 27BD0018 */   addiu     $sp, $sp, 0x18
