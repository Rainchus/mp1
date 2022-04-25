	.set noat
	.set noreorder

glabel func_8004C860
/* 4D460 8004C860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4D464 8004C864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4D468 8004C868 AFB00010 */  sw         $s0, 0x10($sp)
/* 4D46C 8004C86C 00801821 */  addu       $v1, $a0, $zero
/* 4D470 8004C870 00042400 */  sll        $a0, $a0, 0x10
/* 4D474 8004C874 00042403 */  sra        $a0, $a0, 0x10
/* 4D478 8004C878 2402FFFC */  addiu      $v0, $zero, -4
/* 4D47C 8004C87C 10820013 */  beq        $a0, $v0, .L8004C8CC
/* 4D480 8004C880 00A08021 */   addu      $s0, $a1, $zero
/* 4D484 8004C884 2882FFFD */  slti       $v0, $a0, -3
/* 4D488 8004C888 10400005 */  beqz       $v0, .L8004C8A0
/* 4D48C 8004C88C 2402FFFB */   addiu     $v0, $zero, -5
/* 4D490 8004C890 10820011 */  beq        $a0, $v0, .L8004C8D8
/* 4D494 8004C894 00032400 */   sll       $a0, $v1, 0x10
/* 4D498 8004C898 08013239 */  j          .L8004C8E4
/* 4D49C 8004C89C 00000000 */   nop
.L8004C8A0:
/* 4D4A0 8004C8A0 2402FFFD */  addiu      $v0, $zero, -3
/* 4D4A4 8004C8A4 10820006 */  beq        $a0, $v0, .L8004C8C0
/* 4D4A8 8004C8A8 2402FFFE */   addiu     $v0, $zero, -2
/* 4D4AC 8004C8AC 1482000D */  bne        $a0, $v0, .L8004C8E4
/* 4D4B0 8004C8B0 00032400 */   sll       $a0, $v1, 0x10
/* 4D4B4 8004C8B4 3C01800E */  lui        $at, %hi(D_800D8144)
/* 4D4B8 8004C8B8 0801323C */  j          .L8004C8F0
/* 4D4BC 8004C8BC AC308144 */   sw        $s0, %lo(D_800D8144)($at)
.L8004C8C0:
/* 4D4C0 8004C8C0 3C01800E */  lui        $at, %hi(D_800D8148)
/* 4D4C4 8004C8C4 0801323C */  j          .L8004C8F0
/* 4D4C8 8004C8C8 AC308148 */   sw        $s0, %lo(D_800D8148)($at)
.L8004C8CC:
/* 4D4CC 8004C8CC 3C01800E */  lui        $at, %hi(D_800D814C)
/* 4D4D0 8004C8D0 0801323C */  j          .L8004C8F0
/* 4D4D4 8004C8D4 AC30814C */   sw        $s0, %lo(D_800D814C)($at)
.L8004C8D8:
/* 4D4D8 8004C8D8 3C01800E */  lui        $at, %hi(D_800D8150)
/* 4D4DC 8004C8DC 0801323C */  j          .L8004C8F0
/* 4D4E0 8004C8E0 AC308150 */   sw        $s0, %lo(D_800D8150)($at)
.L8004C8E4:
/* 4D4E4 8004C8E4 0C01307B */  jal        func_8004C1EC
/* 4D4E8 8004C8E8 00042403 */   sra       $a0, $a0, 0x10
/* 4D4EC 8004C8EC AC50001C */  sw         $s0, 0x1c($v0)
.L8004C8F0:
/* 4D4F0 8004C8F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4D4F4 8004C8F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 4D4F8 8004C8F8 03E00008 */  jr         $ra
/* 4D4FC 8004C8FC 27BD0018 */   addiu     $sp, $sp, 0x18
