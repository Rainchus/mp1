	.set noat
	.set noreorder

glabel func_8002B6C8
/* 2C2C8 8002B6C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C2CC 8002B6CC AFBF0010 */  sw         $ra, 0x10($sp)
/* 2C2D0 8002B6D0 0C008E7B */  jal        func_800239EC
/* 2C2D4 8002B6D4 00000000 */   nop
/* 2C2D8 8002B6D8 3C02800F */  lui        $v0, %hi(D_800F3854)
/* 2C2DC 8002B6DC 94423854 */  lhu        $v0, %lo(D_800F3854)($v0)
/* 2C2E0 8002B6E0 10400046 */  beqz       $v0, .L8002B7FC
/* 2C2E4 8002B6E4 00000000 */   nop
/* 2C2E8 8002B6E8 3C04800F */  lui        $a0, %hi(D_800F37F0)
/* 2C2EC 8002B6EC 908437F0 */  lbu        $a0, %lo(D_800F37F0)($a0)
/* 2C2F0 8002B6F0 00041880 */  sll        $v1, $a0, 2
/* 2C2F4 8002B6F4 3C02800F */  lui        $v0, %hi(D_800F6500)
/* 2C2F8 8002B6F8 00431021 */  addu       $v0, $v0, $v1
/* 2C2FC 8002B6FC 8C426500 */  lw         $v0, %lo(D_800F6500)($v0)
/* 2C300 8002B700 3C01800F */  lui        $at, %hi(D_800F50BC)
/* 2C304 8002B704 AC2250BC */  sw         $v0, %lo(D_800F50BC)($at)
/* 2C308 8002B708 3C02800F */  lui        $v0, %hi(D_800ED5E8)
/* 2C30C 8002B70C 00431021 */  addu       $v0, $v0, $v1
/* 2C310 8002B710 8C42D5E8 */  lw         $v0, %lo(D_800ED5E8)($v0)
/* 2C314 8002B714 3C01800F */  lui        $at, %hi(D_800F374C)
/* 2C318 8002B718 AC22374C */  sw         $v0, %lo(D_800F374C)($at)
/* 2C31C 8002B71C 3C02800F */  lui        $v0, %hi(D_800F3720)
/* 2C320 8002B720 00431021 */  addu       $v0, $v0, $v1
/* 2C324 8002B724 8C423720 */  lw         $v0, %lo(D_800F3720)($v0)
/* 2C328 8002B728 3C01800F */  lui        $at, %hi(D_800F37DC)
/* 2C32C 8002B72C AC2237DC */  sw         $v0, %lo(D_800F37DC)($at)
/* 2C330 8002B730 3C01800F */  lui        $at, %hi(D_800F37E0)
/* 2C334 8002B734 AC2237E0 */  sw         $v0, %lo(D_800F37E0)($at)
/* 2C338 8002B738 00041040 */  sll        $v0, $a0, 1
/* 2C33C 8002B73C 00441021 */  addu       $v0, $v0, $a0
/* 2C340 8002B740 00021140 */  sll        $v0, $v0, 5
/* 2C344 8002B744 3C03800F */  lui        $v1, %hi(D_800F3400)
/* 2C348 8002B748 24633400 */  addiu      $v1, $v1, %lo(D_800F3400)
/* 2C34C 8002B74C 00431021 */  addu       $v0, $v0, $v1
/* 2C350 8002B750 3C01800F */  lui        $at, %hi(D_800F09FC)
/* 2C354 8002B754 AC2209FC */  sw         $v0, %lo(D_800F09FC)($at)
/* 2C358 8002B758 3C02800F */  lui        $v0, %hi(D_800F37F0)
/* 2C35C 8002B75C 904237F0 */  lbu        $v0, %lo(D_800F37F0)($v0)
/* 2C360 8002B760 24420001 */  addiu      $v0, $v0, 1
/* 2C364 8002B764 3C01800F */  lui        $at, %hi(D_800F37F0)
/* 2C368 8002B768 A02237F0 */  sb         $v0, %lo(D_800F37F0)($at)
/* 2C36C 8002B76C 304200FF */  andi       $v0, $v0, 0xff
/* 2C370 8002B770 3C03800F */  lui        $v1, %hi(D_800F37DA)
/* 2C374 8002B774 906337DA */  lbu        $v1, %lo(D_800F37DA)($v1)
/* 2C378 8002B778 0043102B */  sltu       $v0, $v0, $v1
/* 2C37C 8002B77C 14400003 */  bnez       $v0, .L8002B78C
/* 2C380 8002B780 00000000 */   nop
/* 2C384 8002B784 3C01800F */  lui        $at, %hi(D_800F37F0)
/* 2C388 8002B788 A02037F0 */  sb         $zero, %lo(D_800F37F0)($at)
.L8002B78C:
/* 2C38C 8002B78C 0C008C34 */  jal        func_800230D0
/* 2C390 8002B790 00000000 */   nop
/* 2C394 8002B794 3C01800F */  lui        $at, %hi(D_800EE992)
/* 2C398 8002B798 A420E992 */  sh         $zero, %lo(D_800EE992)($at)
/* 2C39C 8002B79C 3C01800F */  lui        $at, %hi(D_800ED52C)
/* 2C3A0 8002B7A0 A420D52C */  sh         $zero, %lo(D_800ED52C)($at)
/* 2C3A4 8002B7A4 3C01800F */  lui        $at, %hi(D_800F37C8)
/* 2C3A8 8002B7A8 A42037C8 */  sh         $zero, %lo(D_800F37C8)($at)
/* 2C3AC 8002B7AC 3C01800F */  lui        $at, %hi(D_800F64FA)
/* 2C3B0 8002B7B0 A42064FA */  sh         $zero, %lo(D_800F64FA)($at)
/* 2C3B4 8002B7B4 3C01800F */  lui        $at, %hi(D_800EE754)
/* 2C3B8 8002B7B8 A020E754 */  sb         $zero, %lo(D_800EE754)($at)
/* 2C3BC 8002B7BC 3C01800F */  lui        $at, %hi(D_800F3100)
/* 2C3C0 8002B7C0 A4203100 */  sh         $zero, %lo(D_800F3100)($at)
/* 2C3C4 8002B7C4 3C01800F */  lui        $at, %hi(D_800F64F6)
/* 2C3C8 8002B7C8 A42064F6 */  sh         $zero, %lo(D_800F64F6)($at)
/* 2C3CC 8002B7CC 3C01800F */  lui        $at, %hi(D_800ED194)
/* 2C3D0 8002B7D0 A420D194 */  sh         $zero, %lo(D_800ED194)($at)
/* 2C3D4 8002B7D4 3C01800F */  lui        $at, %hi(D_800F3F3C)
/* 2C3D8 8002B7D8 A4203F3C */  sh         $zero, %lo(D_800F3F3C)($at)
/* 2C3DC 8002B7DC 3C01800F */  lui        $at, %hi(D_800ED4AC)
/* 2C3E0 8002B7E0 0C007503 */  jal        func_8001D40C
/* 2C3E4 8002B7E4 A420D4AC */   sh        $zero, %lo(D_800ED4AC)($at)
/* 2C3E8 8002B7E8 3C02800F */  lui        $v0, %hi(D_800F3848)
/* 2C3EC 8002B7EC 8C423848 */  lw         $v0, %lo(D_800F3848)($v0)
/* 2C3F0 8002B7F0 24420001 */  addiu      $v0, $v0, 1
/* 2C3F4 8002B7F4 3C01800F */  lui        $at, %hi(D_800F3848)
/* 2C3F8 8002B7F8 AC223848 */  sw         $v0, %lo(D_800F3848)($at)
.L8002B7FC:
/* 2C3FC 8002B7FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C400 8002B800 03E00008 */  jr         $ra
/* 2C404 8002B804 27BD0018 */   addiu     $sp, $sp, 0x18
