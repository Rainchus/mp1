	.set noat
	.set noreorder

glabel func_800FA118_152478
/* 152478 800FA118 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 15247C 800FA11C AFBF0030 */  sw         $ra, 0x30($sp)
/* 152480 800FA120 AFB1002C */  sw         $s1, 0x2c($sp)
/* 152484 800FA124 AFB00028 */  sw         $s0, 0x28($sp)
/* 152488 800FA128 00808821 */  addu       $s1, $a0, $zero
/* 15248C 800FA12C 27B00018 */  addiu      $s0, $sp, 0x18
/* 152490 800FA130 3C038010 */  lui        $v1, %hi(D_800FA8E6)
/* 152494 800FA134 9463A8E6 */  lhu        $v1, %lo(D_800FA8E6)($v1)
/* 152498 800FA138 00031040 */  sll        $v0, $v1, 1
/* 15249C 800FA13C 00431021 */  addu       $v0, $v0, $v1
/* 1524A0 800FA140 00021080 */  sll        $v0, $v0, 2
/* 1524A4 800FA144 3C058010 */  lui        $a1, %hi(D_800FA824)
/* 1524A8 800FA148 00A22821 */  addu       $a1, $a1, $v0
/* 1524AC 800FA14C 8CA5A824 */  lw         $a1, %lo(D_800FA824)($a1)
/* 1524B0 800FA150 3C068010 */  lui        $a2, %hi(D_800FA828)
/* 1524B4 800FA154 00C23021 */  addu       $a2, $a2, $v0
/* 1524B8 800FA158 8CC6A828 */  lw         $a2, %lo(D_800FA828)($a2)
/* 1524BC 800FA15C 3C078010 */  lui        $a3, %hi(D_800FA82C)
/* 1524C0 800FA160 00E23821 */  addu       $a3, $a3, $v0
/* 1524C4 800FA164 8CE7A82C */  lw         $a3, %lo(D_800FA82C)($a3)
/* 1524C8 800FA168 0C028340 */  jal        func_800A0D00
/* 1524CC 800FA16C 02002021 */   addu      $a0, $s0, $zero
/* 1524D0 800FA170 3C03800F */  lui        $v1, %hi(D_800F3314)
/* 1524D4 800FA174 90633314 */  lbu        $v1, %lo(D_800F3314)($v1)
/* 1524D8 800FA178 00031080 */  sll        $v0, $v1, 2
/* 1524DC 800FA17C 00431021 */  addu       $v0, $v0, $v1
/* 1524E0 800FA180 00021080 */  sll        $v0, $v0, 2
/* 1524E4 800FA184 AFB00010 */  sw         $s0, 0x10($sp)
/* 1524E8 800FA188 3063FFFF */  andi       $v1, $v1, 0xffff
/* 1524EC 800FA18C AFA30014 */  sw         $v1, 0x14($sp)
/* 1524F0 800FA190 02202021 */  addu       $a0, $s1, $zero
/* 1524F4 800FA194 3C05800C */  lui        $a1, %hi(D_800C59AC)
/* 1524F8 800FA198 00A22821 */  addu       $a1, $a1, $v0
/* 1524FC 800FA19C 8CA559AC */  lw         $a1, %lo(D_800C59AC)($a1)
/* 152500 800FA1A0 3C06800C */  lui        $a2, %hi(D_800C59B0)
/* 152504 800FA1A4 00C23021 */  addu       $a2, $a2, $v0
/* 152508 800FA1A8 8CC659B0 */  lw         $a2, %lo(D_800C59B0)($a2)
/* 15250C 800FA1AC 0C03E6F3 */  jal        func_800F9BCC_151F2C
/* 152510 800FA1B0 24070002 */   addiu     $a3, $zero, 2
/* 152514 800FA1B4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 152518 800FA1B8 8FB1002C */  lw         $s1, 0x2c($sp)
/* 15251C 800FA1BC 8FB00028 */  lw         $s0, 0x28($sp)
/* 152520 800FA1C0 03E00008 */  jr         $ra
/* 152524 800FA1C4 27BD0038 */   addiu     $sp, $sp, 0x38
