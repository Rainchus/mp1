	.set noat
	.set noreorder

glabel func_8005B860
/* 5C460 8005B860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5C464 8005B864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C468 8005B868 AFB00010 */  sw         $s0, 0x10($sp)
/* 5C46C 8005B86C 00801021 */  addu       $v0, $a0, $zero
/* 5C470 8005B870 3C01800E */  lui        $at, %hi(D_800D8920)
/* 5C474 8005B874 A4228920 */  sh         $v0, %lo(D_800D8920)($at)
/* 5C478 8005B878 00042400 */  sll        $a0, $a0, 0x10
/* 5C47C 8005B87C 00042403 */  sra        $a0, $a0, 0x10
/* 5C480 8005B880 04800013 */  bltz       $a0, .L8005B8D0
/* 5C484 8005B884 00048040 */   sll       $s0, $a0, 1
/* 5C488 8005B888 02048021 */  addu       $s0, $s0, $a0
/* 5C48C 8005B88C 3C04800C */  lui        $a0, %hi(D_800C5820)
/* 5C490 8005B890 00902021 */  addu       $a0, $a0, $s0
/* 5C494 8005B894 0C0164D2 */  jal        func_80059348
/* 5C498 8005B898 80845820 */   lb        $a0, %lo(D_800C5820)($a0)
/* 5C49C 8005B89C 3C02800C */  lui        $v0, %hi(D_800C5821)
/* 5C4A0 8005B8A0 00501021 */  addu       $v0, $v0, $s0
/* 5C4A4 8005B8A4 90425821 */  lbu        $v0, %lo(D_800C5821)($v0)
/* 5C4A8 8005B8A8 00021600 */  sll        $v0, $v0, 0x18
/* 5C4AC 8005B8AC 00021603 */  sra        $v0, $v0, 0x18
/* 5C4B0 8005B8B0 3C01800F */  lui        $at, %hi(D_800F329A)
/* 5C4B4 8005B8B4 A422329A */  sh         $v0, %lo(D_800F329A)($at)
/* 5C4B8 8005B8B8 3C02800C */  lui        $v0, %hi(D_800C5822)
/* 5C4BC 8005B8BC 00501021 */  addu       $v0, $v0, $s0
/* 5C4C0 8005B8C0 90425822 */  lbu        $v0, %lo(D_800C5822)($v0)
/* 5C4C4 8005B8C4 00021600 */  sll        $v0, $v0, 0x18
/* 5C4C8 8005B8C8 08016E3A */  j          .L8005B8E8
/* 5C4CC 8005B8CC 00021603 */   sra       $v0, $v0, 0x18
.L8005B8D0:
/* 5C4D0 8005B8D0 00022400 */  sll        $a0, $v0, 0x10
/* 5C4D4 8005B8D4 0C0164D2 */  jal        func_80059348
/* 5C4D8 8005B8D8 00042403 */   sra       $a0, $a0, 0x10
/* 5C4DC 8005B8DC 2402FFFF */  addiu      $v0, $zero, -1
/* 5C4E0 8005B8E0 3C01800F */  lui        $at, %hi(D_800F329A)
/* 5C4E4 8005B8E4 A422329A */  sh         $v0, %lo(D_800F329A)($at)
.L8005B8E8:
/* 5C4E8 8005B8E8 3C01800F */  lui        $at, %hi(D_800F3750)
/* 5C4EC 8005B8EC A4223750 */  sh         $v0, %lo(D_800F3750)($at)
/* 5C4F0 8005B8F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C4F4 8005B8F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 5C4F8 8005B8F8 03E00008 */  jr         $ra
/* 5C4FC 8005B8FC 27BD0018 */   addiu     $sp, $sp, 0x18
