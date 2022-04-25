	.set noat
	.set noreorder

glabel func_80048190
/* 48D90 80048190 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 48D94 80048194 AFBF0010 */  sw         $ra, 0x10($sp)
/* 48D98 80048198 3C054220 */  lui        $a1, 0x4220
/* 48D9C 8004819C 3C0642A0 */  lui        $a2, 0x42a0
/* 48DA0 800481A0 3C0745FA */  lui        $a3, 0x45fa
/* 48DA4 800481A4 0C007525 */  jal        func_8001D494
/* 48DA8 800481A8 24040001 */   addiu     $a0, $zero, 1
/* 48DAC 800481AC 3C05800D */  lui        $a1, %hi(D_800D6670)
/* 48DB0 800481B0 24A56670 */  addiu      $a1, $a1, %lo(D_800D6670)
/* 48DB4 800481B4 3C06800D */  lui        $a2, %hi(D_800D667C)
/* 48DB8 800481B8 24C6667C */  addiu      $a2, $a2, %lo(D_800D667C)
/* 48DBC 800481BC 3C07800D */  lui        $a3, %hi(D_800D6688)
/* 48DC0 800481C0 24E76688 */  addiu      $a3, $a3, %lo(D_800D6688)
/* 48DC4 800481C4 0C007508 */  jal        func_8001D420
/* 48DC8 800481C8 24040001 */   addiu     $a0, $zero, 1
/* 48DCC 800481CC 0C00755F */  jal        func_8001D57C
/* 48DD0 800481D0 24040001 */   addiu     $a0, $zero, 1
/* 48DD4 800481D4 3C05800D */  lui        $a1, %hi(D_800D6694)
/* 48DD8 800481D8 24A56694 */  addiu      $a1, $a1, %lo(D_800D6694)
/* 48DDC 800481DC 3C06800D */  lui        $a2, %hi(D_800D66A0)
/* 48DE0 800481E0 24C666A0 */  addiu      $a2, $a2, %lo(D_800D66A0)
/* 48DE4 800481E4 0C007548 */  jal        func_8001D520
/* 48DE8 800481E8 24040001 */   addiu     $a0, $zero, 1
/* 48DEC 800481EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 48DF0 800481F0 03E00008 */  jr         $ra
/* 48DF4 800481F4 27BD0018 */   addiu     $sp, $sp, 0x18
