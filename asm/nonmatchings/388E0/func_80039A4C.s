	.set noat
	.set noreorder

glabel func_80039A4C
/* 3A64C 80039A4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A650 80039A50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A654 80039A54 AFB00010 */  sw         $s0, 0x10($sp)
/* 3A658 80039A58 00802821 */  addu       $a1, $a0, $zero
/* 3A65C 80039A5C 00051C00 */  sll        $v1, $a1, 0x10
/* 3A660 80039A60 00031C03 */  sra        $v1, $v1, 0x10
/* 3A664 80039A64 3C04800F */  lui        $a0, %hi(D_800F3F40)
/* 3A668 80039A68 8C843F40 */  lw         $a0, %lo(D_800F3F40)($a0)
/* 3A66C 80039A6C 00031040 */  sll        $v0, $v1, 1
/* 3A670 80039A70 00431021 */  addu       $v0, $v0, $v1
/* 3A674 80039A74 000280C0 */  sll        $s0, $v0, 3
/* 3A678 80039A78 02041821 */  addu       $v1, $s0, $a0
/* 3A67C 80039A7C 8C62000C */  lw         $v0, 0xc($v1)
/* 3A680 80039A80 1040000E */  beqz       $v0, .L80039ABC
/* 3A684 80039A84 00000000 */   nop
/* 3A688 80039A88 94620008 */  lhu        $v0, 8($v1)
/* 3A68C 80039A8C 2442FFFF */  addiu      $v0, $v0, -1
/* 3A690 80039A90 A4620008 */  sh         $v0, 8($v1)
/* 3A694 80039A94 00021400 */  sll        $v0, $v0, 0x10
/* 3A698 80039A98 14400008 */  bnez       $v0, .L80039ABC
/* 3A69C 80039A9C 24A44E20 */   addiu     $a0, $a1, 0x4e20
/* 3A6A0 80039AA0 00042400 */  sll        $a0, $a0, 0x10
/* 3A6A4 80039AA4 0C008E3C */  jal        func_800238F0
/* 3A6A8 80039AA8 00042403 */   sra       $a0, $a0, 0x10
/* 3A6AC 80039AAC 3C02800F */  lui        $v0, %hi(D_800F3F40)
/* 3A6B0 80039AB0 8C423F40 */  lw         $v0, %lo(D_800F3F40)($v0)
/* 3A6B4 80039AB4 02021021 */  addu       $v0, $s0, $v0
/* 3A6B8 80039AB8 AC40000C */  sw         $zero, 0xc($v0)
.L80039ABC:
/* 3A6BC 80039ABC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A6C0 80039AC0 8FB00010 */  lw         $s0, 0x10($sp)
/* 3A6C4 80039AC4 03E00008 */  jr         $ra
/* 3A6C8 80039AC8 27BD0018 */   addiu     $sp, $sp, 0x18
