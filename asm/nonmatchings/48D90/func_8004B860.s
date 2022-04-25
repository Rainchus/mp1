	.set noat
	.set noreorder

glabel func_8004B860
/* 4C460 8004B860 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4C464 8004B864 AFBF0020 */  sw         $ra, 0x20($sp)
/* 4C468 8004B868 AFB3001C */  sw         $s3, 0x1c($sp)
/* 4C46C 8004B86C AFB20018 */  sw         $s2, 0x18($sp)
/* 4C470 8004B870 AFB10014 */  sw         $s1, 0x14($sp)
/* 4C474 8004B874 AFB00010 */  sw         $s0, 0x10($sp)
/* 4C478 8004B878 3C01800E */  lui        $at, %hi(D_800D8140)
/* 4C47C 8004B87C A4248140 */  sh         $a0, %lo(D_800D8140)($at)
/* 4C480 8004B880 00042400 */  sll        $a0, $a0, 0x10
/* 4C484 8004B884 00042403 */  sra        $a0, $a0, 0x10
/* 4C488 8004B888 10800005 */  beqz       $a0, .L8004B8A0
/* 4C48C 8004B88C 24020001 */   addiu     $v0, $zero, 1
/* 4C490 8004B890 10820007 */  beq        $a0, $v0, .L8004B8B0
/* 4C494 8004B894 00000000 */   nop
/* 4C498 8004B898 08012E30 */  j          .L8004B8C0
/* 4C49C 8004B89C 00008021 */   addu      $s0, $zero, $zero
.L8004B8A0:
/* 4C4A0 8004B8A0 3C12800C */  lui        $s2, %hi(D_800C4FD4)
/* 4C4A4 8004B8A4 26524FD4 */  addiu      $s2, $s2, %lo(D_800C4FD4)
/* 4C4A8 8004B8A8 08012E32 */  j          .L8004B8C8
/* 4C4AC 8004B8AC 00008021 */   addu      $s0, $zero, $zero
.L8004B8B0:
/* 4C4B0 8004B8B0 3C12800C */  lui        $s2, %hi(D_800C4FFC)
/* 4C4B4 8004B8B4 26524FFC */  addiu      $s2, $s2, %lo(D_800C4FFC)
/* 4C4B8 8004B8B8 08012E32 */  j          .L8004B8C8
/* 4C4BC 8004B8BC 00008021 */   addu      $s0, $zero, $zero
.L8004B8C0:
/* 4C4C0 8004B8C0 3C12800C */  lui        $s2, %hi(D_800C5024)
/* 4C4C4 8004B8C4 26525024 */  addiu      $s2, $s2, %lo(D_800C5024)
.L8004B8C8:
/* 4C4C8 8004B8C8 3C13800E */  lui        $s3, %hi(D_800D8118)
/* 4C4CC 8004B8CC 26738118 */  addiu      $s3, $s3, %lo(D_800D8118)
/* 4C4D0 8004B8D0 00108880 */  sll        $s1, $s0, 2
.L8004B8D4:
/* 4C4D4 8004B8D4 02321021 */  addu       $v0, $s1, $s2
/* 4C4D8 8004B8D8 8C440000 */  lw         $a0, ($v0)
/* 4C4DC 8004B8DC 10800006 */  beqz       $a0, .L8004B8F8
/* 4C4E0 8004B8E0 00101080 */   sll       $v0, $s0, 2
/* 4C4E4 8004B8E4 0C00516C */  jal        func_800145B0
/* 4C4E8 8004B8E8 26100001 */   addiu     $s0, $s0, 1
/* 4C4EC 8004B8EC 02331821 */  addu       $v1, $s1, $s3
/* 4C4F0 8004B8F0 08012E41 */  j          .L8004B904
/* 4C4F4 8004B8F4 AC620000 */   sw        $v0, ($v1)
.L8004B8F8:
/* 4C4F8 8004B8F8 00531021 */  addu       $v0, $v0, $s3
/* 4C4FC 8004B8FC AC400000 */  sw         $zero, ($v0)
/* 4C500 8004B900 26100001 */  addiu      $s0, $s0, 1
.L8004B904:
/* 4C504 8004B904 2A02000A */  slti       $v0, $s0, 0xa
/* 4C508 8004B908 1440FFF2 */  bnez       $v0, .L8004B8D4
/* 4C50C 8004B90C 00108880 */   sll       $s1, $s0, 2
/* 4C510 8004B910 8FBF0020 */  lw         $ra, 0x20($sp)
/* 4C514 8004B914 8FB3001C */  lw         $s3, 0x1c($sp)
/* 4C518 8004B918 8FB20018 */  lw         $s2, 0x18($sp)
/* 4C51C 8004B91C 8FB10014 */  lw         $s1, 0x14($sp)
/* 4C520 8004B920 8FB00010 */  lw         $s0, 0x10($sp)
/* 4C524 8004B924 03E00008 */  jr         $ra
/* 4C528 8004B928 27BD0028 */   addiu     $sp, $sp, 0x28
