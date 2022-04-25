.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000400
/* 1000 80000400 3C08800D */  lui        $t0, %hi(D_800CCE50)
/* 1004 80000404 2508CE50 */  addiu      $t0, $t0, %lo(D_800CCE50)
/* 1008 80000408 3C090003 */  lui        $t1, 3
/* 100C 8000040C 25299790 */  addiu      $t1, $t1, -0x6870
.L80000410:
/* 1010 80000410 AD000000 */  sw         $zero, ($t0)
/* 1014 80000414 AD000004 */  sw         $zero, 4($t0)
/* 1018 80000418 21080008 */  addi       $t0, $t0, 8
/* 101C 8000041C 2129FFF8 */  addi       $t1, $t1, -8
/* 1020 80000420 1520FFFB */  bnez       $t1, .L80000410
/* 1024 80000424 00000000 */   nop
/* 1028 80000428 3C0A8000 */  lui        $t2, %hi(jtbl_80000460)
/* 102C 8000042C 254A0460 */  addiu      $t2, $t2, %lo(jtbl_80000460)
/* 1030 80000430 3C1D800F */  lui        $sp, %hi(D_800F2A70)
/* 1034 80000434 01400008 */  jr         $t2
/* 1038 80000438 27BD2A70 */   addiu     $sp, $sp, %lo(D_800F2A70)
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop
/* 1050 80000450 00000000 */  nop
/* 1054 80000454 00000000 */  nop
/* 1058 80000458 00000000 */  nop
/* 105C 8000045C 00000000 */  nop
