	.set noat
	.set noreorder

glabel func_8001E534
/* 1F134 8001E534 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F138 8001E538 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1F13C 8001E53C AFB10014 */  sw         $s1, 0x14($sp)
/* 1F140 8001E540 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F144 8001E544 00042400 */  sll        $a0, $a0, 0x10
/* 1F148 8001E548 00048403 */  sra        $s0, $a0, 0x10
/* 1F14C 8001E54C 2402FFFF */  addiu      $v0, $zero, -1
/* 1F150 8001E550 1202000E */  beq        $s0, $v0, .L8001E58C
/* 1F154 8001E554 00A08821 */   addu      $s1, $a1, $zero
/* 1F158 8001E558 02002021 */  addu       $a0, $s0, $zero
/* 1F15C 8001E55C 24050040 */  addiu      $a1, $zero, 0x40
/* 1F160 8001E560 0C00789A */  jal        func_8001E268
/* 1F164 8001E564 24060040 */   addiu     $a2, $zero, 0x40
/* 1F168 8001E568 3C03800F */  lui        $v1, %hi(D_800ECDE0)
/* 1F16C 8001E56C 8C63CDE0 */  lw         $v1, %lo(D_800ECDE0)($v1)
/* 1F170 8001E570 001010C0 */  sll        $v0, $s0, 3
/* 1F174 8001E574 00501021 */  addu       $v0, $v0, $s0
/* 1F178 8001E578 00021080 */  sll        $v0, $v0, 2
/* 1F17C 8001E57C 00431021 */  addu       $v0, $v0, $v1
/* 1F180 8001E580 AC510020 */  sw         $s1, 0x20($v0)
/* 1F184 8001E584 A440000E */  sh         $zero, 0xe($v0)
/* 1F188 8001E588 A440000C */  sh         $zero, 0xc($v0)
.L8001E58C:
/* 1F18C 8001E58C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1F190 8001E590 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F194 8001E594 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F198 8001E598 03E00008 */  jr         $ra
/* 1F19C 8001E59C 27BD0020 */   addiu     $sp, $sp, 0x20
