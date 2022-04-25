	.set noat
	.set noreorder

glabel func_80049E70
/* 4AA70 80049E70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4AA74 80049E74 AFBF0018 */  sw         $ra, 0x18($sp)
/* 4AA78 80049E78 AFB10014 */  sw         $s1, 0x14($sp)
/* 4AA7C 80049E7C AFB00010 */  sw         $s0, 0x10($sp)
/* 4AA80 80049E80 00808821 */  addu       $s1, $a0, $zero
/* 4AA84 80049E84 3C01800D */  lui        $at, %hi(D_800D6720)
/* 4AA88 80049E88 AC316720 */  sw         $s1, %lo(D_800D6720)($at)
/* 4AA8C 80049E8C 0C00EDDD */  jal        func_8003B774
/* 4AA90 80049E90 24040010 */   addiu     $a0, $zero, 0x10
/* 4AA94 80049E94 00408021 */  addu       $s0, $v0, $zero
/* 4AA98 80049E98 02202021 */  addu       $a0, $s1, $zero
/* 4AA9C 80049E9C 02002821 */  addu       $a1, $s0, $zero
/* 4AAA0 80049EA0 0C0187FA */  jal        func_80061FE8
/* 4AAA4 80049EA4 24060010 */   addiu     $a2, $zero, 0x10
/* 4AAA8 80049EA8 8E020000 */  lw         $v0, ($s0)
/* 4AAAC 80049EAC 3C01800D */  lui        $at, %hi(D_800D6724)
/* 4AAB0 80049EB0 AC226724 */  sw         $v0, %lo(D_800D6724)($at)
/* 4AAB4 80049EB4 0C00EDE6 */  jal        func_8003B798
/* 4AAB8 80049EB8 02002021 */   addu      $a0, $s0, $zero
/* 4AABC 80049EBC 3C10800D */  lui        $s0, %hi(D_800D6724)
/* 4AAC0 80049EC0 8E106724 */  lw         $s0, %lo(D_800D6724)($s0)
/* 4AAC4 80049EC4 00108080 */  sll        $s0, $s0, 2
/* 4AAC8 80049EC8 0C00EDDD */  jal        func_8003B774
/* 4AACC 80049ECC 02002021 */   addu      $a0, $s0, $zero
/* 4AAD0 80049ED0 3C01800C */  lui        $at, %hi(D_800C4F70)
/* 4AAD4 80049ED4 AC224F70 */  sw         $v0, %lo(D_800C4F70)($at)
/* 4AAD8 80049ED8 26240004 */  addiu      $a0, $s1, 4
/* 4AADC 80049EDC 00402821 */  addu       $a1, $v0, $zero
/* 4AAE0 80049EE0 0C0187FA */  jal        func_80061FE8
/* 4AAE4 80049EE4 02003021 */   addu      $a2, $s0, $zero
/* 4AAE8 80049EE8 0C00EDDD */  jal        func_8003B774
/* 4AAEC 80049EEC 240402C0 */   addiu     $a0, $zero, 0x2c0
/* 4AAF0 80049EF0 3C01800D */  lui        $at, %hi(D_800D673C)
/* 4AAF4 80049EF4 AC22673C */  sw         $v0, %lo(D_800D673C)($at)
/* 4AAF8 80049EF8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 4AAFC 80049EFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 4AB00 80049F00 8FB00010 */  lw         $s0, 0x10($sp)
/* 4AB04 80049F04 03E00008 */  jr         $ra
/* 4AB08 80049F08 27BD0020 */   addiu     $sp, $sp, 0x20
