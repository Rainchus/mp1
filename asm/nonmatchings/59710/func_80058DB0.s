	.set noat
	.set noreorder

glabel func_80058DB0
/* 599B0 80058DB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 599B4 80058DB4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 599B8 80058DB8 AFB10014 */  sw         $s1, 0x14($sp)
/* 599BC 80058DBC AFB00010 */  sw         $s0, 0x10($sp)
/* 599C0 80058DC0 00008021 */  addu       $s0, $zero, $zero
/* 599C4 80058DC4 3C11800E */  lui        $s1, %hi(D_800D8710)
/* 599C8 80058DC8 26318710 */  addiu      $s1, $s1, %lo(D_800D8710)
.L80058DCC:
/* 599CC 80058DCC 0C014AA3 */  jal        func_80052A8C
/* 599D0 80058DD0 02002021 */   addu      $a0, $s0, $zero
/* 599D4 80058DD4 8C440020 */  lw         $a0, 0x20($v0)
/* 599D8 80058DD8 0C00F978 */  jal        func_8003E5E0
/* 599DC 80058DDC 00000000 */   nop
/* 599E0 80058DE0 00101080 */  sll        $v0, $s0, 2
/* 599E4 80058DE4 00511021 */  addu       $v0, $v0, $s1
/* 599E8 80058DE8 8C440000 */  lw         $a0, ($v0)
/* 599EC 80058DEC 0C00F9A5 */  jal        func_8003E694
/* 599F0 80058DF0 26100001 */   addiu     $s0, $s0, 1
/* 599F4 80058DF4 2A020004 */  slti       $v0, $s0, 4
/* 599F8 80058DF8 1440FFF4 */  bnez       $v0, .L80058DCC
/* 599FC 80058DFC 00000000 */   nop
/* 59A00 80058E00 8FBF0018 */  lw         $ra, 0x18($sp)
/* 59A04 80058E04 8FB10014 */  lw         $s1, 0x14($sp)
/* 59A08 80058E08 8FB00010 */  lw         $s0, 0x10($sp)
/* 59A0C 80058E0C 03E00008 */  jr         $ra
/* 59A10 80058E10 27BD0020 */   addiu     $sp, $sp, 0x20
